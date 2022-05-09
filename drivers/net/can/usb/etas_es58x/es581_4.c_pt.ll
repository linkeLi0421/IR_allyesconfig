; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/etas_es58x/es581_4.c_pt.bc'
source_filename = "../drivers/net/can/usb/etas_es58x/es581_4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.es58x_parameters = type { ptr, ptr, ptr, i32, %struct.can_clock, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.can_clock = type { i32 }
%struct.es58x_operators = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.es581_4_urb_cmd = type <{ i16, i8, i8, i16, %union.anon, i16 }>
%union.anon = type { [30 x %struct.es581_4_rx_can_msg] }
%struct.es581_4_rx_can_msg = type { i64, i8, i8, i8, i8, i32, [8 x i8] }
%struct.es581_4_rx_cmd_ret = type { i32, i8, [3 x i8] }
%struct.es58x_device = type { ptr, ptr, [2 x ptr], ptr, ptr, i32, i32, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.atomic_t, i64, i64, [100 x i64], i16, i8, i8, i16, %union.es58x_urb_cmd }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%union.es58x_urb_cmd = type <{ %struct.anon.4, [7805 x i8] }>
%struct.anon.4 = type { i16, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.133, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.133 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.es581_4_tx_ack_msg = type { i16, i8, i8 }
%struct.es581_4_bulk_echo_msg = type { i8, [30 x %struct.es581_4_echo_msg] }
%struct.es581_4_echo_msg = type <{ i64, i32 }>
%struct.es58x_priv = type { %struct.can_priv, ptr, ptr, i32, i32, i8, i8, i8, i8 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.57, %union.anon.60, %union.anon.61, [48 x i8], %union.anon.62, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.64, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, ptr, %union.anon.59 }
%union.anon.59 = type { ptr }
%union.anon.60 = type { ptr }
%union.anon.61 = type { i64 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { i32, ptr }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.66, i32, i32, i32, i16, i16, %union.anon.68, i32, %union.anon.69, %union.anon.70, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.66 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%union.anon.70 = type { i16 }
%struct.es581_4_tx_can_msg = type { i32, i32, i16, i8, i8, [8 x i8] }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_frame = type { i32, %union.anon.155, i8, i8, i8, [8 x i8] }
%union.anon.155 = type { i8 }
%struct.es581_4_tx_conf_msg = type <{ i32, i32, i32, i32, i32, i32, i32, i32, i8 }>

@es581_4_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"ES581.4\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1, i32 8, i32 4, i32 1, i32 128, i32 1 }, [48 x i8] zeroinitializer }, align 32
@es581_4_param = dso_local constant { %struct.es58x_parameters, [56 x i8] } { %struct.es58x_parameters { ptr @es581_4_bittiming_const, ptr null, ptr null, i32 1000000, %struct.can_clock { i32 50000000 }, i32 256, i16 -20561, i16 -1286, i16 509, i16 728, i16 63, i16 850, i8 25, i8 6, i8 5, i8 6 }, [56 x i8] zeroinitializer }, align 32
@es581_4_ops = dso_local constant { %struct.es58x_operators, [32 x i8] } { %struct.es58x_operators { ptr @es581_4_get_msg_len, ptr @es581_4_handle_urb_cmd, ptr @es581_4_fill_urb_header, ptr @es581_4_tx_can_msg, ptr @es581_4_enable_channel, ptr @es581_4_disable_channel, ptr @es581_4_reset_device, ptr @es581_4_get_timestamp }, [32 x i8] zeroinitializer }, align 32
@es581_4_handle_urb_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Unknown command type (0x%02X)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"es581_4_handle_urb_cmd\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/can/usb/etas_es58x/es581_4.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@es581_4_handle_urb_cmd._entry_ptr = internal global ptr @es581_4_handle_urb_cmd._entry, section ".printk_index", align 4
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"es581_4_urb_cmd->timestamp\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"es581_4_urb_cmd->rx_cmd_ret_u8\00", [33 x i8] zeroinitializer }, align 32
@es581_4_handle_urb_cmd._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 328, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Unexpected command ID: 0x%02X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@es581_4_handle_urb_cmd._entry_ptr.10 = internal global ptr @es581_4_handle_urb_cmd._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"es581_4_urb_cmd->rx_cmd_ret\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"*tx_ack_msg\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"es581_4_urb_cmd->rx_err_msg\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"es581_4_urb_cmd->rx_event_msg\00", [34 x i8] zeroinitializer }, align 32
@es581_4_dispatch_rx_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 256, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unknown rx_type 0x%02X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"es581_4_dispatch_rx_cmd\00", [40 x i8] zeroinitializer }, align 32
@es581_4_dispatch_rx_cmd._entry_ptr = internal global ptr @es581_4_dispatch_rx_cmd._entry, section ".printk_index", align 4
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"es581_4_urb_cmd->rx_can_msg\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %s is down, dropping %d rx packets\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.es581_4_rx_can_msg = private unnamed_addr constant [19 x i8] c"es581_4_rx_can_msg\00", align 1
@__es58x_msg_num_element._entry = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 516, ptr @.str.3, ptr @.str.4 }, align 1
@.str.19 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Minimum length for %s is %zu but received command is %zu.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__es58x_msg_num_element\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/can/usb/etas_es58x/es58x_core.h\00", [52 x i8] zeroinitializer }, align 32
@__es58x_msg_num_element._entry_ptr = internal global ptr @__es58x_msg_num_element._entry, section ".printk_index", align 4
@__es58x_msg_num_element._entry.22 = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.21, i32 521, ptr @.str.3, ptr @.str.4 }, align 1
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Received command length: %zu is not a multiple of %s[0]: %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@__es58x_msg_num_element._entry_ptr.24 = internal global ptr @__es58x_msg_num_element._entry.22, section ".printk_index", align 4
@__es58x_msg_num_element._entry.25 = internal constant %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.21, i32 526, ptr @.str.3, ptr @.str.4 }, align 1
@.str.26 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Array %s is supposed to have %zu elements each of size %zu...\0A\00", [33 x i8] zeroinitializer }, align 32
@__es58x_msg_num_element._entry_ptr.27 = internal global ptr @__es58x_msg_num_element._entry.25, section ".printk_index", align 4
@__es58x_msg_num_element._entry.28 = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.21, i32 529, ptr @.str.3, ptr @.str.4 }, align 1
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"... But received command has %zu elements (total length %zu).\0A\00", [33 x i8] zeroinitializer }, align 32
@__es58x_msg_num_element._entry_ptr.30 = internal global ptr @__es58x_msg_num_element._entry.28, section ".printk_index", align 4
@__es58x_check_msg_len._entry = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.21, i32 450, ptr @.str.3, ptr @.str.4 }, align 1
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Length of %s is %zu but received command is %zu.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__es58x_check_msg_len\00", [42 x i8] zeroinitializer }, align 32
@__es58x_check_msg_len._entry_ptr = internal global ptr @__es58x_check_msg_len._entry, section ".printk_index", align 4
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bulk_echo_msg->echo_msg\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Received echo packet idx %u twice\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Echo packet idx jumped from %u to %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"es581_4_urb_cmd->bulk_tx_can_msg\00", [63 x i8] zeroinitializer }, align 32
@__es58x_check_msg_max_len._entry = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.21, i32 481, ptr @.str.3, ptr @.str.4 }, align 1
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Maximum length for %s is %zu but received command is %zu.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__es58x_check_msg_max_len\00", [38 x i8] zeroinitializer }, align 32
@__es58x_check_msg_max_len._entry_ptr = internal global ptr @__es58x_check_msg_max_len._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 3, i64 4, i64 5, i64 6, i64 10, i64 11, i64 12, i64 14, i64 113, i64 114]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"es581_4_bittiming_const\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 457, i32 41 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"es581_4_param\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 469, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"es581_4_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 498, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 272, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 307, i32 9 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 319, i32 9 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 327, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 183, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 208, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 240, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 248, i32 9 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 256, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 103, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 117, i32 9 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 514, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 519, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 524, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 527, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 448, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 54, i32 16 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 75, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 81, i32 23 }
@___asan_gen_.143 = private constant [44 x i8] c"../drivers/net/can/usb/etas_es58x/es581_4.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 368, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [47 x i8] c"../drivers/net/can/usb/etas_es58x/es58x_core.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 479, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__es58x_check_msg_len._entry, ptr @__es58x_check_msg_len._entry_ptr, ptr @__es58x_check_msg_max_len._entry, ptr @__es58x_check_msg_max_len._entry_ptr, ptr @__es58x_msg_num_element._entry, ptr @__es58x_msg_num_element._entry.22, ptr @__es58x_msg_num_element._entry.25, ptr @__es58x_msg_num_element._entry.28, ptr @__es58x_msg_num_element._entry_ptr, ptr @__es58x_msg_num_element._entry_ptr.24, ptr @__es58x_msg_num_element._entry_ptr.27, ptr @__es58x_msg_num_element._entry_ptr.30, ptr @es581_4_dispatch_rx_cmd._entry, ptr @es581_4_dispatch_rx_cmd._entry_ptr, ptr @es581_4_handle_urb_cmd._entry, ptr @es581_4_handle_urb_cmd._entry.7, ptr @es581_4_handle_urb_cmd._entry_ptr, ptr @es581_4_handle_urb_cmd._entry_ptr.10, ptr @es581_4_bittiming_const, ptr @es581_4_param, ptr @es581_4_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es581_4_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es581_4_param to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es581_4_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es581_4_handle_urb_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es581_4_handle_urb_cmd._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es581_4_dispatch_rx_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @es581_4_get_msg_len(ptr nocapture noundef readonly %urb_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_len = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 3
  %0 = ptrtoint ptr %msg_len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %msg_len, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  ret i16 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es581_4_handle_urb_cmd(ptr noundef %es58x_dev, ptr noundef %urb_cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev, align 8
  %msg_len.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 3
  %2 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %msg_len.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #7
  %cmd_type = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 1
  %5 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %6)
  %cmp.not = icmp eq i8 %6, 69
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_id = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 2
  %7 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cmd_id, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %do.end38 [
    i8 3, label %sw.bb
    i8 4, label %sw.bb7
    i8 5, label %sw.bb9
    i8 6, label %sw.bb11
    i8 10, label %sw.bb13
    i8 11, label %sw.bb15
    i8 12, label %sw.bb17
    i8 14, label %sw.bb19
    i8 113, label %sw.bb27
    i8 114, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp.not.i.i = icmp eq i16 %3, 2048
  br i1 %cmp.not.i.i, label %if.end.i, label %__es58x_check_msg_len.exit.i

__es58x_check_msg_len.exit.i:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef %conv.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %10 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %channel_no.i = getelementptr inbounds %struct.es581_4_rx_cmd_ret, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %channel_no.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel_no.i, align 1
  %conv3.i = zext i8 %12 to i32
  %sub.i.i = add nsw i32 %conv3.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i.i = icmp eq i8 %12, 0
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %num_can_ch.i.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %13 = ptrtoint ptr %num_can_ch.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_can_ch.i.i, align 2
  %conv.i.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i.i)
  %cmp1.not.i.i = icmp ult i32 %sub.i.i, %conv.i.i
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %arrayidx.i.i = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %sub.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4.i.i:                               ; preds = %if.end.i.i
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i.i, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false4.i.i.cleanup_crit_edge, label %if.end7.i

lor.lhs.false4.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %10, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %call9.i = tail call i32 @es58x_rx_cmd_ret_u32(ptr noundef nonnull %16, i32 noundef 0, i32 noundef %22) #7
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp.not.i.i78 = icmp eq i16 %3, 2048
  br i1 %cmp.not.i.i78, label %if.end.i85, label %__es58x_check_msg_len.exit.i80

__es58x_check_msg_len.exit.i80:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i79 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef %conv.i79) #10
  br label %cleanup

