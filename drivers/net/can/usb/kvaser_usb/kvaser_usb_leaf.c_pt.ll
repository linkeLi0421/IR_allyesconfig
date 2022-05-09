; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c_pt.bc'
source_filename = "../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kvaser_usb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kvaser_usb_dev_cfg = type { %struct.can_clock, i32, ptr, ptr }
%struct.can_clock = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.can_frame = type { i32, %union.anon.156, i8, i8, i8, [8 x i8] }
%union.anon.156 = type { i8 }
%struct.atomic_t = type { i32 }
%struct.kvaser_cmd = type { i8, i8, %union.anon.147 }
%union.anon.147 = type { %union.anon.151 }
%union.anon.151 = type { %struct.leaf_cmd_rx_can, [8 x i8] }
%struct.leaf_cmd_rx_can = type { i8, i8, [3 x i16], [14 x i8] }
%struct.kvaser_cmd_busparams = type <{ i8, i8, i32, i8, i8, i8, i8 }>
%struct.kvaser_usb = type { ptr, ptr, [5 x ptr], ptr, ptr, ptr, ptr, %struct.usb_anchor, i32, i32, i32, %struct.kvaser_usb_dev_card_data, i8, [4 x ptr], [4 x i32] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%struct.kvaser_usb_err_summary = type { i8, i8, i8, i8, %union.anon.157 }
%union.anon.157 = type { %struct.anon.159 }
%struct.anon.159 = type { i8, i8 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.usbcan_cmd_chip_state_event = type { i8, i8, i8, i8, i16, i8, [3 x i8] }
%struct.usbcan_cmd_error_event = type { i8, i8, i8, i8, i8, i8, i8, i8, i16 }
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

@kvaser_usb_leaf_dev_ops = dso_local constant { %struct.kvaser_usb_dev_ops, [60 x i8] } { %struct.kvaser_usb_dev_ops { ptr @kvaser_usb_leaf_set_mode, ptr @kvaser_usb_leaf_set_bittiming, ptr null, ptr @kvaser_usb_leaf_get_berr_counter, ptr @kvaser_usb_leaf_setup_endpoints, ptr @kvaser_usb_leaf_init_card, ptr @kvaser_usb_leaf_get_software_info, ptr null, ptr @kvaser_usb_leaf_get_card_info, ptr null, ptr @kvaser_usb_leaf_set_opt_mode, ptr @kvaser_usb_leaf_start_chip, ptr @kvaser_usb_leaf_stop_chip, ptr @kvaser_usb_leaf_reset_chip, ptr @kvaser_usb_leaf_flush_queue, ptr @kvaser_usb_leaf_read_bulk_callback, ptr @kvaser_usb_leaf_frame_to_cmd }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kvaser_usb_leaf_dev_cfg_8mhz = internal constant { %struct.kvaser_usb_dev_cfg, [16 x i8] } { %struct.kvaser_usb_dev_cfg { %struct.can_clock { i32 8000000 }, i32 1, ptr @kvaser_usb_leaf_bittiming_const, ptr null }, [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kvaser_usb_leaf_wait_cmd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.kvaser_usb_leaf_wait_cmd = private unnamed_addr constant [25 x i8] c"kvaser_usb_leaf_wait_cmd\00", align 1
@kvaser_usb_leaf_wait_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.kvaser_usb_leaf_wait_cmd, ptr @.str.2, i32 477, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Format error\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_wait_cmd._entry_ptr = internal global ptr @kvaser_usb_leaf_wait_cmd._entry, section ".printk_index", align 4
@kvaser_usb_leaf_dev_cfg_16mhz = internal constant { %struct.kvaser_usb_dev_cfg, [16 x i8] } { %struct.kvaser_usb_dev_cfg { %struct.can_clock { i32 16000000 }, i32 1, ptr @kvaser_usb_leaf_bittiming_const, ptr null }, [16 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_dev_cfg_24mhz = internal constant { %struct.kvaser_usb_dev_cfg, [16 x i8] } { %struct.kvaser_usb_dev_cfg { %struct.can_clock { i32 24000000 }, i32 1, ptr @kvaser_usb_leaf_bittiming_const, ptr null }, [16 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_dev_cfg_32mhz = internal constant { %struct.kvaser_usb_dev_cfg, [16 x i8] } { %struct.kvaser_usb_dev_cfg { %struct.can_clock { i32 32000000 }, i32 1, ptr @kvaser_usb_leaf_bittiming_const, ptr null }, [16 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"kvaser_usb\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 64, i32 1 }, [48 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_read_bulk_callback._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.kvaser_usb_leaf_read_bulk_callback = private unnamed_addr constant [35 x i8] c"kvaser_usb_leaf_read_bulk_callback\00", align 1
@kvaser_usb_leaf_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.kvaser_usb_leaf_read_bulk_callback, ptr @.str.2, i32 1190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_read_bulk_callback._entry_ptr = internal global ptr @kvaser_usb_leaf_read_bulk_callback._entry, section ".printk_index", align 4
@kvaser_usb_leaf_handle_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1160, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unhandled command (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kvaser_usb_leaf_handle_command\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_handle_command._entry_ptr = internal global ptr @kvaser_usb_leaf_handle_command._entry, section ".printk_index", align 4
@kvaser_usb_leaf_start_chip_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1081, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid channel number (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"kvaser_usb_leaf_start_chip_reply\00", [63 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_start_chip_reply._entry_ptr = internal global ptr @kvaser_usb_leaf_start_chip_reply._entry, section ".printk_index", align 4
@kvaser_usb_leaf_stop_chip_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.11, ptr @.str.2, i32 1104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kvaser_usb_leaf_stop_chip_reply\00", [32 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_stop_chip_reply._entry_ptr = internal global ptr @kvaser_usb_leaf_stop_chip_reply._entry, section ".printk_index", align 4
@kvaser_usb_leaf_rx_can_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.2, i32 994, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kvaser_usb_leaf_rx_can_msg\00", [37 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_rx_can_msg._entry_ptr = internal global ptr @kvaser_usb_leaf_rx_can_msg._entry, section ".printk_index", align 4
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unhandled frame (flags: 0x%02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown error (flags: 0x%02x)\0A\00", [33 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_leaf_rx_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 957, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid cmd id (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kvaser_usb_leaf_leaf_rx_error\00", [34 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_leaf_rx_error._entry_ptr = internal global ptr @kvaser_usb_leaf_leaf_rx_error._entry, section ".printk_index", align 4
@__const.kvaser_usb_leaf_rx_error.tmp_cf = private unnamed_addr constant %struct.can_frame { i32 536870912, %union.anon.156 { i8 8 }, i8 0, i8 0, i8 0, [8 x i8] zeroinitializer }, align 8
@kvaser_usb_leaf_rx_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.17, ptr @.str.2, i32 767, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kvaser_usb_leaf_rx_error\00", [39 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_rx_error._entry_ptr = internal global ptr @kvaser_usb_leaf_rx_error._entry, section ".printk_index", align 4
@kvaser_usb_leaf_rx_error_update_can_state.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -82, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kvaser_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"kvaser_usb_leaf_rx_error_update_can_state\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error status: 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_usbcan_rx_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.21, ptr @.str.2, i32 925, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kvaser_usb_leaf_usbcan_rx_error\00", [32 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_usbcan_rx_error._entry_ptr = internal global ptr @kvaser_usb_leaf_usbcan_rx_error._entry, section ".printk_index", align 4
@kvaser_usb_leaf_usbcan_conditionally_rx_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.22, ptr @.str.2, i32 859, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"kvaser_usb_leaf_usbcan_conditionally_rx_error\00", [50 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_usbcan_conditionally_rx_error._entry_ptr = internal global ptr @kvaser_usb_leaf_usbcan_conditionally_rx_error._entry, section ".printk_index", align 4
@kvaser_usb_leaf_tx_acknowledge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.23, ptr @.str.2, i32 621, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kvaser_usb_leaf_tx_acknowledge\00", [33 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_tx_acknowledge._entry_ptr = internal global ptr @kvaser_usb_leaf_tx_acknowledge._entry, section ".printk_index", align 4
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No memory left for err_skb\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 64]
@__sancov_gen_cov_switch_values.26 = internal global [12 x i64] [i64 10, i64 8, i64 12, i64 14, i64 20, i64 27, i64 29, i64 33, i64 50, i64 51, i64 68, i64 106]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 20, i64 51]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 20, i64 51, i64 106]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [24 x i8] c"kvaser_usb_leaf_dev_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1380, i32 33 }
@___asan_gen_.36 = private unnamed_addr constant [29 x i8] c"kvaser_usb_leaf_dev_cfg_8mhz\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 358, i32 40 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 476, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant [30 x i8] c"kvaser_usb_leaf_dev_cfg_16mhz\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 366, i32 40 }
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"kvaser_usb_leaf_dev_cfg_24mhz\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 374, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"kvaser_usb_leaf_dev_cfg_32mhz\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 382, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant [32 x i8] c"kvaser_usb_leaf_bittiming_const\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 346, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 87, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1190, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1160, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1080, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1103, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 993, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1013, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 971, i32 28 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 957, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 766, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 697, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 925, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 858, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 620, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [52 x i8] c"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 646, i32 8 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @kvaser_usb_leaf_handle_command._entry, ptr @kvaser_usb_leaf_handle_command._entry_ptr, ptr @kvaser_usb_leaf_leaf_rx_error._entry, ptr @kvaser_usb_leaf_leaf_rx_error._entry_ptr, ptr @kvaser_usb_leaf_read_bulk_callback._entry, ptr @kvaser_usb_leaf_read_bulk_callback._entry_ptr, ptr @kvaser_usb_leaf_rx_can_msg._entry, ptr @kvaser_usb_leaf_rx_can_msg._entry_ptr, ptr @kvaser_usb_leaf_rx_error._entry, ptr @kvaser_usb_leaf_rx_error._entry_ptr, ptr @kvaser_usb_leaf_start_chip_reply._entry, ptr @kvaser_usb_leaf_start_chip_reply._entry_ptr, ptr @kvaser_usb_leaf_stop_chip_reply._entry, ptr @kvaser_usb_leaf_stop_chip_reply._entry_ptr, ptr @kvaser_usb_leaf_tx_acknowledge._entry, ptr @kvaser_usb_leaf_tx_acknowledge._entry_ptr, ptr @kvaser_usb_leaf_usbcan_conditionally_rx_error._entry, ptr @kvaser_usb_leaf_usbcan_conditionally_rx_error._entry_ptr, ptr @kvaser_usb_leaf_usbcan_rx_error._entry, ptr @kvaser_usb_leaf_usbcan_rx_error._entry_ptr, ptr @kvaser_usb_leaf_wait_cmd._entry, ptr @kvaser_usb_leaf_wait_cmd._entry_ptr, ptr @kvaser_usb_leaf_dev_ops, ptr @kvaser_usb_leaf_dev_cfg_8mhz, ptr @kvaser_usb_leaf_wait_cmd._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @kvaser_usb_leaf_dev_cfg_16mhz, ptr @kvaser_usb_leaf_dev_cfg_24mhz, ptr @kvaser_usb_leaf_dev_cfg_32mhz, ptr @kvaser_usb_leaf_bittiming_const, ptr @init_completion.__key, ptr @.str.5, ptr @kvaser_usb_leaf_read_bulk_callback._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_dev_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_dev_cfg_8mhz to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_wait_cmd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_wait_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_dev_cfg_16mhz to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_dev_cfg_24mhz to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_dev_cfg_32mhz to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_read_bulk_callback._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_handle_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_start_chip_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_stop_chip_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_rx_can_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_leaf_rx_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_rx_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_usbcan_rx_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_usbcan_conditionally_rx_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_leaf_tx_acknowledge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_leaf_set_mode(ptr noundef %netdev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 26, ptr %id.i, align 1
  %channel.i = getelementptr i8, ptr %netdev, i32 2628
  %3 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel.i, align 4
  %conv.i = trunc i32 %4 to i8
  %channel1.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %channel1.i, align 1
  %call4.i = tail call i32 @kvaser_usb_send_cmd_async(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.then6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -12, %sw.bb.cleanup_crit_edge ], [ %call4.i, %if.then6.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_leaf_set_bittiming(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %netdev, i32 2620
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 32) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bittiming = getelementptr i8, ptr %netdev, i32 2340
  %id = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %id, align 1
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %call7.i, align 8
  %channel = getelementptr i8, ptr %netdev, i32 2628
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %conv = trunc i32 %6 to i8
  %u = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2
  %channel3 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %channel3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %channel3, align 1
  %8 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %u, align 2
  %9 = ptrtoint ptr %bittiming to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bittiming, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %bitrate6 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %bitrate6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bitrate6, align 4
  %sjw = getelementptr i8, ptr %netdev, i32 2364
  %13 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sjw, align 4
  %conv7 = trunc i32 %14 to i8
  %sjw9 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %sjw9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7, ptr %sjw9, align 2
  %prop_seg = getelementptr i8, ptr %netdev, i32 2352
  %16 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr i8, ptr %netdev, i32 2356
  %18 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %19, %17
  %conv10 = trunc i32 %add to i8
  %tseg1 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %tseg1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10, ptr %tseg1, align 8
  %phase_seg2 = getelementptr i8, ptr %netdev, i32 2360
  %21 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phase_seg2, align 4
  %conv12 = trunc i32 %22 to i8
  %tseg2 = getelementptr inbounds %struct.kvaser_cmd_busparams, ptr %u, i32 0, i32 4
  %23 = ptrtoint ptr %tseg2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv12, ptr %tseg2, align 1
  %ctrlmode = getelementptr i8, ptr %netdev, i32 2476
  %24 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool15.not, i8 1, i8 3
  %26 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select, ptr %26, align 1
  %call23 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 12) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kvaser_usb_leaf_get_berr_counter(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %bec) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bec1 = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %bec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bec1, align 4
  %2 = ptrtoint ptr %bec to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %bec, align 2
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_leaf_setup_endpoints(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %cmp41.not = icmp eq i8 %5, 0
  br i1 %cmp41.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %endpoint2 = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %bulk_in = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 5
  %bulk_out = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint2, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %7, i32 %i.042
  %8 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bulk_in, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool4.not = icmp sgt i8 %14, -1
  br i1 %tobool4.not, label %usb_endpoint_is_bulk_in.exit.if.end_crit_edge, label %if.then

usb_endpoint_is_bulk_in.exit.if.end_crit_edge:    ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %bulk_in to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %bulk_in, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %usb_endpoint_is_bulk_in.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %16 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bulk_out, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %land.lhs.true7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true7:                                   ; preds = %if.end
  %bmAttributes.i.i34 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %18 = ptrtoint ptr %bmAttributes.i.i34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmAttributes.i.i34, align 1
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp.i.not.i35 = icmp eq i8 %20, 2
  br i1 %cmp.i.not.i35, label %usb_endpoint_is_bulk_out.exit, label %land.lhs.true7.if.end12_crit_edge

land.lhs.true7.if.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

usb_endpoint_is_bulk_out.exit:                    ; preds = %land.lhs.true7
  %bEndpointAddress.i.i36 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %21 = ptrtoint ptr %bEndpointAddress.i.i36 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress.i.i36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool9.not = icmp slt i8 %22, 0
  br i1 %tobool9.not, label %usb_endpoint_is_bulk_out.exit.if.end12_crit_edge, label %if.then10

usb_endpoint_is_bulk_out.exit.if.end12_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %bulk_out to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx, ptr %bulk_out, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %usb_endpoint_is_bulk_out.exit.if.end12_crit_edge, %land.lhs.true7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %24 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bulk_in, align 4
  %tobool14.not = icmp eq ptr %25, null
  br i1 %tobool14.not, label %if.end12.for.inc_crit_edge, label %land.lhs.true15

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true15:                                  ; preds = %if.end12
  %26 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bulk_out, align 4
  %tobool17.not = icmp eq ptr %27, null
  br i1 %tobool17.not, label %land.lhs.true15.for.inc_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %if.end12.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %28 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %29 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kvaser_usb_leaf_init_card(ptr nocapture noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card_data1 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %card_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_data1, align 4
  %or = or i32 %1, 4
  store i32 %or, ptr %card_data1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_leaf_get_software_info(ptr noundef %dev) #0 align 64 {
entry:
  %cmd.i = alloca %struct.kvaser_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i) #8
  %0 = call ptr @memset(ptr %cmd.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 32) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge, label %kvaser_usb_leaf_send_simple_cmd.exit.i

entry.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit.thread

kvaser_usb_leaf_send_simple_cmd.exit.i:           ; preds = %entry
  %id.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 38, ptr %id.i.i, align 1
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %call7.i.i.i, align 8
  %u.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 2
  %channel1.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %channel1.i.i, align 1
  %5 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %u.i.i, align 2
  %call5.i.i = tail call i32 @kvaser_usb_send_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %kvaser_usb_leaf_send_simple_cmd.exit.i.kvaser_usb_leaf_get_software_info_inner.exit_crit_edge

kvaser_usb_leaf_send_simple_cmd.exit.i.kvaser_usb_leaf_get_software_info_inner.exit_crit_edge: ; preds = %kvaser_usb_leaf_send_simple_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit

if.end.i:                                         ; preds = %kvaser_usb_leaf_send_simple_cmd.exit.i
  %call1.i = call fastcc i32 @kvaser_usb_leaf_wait_cmd(ptr noundef %dev, i8 noundef zeroext 39, ptr noundef nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.end.i.kvaser_usb_leaf_get_software_info_inner.exit_crit_edge

if.end.i.kvaser_usb_leaf_get_software_info_inner.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i.2.if.end4.i_crit_edge, %if.end.i.1.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %6 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd.i, i32 0, i32 2, i32 0, i32 0, i32 2, i32 2
  %7 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end4.i.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i
  ]

if.end4.i.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit.thread

sw.bb.i:                                          ; preds = %if.end4.i
  %11 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd.i, i32 0, i32 2, i32 0, i32 0, i32 3, i32 2
  %12 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %12, align 1
  %15 = lshr i32 %14, 24
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %6, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %fw_version2.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 8
  %19 = ptrtoint ptr %fw_version2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %fw_version2.i.i, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %11, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #8
  %conv.i.i = zext i16 %22 to i32
  %max_tx_urbs.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 10
  %23 = ptrtoint ptr %max_tx_urbs.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i.i, ptr %max_tx_urbs.i.i, align 4
  %and.i.i = and i32 %15, 96
  %24 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %and.i.i, label %sw.bb.i.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge [
    i32 0, label %sw.bb.i.cleanup.sink.split.i_crit_edge
    i32 64, label %sw.bb3.i.i
    i32 32, label %sw.bb5.i.i
  ]

sw.bb.i.cleanup.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

sw.bb.i.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit.thread

sw.bb3.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

sw.bb5.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

sw.bb5.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd.i, i32 0, i32 2, i32 0, i32 0, i32 3, i32 6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %25, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %fw_version7.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 8
  %29 = ptrtoint ptr %fw_version7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fw_version7.i, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %6, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #8
  %conv.i = zext i16 %32 to i32
  %max_tx_urbs.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 10
  %33 = ptrtoint ptr %max_tx_urbs.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv.i, ptr %max_tx_urbs.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb5.i, %sw.bb5.i.i, %sw.bb3.i.i, %sw.bb.i.cleanup.sink.split.i_crit_edge
  %kvaser_usb_leaf_dev_cfg_32mhz.sink.i.sink.i = phi ptr [ @kvaser_usb_leaf_dev_cfg_8mhz, %sw.bb5.i ], [ @kvaser_usb_leaf_dev_cfg_32mhz, %sw.bb5.i.i ], [ @kvaser_usb_leaf_dev_cfg_24mhz, %sw.bb3.i.i ], [ @kvaser_usb_leaf_dev_cfg_16mhz, %sw.bb.i.cleanup.sink.split.i_crit_edge ]
  %cfg6.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 4
  %34 = ptrtoint ptr %cfg6.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %kvaser_usb_leaf_dev_cfg_32mhz.sink.i.sink.i, ptr %cfg6.i.i, align 4
  br label %kvaser_usb_leaf_get_software_info_inner.exit.thread

kvaser_usb_leaf_get_software_info_inner.exit.thread: ; preds = %do.body.2.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge, %do.body.1.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge, %cleanup.sink.split.i, %sw.bb.i.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge, %if.end4.i.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge, %entry.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %cleanup.sink.split.i ], [ 0, %sw.bb.i.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge ], [ 0, %if.end4.i.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge ], [ -12, %do.body.2.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge ], [ -12, %do.body.1.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge ], [ -12, %entry.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #8
  br label %do.end

kvaser_usb_leaf_get_software_info_inner.exit:     ; preds = %if.end.i.kvaser_usb_leaf_get_software_info_inner.exit_crit_edge, %kvaser_usb_leaf_send_simple_cmd.exit.i.kvaser_usb_leaf_get_software_info_inner.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i.i, %kvaser_usb_leaf_send_simple_cmd.exit.i.kvaser_usb_leaf_get_software_info_inner.exit_crit_edge ], [ %call1.i, %if.end.i.kvaser_usb_leaf_get_software_info_inner.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -110
  br i1 %cmp, label %do.body.1, label %kvaser_usb_leaf_get_software_info_inner.exit.do.end_crit_edge

kvaser_usb_leaf_get_software_info_inner.exit.do.end_crit_edge: ; preds = %kvaser_usb_leaf_get_software_info_inner.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.1:                                        ; preds = %kvaser_usb_leaf_get_software_info_inner.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i) #8
  %35 = call ptr @memset(ptr %cmd.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3264, i32 noundef 32) #11
  %tobool.not.i.i.1 = icmp eq ptr %call7.i.i.i.1, null
  br i1 %tobool.not.i.i.1, label %do.body.1.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge, label %kvaser_usb_leaf_send_simple_cmd.exit.i.1

do.body.1.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge: ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit.thread

kvaser_usb_leaf_send_simple_cmd.exit.i.1:         ; preds = %do.body.1
  %id.i.i.1 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i.1, i32 0, i32 1
  %37 = ptrtoint ptr %id.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 38, ptr %id.i.i.1, align 1
  %38 = ptrtoint ptr %call7.i.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 4, ptr %call7.i.i.i.1, align 8
  %u.i.i.1 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i.1, i32 0, i32 2
  %channel1.i.i.1 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i.1, i32 0, i32 2, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %channel1.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %channel1.i.i.1, align 1
  %40 = ptrtoint ptr %u.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %u.i.i.1, align 2
  %call5.i.i.1 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.1, i32 noundef 4) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.1)
  %tobool.not.i.1 = icmp eq i32 %call5.i.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %kvaser_usb_leaf_send_simple_cmd.exit.i.1.kvaser_usb_leaf_get_software_info_inner.exit.1_crit_edge

kvaser_usb_leaf_send_simple_cmd.exit.i.1.kvaser_usb_leaf_get_software_info_inner.exit.1_crit_edge: ; preds = %kvaser_usb_leaf_send_simple_cmd.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit.1

if.end.i.1:                                       ; preds = %kvaser_usb_leaf_send_simple_cmd.exit.i.1
  %call1.i.1 = call fastcc i32 @kvaser_usb_leaf_wait_cmd(ptr noundef %dev, i8 noundef zeroext 39, ptr noundef nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end.i.1.if.end4.i_crit_edge, label %if.end.i.1.kvaser_usb_leaf_get_software_info_inner.exit.1_crit_edge

if.end.i.1.kvaser_usb_leaf_get_software_info_inner.exit.1_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit.1

if.end.i.1.if.end4.i_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

kvaser_usb_leaf_get_software_info_inner.exit.1:   ; preds = %if.end.i.1.kvaser_usb_leaf_get_software_info_inner.exit.1_crit_edge, %kvaser_usb_leaf_send_simple_cmd.exit.i.1.kvaser_usb_leaf_get_software_info_inner.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %call5.i.i.1, %kvaser_usb_leaf_send_simple_cmd.exit.i.1.kvaser_usb_leaf_get_software_info_inner.exit.1_crit_edge ], [ %call1.i.1, %if.end.i.1.kvaser_usb_leaf_get_software_info_inner.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %retval.0.i.1)
  %cmp.1 = icmp eq i32 %retval.0.i.1, -110
  br i1 %cmp.1, label %do.body.2, label %kvaser_usb_leaf_get_software_info_inner.exit.1.do.end_crit_edge

kvaser_usb_leaf_get_software_info_inner.exit.1.do.end_crit_edge: ; preds = %kvaser_usb_leaf_get_software_info_inner.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.2:                                        ; preds = %kvaser_usb_leaf_get_software_info_inner.exit.1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i) #8
  %41 = call ptr @memset(ptr %cmd.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 32) #11
  %tobool.not.i.i.2 = icmp eq ptr %call7.i.i.i.2, null
  br i1 %tobool.not.i.i.2, label %do.body.2.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge, label %kvaser_usb_leaf_send_simple_cmd.exit.i.2

do.body.2.kvaser_usb_leaf_get_software_info_inner.exit.thread_crit_edge: ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit.thread

kvaser_usb_leaf_send_simple_cmd.exit.i.2:         ; preds = %do.body.2
  %id.i.i.2 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i.2, i32 0, i32 1
  %43 = ptrtoint ptr %id.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 38, ptr %id.i.i.2, align 1
  %44 = ptrtoint ptr %call7.i.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 4, ptr %call7.i.i.i.2, align 8
  %u.i.i.2 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i.2, i32 0, i32 2
  %channel1.i.i.2 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i.2, i32 0, i32 2, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %channel1.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %channel1.i.i.2, align 1
  %46 = ptrtoint ptr %u.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %u.i.i.2, align 2
  %call5.i.i.2 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.2, i32 noundef 4) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.2)
  %tobool.not.i.2 = icmp eq i32 %call5.i.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %kvaser_usb_leaf_send_simple_cmd.exit.i.2.kvaser_usb_leaf_get_software_info_inner.exit.2_crit_edge

kvaser_usb_leaf_send_simple_cmd.exit.i.2.kvaser_usb_leaf_get_software_info_inner.exit.2_crit_edge: ; preds = %kvaser_usb_leaf_send_simple_cmd.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit.2

if.end.i.2:                                       ; preds = %kvaser_usb_leaf_send_simple_cmd.exit.i.2
  %call1.i.2 = call fastcc i32 @kvaser_usb_leaf_wait_cmd(ptr noundef %dev, i8 noundef zeroext 39, ptr noundef nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %if.end.i.2.if.end4.i_crit_edge, label %if.end.i.2.kvaser_usb_leaf_get_software_info_inner.exit.2_crit_edge

if.end.i.2.kvaser_usb_leaf_get_software_info_inner.exit.2_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_get_software_info_inner.exit.2

if.end.i.2.if.end4.i_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

kvaser_usb_leaf_get_software_info_inner.exit.2:   ; preds = %if.end.i.2.kvaser_usb_leaf_get_software_info_inner.exit.2_crit_edge, %kvaser_usb_leaf_send_simple_cmd.exit.i.2.kvaser_usb_leaf_get_software_info_inner.exit.2_crit_edge
  %retval.0.i.2 = phi i32 [ %call5.i.i.2, %kvaser_usb_leaf_send_simple_cmd.exit.i.2.kvaser_usb_leaf_get_software_info_inner.exit.2_crit_edge ], [ %call1.i.2, %if.end.i.2.kvaser_usb_leaf_get_software_info_inner.exit.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #8
  br label %do.end

do.end:                                           ; preds = %kvaser_usb_leaf_get_software_info_inner.exit.2, %kvaser_usb_leaf_get_software_info_inner.exit.1.do.end_crit_edge, %kvaser_usb_leaf_get_software_info_inner.exit.do.end_crit_edge, %kvaser_usb_leaf_get_software_info_inner.exit.thread
  %retval.0.i7 = phi i32 [ %retval.0.i.ph, %kvaser_usb_leaf_get_software_info_inner.exit.thread ], [ %retval.0.i, %kvaser_usb_leaf_get_software_info_inner.exit.do.end_crit_edge ], [ %retval.0.i.1, %kvaser_usb_leaf_get_software_info_inner.exit.1.do.end_crit_edge ], [ %retval.0.i.2, %kvaser_usb_leaf_get_software_info_inner.exit.2 ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_leaf_get_card_info(ptr noundef %dev) #0 align 64 {
entry:
  %cmd = alloca %struct.kvaser_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 1
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 32) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %kvaser_usb_leaf_send_simple_cmd.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

kvaser_usb_leaf_send_simple_cmd.exit:             ; preds = %entry
  %id.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 34, ptr %id.i, align 1
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %call7.i.i, align 8
  %u.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2
  %channel1.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %channel1.i, align 1
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %u.i, align 2
  %call5.i = tail call i32 @kvaser_usb_send_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 4) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %if.end, label %kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge

kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge: ; preds = %kvaser_usb_leaf_send_simple_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %kvaser_usb_leaf_send_simple_cmd.exit
  %call1 = call fastcc i32 @kvaser_usb_leaf_wait_cmd(ptr noundef %dev, i8 noundef zeroext 35, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 1
  %conv = zext i8 %8 to i32
  %nchannels5 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %9 = ptrtoint ptr %nchannels5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %nchannels5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %cmp = icmp ugt i8 %8, 5
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %10 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp8 = icmp eq i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp11 = icmp ugt i8 %8, 2
  %or.cond = select i1 %cmp8, i1 %cmp11, i1 false
  %spec.select = select i1 %or.cond, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i, %kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_leaf_set_opt_mode(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 21, ptr %id, align 1
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %call7.i.i, align 8
  %u = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %u, align 2
  %channel = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %conv = trunc i32 %5 to i8
  %channel2 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %channel2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %channel2, align 1
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %7 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool3.not, i8 1, i8 2
  %9 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %9, align 4
  %dev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call11 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %12, ptr noundef nonnull %call7.i.i, i32 noundef 8) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_leaf_start_chip(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %start_comp = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %start_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %start_comp, align 4
  %wait.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #8
  %dev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 32) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %kvaser_usb_leaf_send_simple_cmd.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

kvaser_usb_leaf_send_simple_cmd.exit:             ; preds = %entry
  %id.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 26, ptr %id.i, align 1
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %call7.i.i, align 8
  %conv.i = trunc i32 %4 to i8
  %u.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2
  %channel1.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %channel1.i, align 1
  %9 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %u.i, align 2
  %call5.i = tail call i32 @kvaser_usb_send_cmd(ptr noundef %2, ptr noundef nonnull %call7.i.i, i32 noundef 4) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %if.end, label %kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge

kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge: ; preds = %kvaser_usb_leaf_send_simple_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %kvaser_usb_leaf_send_simple_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %start_comp, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool4.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i, %kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge ], [ %., %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_leaf_stop_chip(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stop_comp = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %stop_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %stop_comp, align 4
  %wait.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #8
  %dev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 32) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %kvaser_usb_leaf_send_simple_cmd.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

kvaser_usb_leaf_send_simple_cmd.exit:             ; preds = %entry
  %id.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 28, ptr %id.i, align 1
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %call7.i.i, align 8
  %conv.i = trunc i32 %4 to i8
  %u.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2
  %channel1.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %channel1.i, align 1
  %9 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %u.i, align 2
  %call5.i = tail call i32 @kvaser_usb_send_cmd(ptr noundef %2, ptr noundef nonnull %call7.i.i, i32 noundef 4) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %if.end, label %kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge

kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge: ; preds = %kvaser_usb_leaf_send_simple_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %kvaser_usb_leaf_send_simple_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %stop_comp, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool4.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i, %kvaser_usb_leaf_send_simple_cmd.exit.cleanup_crit_edge ], [ %., %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_leaf_reset_chip(ptr noundef %dev, i32 noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 32) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.kvaser_usb_leaf_send_simple_cmd.exit_crit_edge, label %if.end.i

entry.kvaser_usb_leaf_send_simple_cmd.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_send_simple_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 24, ptr %id.i, align 1
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %call7.i.i, align 8
  %conv.i = trunc i32 %channel to i8
  %u.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2
  %channel1.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %channel1.i, align 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %u.i, align 2
  %call5.i = tail call i32 @kvaser_usb_send_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 4) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %kvaser_usb_leaf_send_simple_cmd.exit

kvaser_usb_leaf_send_simple_cmd.exit:             ; preds = %if.end.i, %entry.kvaser_usb_leaf_send_simple_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ -12, %entry.kvaser_usb_leaf_send_simple_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_leaf_flush_queue(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 48, ptr %id, align 1
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %call7.i.i, align 8
  %channel = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %conv = trunc i32 %4 to i8
  %channel1 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %channel1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %channel1, align 1
  %flags = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %flags, align 4
  %dev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call5 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %8, ptr noundef nonnull %call7.i.i, i32 noundef 8) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_usb_leaf_read_bulk_callback(ptr noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %cf.i.i = alloca ptr, align 4
  %es.i.i = alloca %struct.kvaser_usb_err_summary, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %len, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not33 = icmp slt i32 %sub, 0
  br i1 %cmp.not33, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %nchannels.i63.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %intf.i65.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %max_tx_urbs.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 10
  %status9.i.i = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es.i.i, i32 0, i32 1
  %txerr11.i.i = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es.i.i, i32 0, i32 2
  %rxerr13.i.i = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es.i.i, i32 0, i32 3
  %1 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es.i.i, i32 0, i32 4
  %arrayidx.i53.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 0
  %error_state.i58.i.i = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es.i.i, i32 0, i32 4, i32 0, i32 1
  %arrayidx.i83.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 1
  %bulk_in = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %pos.034 = phi i32 [ 0, %while.body.lr.ph ], [ %pos.0.be, %while.cond.backedge.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.034
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2 = icmp eq i8 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub4 = add i32 %pos.034, -1
  %4 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bulk_in, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wMaxPacketSize, align 1
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %conv5 = zext i16 %8 to i32
  %sub6 = add nsw i32 %conv5, -1
  %or = or i32 %sub6, %sub4
  %add = add i32 %or, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %kvaser_usb_leaf_handle_command.exit, %if.then
  %pos.0.be = phi i32 [ %add, %if.then ], [ %add22, %kvaser_usb_leaf_handle_command.exit ]
  %cmp.not = icmp sgt i32 %pos.0.be, %sub
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %while.body
  %conv = zext i8 %3 to i32
  %add9 = add i32 %pos.034, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %len)
  %cmp10 = icmp sgt i32 %add9, %len
  br i1 %cmp10, label %do.body, label %if.end19

do.body:                                          ; preds = %if.end
  %call = call i32 @___ratelimit(ptr noundef nonnull @kvaser_usb_leaf_read_bulk_callback._rs, ptr noundef nonnull @__func__.kvaser_usb_leaf_read_bulk_callback) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.while.end_crit_edge, label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %intf.i65.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf.i65.i, align 4
  %dev15 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.1) #12
  br label %while.end

if.end19:                                         ; preds = %if.end
  %id.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 1
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id.i, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %12, label %if.end19.do.end.i_crit_edge [
    i8 27, label %sw.bb.i
    i8 29, label %sw.bb1.i
    i8 12, label %if.end19.sw.bb2.i_crit_edge
    i8 14, label %if.end19.sw.bb2.i_crit_edge35
    i8 106, label %sw.bb3.i
    i8 20, label %if.end19.sw.bb5.i_crit_edge
    i8 51, label %if.end19.sw.bb5.i_crit_edge36
    i8 50, label %sw.bb12.i
    i8 33, label %sw.bb13.i
    i8 68, label %sw.bb20.i
  ]

if.end19.sw.bb5.i_crit_edge36:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.end19.sw.bb5.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.end19.sw.bb2.i_crit_edge35:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.end19.sw.bb2.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.end19.do.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

sw.bb.i:                                          ; preds = %if.end19
  %channel1.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %channel1.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %nchannels.i63.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nchannels.i63.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i.i)
  %cmp.not.i.i = icmp ugt i32 %17, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %intf.i65.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf.i65.i, align 4
  %dev3.i.i = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i.i, ptr noundef nonnull @.str.9, i32 noundef %conv.i.i) #12
  br label %kvaser_usb_leaf_handle_command.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  %arrayidx.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %conv.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %start_comp.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %21, i32 0, i32 5
  %call.i.i = call zeroext i1 @completion_done(ptr noundef %start_comp.i.i) #8
  br i1 %call.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.else.i.i_crit_edge

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %netdev.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev.i.i, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i.i.i, align 128
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then8.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @netif_tx_wake_queue(ptr noundef %25) #8
  br label %kvaser_usb_leaf_handle_command.exit

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end.i.i.if.else.i.i_crit_edge
  %netdev10.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %21, i32 0, i32 3
  %28 = ptrtoint ptr %netdev10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev10.i.i, align 4
  %_tx.i.i23.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i23.i.i, align 128
  %state.i.i24.i.i = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i24.i.i) #8
  call void @complete(ptr noundef %start_comp.i.i) #8
  br label %kvaser_usb_leaf_handle_command.exit

sw.bb1.i:                                         ; preds = %if.end19
  %channel1.i49.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %channel1.i49.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %channel1.i49.i, align 1
  %conv.i50.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %nchannels.i63.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nchannels.i63.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i50.i)
  %cmp.not.i52.i = icmp ugt i32 %35, %conv.i50.i
  br i1 %cmp.not.i52.i, label %if.end.i57.i, label %do.end.i55.i

do.end.i55.i:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %intf.i65.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %intf.i65.i, align 4
  %dev3.i54.i = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i54.i, ptr noundef nonnull @.str.9, i32 noundef %conv.i50.i) #12
  br label %kvaser_usb_leaf_handle_command.exit

if.end.i57.i:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i56.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %conv.i50.i
  %38 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i56.i, align 4
  %stop_comp.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %39, i32 0, i32 6
  call void @complete(ptr noundef %stop_comp.i.i) #8
  br label %kvaser_usb_leaf_handle_command.exit

sw.bb2.i:                                         ; preds = %if.end19.sw.bb2.i_crit_edge, %if.end19.sw.bb2.i_crit_edge35
  call fastcc void @kvaser_usb_leaf_rx_can_msg(ptr noundef %dev, ptr noundef %add.ptr) #8
  br label %kvaser_usb_leaf_handle_command.exit

sw.bb3.i:                                         ; preds = %if.end19
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.not.i = icmp eq i32 %41, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb3.i.do.end.i_crit_edge

sw.bb3.i.do.end.i_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i:                                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @kvaser_usb_leaf_rx_can_msg(ptr noundef %dev, ptr noundef %add.ptr) #8
  br label %kvaser_usb_leaf_handle_command.exit

sw.bb5.i:                                         ; preds = %if.end19.sw.bb5.i_crit_edge, %if.end19.sw.bb5.i_crit_edge36
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp8.i = icmp eq i32 %43, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @kvaser_usb_leaf_leaf_rx_error(ptr noundef %dev, ptr noundef %add.ptr) #8
  br label %kvaser_usb_leaf_handle_command.exit

if.else.i:                                        ; preds = %sw.bb5.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %es.i.i) #8
  %44 = call ptr @memset(ptr %es.i.i, i32 0, i32 6)
  %45 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %12, label %do.end.i60.i [
    i8 20, label %sw.bb.i.i
    i8 51, label %sw.bb6.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.else.i
  %u.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2
  %channel.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %channel.i.i, align 1
  %48 = ptrtoint ptr %es.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %es.i.i, align 1
  %status.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2, i32 0, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %status.i.i, align 1
  %51 = ptrtoint ptr %status9.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %status9.i.i, align 1
  %tx_errors_count.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2, i32 0, i32 0, i32 2
  %52 = ptrtoint ptr %tx_errors_count.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tx_errors_count.i.i, align 1
  %54 = ptrtoint ptr %txerr11.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %txerr11.i.i, align 1
  %rx_errors_count.i.i = getelementptr inbounds %struct.usbcan_cmd_chip_state_event, ptr %u.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %rx_errors_count.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rx_errors_count.i.i, align 1
  %57 = ptrtoint ptr %rxerr13.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %rxerr13.i.i, align 1
  %conv.i.i.i = zext i8 %47 to i32
  %58 = ptrtoint ptr %nchannels.i63.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nchannels.i63.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %conv.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %59, %conv.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %intf.i65.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %intf.i65.i, align 4
  %dev3.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %61, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i.i.i, ptr noundef nonnull @.str.9, i32 noundef %conv.i.i.i) #12
  br label %kvaser_usb_leaf_usbcan_rx_error.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %arrayidx.i.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %conv.i.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i, align 4
  %bec.i.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %bec.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %bec.i.i.i, align 4
  %66 = zext i8 %53 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %66)
  %cmp7.not.i.i.i = icmp eq i16 %65, %66
  br i1 %cmp7.not.i.i.i, label %if.end.i.i.i.if.end12.i.i.i_crit_edge, label %if.then9.i.i.i

if.end.i.i.i.if.end12.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %error_state.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %error_state.i58.i.i, align 1
  %69 = or i8 %68, 1
  store i8 %69, ptr %error_state.i58.i.i, align 1
  br label %if.end12.i.i.i

if.end12.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.end.i.i.i.if.end12.i.i.i_crit_edge
  %70 = xor i1 %cmp7.not.i.i.i, true
  %rxerr15.i.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %63, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %rxerr15.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %rxerr15.i.i.i, align 2
  %73 = zext i8 %56 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %72, i16 %73)
  %cmp17.not.i.i.i = icmp eq i16 %72, %73
  br i1 %cmp17.not.i.i.i, label %if.end12.i.i.i.if.end24.i.i.i_crit_edge, label %if.then19.i.i.i

if.end12.i.i.i.if.end24.i.i.i_crit_edge:          ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i.i.i

if.then19.i.i.i:                                  ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %error_state.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %error_state.i58.i.i, align 1
  %76 = or i8 %75, 2
  store i8 %76, ptr %error_state.i58.i.i, align 1
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %if.then19.i.i.i, %if.end12.i.i.i.if.end24.i.i.i_crit_edge
  %report_error.1.off0.i.i.i = phi i1 [ true, %if.then19.i.i.i ], [ %70, %if.end12.i.i.i.if.end24.i.i.i_crit_edge ]
  %77 = and i8 %50, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i.i.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i.i.i, label %if.end24.i.i.i.if.end34.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end24.i.i.i.if.end34.i.i.i_crit_edge:          ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end24.i.i.i
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %1, align 1
  %80 = and i8 %79, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool28.not.i.i.i = icmp eq i8 %80, 0
  br i1 %tobool28.not.i.i.i, label %if.then29.i.i.i, label %land.lhs.true.i.i.i.if.end34.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end34.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i.i

if.then29.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %error_state.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %error_state.i58.i.i, align 1
  %83 = or i8 %82, 4
  store i8 %83, ptr %error_state.i58.i.i, align 1
  br label %if.then36.i.i.i

if.end34.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end34.i.i.i_crit_edge, %if.end24.i.i.i.if.end34.i.i.i_crit_edge
  br i1 %report_error.1.off0.i.i.i, label %if.end34.i.i.i.if.then36.i.i.i_crit_edge, label %if.end34.i.i.i.kvaser_usb_leaf_usbcan_rx_error.exit.i_crit_edge

if.end34.i.i.i.kvaser_usb_leaf_usbcan_rx_error.exit.i_crit_edge: ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_usbcan_rx_error.exit.i

if.end34.i.i.i.if.then36.i.i.i_crit_edge:         ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i.i

if.then36.i.i.i:                                  ; preds = %if.end34.i.i.i.if.then36.i.i.i_crit_edge, %if.then29.i.i.i
  call fastcc void @kvaser_usb_leaf_rx_error(ptr noundef %dev, ptr noundef nonnull %es.i.i) #8
  br label %kvaser_usb_leaf_usbcan_rx_error.exit.i

sw.bb6.i.i:                                       ; preds = %if.else.i
  %u8.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2
  %status_ch0.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2, i32 0, i32 0, i32 2, i32 2
  %84 = ptrtoint ptr %status_ch0.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %status_ch0.i.i, align 1
  %86 = ptrtoint ptr %status9.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %status9.i.i, align 1
  %tx_errors_count_ch0.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2, i32 0, i32 0, i32 2
  %87 = ptrtoint ptr %tx_errors_count_ch0.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %tx_errors_count_ch0.i.i, align 1
  %89 = ptrtoint ptr %txerr11.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %txerr11.i.i, align 1
  %rx_errors_count_ch0.i.i = getelementptr inbounds %struct.usbcan_cmd_error_event, ptr %u8.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %rx_errors_count_ch0.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rx_errors_count_ch0.i.i, align 1
  %92 = ptrtoint ptr %rxerr13.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %rxerr13.i.i, align 1
  %status_ch1.i.i = getelementptr inbounds %struct.usbcan_cmd_error_event, ptr %u8.i.i, i32 0, i32 7
  %93 = ptrtoint ptr %status_ch1.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %status_ch1.i.i, align 1
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %1, align 1
  %96 = ptrtoint ptr %nchannels.i63.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nchannels.i63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.not.i49.not.i.i = icmp eq i32 %97, 0
  br i1 %cmp.not.i49.not.i.i, label %do.end.i52.i.i, label %if.end.i57.i.i

do.end.i52.i.i:                                   ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %intf.i65.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %intf.i65.i, align 4
  %dev3.i51.i.i = getelementptr inbounds %struct.usb_interface, ptr %99, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i51.i.i, ptr noundef nonnull @.str.9, i32 noundef 0) #12
  br label %kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i

if.end.i57.i.i:                                   ; preds = %sw.bb6.i.i
  %100 = ptrtoint ptr %arrayidx.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i53.i.i, align 4
  %bec.i55.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %bec.i55.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %bec.i55.i.i, align 4
  %104 = zext i8 %88 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %104)
  %cmp7.not.i56.i.i = icmp eq i16 %103, %104
  br i1 %cmp7.not.i56.i.i, label %if.end.i57.i.i.if.end12.i63.i.i_crit_edge, label %if.then9.i59.i.i

if.end.i57.i.i.if.end12.i63.i.i_crit_edge:        ; preds = %if.end.i57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i63.i.i

if.then9.i59.i.i:                                 ; preds = %if.end.i57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %error_state.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %error_state.i58.i.i, align 1
  %107 = or i8 %106, 1
  store i8 %107, ptr %error_state.i58.i.i, align 1
  br label %if.end12.i63.i.i

if.end12.i63.i.i:                                 ; preds = %if.then9.i59.i.i, %if.end.i57.i.i.if.end12.i63.i.i_crit_edge
  %rxerr15.i61.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %101, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %rxerr15.i61.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %rxerr15.i61.i.i, align 2
  %110 = zext i8 %91 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %109, i16 %110)
  %cmp17.not.i62.i.i = icmp eq i16 %109, %110
  br i1 %cmp17.not.i62.i.i, label %if.end24.i69.i.i, label %if.end24.i69.thread.i.i

if.end24.i69.i.i:                                 ; preds = %if.end12.i63.i.i
  %111 = and i8 %85, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i68.i.i = icmp ne i8 %111, 0
  %112 = and i8 %94, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool28.not.i70.i.i = icmp eq i8 %112, 0
  %or.cond.i.i = select i1 %tobool.not.i68.i.i, i1 %tobool28.not.i70.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end24.i69.i.i.if.then29.i73.i.i_crit_edge, label %if.end34.i74.i.i

if.end24.i69.i.i.if.then29.i73.i.i_crit_edge:     ; preds = %if.end24.i69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i73.i.i

if.end24.i69.thread.i.i:                          ; preds = %if.end12.i63.i.i
  %113 = ptrtoint ptr %error_state.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %error_state.i58.i.i, align 1
  %115 = or i8 %114, 2
  store i8 %115, ptr %error_state.i58.i.i, align 1
  %116 = and i8 %85, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i68109.i.i = icmp ne i8 %116, 0
  %117 = and i8 %94, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool28.not.i70110.i.i = icmp eq i8 %117, 0
  %or.cond111.i.i = select i1 %tobool.not.i68109.i.i, i1 %tobool28.not.i70110.i.i, i1 false
  br i1 %or.cond111.i.i, label %if.end24.i69.thread.i.i.if.then29.i73.i.i_crit_edge, label %if.end24.i69.thread.i.i.if.then36.i75.i.i_crit_edge