if.end.i85:                                       ; preds = %sw.bb7
  %23 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %channel_no.i81 = getelementptr inbounds %struct.es581_4_rx_cmd_ret, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %channel_no.i81 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %channel_no.i81, align 1
  %conv3.i82 = zext i8 %25 to i32
  %sub.i.i83 = add nsw i32 %conv3.i82, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i.i84 = icmp eq i8 %25, 0
  br i1 %cmp.i.i84, label %if.end.i85.cleanup_crit_edge, label %lor.lhs.false.i.i89

if.end.i85.cleanup_crit_edge:                     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i89:                              ; preds = %if.end.i85
  %num_can_ch.i.i86 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %26 = ptrtoint ptr %num_can_ch.i.i86 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_can_ch.i.i86, align 2
  %conv.i.i87 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i83, i32 %conv.i.i87)
  %cmp1.not.i.i88 = icmp ult i32 %sub.i.i83, %conv.i.i87
  br i1 %cmp1.not.i.i88, label %if.end.i.i92, label %lor.lhs.false.i.i89.cleanup_crit_edge

lor.lhs.false.i.i89.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i92:                                     ; preds = %lor.lhs.false.i.i89
  %arrayidx.i.i90 = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %sub.i.i83
  %28 = ptrtoint ptr %arrayidx.i.i90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i90, align 4
  %tobool.not.i.i91 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i91, label %if.end.i.i92.cleanup_crit_edge, label %lor.lhs.false4.i.i95

if.end.i.i92.cleanup_crit_edge:                   ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4.i.i95:                             ; preds = %if.end.i.i92
  %state.i.i.i93 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %state.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i.i.i93, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i94 = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i.i94, label %lor.lhs.false4.i.i95.cleanup_crit_edge, label %if.end7.i97

lor.lhs.false4.i.i95.cleanup_crit_edge:           ; preds = %lor.lhs.false4.i.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i97:                                      ; preds = %lor.lhs.false4.i.i95
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %23, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %call9.i96 = tail call i32 @es58x_rx_cmd_ret_u32(ptr noundef nonnull %29, i32 noundef 1, i32 noundef %35) #7
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  %36 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %3)
  %cmp.not.i.i101 = icmp eq i16 %3, 1024
  br i1 %cmp.not.i.i101, label %if.end.i104, label %__es58x_check_msg_len.exit.i103

__es58x_check_msg_len.exit.i103:                  ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i102 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef %conv.i102) #10
  br label %cleanup

if.end.i104:                                      ; preds = %sw.bb9
  %rx_cmd_ret_u8.i = getelementptr inbounds %struct.es581_4_tx_ack_msg, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %rx_cmd_ret_u8.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rx_cmd_ret_u8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.not.i = icmp eq i8 %38, 0
  br i1 %cmp.not.i, label %if.end10.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i105 = zext i8 %38 to i32
  %call9.i106 = tail call i32 @es58x_rx_cmd_ret_u8(ptr noundef %1, i32 noundef 3, i32 noundef %conv3.i105) #7
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i104
  %channel_no.i107 = getelementptr inbounds %struct.es581_4_tx_ack_msg, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %channel_no.i107 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %channel_no.i107, align 1
  %conv11.i = zext i8 %40 to i32
  %sub.i.i108 = add nsw i32 %conv11.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.i.i109 = icmp eq i8 %40, 0
  br i1 %cmp.i.i109, label %if.end10.i.cleanup_crit_edge, label %lor.lhs.false.i.i113

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i113:                             ; preds = %if.end10.i
  %num_can_ch.i.i110 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %41 = ptrtoint ptr %num_can_ch.i.i110 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_can_ch.i.i110, align 2
  %conv.i.i111 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i108, i32 %conv.i.i111)
  %cmp1.not.i.i112 = icmp ult i32 %sub.i.i108, %conv.i.i111
  br i1 %cmp1.not.i.i112, label %if.end.i.i116, label %lor.lhs.false.i.i113.cleanup_crit_edge

lor.lhs.false.i.i113.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i116:                                    ; preds = %lor.lhs.false.i.i113
  %arrayidx.i.i114 = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %sub.i.i108
  %43 = ptrtoint ptr %arrayidx.i.i114 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i114, align 4
  %tobool.not.i.i115 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i115, label %if.end.i.i116.cleanup_crit_edge, label %lor.lhs.false4.i.i119

if.end.i.i116.cleanup_crit_edge:                  ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4.i.i119:                            ; preds = %if.end.i.i116
  %state.i.i.i117 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %state.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %state.i.i.i117, align 4
  %47 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i.i118 = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i.i118, label %lor.lhs.false4.i.i119.cleanup_crit_edge, label %if.end15.i

lor.lhs.false4.i.i119.cleanup_crit_edge:          ; preds = %lor.lhs.false4.i.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.i:                                       ; preds = %lor.lhs.false4.i.i119
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %36, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #7
  %call17.i = tail call i32 @es58x_tx_ack_msg(ptr noundef nonnull %44, i16 noundef zeroext %50, i32 noundef 0) #7
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %51 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %rx_type3.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4, i32 0, i32 0, i32 1
  %52 = ptrtoint ptr %rx_type3.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rx_type3.i, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %53, label %do.end.i [
    i8 1, label %sw.bb.i
    i8 3, label %sw.bb5.i
    i8 4, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %sw.bb11
  %conv.i.i121 = zext i16 %4 to i32
  %.frozen = freeze i16 %4
  %div.i76.i.i = udiv i16 %.frozen, 24
  %div.i.zext.i.i = zext i16 %div.i76.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %4)
  %cmp.i.i.i = icmp ult i16 %4, 24
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.else.i.i.i

do.end.i.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 24, i32 noundef %conv.i.i121) #10
  br label %cleanup

if.else.i.i.i:                                    ; preds = %sw.bb.i
  %55 = mul i16 %div.i76.i.i, 24
  %rem.i77.i.i.decomposed = sub i16 %.frozen, %55
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i77.i.i.decomposed)
  %cmp2.not.i.i.i = icmp eq i16 %rem.i77.i.i.decomposed, 0
  br i1 %cmp2.not.i.i.i, label %if.else7.i.i.i, label %do.end6.i.i.i

do.end6.i.i.i:                                    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %conv.i.i121, ptr noundef nonnull @.str.17, i32 noundef 24) #10
  br label %cleanup

if.else7.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 743, i16 %4)
  %cmp8.i.i.i = icmp ugt i16 %4, 743
  br i1 %cmp8.i.i.i, label %do.end12.i.i.i, label %if.end.i.i122

do.end12.i.i.i:                                   ; preds = %if.else7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.17, i32 noundef 30, i32 noundef 24) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %div.i.zext.i.i, i32 noundef %conv.i.i121) #10
  br label %cleanup

if.end.i.i122:                                    ; preds = %if.else7.i.i.i
  %channel_no3.i.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4, i32 0, i32 0, i32 3
  %56 = ptrtoint ptr %channel_no3.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %channel_no3.i.i, align 1
  %conv4.i.i = zext i8 %57 to i32
  %sub.i.i.i = add nsw i32 %conv4.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp.i58.i.i = icmp eq i8 %57, 0
  br i1 %cmp.i58.i.i, label %if.end.i.i122.cleanup_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i122.cleanup_crit_edge:                  ; preds = %if.end.i.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i122
  %num_can_ch.i.i.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %58 = ptrtoint ptr %num_can_ch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %num_can_ch.i.i.i, align 2
  %conv.i.i.i = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv.i.i.i)
  %cmp1.not.i.i.i = icmp ult i32 %sub.i.i.i, %conv.i.i.i
  br i1 %cmp1.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %sub.i.i.i
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %lor.lhs.false4.i.i.i

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4.i.i.i:                             ; preds = %if.end.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %state.i.i.i.i, align 4
  %64 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i.not.i.i.i = icmp eq i32 %64, 0
  br i1 %tobool.i.not.i.i.i, label %lor.lhs.false4.i.i.i.cleanup_crit_edge, label %if.end7.i.i

lor.lhs.false4.i.i.i.cleanup_crit_edge:           ; preds = %lor.lhs.false4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %lor.lhs.false4.i.i.i
  %65 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i123 = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i123, label %if.then9.i.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end7.i.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div.i.zext.i.i, i32 1) #7
  br label %for.body.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  %call10.i.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then9.i.i.if.end13.i.i_crit_edge, label %if.then12.i.i

if.then9.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.then12.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %61, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.es581_4_rx_can_msg, ptr noundef nonnull %61, i32 noundef %div.i.zext.i.i) #10
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then12.i.i, %if.then9.i.i.if.end13.i.i_crit_edge
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 36, i32 6
  %67 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_dropped.i.i, align 8
  %add.i.i = add i32 %68, %div.i.zext.i.i
  store i32 %add.i.i, ptr %rx_dropped.i.i, align 8
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.end26.i.i
  %inc.i.i = add nuw nsw i32 %pkts.079.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %pkts.079.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %channel_no21.i.i = getelementptr [30 x %struct.es581_4_rx_can_msg], ptr %51, i32 0, i32 %pkts.079.i.i, i32 3
  %69 = ptrtoint ptr %channel_no21.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %channel_no21.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %70)
  %cmp23.not.i.i = icmp eq i8 %57, %70
  br i1 %cmp23.not.i.i, label %if.end26.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i.i:                                     ; preds = %for.body.i.i
  %can_id19.i.i = getelementptr [30 x %struct.es581_4_rx_can_msg], ptr %51, i32 0, i32 %pkts.079.i.i, i32 5
  %71 = ptrtoint ptr %can_id19.i.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %can_id19.i.i, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  %arrayidx17.i.i = getelementptr [30 x %struct.es581_4_rx_can_msg], ptr %51, i32 0, i32 %pkts.079.i.i
  %74 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %arrayidx17.i.i, align 1
  %76 = tail call i64 @llvm.bswap.i64(i64 %75) #7
  %data.i.i = getelementptr [30 x %struct.es581_4_rx_can_msg], ptr %51, i32 0, i32 %pkts.079.i.i, i32 6
  %flags.i.i = getelementptr [30 x %struct.es581_4_rx_can_msg], ptr %51, i32 0, i32 %pkts.079.i.i, i32 2
  %77 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %flags.i.i, align 1
  %conv28.i.i = zext i8 %78 to i32
  %dlc.i.i = getelementptr [30 x %struct.es581_4_rx_can_msg], ptr %51, i32 0, i32 %pkts.079.i.i, i32 4
  %79 = ptrtoint ptr %dlc.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %dlc.i.i, align 1
  %call29.i.i = tail call i32 @es58x_rx_can_msg(ptr noundef nonnull %61, i64 noundef %76, ptr noundef %data.i.i, i32 noundef %73, i32 noundef %conv28.i.i, i8 noundef zeroext %80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %for.cond.i.i, label %if.end26.i.i.cleanup_crit_edge

if.end26.i.i.cleanup_crit_edge:                   ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5.i:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %3)
  %cmp.not.i.i124 = icmp eq i16 %3, 8192
  br i1 %cmp.not.i.i124, label %if.end.i125, label %__es58x_check_msg_len.exit.thread.i

__es58x_check_msg_len.exit.thread.i:              ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef %conv6.i) #10
  br label %cleanup

if.end.i125:                                      ; preds = %sw.bb5.i
  %error1.i.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4, i32 0, i32 1
  %81 = ptrtoint ptr %error1.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %error1.i.i, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  %channel_no.i.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4, i32 0, i32 0, i32 5
  %84 = ptrtoint ptr %channel_no.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %channel_no.i.i, align 1
  %conv.i36.i = zext i8 %85 to i32
  %sub.i.i37.i = add nsw i32 %conv.i36.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp.i.i38.i = icmp eq i8 %85, 0
  br i1 %cmp.i.i38.i, label %if.end.i125.cleanup_crit_edge, label %lor.lhs.false.i.i42.i

if.end.i125.cleanup_crit_edge:                    ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i42.i:                            ; preds = %if.end.i125
  %num_can_ch.i.i39.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %86 = ptrtoint ptr %num_can_ch.i.i39.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num_can_ch.i.i39.i, align 2
  %conv.i.i40.i = zext i8 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i37.i, i32 %conv.i.i40.i)
  %cmp1.not.i.i41.i = icmp ult i32 %sub.i.i37.i, %conv.i.i40.i
  br i1 %cmp1.not.i.i41.i, label %if.end.i.i45.i, label %lor.lhs.false.i.i42.i.cleanup_crit_edge

lor.lhs.false.i.i42.i.cleanup_crit_edge:          ; preds = %lor.lhs.false.i.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i45.i:                                   ; preds = %lor.lhs.false.i.i42.i
  %arrayidx.i.i43.i = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %sub.i.i37.i
  %88 = ptrtoint ptr %arrayidx.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i43.i, align 4
  %tobool.not.i.i44.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i44.i, label %if.end.i.i45.i.cleanup_crit_edge, label %lor.lhs.false4.i.i48.i

if.end.i.i45.i.cleanup_crit_edge:                 ; preds = %if.end.i.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4.i.i48.i:                           ; preds = %if.end.i.i45.i
  %state.i.i.i46.i = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %state.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %state.i.i.i46.i, align 4
  %92 = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i.not.i.i47.i = icmp eq i32 %92, 0
  br i1 %tobool.i.not.i.i47.i, label %lor.lhs.false4.i.i48.i.cleanup_crit_edge, label %if.end.i49.i