if.end24.i69.thread.i.i.if.then36.i75.i.i_crit_edge: ; preds = %if.end24.i69.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i75.i.i

if.end24.i69.thread.i.i.if.then29.i73.i.i_crit_edge: ; preds = %if.end24.i69.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i73.i.i

if.then29.i73.i.i:                                ; preds = %if.end24.i69.thread.i.i.if.then29.i73.i.i_crit_edge, %if.end24.i69.i.i.if.then29.i73.i.i_crit_edge
  %118 = ptrtoint ptr %error_state.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %error_state.i58.i.i, align 1
  %120 = or i8 %119, 4
  store i8 %120, ptr %error_state.i58.i.i, align 1
  br label %if.then36.i75.i.i

if.end34.i74.i.i:                                 ; preds = %if.end24.i69.i.i
  br i1 %cmp7.not.i56.i.i, label %if.end34.i74.i.i.kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i_crit_edge, label %if.end34.i74.i.i.if.then36.i75.i.i_crit_edge

if.end34.i74.i.i.if.then36.i75.i.i_crit_edge:     ; preds = %if.end34.i74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i75.i.i

if.end34.i74.i.i.kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i_crit_edge: ; preds = %if.end34.i74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i

if.then36.i75.i.i:                                ; preds = %if.end34.i74.i.i.if.then36.i75.i.i_crit_edge, %if.then29.i73.i.i, %if.end24.i69.thread.i.i.if.then36.i75.i.i_crit_edge
  call fastcc void @kvaser_usb_leaf_rx_error(ptr noundef %dev, ptr noundef nonnull %es.i.i) #8
  br label %kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i

kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i: ; preds = %if.then36.i75.i.i, %if.end34.i74.i.i.kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i_crit_edge, %do.end.i52.i.i
  %121 = ptrtoint ptr %nchannels.i63.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %nchannels.i63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %122)
  %cmp.i.i = icmp eq i32 %122, 2
  br i1 %cmp.i.i, label %if.end.i87.i.i, label %kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i.kvaser_usb_leaf_usbcan_rx_error.exit.i_crit_edge

kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i.kvaser_usb_leaf_usbcan_rx_error.exit.i_crit_edge: ; preds = %kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_usbcan_rx_error.exit.i

if.end.i87.i.i:                                   ; preds = %kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i
  %123 = ptrtoint ptr %es.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %es.i.i, align 1
  %124 = ptrtoint ptr %status_ch1.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %status_ch1.i.i, align 1
  %126 = ptrtoint ptr %status9.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %status9.i.i, align 1
  %tx_errors_count_ch1.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2, i32 0, i32 0, i32 2, i32 1
  %127 = ptrtoint ptr %tx_errors_count_ch1.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %tx_errors_count_ch1.i.i, align 1
  %129 = ptrtoint ptr %txerr11.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %txerr11.i.i, align 1
  %rx_errors_count_ch1.i.i = getelementptr inbounds %struct.usbcan_cmd_error_event, ptr %u8.i.i, i32 0, i32 5
  %130 = ptrtoint ptr %rx_errors_count_ch1.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %rx_errors_count_ch1.i.i, align 1
  %132 = ptrtoint ptr %rxerr13.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %rxerr13.i.i, align 1
  %133 = ptrtoint ptr %status_ch0.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %status_ch0.i.i, align 1
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %1, align 1
  %136 = ptrtoint ptr %arrayidx.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i83.i.i, align 4
  %bec.i85.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %bec.i85.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %bec.i85.i.i, align 4
  %140 = zext i8 %128 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %139, i16 %140)
  %cmp7.not.i86.i.i = icmp eq i16 %139, %140
  br i1 %cmp7.not.i86.i.i, label %if.end.i87.i.i.if.end12.i93.i.i_crit_edge, label %if.then9.i89.i.i