lor.lhs.false4.i.i48.i.cleanup_crit_edge:         ; preds = %lor.lhs.false4.i.i48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i49.i:                                     ; preds = %lor.lhs.false4.i.i48.i
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 8)
  %94 = load i64, ptr %51, align 1
  %95 = tail call i64 @llvm.bswap.i64(i64 %94) #7
  %call4.i.i = tail call i32 @es58x_rx_err_msg(ptr noundef nonnull %89, i32 noundef %83, i32 noundef 0, i64 noundef %95) #7
  br label %cleanup

sw.bb10.i:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp2(i16 6144, i16 %3)
  %cmp.not.i51.i = icmp eq i16 %3, 6144
  br i1 %cmp.not.i51.i, label %if.end16.i, label %__es58x_check_msg_len.exit54.thread.i

__es58x_check_msg_len.exit54.thread.i:            ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv11.i126 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.14, i32 noundef 24, i32 noundef %conv11.i126) #10
  br label %cleanup

if.end16.i:                                       ; preds = %sw.bb10.i
  %event1.i.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4, i32 0, i32 0, i32 6
  %96 = ptrtoint ptr %event1.i.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %event1.i.i, align 1
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  %channel_no.i55.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4, i32 0, i32 0, i32 3
  %99 = ptrtoint ptr %channel_no.i55.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %channel_no.i55.i, align 1
  %conv.i56.i = zext i8 %100 to i32
  %sub.i.i57.i = add nsw i32 %conv.i56.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp.i.i58.i = icmp eq i8 %100, 0
  br i1 %cmp.i.i58.i, label %if.end16.i.cleanup_crit_edge, label %lor.lhs.false.i.i62.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i62.i:                            ; preds = %if.end16.i
  %num_can_ch.i.i59.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %101 = ptrtoint ptr %num_can_ch.i.i59.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_can_ch.i.i59.i, align 2
  %conv.i.i60.i = zext i8 %102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i57.i, i32 %conv.i.i60.i)
  %cmp1.not.i.i61.i = icmp ult i32 %sub.i.i57.i, %conv.i.i60.i
  br i1 %cmp1.not.i.i61.i, label %if.end.i.i65.i, label %lor.lhs.false.i.i62.i.cleanup_crit_edge

lor.lhs.false.i.i62.i.cleanup_crit_edge:          ; preds = %lor.lhs.false.i.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i65.i:                                   ; preds = %lor.lhs.false.i.i62.i
  %arrayidx.i.i63.i = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %sub.i.i57.i
  %103 = ptrtoint ptr %arrayidx.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i.i63.i, align 4
  %tobool.not.i.i64.i = icmp eq ptr %104, null
  br i1 %tobool.not.i.i64.i, label %if.end.i.i65.i.cleanup_crit_edge, label %lor.lhs.false4.i.i68.i

if.end.i.i65.i.cleanup_crit_edge:                 ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4.i.i68.i:                           ; preds = %if.end.i.i65.i
  %state.i.i.i66.i = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 6
  %105 = ptrtoint ptr %state.i.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %state.i.i.i66.i, align 4
  %107 = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.not.i.i67.i = icmp eq i32 %107, 0
  br i1 %tobool.i.not.i.i67.i, label %lor.lhs.false4.i.i68.i.cleanup_crit_edge, label %if.end.i70.i

lor.lhs.false4.i.i68.i.cleanup_crit_edge:         ; preds = %lor.lhs.false4.i.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i70.i:                                     ; preds = %lor.lhs.false4.i.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 8)
  %109 = load i64, ptr %51, align 1
  %110 = tail call i64 @llvm.bswap.i64(i64 %109) #7
  %call4.i69.i = tail call i32 @es58x_rx_err_msg(ptr noundef nonnull %104, i32 noundef 0, i32 noundef %98, i64 noundef %110) #7
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i127 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv.i127) #10
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp.not.i.i130 = icmp eq i16 %3, 2048
  br i1 %cmp.not.i.i130, label %if.end.i137, label %__es58x_check_msg_len.exit.i132

__es58x_check_msg_len.exit.i132:                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i131 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef %conv.i131) #10
  br label %cleanup

if.end.i137:                                      ; preds = %sw.bb13
  %111 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %channel_no.i133 = getelementptr inbounds %struct.es581_4_rx_cmd_ret, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %channel_no.i133 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %channel_no.i133, align 1
  %conv3.i134 = zext i8 %113 to i32
  %sub.i.i135 = add nsw i32 %conv3.i134, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp.i.i136 = icmp eq i8 %113, 0
  br i1 %cmp.i.i136, label %if.end.i137.cleanup_crit_edge, label %lor.lhs.false.i.i141

if.end.i137.cleanup_crit_edge:                    ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i141:                             ; preds = %if.end.i137
  %num_can_ch.i.i138 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %114 = ptrtoint ptr %num_can_ch.i.i138 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %num_can_ch.i.i138, align 2
  %conv.i.i139 = zext i8 %115 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i135, i32 %conv.i.i139)
  %cmp1.not.i.i140 = icmp ult i32 %sub.i.i135, %conv.i.i139
  br i1 %cmp1.not.i.i140, label %if.end.i.i144, label %lor.lhs.false.i.i141.cleanup_crit_edge

lor.lhs.false.i.i141.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i144:                                    ; preds = %lor.lhs.false.i.i141
  %arrayidx.i.i142 = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %sub.i.i135
  %116 = ptrtoint ptr %arrayidx.i.i142 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i.i142, align 4
  %tobool.not.i.i143 = icmp eq ptr %117, null
  br i1 %tobool.not.i.i143, label %if.end.i.i144.cleanup_crit_edge, label %lor.lhs.false4.i.i147

if.end.i.i144.cleanup_crit_edge:                  ; preds = %if.end.i.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4.i.i147:                            ; preds = %if.end.i.i144
  %state.i.i.i145 = getelementptr inbounds %struct.net_device, ptr %117, i32 0, i32 6
  %118 = ptrtoint ptr %state.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %state.i.i.i145, align 4
  %120 = and i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i.not.i.i146 = icmp eq i32 %120, 0
  br i1 %tobool.i.not.i.i146, label %lor.lhs.false4.i.i147.cleanup_crit_edge, label %if.end7.i149

lor.lhs.false4.i.i147.cleanup_crit_edge:          ; preds = %lor.lhs.false4.i.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i149:                                     ; preds = %lor.lhs.false4.i.i147
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %111 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %111, align 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #7
  %call9.i148 = tail call i32 @es58x_rx_cmd_ret_u32(ptr noundef nonnull %117, i32 noundef 4, i32 noundef %123) #7
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp.not.i.i153 = icmp eq i16 %3, 2048
  br i1 %cmp.not.i.i153, label %if.end.i160, label %__es58x_check_msg_len.exit.i155

__es58x_check_msg_len.exit.i155:                  ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i154 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef %conv.i154) #10
  br label %cleanup

if.end.i160:                                      ; preds = %sw.bb15
  %124 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %channel_no.i156 = getelementptr inbounds %struct.es581_4_rx_cmd_ret, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %channel_no.i156 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %channel_no.i156, align 1
  %conv3.i157 = zext i8 %126 to i32
  %sub.i.i158 = add nsw i32 %conv3.i157, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp.i.i159 = icmp eq i8 %126, 0
  br i1 %cmp.i.i159, label %if.end.i160.cleanup_crit_edge, label %lor.lhs.false.i.i164

if.end.i160.cleanup_crit_edge:                    ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i164:                             ; preds = %if.end.i160
  %num_can_ch.i.i161 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %127 = ptrtoint ptr %num_can_ch.i.i161 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %num_can_ch.i.i161, align 2
  %conv.i.i162 = zext i8 %128 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i158, i32 %conv.i.i162)
  %cmp1.not.i.i163 = icmp ult i32 %sub.i.i158, %conv.i.i162
  br i1 %cmp1.not.i.i163, label %if.end.i.i167, label %lor.lhs.false.i.i164.cleanup_crit_edge

lor.lhs.false.i.i164.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i167:                                    ; preds = %lor.lhs.false.i.i164
  %arrayidx.i.i165 = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %sub.i.i158
  %129 = ptrtoint ptr %arrayidx.i.i165 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i.i165, align 4
  %tobool.not.i.i166 = icmp eq ptr %130, null
  br i1 %tobool.not.i.i166, label %if.end.i.i167.cleanup_crit_edge, label %lor.lhs.false4.i.i170

if.end.i.i167.cleanup_crit_edge:                  ; preds = %if.end.i.i167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4.i.i170:                            ; preds = %if.end.i.i167
  %state.i.i.i168 = getelementptr inbounds %struct.net_device, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %state.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %state.i.i.i168, align 4
  %133 = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.i.not.i.i169 = icmp eq i32 %133, 0
  br i1 %tobool.i.not.i.i169, label %lor.lhs.false4.i.i170.cleanup_crit_edge, label %if.end7.i172

lor.lhs.false4.i.i170.cleanup_crit_edge:          ; preds = %lor.lhs.false4.i.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i172:                                     ; preds = %lor.lhs.false4.i.i170
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %124 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %124, align 1
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #7
  %call9.i171 = tail call i32 @es58x_rx_cmd_ret_u32(ptr noundef nonnull %130, i32 noundef 5, i32 noundef %136) #7
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp.not.i.i176 = icmp eq i16 %3, 2048
  br i1 %cmp.not.i.i176, label %if.end.i183, label %__es58x_check_msg_len.exit.i178

__es58x_check_msg_len.exit.i178:                  ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i177 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef %conv.i177) #10
  br label %cleanup

if.end.i183:                                      ; preds = %sw.bb17
  %137 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %channel_no.i179 = getelementptr inbounds %struct.es581_4_rx_cmd_ret, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %channel_no.i179 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %channel_no.i179, align 1
  %conv3.i180 = zext i8 %139 to i32
  %sub.i.i181 = add nsw i32 %conv3.i180, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp.i.i182 = icmp eq i8 %139, 0
  br i1 %cmp.i.i182, label %if.end.i183.cleanup_crit_edge, label %lor.lhs.false.i.i187

if.end.i183.cleanup_crit_edge:                    ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i187:                             ; preds = %if.end.i183
  %num_can_ch.i.i184 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %140 = ptrtoint ptr %num_can_ch.i.i184 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %num_can_ch.i.i184, align 2
  %conv.i.i185 = zext i8 %141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i181, i32 %conv.i.i185)
  %cmp1.not.i.i186 = icmp ult i32 %sub.i.i181, %conv.i.i185
  br i1 %cmp1.not.i.i186, label %if.end.i.i190, label %lor.lhs.false.i.i187.cleanup_crit_edge

lor.lhs.false.i.i187.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i187
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i190:                                    ; preds = %lor.lhs.false.i.i187
  %arrayidx.i.i188 = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %sub.i.i181
  %142 = ptrtoint ptr %arrayidx.i.i188 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i.i188, align 4
  %tobool.not.i.i189 = icmp eq ptr %143, null
  br i1 %tobool.not.i.i189, label %if.end.i.i190.cleanup_crit_edge, label %lor.lhs.false4.i.i193

if.end.i.i190.cleanup_crit_edge:                  ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4.i.i193:                            ; preds = %if.end.i.i190
  %state.i.i.i191 = getelementptr inbounds %struct.net_device, ptr %143, i32 0, i32 6
  %144 = ptrtoint ptr %state.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %state.i.i.i191, align 4
  %146 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.i.not.i.i192 = icmp eq i32 %146, 0
  br i1 %tobool.i.not.i.i192, label %lor.lhs.false4.i.i193.cleanup_crit_edge, label %if.end7.i195

lor.lhs.false4.i.i193.cleanup_crit_edge:          ; preds = %lor.lhs.false4.i.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i195:                                     ; preds = %lor.lhs.false4.i.i193
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %137 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %137, align 1
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #7
  %call9.i194 = tail call i32 @es58x_rx_cmd_ret_u32(ptr noundef nonnull %143, i32 noundef 2, i32 noundef %149) #7
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp.not.i198 = icmp eq i16 %3, 2048
  br i1 %cmp.not.i198, label %if.end25, label %__es58x_check_msg_len.exit.thread

__es58x_check_msg_len.exit.thread:                ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %conv20 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.5, i32 noundef 8, i32 noundef %conv20) #10
  br label %cleanup

if.end25:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %150 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 8)
  %152 = load i64, ptr %150, align 1
  %153 = tail call i64 @llvm.bswap.i64(i64 %152) #7
  tail call void @es58x_rx_timestamp(ptr noundef %es58x_dev, i64 noundef %153) #7
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  %timestamps.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 13
  %154 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %sub.i = add i16 %4, -1
  %conv3.i202 = zext i16 %sub.i to i32
  %sub.i.frozen = freeze i16 %sub.i
  %div.i90.i = udiv i16 %sub.i.frozen, 12
  %div.i.zext.i = zext i16 %div.i90.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %sub.i)
  %cmp.i.i203 = icmp ult i16 %sub.i, 12
  br i1 %cmp.i.i203, label %do.end.i.i, label %if.else.i.i

do.end.i.i:                                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.33, i32 noundef 12, i32 noundef %conv3.i202) #10
  br label %cleanup

if.else.i.i:                                      ; preds = %sw.bb27
  %155 = mul i16 %div.i90.i, 12
  %rem.i91.i.decomposed = sub i16 %sub.i.frozen, %155
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i91.i.decomposed)
  %cmp2.not.i.i = icmp eq i16 %rem.i91.i.decomposed, 0
  br i1 %cmp2.not.i.i, label %if.else7.i.i, label %do.end6.i.i

do.end6.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %conv3.i202, ptr noundef nonnull @.str.33, i32 noundef 12) #10
  br label %cleanup

if.else7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 371, i16 %sub.i)
  %cmp8.i.i = icmp ugt i16 %sub.i, 371
  br i1 %cmp8.i.i, label %do.end12.i.i, label %if.end.i206

do.end12.i.i:                                     ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.33, i32 noundef 30, i32 noundef 12) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %div.i.zext.i, i32 noundef %conv3.i202) #10
  br label %cleanup

if.end.i206:                                      ; preds = %if.else7.i.i
  %156 = ptrtoint ptr %154 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %154, align 1
  %conv6.i204 = zext i8 %157 to i32
  %sub.i.i205 = add nsw i32 %conv6.i204, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %cmp.i76.i = icmp eq i8 %157, 0
  br i1 %cmp.i76.i, label %if.end.i206.cleanup_crit_edge, label %lor.lhs.false.i.i210

if.end.i206.cleanup_crit_edge:                    ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i210:                             ; preds = %if.end.i206
  %num_can_ch.i.i207 = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %158 = ptrtoint ptr %num_can_ch.i.i207 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %num_can_ch.i.i207, align 2
  %conv.i.i208 = zext i8 %159 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i205, i32 %conv.i.i208)
  %cmp1.not.i.i209 = icmp ult i32 %sub.i.i205, %conv.i.i208
  br i1 %cmp1.not.i.i209, label %if.end.i.i213, label %lor.lhs.false.i.i210.cleanup_crit_edge

lor.lhs.false.i.i210.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i213:                                    ; preds = %lor.lhs.false.i.i210
  %arrayidx.i.i211 = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %sub.i.i205
  %160 = ptrtoint ptr %arrayidx.i.i211 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i.i211, align 4
  %tobool.not.i.i212 = icmp eq ptr %161, null
  br i1 %tobool.not.i.i212, label %if.end.i.i213.cleanup_crit_edge, label %lor.lhs.false4.i.i216

if.end.i.i213.cleanup_crit_edge:                  ; preds = %if.end.i.i213
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4.i.i216:                            ; preds = %if.end.i.i213
  %state.i.i.i214 = getelementptr inbounds %struct.net_device, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %state.i.i.i214 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %state.i.i.i214, align 4
  %164 = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.i.not.i.i215 = icmp eq i32 %164, 0
  br i1 %tobool.i.not.i.i215, label %lor.lhs.false4.i.i216.cleanup_crit_edge, label %for.body.preheader.i