if.end.i87.i.i.if.end12.i93.i.i_crit_edge:        ; preds = %if.end.i87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i93.i.i

if.then9.i89.i.i:                                 ; preds = %if.end.i87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %error_state.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %error_state.i58.i.i, align 1
  %143 = or i8 %142, 1
  store i8 %143, ptr %error_state.i58.i.i, align 1
  br label %if.end12.i93.i.i

if.end12.i93.i.i:                                 ; preds = %if.then9.i89.i.i, %if.end.i87.i.i.if.end12.i93.i.i_crit_edge
  %rxerr15.i91.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %137, i32 0, i32 1, i32 1
  %144 = ptrtoint ptr %rxerr15.i91.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %rxerr15.i91.i.i, align 2
  %146 = zext i8 %131 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %145, i16 %146)
  %cmp17.not.i92.i.i = icmp eq i16 %145, %146
  br i1 %cmp17.not.i92.i.i, label %if.end24.i99.i.i, label %if.end24.i99.thread.i.i

if.end24.i99.i.i:                                 ; preds = %if.end12.i93.i.i
  %147 = and i8 %125, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i98.i.i = icmp ne i8 %147, 0
  %148 = and i8 %134, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool28.not.i100.i.i = icmp eq i8 %148, 0
  %or.cond107.i.i = select i1 %tobool.not.i98.i.i, i1 %tobool28.not.i100.i.i, i1 false
  br i1 %or.cond107.i.i, label %if.end24.i99.i.i.if.then29.i103.i.i_crit_edge, label %if.end34.i104.i.i

if.end24.i99.i.i.if.then29.i103.i.i_crit_edge:    ; preds = %if.end24.i99.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i103.i.i

if.end24.i99.thread.i.i:                          ; preds = %if.end12.i93.i.i
  %149 = ptrtoint ptr %error_state.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %error_state.i58.i.i, align 1
  %151 = or i8 %150, 2
  store i8 %151, ptr %error_state.i58.i.i, align 1
  %152 = and i8 %125, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i98115.i.i = icmp ne i8 %152, 0
  %153 = and i8 %134, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool28.not.i100116.i.i = icmp eq i8 %153, 0
  %or.cond107117.i.i = select i1 %tobool.not.i98115.i.i, i1 %tobool28.not.i100116.i.i, i1 false
  br i1 %or.cond107117.i.i, label %if.end24.i99.thread.i.i.if.then29.i103.i.i_crit_edge, label %if.end24.i99.thread.i.i.if.then36.i105.i.i_crit_edge

if.end24.i99.thread.i.i.if.then36.i105.i.i_crit_edge: ; preds = %if.end24.i99.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i105.i.i

if.end24.i99.thread.i.i.if.then29.i103.i.i_crit_edge: ; preds = %if.end24.i99.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i103.i.i

if.then29.i103.i.i:                               ; preds = %if.end24.i99.thread.i.i.if.then29.i103.i.i_crit_edge, %if.end24.i99.i.i.if.then29.i103.i.i_crit_edge
  %154 = ptrtoint ptr %error_state.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %error_state.i58.i.i, align 1
  %156 = or i8 %155, 4
  store i8 %156, ptr %error_state.i58.i.i, align 1
  br label %if.then36.i105.i.i

if.end34.i104.i.i:                                ; preds = %if.end24.i99.i.i
  br i1 %cmp7.not.i86.i.i, label %if.end34.i104.i.i.kvaser_usb_leaf_usbcan_rx_error.exit.i_crit_edge, label %if.end34.i104.i.i.if.then36.i105.i.i_crit_edge

if.end34.i104.i.i.if.then36.i105.i.i_crit_edge:   ; preds = %if.end34.i104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i105.i.i

if.end34.i104.i.i.kvaser_usb_leaf_usbcan_rx_error.exit.i_crit_edge: ; preds = %if.end34.i104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_usbcan_rx_error.exit.i

if.then36.i105.i.i:                               ; preds = %if.end34.i104.i.i.if.then36.i105.i.i_crit_edge, %if.then29.i103.i.i, %if.end24.i99.thread.i.i.if.then36.i105.i.i_crit_edge
  call fastcc void @kvaser_usb_leaf_rx_error(ptr noundef %dev, ptr noundef nonnull %es.i.i) #8
  br label %kvaser_usb_leaf_usbcan_rx_error.exit.i

do.end.i60.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i58.i = zext i8 %12 to i32
  %157 = ptrtoint ptr %intf.i65.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %intf.i65.i, align 4
  %dev27.i.i = getelementptr inbounds %struct.usb_interface, ptr %158, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i.i, ptr noundef nonnull @.str.15, i32 noundef %conv.i58.i) #12
  br label %kvaser_usb_leaf_usbcan_rx_error.exit.i

kvaser_usb_leaf_usbcan_rx_error.exit.i:           ; preds = %do.end.i60.i, %if.then36.i105.i.i, %if.end34.i104.i.i.kvaser_usb_leaf_usbcan_rx_error.exit.i_crit_edge, %kvaser_usb_leaf_usbcan_conditionally_rx_error.exit76.i.i.kvaser_usb_leaf_usbcan_rx_error.exit.i_crit_edge, %if.then36.i.i.i, %if.end34.i.i.i.kvaser_usb_leaf_usbcan_rx_error.exit.i_crit_edge, %do.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %es.i.i) #8
  br label %kvaser_usb_leaf_handle_command.exit

sw.bb12.i:                                        ; preds = %if.end19
  %u.i61.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2
  %159 = ptrtoint ptr %u.i61.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %u.i61.i, align 1
  %tid3.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 2, i32 0, i32 0, i32 1
  %161 = ptrtoint ptr %tid3.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %tid3.i.i, align 1
  %conv.i62.i = zext i8 %160 to i32
  %163 = ptrtoint ptr %nchannels.i63.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %nchannels.i63.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %conv.i62.i)
  %cmp.not.i64.i = icmp ugt i32 %164, %conv.i62.i
  br i1 %cmp.not.i64.i, label %if.end.i69.i, label %do.end.i66.i

do.end.i66.i:                                     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %intf.i65.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %intf.i65.i, align 4
  %dev5.i.i = getelementptr inbounds %struct.usb_interface, ptr %166, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.9, i32 noundef %conv.i62.i) #12
  br label %kvaser_usb_leaf_handle_command.exit

if.end.i69.i:                                     ; preds = %sw.bb12.i
  %arrayidx.i67.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %conv.i62.i
  %167 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i67.i, align 4
  %netdev.i68.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %netdev.i68.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %netdev.i68.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %170, i32 0, i32 6
  %171 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %state.i.i.i, align 4
  %173 = and i32 %172, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool.i.not.i.i = icmp eq i32 %173, 0
  br i1 %tobool.i.not.i.i, label %if.end.i69.i.kvaser_usb_leaf_handle_command.exit_crit_edge, label %if.end8.i.i

if.end.i69.i.kvaser_usb_leaf_handle_command.exit_crit_edge: ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_handle_command.exit

if.end8.i.i:                                      ; preds = %if.end.i69.i
  %conv11.i.i = zext i8 %162 to i32
  %174 = ptrtoint ptr %max_tx_urbs.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %max_tx_urbs.i.i, align 4
  %rem.i.i = urem i32 %conv11.i.i, %175
  %restart_ms.i.i = getelementptr inbounds %struct.can_priv, ptr %168, i32 0, i32 24
  %176 = ptrtoint ptr %restart_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %restart_ms.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.not.i.i = icmp eq i32 %177, 0
  br i1 %tobool.not.i.i, label %if.end8.i.i.do.body30.i.i_crit_edge, label %land.lhs.true.i70.i

if.end8.i.i.do.body30.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30.i.i

land.lhs.true.i70.i:                              ; preds = %if.end8.i.i
  %state.i.i = getelementptr inbounds %struct.can_priv, ptr %168, i32 0, i32 21
  %178 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %179)
  %cmp14.i.i = icmp ugt i32 %179, 2
  br i1 %cmp14.i.i, label %if.then16.i.i, label %land.lhs.true.i70.i.do.body30.i.i_crit_edge

land.lhs.true.i70.i.do.body30.i.i_crit_edge:      ; preds = %land.lhs.true.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true.i70.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i) #8
  %180 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i, align 4, !annotation !90
  %call18.i.i = call ptr @alloc_can_err_skb(ptr noundef %170, ptr noundef nonnull %cf.i.i) #8
  %tobool19.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool19.not.i.i, label %if.else.i71.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cf.i.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %182, align 8
  %or.i.i = or i32 %184, 256
  store i32 %or.i.i, ptr %182, align 8
  %call21.i.i = call i32 @netif_rx(ptr noundef nonnull %call18.i.i) #8
  br label %if.end23.i.i

if.else.i71.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %185 = ptrtoint ptr %netdev.i68.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %netdev.i68.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %186, ptr noundef nonnull @.str.24) #12
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.else.i71.i, %if.then20.i.i
  %restarts.i.i = getelementptr inbounds %struct.can_priv, ptr %168, i32 0, i32 1, i32 5
  %187 = ptrtoint ptr %restarts.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %restarts.i.i, align 4
  %inc.i.i = add i32 %188, 1
  store i32 %inc.i.i, ptr %restarts.i.i, align 4
  %189 = ptrtoint ptr %netdev.i68.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %netdev.i68.i, align 4
  call void @netif_carrier_on(ptr noundef %190) #8
  %191 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %state.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i) #8
  br label %do.body30.i.i

do.body30.i.i:                                    ; preds = %if.end23.i.i, %land.lhs.true.i70.i.do.body30.i.i_crit_edge, %if.end8.i.i.do.body30.i.i_crit_edge
  %tx_contexts_lock.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %168, i32 0, i32 9
  %call34.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_contexts_lock.i.i) #8
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %170, i32 0, i32 36, i32 1
  %192 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %tx_packets.i.i, align 4
  %inc39.i.i = add i32 %193, 1
  store i32 %inc39.i.i, ptr %tx_packets.i.i, align 4
  %194 = ptrtoint ptr %netdev.i68.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %netdev.i68.i, align 4
  %echo_index.i.i = getelementptr %struct.kvaser_usb_net_priv, ptr %168, i32 0, i32 11, i32 %rem.i.i, i32 1
  %196 = ptrtoint ptr %echo_index.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %echo_index.i.i, align 4
  %call41.i.i = call i32 @can_get_echo_skb(ptr noundef %195, i32 noundef %197, ptr noundef null) #8
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %170, i32 0, i32 36, i32 3
  %198 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %tx_bytes.i.i, align 4
  %add.i.i = add i32 %199, %call41.i.i
  store i32 %add.i.i, ptr %tx_bytes.i.i, align 4
  %200 = ptrtoint ptr %max_tx_urbs.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %max_tx_urbs.i.i, align 4
  %202 = ptrtoint ptr %echo_index.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %echo_index.i.i, align 4
  %active_tx_contexts.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %168, i32 0, i32 10
  %203 = ptrtoint ptr %active_tx_contexts.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %active_tx_contexts.i.i, align 4
  %dec.i.i = add i32 %204, -1
  store i32 %dec.i.i, ptr %active_tx_contexts.i.i, align 4
  %205 = ptrtoint ptr %netdev.i68.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %netdev.i68.i, align 4
  %_tx.i.i.i72.i = getelementptr inbounds %struct.net_device, ptr %206, i32 0, i32 103
  %207 = ptrtoint ptr %_tx.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %_tx.i.i.i72.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %208) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_contexts_lock.i.i, i32 noundef %call34.i.i) #8
  br label %kvaser_usb_leaf_handle_command.exit

sw.bb13.i:                                        ; preds = %if.end19
  %209 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %210)
  %cmp16.not.i = icmp eq i32 %210, 1
  br i1 %cmp16.not.i, label %sw.bb13.i.kvaser_usb_leaf_handle_command.exit_crit_edge, label %sw.bb13.i.do.end.i_crit_edge

sw.bb13.i.do.end.i_crit_edge:                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

sw.bb13.i.kvaser_usb_leaf_handle_command.exit_crit_edge: ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_handle_command.exit

sw.bb20.i:                                        ; preds = %if.end19
  %211 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp23.not.i = icmp eq i32 %212, 0
  br i1 %cmp23.not.i, label %sw.bb20.i.kvaser_usb_leaf_handle_command.exit_crit_edge, label %sw.bb20.i.do.end.i_crit_edge

sw.bb20.i.do.end.i_crit_edge:                     ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

sw.bb20.i.kvaser_usb_leaf_handle_command.exit_crit_edge: ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kvaser_usb_leaf_handle_command.exit

do.end.i:                                         ; preds = %sw.bb20.i.do.end.i_crit_edge, %sw.bb13.i.do.end.i_crit_edge, %sw.bb3.i.do.end.i_crit_edge, %if.end19.do.end.i_crit_edge
  %213 = ptrtoint ptr %intf.i65.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %intf.i65.i, align 4
  %dev27.i = getelementptr inbounds %struct.usb_interface, ptr %214, i32 0, i32 7
  %conv29.i = zext i8 %12 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27.i, ptr noundef nonnull @.str.6, i32 noundef %conv29.i) #12
  br label %kvaser_usb_leaf_handle_command.exit

kvaser_usb_leaf_handle_command.exit:              ; preds = %do.end.i, %sw.bb20.i.kvaser_usb_leaf_handle_command.exit_crit_edge, %sw.bb13.i.kvaser_usb_leaf_handle_command.exit_crit_edge, %do.body30.i.i, %if.end.i69.i.kvaser_usb_leaf_handle_command.exit_crit_edge, %do.end.i66.i, %kvaser_usb_leaf_usbcan_rx_error.exit.i, %if.then10.i, %if.end.i, %sw.bb2.i, %if.end.i57.i, %do.end.i55.i, %if.else.i.i, %if.then8.i.i, %do.end.i.i
  %215 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %add.ptr, align 1
  %conv21 = zext i8 %216 to i32
  %add22 = add i32 %pos.034, %conv21
  br label %while.cond.backedge

while.end:                                        ; preds = %do.end, %do.body.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @kvaser_usb_leaf_frame_to_cmd(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %cmd_len, i16 noundef zeroext %transid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 32) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.end74_crit_edge, label %if.then

entry.if.end74_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then:                                          ; preds = %entry
  %conv2 = trunc i16 %transid to i8
  %u = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2
  %tid = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %tid, align 1
  %6 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 20, ptr %cmd_len, align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %call7.i, align 8
  %channel = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %conv3 = trunc i32 %9 to i8
  %10 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3, ptr %u, align 2
  %11 = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %13, label %if.then.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 3, i32 9
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 3, i32 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %if.then.sw.epilog_crit_edge
  %cmd_tx_can_flags.0 = phi ptr [ null, %if.then.sw.epilog_crit_edge ], [ %15, %sw.bb7 ], [ %flags, %sw.bb ]
  %16 = ptrtoint ptr %cmd_tx_can_flags.0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %cmd_tx_can_flags.0, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool11.not = icmp sgt i32 %18, -1
  %id45 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 1
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %id45 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 15, ptr %id45, align 1
  %shr = lshr i32 %18, 24
  %20 = trunc i32 %shr to i8
  %conv15 = and i8 %20, 31
  %data17 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %data17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv15, ptr %data17, align 4
  %shr19 = lshr i32 %18, 18
  %22 = trunc i32 %shr19 to i8
  %conv21 = and i8 %22, 63
  %arrayidx24 = getelementptr [14 x i8], ptr %data17, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv21, ptr %arrayidx24, align 1
  %shr26 = lshr i32 %18, 14
  %24 = trunc i32 %shr26 to i8
  %conv28 = and i8 %24, 15
  %arrayidx31 = getelementptr %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv28, ptr %arrayidx31, align 2
  %shr33 = lshr i32 %18, 6
  %conv35 = trunc i32 %shr33 to i8
  %arrayidx38 = getelementptr [14 x i8], ptr %data17, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv35, ptr %arrayidx38, align 1
  %27 = trunc i32 %18 to i8
  %conv41 = and i8 %27, 63
  %arrayidx44 = getelementptr %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv41, ptr %arrayidx44, align 8
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %id45 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 13, ptr %id45, align 1
  %shr47 = lshr i32 %18, 6
  %30 = trunc i32 %shr47 to i8
  %conv49 = and i8 %30, 31
  %data51 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %data51 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv49, ptr %data51, align 4
  %32 = trunc i32 %18 to i8
  %conv55 = and i8 %32, 63
  %arrayidx58 = getelementptr [14 x i8], ptr %data51, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv55, ptr %arrayidx58, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  %34 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %data60 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %arrayidx61 = getelementptr [14 x i8], ptr %data60, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx61, align 1
  %arrayidx64 = getelementptr %struct.kvaser_cmd, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %data65 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5
  %conv66 = zext i8 %36 to i32
  %38 = call ptr @memcpy(ptr %arrayidx64, ptr %data65, i32 %conv66)
  %and68 = and i32 %18, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end.if.end74_crit_edge, label %if.then70

if.end.if.end74_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then70:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %cmd_tx_can_flags.0 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cmd_tx_can_flags.0, align 1
  %41 = or i8 %40, 16
  store i8 %41, ptr %cmd_tx_can_flags.0, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end.if.end74_crit_edge, %entry.if.end74_crit_edge
  ret ptr %call7.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvaser_usb_send_cmd_async(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvaser_usb_send_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_usb_leaf_wait_cmd(ptr noundef %dev, i8 noundef zeroext %id, ptr nocapture noundef writeonly %cmd) unnamed_addr #0 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #8
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3072) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %bulk_in = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 5
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %add.neg = sub i32 -100, %1
  br label %do.body

do.body:                                          ; preds = %do.cond42.do.body_crit_edge, %do.body.preheader
  %call2 = call i32 @kvaser_usb_recv_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 3072, ptr noundef nonnull %actual_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.body.end_crit_edge, label %while.cond.preheader

do.body.end_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

while.cond.preheader:                             ; preds = %do.body
  %3 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %actual_len, align 4
  %sub = add i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5.not70 = icmp slt i32 %sub, 0
  br i1 %cmp5.not70, label %while.cond.preheader.do.cond42_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.do.cond42_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond42

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %pos.071 = phi i32 [ %pos.0.be, %while.cond.backedge.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %pos.071
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp6 = icmp eq i8 %6, 0
  br i1 %cmp6, label %if.then8, label %if.end13

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub9 = add i32 %pos.071, -1
  %7 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bulk_in, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wMaxPacketSize, align 1
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %conv10 = zext i16 %11 to i32
  %sub11 = add nsw i32 %conv10, -1
  %or = or i32 %sub11, %sub9
  %add12 = add i32 %or, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end29.while.cond.backedge_crit_edge, %if.then8
  %pos.0.be = phi i32 [ %add12, %if.then8 ], [ %add16, %if.end29.while.cond.backedge_crit_edge ]
  %cmp5.not = icmp sgt i32 %pos.0.be, %sub
  br i1 %cmp5.not, label %while.cond.backedge.do.cond42_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.do.cond42_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond42

if.end13:                                         ; preds = %while.body
  %conv = zext i8 %6 to i32
  %add16 = add i32 %pos.071, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %4)
  %cmp17 = icmp sgt i32 %add16, %4
  br i1 %cmp17, label %do.body20, label %if.end29

do.body20:                                        ; preds = %if.end13
  %call21 = call i32 @___ratelimit(ptr noundef nonnull @kvaser_usb_leaf_wait_cmd._rs, ptr noundef nonnull @__func__.kvaser_usb_leaf_wait_cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.do.cond42_crit_edge, label %do.end

do.body20.do.cond42_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond42

do.end:                                           ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf, align 4
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.1) #12
  br label %do.cond42

if.end29:                                         ; preds = %if.end13
  %id30 = getelementptr inbounds %struct.kvaser_cmd, ptr %add.ptr, i32 0, i32 1
  %14 = ptrtoint ptr %id30 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id30, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %id)
  %cmp33 = icmp eq i8 %15, %id
  br i1 %cmp33, label %if.then35, label %if.end29.while.cond.backedge_crit_edge

if.end29.while.cond.backedge_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %conv.le = zext i8 %6 to i32
  %16 = call ptr @memcpy(ptr %cmd, ptr %add.ptr, i32 %conv.le)
  br label %end

do.cond42:                                        ; preds = %do.end, %do.body20.do.cond42_crit_edge, %while.cond.backedge.do.cond42_crit_edge, %while.cond.preheader.do.cond42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub43 = add i32 %add.neg, %17
  %cmp44 = icmp slt i32 %sub43, 0
  br i1 %cmp44, label %do.cond42.do.body_crit_edge, label %do.cond42.end_crit_edge

do.cond42.end_crit_edge:                          ; preds = %do.cond42
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

do.cond42.do.body_crit_edge:                      ; preds = %do.cond42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

end:                                              ; preds = %do.cond42.end_crit_edge, %if.then35, %do.body.end_crit_edge
  %err.0 = phi i32 [ %call2, %if.then35 ], [ -22, %do.cond42.end_crit_edge ], [ %call2, %do.body.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvaser_usb_recv_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_usb_leaf_rx_can_msg(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #8
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !90
  %u = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %u, align 1
  %conv = zext i8 %2 to i32
  %nchannels = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp ugt i32 %4, %conv
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.9, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %conv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %netdev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %stats5 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36
  %flag = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flag, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %14 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true
  %id = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 106, i8 %18)
  %cmp12 = icmp eq i8 %18, 106
  br i1 %cmp12, label %if.then14, label %land.lhs.true10.if.else_crit_edge

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @kvaser_usb_leaf_leaf_rx_error(ptr noundef %dev, ptr noundef %cmd)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %conv17 = zext i8 %12 to i32
  %and18 = and i32 %conv17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else21, label %if.then20

if.then20:                                        ; preds = %if.else
  %and.i = and i32 %conv17, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef %conv17) #12
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36, i32 4
  %19 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_errors.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %rx_errors.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.then20
  %and9.i = and i32 %conv17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.cleanup_crit_edge, label %if.then11.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @kvaser_usb_can_rx_over_error(ptr noundef %10) #8
  br label %cleanup

if.else21:                                        ; preds = %if.else
  %and25 = and i32 %conv17, 239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end34, label %if.then27

if.then27:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %conv17) #12
  br label %cleanup

if.end34:                                         ; preds = %if.else21
  %21 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %23, label %if.end34.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb38
  ]

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %data40 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb, %if.end34.sw.epilog_crit_edge
  %rx_data.0 = phi ptr [ null, %if.end34.sw.epilog_crit_edge ], [ %data40, %sw.bb38 ], [ %data, %sw.bb ]
  %call = call ptr @alloc_can_skb(ptr noundef %10, ptr noundef nonnull %cf) #8
  %tobool43.not = icmp eq ptr %call, null
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36, i32 6
  %25 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_dropped, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %rx_dropped, align 4
  br label %cleanup

if.end45:                                         ; preds = %sw.epilog
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp48 = icmp eq i32 %28, 0
  br i1 %cmp48, label %land.lhs.true50, label %if.end45.if.else89_crit_edge

if.end45.if.else89_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else89

land.lhs.true50:                                  ; preds = %if.end45
  %id51 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1
  %29 = ptrtoint ptr %id51 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %id51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 106, i8 %30)
  %cmp53 = icmp eq i8 %30, 106
  br i1 %cmp53, label %if.then55, label %land.lhs.true50.if.else89_crit_edge

land.lhs.true50.if.else89_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else89

if.then55:                                        ; preds = %land.lhs.true50
  %id57 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %id57 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %id57, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cf, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %35, align 8
  %37 = load ptr, ptr %cf, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool60.not204 = icmp slt i32 %39, 0
  %storemerge.v = select i1 %tobool60.not204, i32 -1610612737, i32 2047
  %storemerge = and i32 %storemerge.v, %39
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %storemerge, ptr %37, align 8
  %dlc = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %dlc to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dlc, align 1
  %43 = call i8 @llvm.umin.i8(i8 %42, i8 8)
  %44 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cf, align 4
  %46 = getelementptr inbounds %struct.can_frame, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %43, ptr %46, align 4
  %48 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flag, align 1
  %50 = and i8 %49, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool79.not = icmp eq i8 %50, 0
  br i1 %tobool79.not, label %if.else82, label %if.then80

if.then80:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %45, align 8
  %or = or i32 %52, 1073741824
  store i32 %or, ptr %45, align 8
  br label %if.end150

if.else82:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %data83 = getelementptr inbounds %struct.can_frame, ptr %45, i32 0, i32 5
  %data86 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 6
  %conv87 = zext i8 %43 to i32
  %53 = call ptr @memcpy(ptr %data83, ptr %data86, i32 %conv87)
  br label %if.end150