lor.lhs.false4.i.i216.cleanup_crit_edge:          ; preds = %lor.lhs.false4.i.i216
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader.i:                             ; preds = %lor.lhs.false4.i.i216
  %packet_idx11.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4, i32 0, i32 0, i32 2
  %165 = ptrtoint ptr %packet_idx11.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %packet_idx11.i, align 1
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #7
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div.i.zext.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.096.i = phi i32 [ %inc38.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dropped.095.i = phi i32 [ %dropped.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %packet_idx.094.i = phi i32 [ %packet_idx.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ %167, %for.body.preheader.i ]
  %arrayidx16.i = getelementptr %struct.es581_4_bulk_echo_msg, ptr %154, i32 0, i32 1, i32 %i.096.i
  %packet_idx17.i = getelementptr %struct.es581_4_bulk_echo_msg, ptr %154, i32 0, i32 1, i32 %i.096.i, i32 1
  %168 = ptrtoint ptr %packet_idx17.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %packet_idx17.i, align 1
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #7
  %sub19.i = add i32 %packet_idx.094.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %sub19.i)
  %cmp20.i = icmp eq i32 %170, %sub19.i
  br i1 %cmp20.i, label %if.then22.i, label %if.end28.i

if.then22.i:                                      ; preds = %for.body.i
  %call23.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then22.i.if.end27.i_crit_edge, label %if.then25.i

if.then22.i.if.end27.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %161, ptr noundef nonnull @.str.34, i32 noundef %170) #10
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.then22.i.if.end27.i_crit_edge
  %inc.i = add i32 %dropped.095.i, 1
  br label %for.inc.i

if.end28.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %packet_idx.094.i)
  %cmp29.not.i = icmp eq i32 %170, %packet_idx.094.i
  br i1 %cmp29.not.i, label %if.end34.i, label %cleanup.i

if.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 8)
  %172 = load i64, ptr %arrayidx16.i, align 1
  %173 = tail call i64 @llvm.bswap.i64(i64 %172) #7
  %arrayidx36.i = getelementptr i64, ptr %timestamps.i, i32 %i.096.i
  %174 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %173, ptr %arrayidx36.i, align 8
  %inc37.i = add i32 %packet_idx.094.i, 1
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %161, ptr noundef nonnull @.str.35, i32 noundef %sub19.i, i32 noundef %169) #10
  br label %cleanup

for.inc.i:                                        ; preds = %if.end34.i, %if.end27.i
  %packet_idx.1.ph.i = phi i32 [ %inc37.i, %if.end34.i ], [ %packet_idx.094.i, %if.end27.i ]
  %dropped.1.ph.i = phi i32 [ %dropped.095.i, %if.end34.i ], [ %inc.i, %if.end27.i ]
  %inc38.i = add nuw nsw i32 %i.096.i, 1
  %exitcond.not.i = icmp eq i32 %inc38.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %161, i32 0, i32 36, i32 7
  %175 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %tx_dropped.i, align 4
  %add.i = add i32 %176, %dropped.1.ph.i
  store i32 %add.i, ptr %tx_dropped.i, align 4
  %sub39.i = sub i32 %div.i.zext.i, %dropped.1.ph.i
  %call40.i = tail call i32 @es58x_can_get_echo_skb(ptr noundef nonnull %161, i32 noundef %167, ptr noundef %timestamps.i, i32 noundef %sub39.i) #7
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %cmp.not.i217 = icmp eq i16 %3, 256
  br i1 %cmp.not.i217, label %if.end33, label %__es58x_check_msg_len.exit220

__es58x_check_msg_len.exit220:                    ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %conv30 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef %conv30) #10
  br label %cleanup

if.end33:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %177 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %177, align 1
  %conv34 = zext i8 %179 to i32
  %call35 = tail call i32 @es58x_rx_cmd_ret_u8(ptr noundef %1, i32 noundef 6, i32 noundef %conv34) #7
  br label %cleanup

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv5 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef %conv5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end33, %__es58x_check_msg_len.exit220, %for.end.i, %cleanup.i, %lor.lhs.false4.i.i216.cleanup_crit_edge, %if.end.i.i213.cleanup_crit_edge, %lor.lhs.false.i.i210.cleanup_crit_edge, %if.end.i206.cleanup_crit_edge, %do.end12.i.i, %do.end6.i.i, %do.end.i.i, %if.end25, %__es58x_check_msg_len.exit.thread, %if.end7.i195, %lor.lhs.false4.i.i193.cleanup_crit_edge, %if.end.i.i190.cleanup_crit_edge, %lor.lhs.false.i.i187.cleanup_crit_edge, %if.end.i183.cleanup_crit_edge, %__es58x_check_msg_len.exit.i178, %if.end7.i172, %lor.lhs.false4.i.i170.cleanup_crit_edge, %if.end.i.i167.cleanup_crit_edge, %lor.lhs.false.i.i164.cleanup_crit_edge, %if.end.i160.cleanup_crit_edge, %__es58x_check_msg_len.exit.i155, %if.end7.i149, %lor.lhs.false4.i.i147.cleanup_crit_edge, %if.end.i.i144.cleanup_crit_edge, %lor.lhs.false.i.i141.cleanup_crit_edge, %if.end.i137.cleanup_crit_edge, %__es58x_check_msg_len.exit.i132, %do.end.i, %if.end.i70.i, %lor.lhs.false4.i.i68.i.cleanup_crit_edge, %if.end.i.i65.i.cleanup_crit_edge, %lor.lhs.false.i.i62.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %__es58x_check_msg_len.exit54.thread.i, %if.end.i49.i, %lor.lhs.false4.i.i48.i.cleanup_crit_edge, %if.end.i.i45.i.cleanup_crit_edge, %lor.lhs.false.i.i42.i.cleanup_crit_edge, %if.end.i125.cleanup_crit_edge, %__es58x_check_msg_len.exit.thread.i, %if.end26.i.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.end13.i.i, %lor.lhs.false4.i.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %if.end.i.i122.cleanup_crit_edge, %do.end12.i.i.i, %do.end6.i.i.i, %do.end.i.i.i, %if.end15.i, %lor.lhs.false4.i.i119.cleanup_crit_edge, %if.end.i.i116.cleanup_crit_edge, %lor.lhs.false.i.i113.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then5.i, %__es58x_check_msg_len.exit.i103, %if.end7.i97, %lor.lhs.false4.i.i95.cleanup_crit_edge, %if.end.i.i92.cleanup_crit_edge, %lor.lhs.false.i.i89.cleanup_crit_edge, %if.end.i85.cleanup_crit_edge, %__es58x_check_msg_len.exit.i80, %if.end7.i, %lor.lhs.false4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %__es58x_check_msg_len.exit.i, %do.end
  %retval.0 = phi i32 [ -56, %do.end ], [ -56, %do.end38 ], [ %call35, %if.end33 ], [ 0, %if.end25 ], [ -90, %__es58x_check_msg_len.exit220 ], [ %call9.i, %if.end7.i ], [ -90, %__es58x_check_msg_len.exit.i ], [ -19, %if.end.i.i.cleanup_crit_edge ], [ -44, %if.end.i.cleanup_crit_edge ], [ -44, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -19, %lor.lhs.false4.i.i.cleanup_crit_edge ], [ %call9.i96, %if.end7.i97 ], [ -90, %__es58x_check_msg_len.exit.i80 ], [ -19, %if.end.i.i92.cleanup_crit_edge ], [ -44, %if.end.i85.cleanup_crit_edge ], [ -44, %lor.lhs.false.i.i89.cleanup_crit_edge ], [ -19, %lor.lhs.false4.i.i95.cleanup_crit_edge ], [ %call9.i106, %if.then5.i ], [ %call17.i, %if.end15.i ], [ -90, %__es58x_check_msg_len.exit.i103 ], [ -19, %if.end.i.i116.cleanup_crit_edge ], [ -44, %if.end10.i.cleanup_crit_edge ], [ -44, %lor.lhs.false.i.i113.cleanup_crit_edge ], [ -19, %lor.lhs.false4.i.i119.cleanup_crit_edge ], [ -56, %do.end.i ], [ 0, %if.end13.i.i ], [ -75, %do.end12.i.i.i ], [ -90, %do.end6.i.i.i ], [ -90, %do.end.i.i.i ], [ -19, %if.end.i.i.i.cleanup_crit_edge ], [ -44, %if.end.i.i122.cleanup_crit_edge ], [ -44, %lor.lhs.false.i.i.i.cleanup_crit_edge ], [ -19, %lor.lhs.false4.i.i.i.cleanup_crit_edge ], [ -90, %__es58x_check_msg_len.exit.thread.i ], [ %call4.i.i, %if.end.i49.i ], [ -19, %if.end.i.i45.i.cleanup_crit_edge ], [ -44, %if.end.i125.cleanup_crit_edge ], [ -44, %lor.lhs.false.i.i42.i.cleanup_crit_edge ], [ -19, %lor.lhs.false4.i.i48.i.cleanup_crit_edge ], [ -90, %__es58x_check_msg_len.exit54.thread.i ], [ %call4.i69.i, %if.end.i70.i ], [ -19, %if.end.i.i65.i.cleanup_crit_edge ], [ -44, %if.end16.i.cleanup_crit_edge ], [ -44, %lor.lhs.false.i.i62.i.cleanup_crit_edge ], [ -19, %lor.lhs.false4.i.i68.i.cleanup_crit_edge ], [ %call9.i148, %if.end7.i149 ], [ -90, %__es58x_check_msg_len.exit.i132 ], [ -19, %if.end.i.i144.cleanup_crit_edge ], [ -44, %if.end.i137.cleanup_crit_edge ], [ -44, %lor.lhs.false.i.i141.cleanup_crit_edge ], [ -19, %lor.lhs.false4.i.i147.cleanup_crit_edge ], [ %call9.i171, %if.end7.i172 ], [ -90, %__es58x_check_msg_len.exit.i155 ], [ -19, %if.end.i.i167.cleanup_crit_edge ], [ -44, %if.end.i160.cleanup_crit_edge ], [ -44, %lor.lhs.false.i.i164.cleanup_crit_edge ], [ -19, %lor.lhs.false4.i.i170.cleanup_crit_edge ], [ %call9.i194, %if.end7.i195 ], [ -90, %__es58x_check_msg_len.exit.i178 ], [ -19, %if.end.i.i190.cleanup_crit_edge ], [ -44, %if.end.i183.cleanup_crit_edge ], [ -44, %lor.lhs.false.i.i187.cleanup_crit_edge ], [ -19, %lor.lhs.false4.i.i193.cleanup_crit_edge ], [ -90, %__es58x_check_msg_len.exit.thread ], [ -74, %cleanup.i ], [ %call40.i, %for.end.i ], [ -75, %do.end12.i.i ], [ -90, %do.end6.i.i ], [ -90, %do.end.i.i ], [ -19, %if.end.i.i213.cleanup_crit_edge ], [ -44, %if.end.i206.cleanup_crit_edge ], [ -44, %lor.lhs.false.i.i210.cleanup_crit_edge ], [ -19, %lor.lhs.false4.i.i216.cleanup_crit_edge ], [ %call29.i.i, %if.end26.i.i.cleanup_crit_edge ], [ 0, %for.cond.i.i.cleanup_crit_edge ], [ -74, %for.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @es581_4_fill_urb_header(ptr nocapture noundef writeonly %urb_cmd, i8 noundef zeroext %cmd_type, i8 noundef zeroext %cmd_id, i8 noundef zeroext %channel_idx, i16 noundef zeroext %msg_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %urb_cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -20561, ptr %urb_cmd, align 1
  %cmd_type1 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 1
  %1 = ptrtoint ptr %cmd_type1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %cmd_type, ptr %cmd_type1, align 1
  %cmd_id2 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 2
  %2 = ptrtoint ptr %cmd_id2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %cmd_id, ptr %cmd_id2, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %msg_len)
  %msg_len3 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %urb_cmd, i32 0, i32 3
  %4 = ptrtoint ptr %msg_len3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %msg_len3, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es581_4_tx_can_msg(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %es58x_dev1 = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev1, align 4
  %tx_urb = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %9)
  %cmp.i = icmp eq i32 %9, 72
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_can_msg_cnt = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 5
  %10 = ptrtoint ptr %tx_can_msg_cnt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_can_msg_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 -20561, ptr %5, align 1
  %cmd_type1.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %cmd_type1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 69, ptr %cmd_type1.i, align 1
  %cmd_id2.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %cmd_id2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %cmd_id2.i, align 1
  %msg_len3.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %msg_len3.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 256, ptr %msg_len3.i, align 1
  %16 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %16, align 1
  br label %if.end9

if.end5:                                          ; preds = %if.end
  %msg_len.i = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %msg_len.i, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #7
  %phi.cast = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 481, i16 %20)
  %cmp.i74 = icmp ugt i16 %20, 481
  br i1 %cmp.i74, label %__es58x_check_msg_max_len.exit, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