if.else89:                                        ; preds = %land.lhs.true50.if.else89_crit_edge, %if.end45.if.else89_crit_edge
  %54 = ptrtoint ptr %rx_data.0 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %rx_data.0, align 1
  %56 = and i8 %55, 31
  %and92 = zext i8 %56 to i32
  %shl = shl nuw nsw i32 %and92, 6
  %arrayidx93 = getelementptr i8, ptr %rx_data.0, i32 1
  %57 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx93, align 1
  %59 = and i8 %58, 63
  %and95 = zext i8 %59 to i32
  %or96 = or i32 %shl, %and95
  %60 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cf, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or96, ptr %61, align 8
  %id98 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1
  %63 = ptrtoint ptr %id98 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %id98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %64)
  %cmp100 = icmp eq i8 %64, 14
  br i1 %cmp100, label %if.then102, label %if.else89.if.end122_crit_edge

if.else89.if.end122_crit_edge:                    ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then102:                                       ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cf, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl104 = shl i32 %68, 18
  store i32 %shl104, ptr %66, align 8
  %arrayidx105 = getelementptr i8, ptr %rx_data.0, i32 2
  %69 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx105, align 1
  %71 = and i8 %70, 15
  %and107 = zext i8 %71 to i32
  %shl108 = shl nuw nsw i32 %and107, 14
  %arrayidx109 = getelementptr i8, ptr %rx_data.0, i32 3
  %72 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %73 to i32
  %shl112 = shl nuw nsw i32 %conv110, 6
  %or113 = or i32 %shl108, %shl112
  %arrayidx114 = getelementptr i8, ptr %rx_data.0, i32 4
  %74 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx114, align 1
  %76 = and i8 %75, 63
  %and116 = zext i8 %76 to i32
  %or117 = or i32 %or113, %and116
  %77 = load ptr, ptr %cf, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %or119 = or i32 %or117, %79
  store i32 %or119, ptr %77, align 8
  %80 = load ptr, ptr %cf, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  %or121 = or i32 %82, -2147483648
  store i32 %or121, ptr %80, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.then102, %if.else89.if.end122_crit_edge
  %arrayidx123 = getelementptr i8, ptr %rx_data.0, i32 5
  %83 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx123, align 1
  %85 = call i8 @llvm.umin.i8(i8 %84, i8 8)
  %86 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cf, align 4
  %88 = getelementptr inbounds %struct.can_frame, ptr %87, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %85, ptr %88, align 4
  %90 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %flag, align 1
  %92 = and i8 %91, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool140.not = icmp eq i8 %92, 0
  br i1 %tobool140.not, label %if.else144, label %if.then141

if.then141:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %87, align 8
  %or143 = or i32 %94, 1073741824
  store i32 %or143, ptr %87, align 8
  br label %if.end150

if.else144:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %data145 = getelementptr inbounds %struct.can_frame, ptr %87, i32 0, i32 5
  %arrayidx147 = getelementptr i8, ptr %rx_data.0, i32 6
  %conv148 = zext i8 %85 to i32
  %95 = call ptr @memcpy(ptr %data145, ptr %arrayidx147, i32 %conv148)
  br label %if.end150

if.end150:                                        ; preds = %if.else144, %if.then141, %if.else82, %if.then80
  %96 = ptrtoint ptr %stats5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %stats5, align 4
  %inc151 = add i32 %97, 1
  store i32 %inc151, ptr %stats5, align 4
  %98 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cf, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %and153 = and i32 %101, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.then155, label %if.end150.if.end157_crit_edge

if.end150.if.end157_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

if.then155:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  %102 = getelementptr inbounds %struct.can_frame, ptr %99, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 4
  %conv156 = zext i8 %104 to i32
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36, i32 2
  %105 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_bytes, align 4
  %add = add i32 %106, %conv156
  store i32 %add, ptr %rx_bytes, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end150.if.end157_crit_edge
  %call158 = call i32 @netif_rx(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.then44, %if.then27, %if.then11.i, %if.end.i.cleanup_crit_edge, %if.then.i, %if.then14, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_usb_leaf_leaf_rx_error(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  %es = alloca %struct.kvaser_usb_err_summary, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %es) #8
  %0 = call ptr @memset(ptr %es, i32 0, i32 6)
  %id = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %id, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %2, label %do.end [
    i8 51, label %sw.bb
    i8 106, label %sw.bb8
    i8 20, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %channel = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel, align 1
  %6 = ptrtoint ptr %es to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %es, align 1
  %status = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 1
  %status3 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 1
  %9 = ptrtoint ptr %status3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %status3, align 1
  %tx_errors_count = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %tx_errors_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_errors_count, align 1
  %txerr = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 2
  %12 = ptrtoint ptr %txerr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %txerr, align 1
  %rx_errors_count = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %rx_errors_count to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rx_errors_count, align 1
  %rxerr = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 3
  %15 = ptrtoint ptr %rxerr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %rxerr, align 1
  %error_factor = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %error_factor to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %error_factor, align 1
  %18 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %18, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %u9 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2
  %20 = ptrtoint ptr %u9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %u9, align 1
  %22 = ptrtoint ptr %es to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %es, align 1
  %data = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 6
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 1
  %status13 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 1
  %25 = ptrtoint ptr %status13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %status13, align 1
  %arrayidx16 = getelementptr %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx16, align 1
  %txerr17 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 2
  %28 = ptrtoint ptr %txerr17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %txerr17, align 1
  %arrayidx20 = getelementptr %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 9
  %29 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx20, align 1
  %rxerr21 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 3
  %31 = ptrtoint ptr %rxerr21 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %rxerr21, align 1
  %arrayidx24 = getelementptr %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 7
  %32 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx24, align 1
  %34 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %33, ptr %34, align 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %channel28 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %channel28 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %channel28, align 1
  %38 = ptrtoint ptr %es to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %es, align 1
  %status31 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %status31 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %status31, align 1
  %status32 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 1
  %41 = ptrtoint ptr %status32 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %status32, align 1
  %tx_errors_count34 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %tx_errors_count34 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_errors_count34, align 1
  %txerr35 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 2
  %44 = ptrtoint ptr %txerr35 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %txerr35, align 1
  %rx_errors_count37 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %rx_errors_count37 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rx_errors_count37, align 1
  %rxerr38 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 3
  %47 = ptrtoint ptr %rxerr38 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %rxerr38, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %2 to i32
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %48 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %intf, align 4
  %dev40 = getelementptr inbounds %struct.usb_interface, ptr %49, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.15, i32 noundef %conv) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb8, %sw.bb
  call fastcc void @kvaser_usb_leaf_rx_error(ptr noundef %dev, ptr noundef nonnull %es)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %es) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvaser_usb_can_rx_over_error(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_usb_leaf_rx_error(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %es) unnamed_addr #0 align 64 {
entry:
  %cf = alloca ptr, align 4
  %tmp_cf = alloca %struct.can_frame, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #8
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_cf) #8
  %1 = call ptr @memcpy(ptr %tmp_cf, ptr @__const.kvaser_usb_leaf_rx_error.tmp_cf, i32 16)
  %2 = ptrtoint ptr %es to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %es, align 1
  %conv = zext i8 %3 to i32
  %nchannels = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp ugt i32 %5, %conv
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.9, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %netdev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  %state = getelementptr inbounds %struct.can_priv, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call fastcc void @kvaser_usb_leaf_rx_error_update_can_state(ptr noundef %9, ptr noundef %es, ptr noundef nonnull %tmp_cf)
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  %call = call ptr @alloc_can_err_skb(ptr noundef %17, ptr noundef nonnull %cf) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 6
  %18 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_dropped, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_dropped, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %20 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cf, align 4
  %22 = call ptr @memcpy(ptr %21, ptr %tmp_cf, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp12.not = icmp eq i32 %15, %13
  br i1 %cmp12.not, label %if.end11.if.end36_crit_edge, label %if.then14

if.end11.if.end36_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then14:                                        ; preds = %if.end11
  %status = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 1
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status, align 1
  %25 = and i8 %24, 65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not = icmp eq i8 %25, 0
  br i1 %tobool16.not, label %if.then14.if.end24_crit_edge, label %if.then17

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then17:                                        ; preds = %if.then14
  %restart_ms = getelementptr inbounds %struct.can_priv, ptr %9, i32 0, i32 24
  %26 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool19.not = icmp eq i32 %27, 0
  br i1 %tobool19.not, label %if.then20, label %if.then17.if.end22_crit_edge

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.then17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 2848, i32 noundef 32) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then20.if.end22_crit_edge, label %if.end.i

if.then20.if.end22_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end.i:                                         ; preds = %if.then20
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 28, ptr %id.i, align 1
  %channel.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %9, i32 0, i32 4
  %31 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channel.i, align 4
  %conv.i = trunc i32 %32 to i8
  %channel1.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %channel1.i, align 1
  %call4.i = call i32 @kvaser_usb_send_cmd_async(ptr noundef %9, ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end22_crit_edge, label %if.then6.i

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then6.i, %if.end.i.if.end22_crit_edge, %if.then20.if.end22_crit_edge, %if.then17.if.end22_crit_edge
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 4
  call void @netif_carrier_off(ptr noundef %35) #8
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.then14.if.end24_crit_edge
  %restart_ms26 = getelementptr inbounds %struct.can_priv, ptr %9, i32 0, i32 24
  %36 = ptrtoint ptr %restart_ms26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %restart_ms26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool27.not = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp28 = icmp ugt i32 %13, 2
  %or.cond = select i1 %tobool27.not, i1 %cmp28, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp31 = icmp ult i32 %15, 3
  %or.cond162 = select i1 %or.cond, i1 %cmp31, i1 false
  br i1 %or.cond162, label %if.then33, label %if.end24.if.end36_crit_edge

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cf, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %or = or i32 %41, 256
  store i32 %or, ptr %39, align 8
  %42 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev, align 4
  call void @netif_carrier_on(ptr noundef %43) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end24.if.end36_crit_edge, %if.end11.if.end36_crit_edge
  %44 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %46, label %if.end36.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb112
  ]

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end36
  %48 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool37.not = icmp eq i8 %50, 0
  br i1 %tobool37.not, label %sw.bb.sw.epilog_crit_edge, label %if.then38

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then38:                                        ; preds = %sw.bb
  %51 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cf, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %or40 = or i32 %54, 136
  store i32 %or40, ptr %52, align 8
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %48, align 1
  %57 = and i8 %56, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool44.not = icmp eq i8 %57, 0
  br i1 %tobool44.not, label %if.then38.if.end47_crit_edge, label %if.then45

if.then38.if.end47_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then45:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cf, align 4
  %arrayidx46 = getelementptr %struct.can_frame, ptr %59, i32 0, i32 5, i32 3
  %60 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 25, ptr %arrayidx46, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then38.if.end47_crit_edge
  %61 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %48, align 1
  %63 = and i8 %62, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool51.not = icmp eq i8 %63, 0
  br i1 %tobool51.not, label %if.end47.if.end55_crit_edge, label %if.then52

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cf, align 4
  %arrayidx54 = getelementptr %struct.can_frame, ptr %65, i32 0, i32 5, i32 3
  %66 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 8, ptr %arrayidx54, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end47.if.end55_crit_edge
  %67 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %48, align 1
  %69 = and i8 %68, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool59.not = icmp eq i8 %69, 0
  br i1 %tobool59.not, label %if.end55.if.end66_crit_edge, label %if.then60

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cf, align 4
  %arrayidx62 = getelementptr %struct.can_frame, ptr %71, i32 0, i32 5, i32 2
  %72 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx62, align 2
  %74 = or i8 %73, 2
  store i8 %74, ptr %arrayidx62, align 2
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %if.end55.if.end66_crit_edge
  %75 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %48, align 1
  %77 = and i8 %76, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool70.not = icmp eq i8 %77, 0
  br i1 %tobool70.not, label %if.end66.if.end77_crit_edge, label %if.then71

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cf, align 4
  %arrayidx73 = getelementptr %struct.can_frame, ptr %79, i32 0, i32 5, i32 2
  %80 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx73, align 2
  %82 = or i8 %81, 4
  store i8 %82, ptr %arrayidx73, align 2
  br label %if.end77

if.end77:                                         ; preds = %if.then71, %if.end66.if.end77_crit_edge
  %83 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %48, align 1
  %85 = and i8 %84, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool81.not = icmp eq i8 %85, 0
  br i1 %tobool81.not, label %if.end77.if.end88_crit_edge, label %if.then82

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cf, align 4
  %arrayidx84 = getelementptr %struct.can_frame, ptr %87, i32 0, i32 5, i32 2
  %88 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx84, align 2
  %90 = or i8 %89, 8
  store i8 %90, ptr %arrayidx84, align 2
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.end77.if.end88_crit_edge
  %91 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %48, align 1
  %93 = and i8 %92, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool92.not = icmp eq i8 %93, 0
  br i1 %tobool92.not, label %if.end88.if.end99_crit_edge, label %if.then93

if.end88.if.end99_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cf, align 4
  %arrayidx95 = getelementptr %struct.can_frame, ptr %95, i32 0, i32 5, i32 2
  %96 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx95, align 2
  %98 = or i8 %97, 16
  store i8 %98, ptr %arrayidx95, align 2
  %99 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %99)
  %.pr = load i8, ptr %48, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.then93, %if.end88.if.end99_crit_edge
  %100 = phi i8 [ %.pr, %if.then93 ], [ %92, %if.end88.if.end99_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %100)
  %tobool103.not = icmp sgt i8 %100, -1
  br i1 %tobool103.not, label %if.end99.sw.epilog_crit_edge, label %if.then104

if.end99.sw.epilog_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cf, align 4
  %arrayidx106 = getelementptr %struct.can_frame, ptr %102, i32 0, i32 5, i32 2
  %103 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx106, align 2
  %105 = or i8 %104, -128
  store i8 %105, ptr %arrayidx106, align 2
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end36
  %error_state = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 4, i32 0, i32 1
  %106 = ptrtoint ptr %error_state to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %error_state, align 1
  %108 = and i8 %107, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool115.not = icmp eq i8 %108, 0
  br i1 %tobool115.not, label %sw.bb112.sw.epilog_crit_edge, label %if.then116

sw.bb112.sw.epilog_crit_edge:                     ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then116:                                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cf, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 8
  %or118 = or i32 %112, 128
  store i32 %or118, ptr %110, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then116, %sw.bb112.sw.epilog_crit_edge, %if.then104, %if.end99.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end36.sw.epilog_crit_edge
  %txerr = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 2
  %113 = ptrtoint ptr %txerr to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %txerr, align 1
  %115 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cf, align 4
  %arrayidx121 = getelementptr %struct.can_frame, ptr %116, i32 0, i32 5, i32 6
  %117 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %114, ptr %arrayidx121, align 2
  %rxerr = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 3
  %118 = ptrtoint ptr %rxerr to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %rxerr, align 1
  %120 = load ptr, ptr %cf, align 4
  %arrayidx123 = getelementptr %struct.can_frame, ptr %120, i32 0, i32 5, i32 7
  %121 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %119, ptr %arrayidx123, align 1
  %call124 = call i32 @netif_rx(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then10, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_cf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_usb_leaf_rx_error_update_can_state(ptr nocapture noundef %priv, ptr nocapture noundef readonly %es, ptr noundef %cf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %netdev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kvaser_usb_leaf_rx_error_update_can_state.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kvaser_usb_leaf_rx_error_update_can_state, %do.end9)) #8
          to label %if.then [label %do.end9], !srcloc !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %status = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kvaser_usb_leaf_rx_error_update_can_state.__UNIQUE_ID_ddebug464, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %conv) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 21
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %status12 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 1
  %10 = ptrtoint ptr %status12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status12, align 1
  %conv13 = zext i8 %11 to i32
  %and = and i32 %conv13, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else, label %do.end9.if.end57_crit_edge

do.end9.if.end57_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else:                                          ; preds = %do.end9
  %and18 = and i32 %conv13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else21, label %if.else.if.end57_crit_edge

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else21:                                        ; preds = %if.else
  %and24 = and i32 %conv13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp ne i32 %and24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp ult i32 %9, 3
  %or.cond = select i1 %tobool25.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then28, label %if.else21.if.end57_crit_edge

if.else21.if.end57_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then28:                                        ; preds = %if.else21
  %txerr = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 2
  %12 = ptrtoint ptr %txerr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %txerr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp30 = icmp slt i8 %13, 0
  br i1 %cmp30, label %if.then28.if.end57_crit_edge, label %lor.lhs.false

if.then28.if.end57_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

lor.lhs.false:                                    ; preds = %if.then28
  %rxerr = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 3
  %14 = ptrtoint ptr %rxerr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rxerr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp33 = icmp slt i8 %15, 0
  br i1 %cmp33, label %lor.lhs.false.if.end57_crit_edge, label %if.else36

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else36:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %13)
  %cmp39 = icmp ugt i8 %13, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %15)
  %cmp44 = icmp ugt i8 %15, 95
  %or.cond169 = select i1 %cmp39, i1 true, i1 %cmp44
  %spec.select173 = zext i1 %or.cond169 to i32
  br label %if.end57

if.end57:                                         ; preds = %if.else36, %lor.lhs.false.if.end57_crit_edge, %if.then28.if.end57_crit_edge, %if.else21.if.end57_crit_edge, %if.else.if.end57_crit_edge, %do.end9.if.end57_crit_edge
  %new_state.0 = phi i32 [ %9, %if.else21.if.end57_crit_edge ], [ 3, %do.end9.if.end57_crit_edge ], [ 2, %if.else.if.end57_crit_edge ], [ 2, %lor.lhs.false.if.end57_crit_edge ], [ 2, %if.then28.if.end57_crit_edge ], [ %spec.select173, %if.else36 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool59.not = icmp eq i8 %11, 0
  %spec.select = select i1 %tobool59.not, i32 0, i32 %new_state.0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %9)
  %cmp62.not = icmp eq i32 %spec.select, %9
  br i1 %cmp62.not, label %if.end57.if.end82_crit_edge, label %if.then64

if.end57.if.end82_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then64:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %txerr65 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 2
  %16 = ptrtoint ptr %txerr65 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %txerr65, align 1
  %rxerr67 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 3
  %18 = ptrtoint ptr %rxerr67 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rxerr67, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp69.not = icmp ult i8 %17, %19
  %spec.select170 = select i1 %cmp69.not, i32 0, i32 %spec.select
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp75.not = icmp ugt i8 %17, %19
  %cond80 = select i1 %cmp75.not, i32 0, i32 %spec.select
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  tail call void @can_change_state(ptr noundef %21, ptr noundef %cf, i32 noundef %spec.select170, i32 noundef %cond80) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then64, %if.end57.if.end82_crit_edge
  %restart_ms = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 24
  %22 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool84.not = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp85 = icmp ugt i32 %9, 2
  %or.cond171 = select i1 %tobool84.not, i1 %cmp85, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select)
  %cmp88 = icmp ult i32 %spec.select, 3
  %or.cond172 = select i1 %or.cond171, i1 %cmp88, i1 false
  br i1 %or.cond172, label %if.then90, label %if.end82.if.end92_crit_edge

if.end82.if.end92_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then90:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %restarts = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %restarts, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %restarts, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end82.if.end92_crit_edge
  %26 = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %28, label %if.end92.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb100
  ]

if.end92.sw.epilog_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end92
  %30 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool93.not = icmp eq i8 %32, 0
  br i1 %tobool93.not, label %sw.bb.sw.epilog_crit_edge, label %if.then94

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then94:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %can_stats96 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 1
  %33 = ptrtoint ptr %can_stats96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %can_stats96, align 4
  %inc97 = add i32 %34, 1
  store i32 %inc97, ptr %can_stats96, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  br label %sw.epilog.sink.split

sw.bb100:                                         ; preds = %if.end92
  %error_state = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %error_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %error_state, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool103.not = icmp eq i8 %37, 0
  br i1 %tobool103.not, label %sw.bb100.if.end106_crit_edge, label %if.then104

sw.bb100.if.end106_crit_edge:                     ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.then104:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  %38 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_errors, align 4
  %inc105 = add i32 %39, 1
  store i32 %inc105, ptr %tx_errors, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %sw.bb100.if.end106_crit_edge
  %40 = ptrtoint ptr %error_state to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %error_state, align 1
  %42 = and i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool110.not = icmp eq i8 %42, 0
  br i1 %tobool110.not, label %if.end106.if.end114_crit_edge, label %if.then111

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then111:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %rx_errors112 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  %43 = ptrtoint ptr %rx_errors112 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_errors112, align 4
  %inc113 = add i32 %44, 1
  store i32 %inc113, ptr %rx_errors112, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end106.if.end114_crit_edge
  %45 = ptrtoint ptr %error_state to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %error_state, align 1
  %47 = and i8 %46, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool118.not = icmp eq i8 %47, 0
  br i1 %tobool118.not, label %if.end114.sw.epilog_crit_edge, label %if.then119

if.end114.sw.epilog_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then119:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %can_stats121 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then119, %if.then94
  %can_stats121.sink175 = phi ptr [ %can_stats121, %if.then119 ], [ %rx_errors, %if.then94 ]
  %48 = ptrtoint ptr %can_stats121.sink175 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %can_stats121.sink175, align 4
  %inc123 = add i32 %49, 1
  store i32 %inc123, ptr %can_stats121.sink175, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end114.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end92.sw.epilog_crit_edge
  %txerr125 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 2
  %50 = ptrtoint ptr %txerr125 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %txerr125, align 1
  %conv126 = zext i8 %51 to i16
  %bec = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 1
  %52 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv126, ptr %bec, align 4
  %rxerr128 = getelementptr inbounds %struct.kvaser_usb_err_summary, ptr %es, i32 0, i32 3
  %53 = ptrtoint ptr %rxerr128 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rxerr128, align 1
  %conv129 = zext i8 %54 to i16
  %rxerr131 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %rxerr131 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv129, ptr %rxerr131, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @kvaser_usb_leaf_dev_ops, !1, !"kvaser_usb_leaf_dev_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 1380, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 476, i32 5}
!4 = !{ptr @kvaser_usb_leaf_wait_cmd._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.kvaser_usb_leaf_wait_cmd, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @kvaser_usb_leaf_wait_cmd._entry, !3, !"_entry", i1 false, i1 false}
!11 = !{ptr @kvaser_usb_leaf_wait_cmd._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @kvaser_usb_leaf_dev_cfg_16mhz, !13, !"kvaser_usb_leaf_dev_cfg_16mhz", i1 false, i1 false}
!13 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 366, i32 40}
!14 = !{ptr @kvaser_usb_leaf_bittiming_const, !15, !"kvaser_usb_leaf_bittiming_const", i1 false, i1 false}
!15 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 346, i32 41}
!16 = !{ptr @kvaser_usb_leaf_dev_cfg_24mhz, !17, !"kvaser_usb_leaf_dev_cfg_24mhz", i1 false, i1 false}
!17 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 374, i32 40}
!18 = !{ptr @kvaser_usb_leaf_dev_cfg_32mhz, !19, !"kvaser_usb_leaf_dev_cfg_32mhz", i1 false, i1 false}
!19 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 382, i32 40}
!20 = !{ptr @kvaser_usb_leaf_dev_cfg_8mhz, !21, !"kvaser_usb_leaf_dev_cfg_8mhz", i1 false, i1 false}
!21 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 358, i32 40}
!22 = !{ptr @init_completion.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/linux/completion.h", i32 87, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @kvaser_usb_leaf_read_bulk_callback._rs, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 1190, i32 4}
!27 = !{ptr @__func__.kvaser_usb_leaf_read_bulk_callback, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @kvaser_usb_leaf_read_bulk_callback._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @kvaser_usb_leaf_read_bulk_callback._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 1160, i32 8}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @kvaser_usb_leaf_handle_command._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @kvaser_usb_leaf_handle_command._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 1080, i32 3}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @kvaser_usb_leaf_start_chip_reply._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @kvaser_usb_leaf_start_chip_reply._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 1103, i32 3}
!43 = !{ptr @kvaser_usb_leaf_stop_chip_reply._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @kvaser_usb_leaf_stop_chip_reply._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 993, i32 3}
!47 = !{ptr @kvaser_usb_leaf_rx_can_msg._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @kvaser_usb_leaf_rx_can_msg._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 1013, i32 8}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 971, i32 28}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 957, i32 3}
!55 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @kvaser_usb_leaf_leaf_rx_error._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @kvaser_usb_leaf_leaf_rx_error._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 766, i32 3}
!60 = !{ptr @kvaser_usb_leaf_rx_error._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @kvaser_usb_leaf_rx_error._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 697, i32 2}
!64 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @kvaser_usb_leaf_rx_error_update_can_state.__UNIQUE_ID_ddebug464, !63, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 925, i32 3}
!69 = !{ptr @kvaser_usb_leaf_usbcan_rx_error._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @kvaser_usb_leaf_usbcan_rx_error._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 858, i32 3}
!73 = !{ptr @kvaser_usb_leaf_usbcan_conditionally_rx_error._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @kvaser_usb_leaf_usbcan_conditionally_rx_error._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 620, i32 3}
!77 = !{ptr @kvaser_usb_leaf_tx_acknowledge._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @kvaser_usb_leaf_tx_acknowledge._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c", i32 646, i32 8}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{i64 2148349027, i64 2148349032, i64 2148349045, i64 2148349089, i64 2148349123, i64 2148349144}