__es58x_check_msg_max_len.exit:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %phi.cast, 20
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef 501, i32 noundef %add) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5.if.end9_crit_edge, %if.end5.thread
  %msg_len.081.ph = phi i32 [ 1, %if.end5.thread ], [ %phi.cast, %if.end5.if.end9_crit_edge ]
  %23 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %5, i32 0, i32 4
  %arrayidx = getelementptr [0 x i8], ptr %23, i32 0, i32 %msg_len.081.ph
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not7.i = icmp slt i32 %25, 0
  %retval.0.v.i = select i1 %tobool.not7.i, i32 536870911, i32 2047
  %retval.0.i75 = and i32 %retval.0.v.i, %25
  %26 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i75) #7
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %arrayidx, align 1
  %tx_head = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 4
  %28 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_head, align 4
  %packet_idx = getelementptr inbounds %struct.es581_4_tx_can_msg, ptr %arrayidx, i32 0, i32 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %31 = ptrtoint ptr %packet_idx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %packet_idx, align 1
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %.lobit.i = lshr i32 %35, 31
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %37)
  %cmp.i.i = icmp eq i32 %37, 72
  br i1 %cmp.i.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.canfd_frame, ptr %33, i32 0, i32 2
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flags.i, align 1
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool4.not.i = icmp eq i8 %40, 0
  %spec.select31.v.i = select i1 %tobool4.not.i, i32 64, i32 72
  %spec.select31.i = or i32 %spec.select31.v.i, %.lobit.i
  %41 = shl i8 %39, 4
  %42 = and i8 %41, 32
  %43 = zext i8 %42 to i32
  %44 = or i32 %spec.select31.i, %43
  br label %es58x_get_flags.exit

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %and16.i = lshr i32 %35, 29
  %45 = and i32 %and16.i, 2
  %46 = or i32 %45, %.lobit.i
  br label %es58x_get_flags.exit

es58x_get_flags.exit:                             ; preds = %if.else.i, %if.then1.i
  %es58x_flags.2.i = phi i32 [ %46, %if.else.i ], [ %44, %if.then1.i ]
  %conv12 = trunc i32 %es58x_flags.2.i to i16
  %flags = getelementptr inbounds %struct.es581_4_tx_can_msg, ptr %arrayidx, i32 0, i32 2
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv12) #7
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %flags, align 1
  %channel_idx13 = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 8
  %49 = ptrtoint ptr %channel_idx13 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %channel_idx13, align 1
  %add15 = add i8 %50, 1
  %channel_no = getelementptr inbounds %struct.es581_4_tx_can_msg, ptr %arrayidx, i32 0, i32 3
  %51 = ptrtoint ptr %channel_no to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %add15, ptr %channel_no, align 1
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %52 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %es58x_get_flags.exit.if.end.i_crit_edge, label %land.lhs.true.i

es58x_get_flags.exit.if.end.i_crit_edge:          ; preds = %es58x_get_flags.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %es58x_get_flags.exit
  %54 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %56)
  %cmp.i76 = icmp eq i8 %56, 8
  br i1 %cmp.i76, label %land.lhs.true2.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 4
  %57 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %len8_dlc.i, align 1
  %59 = add i8 %58, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %59)
  %60 = icmp ult i8 %59, 7
  br i1 %60, label %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_get_cc_dlc.exit

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %es58x_get_flags.exit.if.end.i_crit_edge
  %61 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  br label %can_get_cc_dlc.exit

can_get_cc_dlc.exit:                              ; preds = %if.end.i, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge
  %retval.0.i77 = phi i8 [ %63, %if.end.i ], [ %58, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge ]
  %dlc = getelementptr inbounds %struct.es581_4_tx_can_msg, ptr %arrayidx, i32 0, i32 4
  %64 = ptrtoint ptr %dlc to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %retval.0.i77, ptr %dlc, align 1
  %data18 = getelementptr inbounds %struct.es581_4_tx_can_msg, ptr %arrayidx, i32 0, i32 5
  %data19 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 5
  %65 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 4
  %conv21 = zext i8 %67 to i32
  %68 = call ptr @memcpy(ptr %data18, ptr %data19, i32 %conv21)
  %69 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %23, align 1
  %inc = add i8 %70, 1
  store i8 %inc, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %retval.0.i77)
  %cmp26 = icmp ult i8 %retval.0.i77, 8
  %conv24 = zext i8 %retval.0.i77 to i32
  %phi.bo = add nuw nsw i32 %conv24, 12
  %cond = select i1 %cmp26, i32 %phi.bo, i32 20
  %add31 = add nuw nsw i32 %cond, %msg_len.081.ph
  %conv32 = trunc i32 %add31 to i16
  %param.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %param.i, align 8
  %urb_cmd_header_len.i = getelementptr inbounds %struct.es58x_parameters, ptr %72, i32 0, i32 13
  %73 = ptrtoint ptr %urb_cmd_header_len.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %urb_cmd_header_len.i, align 1
  %conv.i = zext i8 %74 to i32
  %conv1.i = and i32 %add31, 65535
  %add.i = add nuw nsw i32 %conv1.i, 2
  %add2.i = add nuw nsw i32 %add.i, %conv.i
  %75 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_urb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 19
  %77 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add2.i, ptr %transfer_buffer_length, align 4
  %78 = tail call i16 @llvm.bswap.i16(i16 %conv32)
  %msg_len35 = getelementptr inbounds %struct.es581_4_urb_cmd, ptr %5, i32 0, i32 3
  %79 = ptrtoint ptr %msg_len35 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %msg_len35, align 1
  br label %cleanup

cleanup:                                          ; preds = %can_get_cc_dlc.exit, %__es58x_check_msg_max_len.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %can_get_cc_dlc.exit ], [ -90, %entry.cleanup_crit_edge ], [ -75, %__es58x_check_msg_max_len.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es581_4_enable_channel(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  %tx_conf_msg.i = alloca %struct.es581_4_tx_conf_msg, align 4
  %msg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msg) #7
  %channel_idx = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %channel_idx, align 1
  %add = add i8 %1, 1
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %add, ptr %msg, align 1
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %tx_conf_msg.i) #7
  %bittiming.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %bittiming.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bittiming.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %6 = ptrtoint ptr %tx_conf_msg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tx_conf_msg.i, align 4
  %sample_point.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %sample_point.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sample_point.i, align 4
  %div.i = udiv i32 %8, 10
  %9 = tail call i32 @llvm.bswap.i32(i32 %div.i) #7
  %sample_point2.i = getelementptr inbounds %struct.es581_4_tx_conf_msg, ptr %tx_conf_msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %sample_point2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sample_point2.i, align 4
  %samples_per_bit.i = getelementptr inbounds %struct.es581_4_tx_conf_msg, ptr %tx_conf_msg.i, i32 0, i32 2
  %11 = ptrtoint ptr %samples_per_bit.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %samples_per_bit.i, align 4
  %prop_seg.i.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %prop_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prop_seg.i.i, align 4
  %add.i.i = add i32 %13, 1
  %phase_seg1.i.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %phase_seg1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phase_seg1.i.i, align 4
  %add1.i.i = add i32 %add.i.i, %15
  %phase_seg2.i.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 5
  %16 = ptrtoint ptr %phase_seg2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phase_seg2.i.i, align 4
  %add2.i.i = add i32 %add1.i.i, %17
  %18 = tail call i32 @llvm.bswap.i32(i32 %add2.i.i) #7
  %bit_time.i = getelementptr inbounds %struct.es581_4_tx_conf_msg, ptr %tx_conf_msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %bit_time.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %bit_time.i, align 4
  %sjw.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %sjw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sjw.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %sjw3.i = getelementptr inbounds %struct.es581_4_tx_conf_msg, ptr %tx_conf_msg.i, i32 0, i32 4
  %23 = ptrtoint ptr %sjw3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sjw3.i, align 4
  %sync_edge.i = getelementptr inbounds %struct.es581_4_tx_conf_msg, ptr %tx_conf_msg.i, i32 0, i32 5
  %24 = ptrtoint ptr %sync_edge.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16777216, ptr %sync_edge.i, align 4
  %physical_layer.i = getelementptr inbounds %struct.es581_4_tx_conf_msg, ptr %tx_conf_msg.i, i32 0, i32 6
  %25 = ptrtoint ptr %physical_layer.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16777216, ptr %physical_layer.i, align 4
  %echo_mode.i = getelementptr inbounds %struct.es581_4_tx_conf_msg, ptr %tx_conf_msg.i, i32 0, i32 7
  %26 = ptrtoint ptr %echo_mode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16777216, ptr %echo_mode.i, align 4
  %channel_no.i = getelementptr inbounds %struct.es581_4_tx_conf_msg, ptr %tx_conf_msg.i, i32 0, i32 8
  %27 = ptrtoint ptr %channel_no.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %add, ptr %channel_no.i, align 4
  %es58x_dev.i = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 1
  %28 = ptrtoint ptr %es58x_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %es58x_dev.i, align 4
  %conv6.i = zext i8 %1 to i32
  %call7.i = call i32 @es58x_send_msg(ptr noundef %29, i8 noundef zeroext 69, i8 noundef zeroext 3, ptr noundef nonnull %tx_conf_msg.i, i16 noundef zeroext 33, i32 noundef %conv6.i) #7
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %tx_conf_msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %es58x_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %es58x_dev.i, align 4
  %32 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %channel_idx, align 1
  %conv3 = zext i8 %33 to i32
  %call4 = call i32 @es58x_send_msg(ptr noundef %31, i8 noundef zeroext 69, i8 noundef zeroext 4, ptr noundef nonnull %msg, i16 noundef zeroext 1, i32 noundef %conv3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call7.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es581_4_disable_channel(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  %msg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msg) #7
  %channel_idx = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %channel_idx, align 1
  %add = add i8 %1, 1
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %add, ptr %msg, align 1
  %es58x_dev = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %es58x_dev, align 4
  %conv3 = zext i8 %1 to i32
  %call = call i32 @es58x_send_msg(ptr noundef %4, i8 noundef zeroext 69, i8 noundef zeroext 12, ptr noundef nonnull %msg, i16 noundef zeroext 1, i32 noundef %conv3) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msg) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es581_4_reset_device(ptr noundef %es58x_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @es58x_send_msg(ptr noundef %es58x_dev, i8 noundef zeroext 69, i8 noundef zeroext 40, ptr noundef null, i16 noundef zeroext 0, i32 noundef 255) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es581_4_get_timestamp(ptr noundef %es58x_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @es58x_send_msg(ptr noundef %es58x_dev, i8 noundef zeroext 69, i8 noundef zeroext 14, ptr noundef null, i16 noundef zeroext 0, i32 noundef 255) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @es58x_rx_timestamp(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_rx_cmd_ret_u8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_rx_cmd_ret_u32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_tx_ack_msg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_rx_can_msg(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_rx_err_msg(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_send_msg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @es581_4_param, !1, !"es581_4_param", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 469, i32 31}
!2 = !{ptr @es581_4_ops, !3, !"es581_4_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 498, i32 30}
!4 = !{ptr @es581_4_bittiming_const, !5, !"es581_4_bittiming_const", i1 false, i1 false}
!5 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 457, i32 41}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 272, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @es581_4_handle_urb_cmd._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @es581_4_handle_urb_cmd._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 307, i32 9}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 319, i32 9}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 327, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @es581_4_handle_urb_cmd._entry.7, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @es581_4_handle_urb_cmd._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 183, i32 8}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 208, i32 8}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 240, i32 9}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 248, i32 9}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 256, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @es581_4_dispatch_rx_cmd._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @es581_4_dispatch_rx_cmd._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 103, i32 16}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 117, i32 9}
!40 = !{ptr @__func__.es581_4_rx_can_msg, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 118, i32 9}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 514, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__es58x_msg_num_element._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @__es58x_msg_num_element._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 519, i32 3}
!50 = !{ptr @__es58x_msg_num_element._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @__es58x_msg_num_element._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 524, i32 3}
!54 = !{ptr @__es58x_msg_num_element._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @__es58x_msg_num_element._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 527, i32 3}
!58 = !{ptr @__es58x_msg_num_element._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @__es58x_msg_num_element._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 448, i32 3}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__es58x_check_msg_len._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @__es58x_check_msg_len._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 54, i32 16}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 75, i32 10}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 81, i32 23}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/usb/etas_es58x/es581_4.c", i32 368, i32 8}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 479, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @__es58x_check_msg_max_len._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @__es58x_check_msg_max_len._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
