; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/etas_es58x/es58x_fd.c_pt.bc'
source_filename = "../drivers/net/can/usb/etas_es58x/es58x_fd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc_const = type { i32, i32, i32, i32, i32, i32 }
%struct.es58x_parameters = type { ptr, ptr, ptr, i32, %struct.can_clock, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.can_clock = type { i32 }
%struct.es58x_operators = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.es58x_fd_urb_cmd = type <{ i16, i8, i8, i8, i16, %union.anon.1, i16 }>
%union.anon.1 = type { %struct.es58x_fd_rx_event_msg, [7784 x i8] }
%struct.es58x_fd_rx_event_msg = type { i64, i32, i8, i8, i8, i8 }
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
%struct.es58x_fd_tx_ack_msg = type <{ i32, i16 }>
%struct.es58x_fd_echo_msg = type <{ i64, i8 }>
%struct.es58x_fd_rx_can_msg = type <{ i64, i32, i8, %union.anon.155, [64 x i8] }>
%union.anon.155 = type { i8 }
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
%struct.es58x_fd_tx_can_msg = type <{ i8, i32, i8, %union.anon.157, [64 x i8] }>
%union.anon.157 = type { i8 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_frame = type { i32, %union.anon.156, i8, i8, i8, [8 x i8] }
%union.anon.156 = type { i8 }
%struct.es58x_fd_tx_conf_msg = type <{ %struct.es58x_fd_bittiming, i8, i8, i8, i8, i8, i8, %struct.es58x_fd_bittiming, i8, i16, i16 }>
%struct.es58x_fd_bittiming = type { i32, i16, i16, i16, i16 }

@es58x_fd_nom_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"ES582.1/ES584.1\00", i32 2, i32 256, i32 2, i32 128, i32 128, i32 1, i32 512, i32 1 }, [48 x i8] zeroinitializer }, align 32
@es58x_fd_data_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"ES582.1/ES584.1\00", i32 2, i32 32, i32 1, i32 16, i32 8, i32 1, i32 32, i32 1 }, [48 x i8] zeroinitializer }, align 32
@es58x_tdc_const = internal constant { %struct.can_tdc_const, [40 x i8] } { %struct.can_tdc_const { i32 0, i32 0, i32 0, i32 127, i32 0, i32 127 }, [40 x i8] zeroinitializer }, align 32
@es58x_fd_param = dso_local constant { %struct.es58x_parameters, [56 x i8] } { %struct.es58x_parameters { ptr @es58x_fd_nom_bittiming_const, ptr @es58x_fd_data_bittiming_const, ptr @es58x_tdc_const, i32 8000000, %struct.can_clock { i32 80000000 }, i32 935, i16 -12550, i16 -310, i16 7109, i16 7809, i16 255, i16 255, i8 100, i8 7, i8 5, i8 6 }, [56 x i8] zeroinitializer }, align 32
@es58x_fd_ops = dso_local constant { %struct.es58x_operators, [32 x i8] } { %struct.es58x_operators { ptr @es58x_fd_get_msg_len, ptr @es58x_fd_handle_urb_cmd, ptr @es58x_fd_fill_urb_header, ptr @es58x_fd_tx_can_msg, ptr @es58x_fd_enable_channel, ptr @es58x_fd_disable_channel, ptr null, ptr @es58x_fd_get_timestamp }, [32 x i8] zeroinitializer }, align 32
@es58x_fd_handle_urb_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: Unknown command type (0x%02X) and command ID (0x%02X) combination\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"es58x_fd_handle_urb_cmd\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/can/usb/etas_es58x/es58x_fd.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@es58x_fd_handle_urb_cmd._entry_ptr = internal global ptr @es58x_fd_handle_urb_cmd._entry, section ".printk_index", align 4
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"es58x_fd_urb_cmd->rx_cmd_ret_le32\00", [62 x i8] zeroinitializer }, align 32
@__es58x_check_msg_len._entry = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 450, ptr @.str.3, ptr @.str.4 }, align 1
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Length of %s is %zu but received command is %zu.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__es58x_check_msg_len\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/can/usb/etas_es58x/es58x_core.h\00", [52 x i8] zeroinitializer }, align 32
@__es58x_check_msg_len._entry_ptr = internal global ptr @__es58x_check_msg_len._entry, section ".printk_index", align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"*tx_ack_msg\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"es58x_fd_urb_cmd->echo_msg\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Packet idx jumped from %u to %u\0A\00", [63 x i8] zeroinitializer }, align 32
@__es58x_msg_num_element._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.8, i32 516, ptr @.str.3, ptr @.str.4 }, align 1
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Minimum length for %s is %zu but received command is %zu.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__es58x_msg_num_element\00", [40 x i8] zeroinitializer }, align 32
@__es58x_msg_num_element._entry_ptr = internal global ptr @__es58x_msg_num_element._entry, section ".printk_index", align 4
@__es58x_msg_num_element._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.8, i32 521, ptr @.str.3, ptr @.str.4 }, align 1
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Received command length: %zu is not a multiple of %s[0]: %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@__es58x_msg_num_element._entry_ptr.16 = internal global ptr @__es58x_msg_num_element._entry.14, section ".printk_index", align 4
@__es58x_msg_num_element._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.8, i32 526, ptr @.str.3, ptr @.str.4 }, align 1
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Array %s is supposed to have %zu elements each of size %zu...\0A\00", [33 x i8] zeroinitializer }, align 32
@__es58x_msg_num_element._entry_ptr.19 = internal global ptr @__es58x_msg_num_element._entry.17, section ".printk_index", align 4
@__es58x_msg_num_element._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.8, i32 529, ptr @.str.3, ptr @.str.4 }, align 1
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"... But received command has %zu elements (total length %zu).\0A\00", [33 x i8] zeroinitializer }, align 32
@__es58x_msg_num_element._entry_ptr.22 = internal global ptr @__es58x_msg_num_element._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"es58x_fd_urb_cmd->rx_can_msg_buf\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s: Expected a rx_can_msg of size %d but only %d bytes are left in rx_can_msg_buf\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.es58x_fd_rx_can_msg = private unnamed_addr constant [20 x i8] c"es58x_fd_rx_can_msg\00", align 1
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Data length is %d but maximum should be %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %s is down, dropping %d rx packets\0A\00", [56 x i8] zeroinitializer }, align 32
@__es58x_check_msg_max_len._entry = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.8, i32 481, ptr @.str.3, ptr @.str.4 }, align 1
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Maximum length for %s is %zu but received command is %zu.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__es58x_check_msg_max_len\00", [38 x i8] zeroinitializer }, align 32
@__es58x_check_msg_max_len._entry_ptr = internal global ptr @__es58x_check_msg_max_len._entry, section ".printk_index", align 4
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"*rx_event_msg\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"es58x_fd_urb_cmd->timestamp\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"es58x_fd_urb_cmd->tx_can_msg_buf\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 255]
@__sancov_gen_cov_switch_values.32 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 5, i64 7, i64 16, i64 17, i64 32, i64 33]
@___asan_gen_.33 = private unnamed_addr constant [29 x i8] c"es58x_fd_nom_bittiming_const\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 474, i32 41 }
@___asan_gen_.36 = private unnamed_addr constant [30 x i8] c"es58x_fd_data_bittiming_const\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 491, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"es58x_tdc_const\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 508, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"es58x_fd_param\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 517, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"es58x_fd_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 556, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 311, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 194, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 448, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 212, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 74, i32 16 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 84, i32 23 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 514, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 519, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 524, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 527, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 105, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 124, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 131, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 159, i32 9 }
@___asan_gen_.118 = private unnamed_addr constant [47 x i8] c"../drivers/net/can/usb/etas_es58x/es58x_core.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 479, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 175, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 274, i32 9 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [45 x i8] c"../drivers/net/can/usb/etas_es58x/es58x_fd.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 354, i32 8 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__es58x_check_msg_len._entry, ptr @__es58x_check_msg_len._entry_ptr, ptr @__es58x_check_msg_max_len._entry, ptr @__es58x_check_msg_max_len._entry_ptr, ptr @__es58x_msg_num_element._entry, ptr @__es58x_msg_num_element._entry.14, ptr @__es58x_msg_num_element._entry.17, ptr @__es58x_msg_num_element._entry.20, ptr @__es58x_msg_num_element._entry_ptr, ptr @__es58x_msg_num_element._entry_ptr.16, ptr @__es58x_msg_num_element._entry_ptr.19, ptr @__es58x_msg_num_element._entry_ptr.22, ptr @es58x_fd_handle_urb_cmd._entry, ptr @es58x_fd_handle_urb_cmd._entry_ptr, ptr @es58x_fd_nom_bittiming_const, ptr @es58x_fd_data_bittiming_const, ptr @es58x_tdc_const, ptr @es58x_fd_param, ptr @es58x_fd_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_fd_nom_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_fd_data_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_tdc_const to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_fd_param to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_fd_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es58x_fd_handle_urb_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @es58x_fd_get_msg_len(ptr nocapture noundef readonly %urb_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_len = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %0 = ptrtoint ptr %msg_len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %msg_len, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  ret i16 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_fd_handle_urb_cmd(ptr noundef %es58x_dev, ptr noundef %urb_cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_type = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.do.end_crit_edge [
    i8 3, label %entry.sw.bb_crit_edge
    i8 4, label %entry.sw.bb_crit_edge81
    i8 -1, label %sw.bb1
  ]

entry.sw.bb_crit_edge81:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge81
  %channel_idx.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 3
  %3 = ptrtoint ptr %channel_idx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %channel_idx.i, align 1
  %num_can_ch.i.i = getelementptr inbounds %struct.es58x_device, ptr %es58x_dev, i32 0, i32 15
  %5 = ptrtoint ptr %num_can_ch.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_can_ch.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %4)
  %cmp1.not.i.i = icmp ugt i8 %6, %4
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %sw.bb
  %conv.i = zext i8 %4 to i32
  %arrayidx.i.i = getelementptr %struct.es58x_device, ptr %es58x_dev, i32 0, i32 2, i32 %conv.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end_crit_edge, label %lor.lhs.false4.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false4.i.i:                               ; preds = %if.end.i.i
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false4.i.i.if.end_crit_edge, label %if.end.i

lor.lhs.false4.i.i.if.end_crit_edge:              ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false4.i.i
  %cmd_id.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 2
  %12 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd_id.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %13, label %if.end.i.do.end_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb3.i
    i8 5, label %sw.bb5.i
    i8 7, label %sw.bb7.i
    i8 16, label %sw.bb9.i
    i8 32, label %sw.bb11.i
    i8 33, label %sw.bb13.i
    i8 17, label %sw.bb15.i
  ]

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb.i:                                          ; preds = %if.end.i
  %msg_len2.i.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %15 = ptrtoint ptr %msg_len2.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %msg_len2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %16)
  %cmp.not.i.i.i = icmp eq i16 %16, 1024
  br i1 %cmp.not.i.i.i, label %if.end.i29.i, label %__es58x_check_msg_len.exit.i.i

__es58x_check_msg_len.exit.i.i:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #7
  %conv.i28.i = zext i16 %17 to i32
  %es58x_dev1.i.i = getelementptr i8, ptr %8, i32 2616
  %18 = ptrtoint ptr %es58x_dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %es58x_dev1.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef %conv.i28.i) #10
  br label %if.end

if.end.i29.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %22, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %call6.i.i = tail call i32 @es58x_rx_cmd_ret_u32(ptr noundef nonnull %8, i32 noundef 1, i32 noundef %25) #7
  br label %sw.epilog

sw.bb3.i:                                         ; preds = %if.end.i
  %msg_len2.i31.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %26 = ptrtoint ptr %msg_len2.i31.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %msg_len2.i31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %27)
  %cmp.not.i.i32.i = icmp eq i16 %27, 1024
  br i1 %cmp.not.i.i32.i, label %if.end.i37.i, label %__es58x_check_msg_len.exit.i35.i

__es58x_check_msg_len.exit.i35.i:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #7
  %conv.i33.i = zext i16 %28 to i32
  %es58x_dev1.i34.i = getelementptr i8, ptr %8, i32 2616
  %29 = ptrtoint ptr %es58x_dev1.i34.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %es58x_dev1.i34.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef %conv.i33.i) #10
  br label %if.end

if.end.i37.i:                                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %33, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %call6.i36.i = tail call i32 @es58x_rx_cmd_ret_u32(ptr noundef nonnull %8, i32 noundef 2, i32 noundef %36) #7
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %if.end.i
  %msg_len2.i40.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %37 = ptrtoint ptr %msg_len2.i40.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %msg_len2.i40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %38)
  %cmp.not.i.i41.i = icmp eq i16 %38, 1536
  br i1 %cmp.not.i.i41.i, label %if.end.i45.i, label %__es58x_check_msg_len.exit.i44.i

__es58x_check_msg_len.exit.i44.i:                 ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #7
  %conv.i42.i = zext i16 %39 to i32
  %es58x_dev1.i43.i = getelementptr i8, ptr %8, i32 2616
  %40 = ptrtoint ptr %es58x_dev1.i43.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %es58x_dev1.i43.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef %conv.i42.i) #10
  br label %if.end

if.end.i45.i:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5
  %tx_free_entries.i.i = getelementptr inbounds %struct.es58x_fd_tx_ack_msg, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %tx_free_entries.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %tx_free_entries.i.i, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #7
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %44, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  %call7.i.i = tail call i32 @es58x_tx_ack_msg(ptr noundef nonnull %8, i16 noundef zeroext %47, i32 noundef %50) #7
  br label %sw.epilog

sw.bb7.i:                                         ; preds = %if.end.i
  %es58x_dev1.i47.i = getelementptr i8, ptr %8, i32 2616
  %51 = ptrtoint ptr %es58x_dev1.i47.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %es58x_dev1.i47.i, align 4
  %timestamps.i.i = getelementptr inbounds %struct.es58x_device, ptr %52, i32 0, i32 13
  %msg_len2.i48.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %53 = ptrtoint ptr %msg_len2.i48.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %msg_len2.i48.i, align 1
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #7
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %52, align 8
  %conv.i49.i = zext i16 %55 to i32
  %.frozen = freeze i16 %55
  %div.i60.i.i = udiv i16 %.frozen, 9
  %div.i.zext.i.i = zext i16 %div.i60.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %55)
  %58 = icmp ult i16 %55, 9
  br i1 %58, label %do.end.i.i.i, label %if.else.i.i.i

do.end.i.i.i:                                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 9, i32 noundef %conv.i49.i) #10
  br label %if.end

if.else.i.i.i:                                    ; preds = %sw.bb7.i
  %59 = mul i16 %div.i60.i.i, 9
  %rem.i61.i.i.decomposed = sub i16 %.frozen, %59
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i61.i.i.decomposed)
  %cmp2.not.i.i.i = icmp eq i16 %rem.i61.i.i.decomposed, 0
  br i1 %cmp2.not.i.i.i, label %if.else7.i.i.i, label %do.end6.i.i.i

do.end6.i.i.i:                                    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.15, i32 noundef %conv.i49.i, ptr noundef nonnull @.str.10, i32 noundef 9) #10
  br label %if.end

if.else7.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 908, i16 %55)
  %cmp8.i.i.i = icmp ugt i16 %55, 908
  br i1 %cmp8.i.i.i, label %do.end12.i.i.i, label %for.body.preheader.i.i

do.end12.i.i.i:                                   ; preds = %if.else7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10, i32 noundef 100, i32 noundef 9) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.21, i32 noundef %div.i.zext.i.i, i32 noundef %conv.i49.i) #10
  br label %if.end

for.body.preheader.i.i:                           ; preds = %if.else7.i.i.i
  %60 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5
  %tx_tail.i.i = getelementptr i8, ptr %8, i32 2624
  %packet_idx.i.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5, i32 0, i32 1
  %61 = ptrtoint ptr %packet_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %packet_idx.i.i, align 1
  %conv7.i.i = zext i8 %62 to i32
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div.i.zext.i.i, i32 1) #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end23.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rcv_packet_idx.064.i.i = phi i32 [ %inc.i.i, %if.end23.i.i.for.body.i.i_crit_edge ], [ %conv7.i.i, %for.body.preheader.i.i ]
  %i.063.i.i = phi i32 [ %inc27.i.i, %if.end23.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %packet_idx13.i.i = getelementptr %struct.es58x_fd_echo_msg, ptr %60, i32 %i.063.i.i, i32 1
  %63 = ptrtoint ptr %packet_idx13.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %packet_idx13.i.i, align 1
  %65 = trunc i32 %rcv_packet_idx.064.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %65)
  %cmp15.not.i.i = icmp eq i8 %64, %65
  br i1 %cmp15.not.i.i, label %if.end23.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv11.i.i = and i32 %rcv_packet_idx.064.i.i, 255
  %conv14.le.i.i = zext i8 %64 to i32
  %sub.i.i = add nsw i32 %conv11.i.i, -1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef %sub.i.i, i32 noundef %conv14.le.i.i) #10
  br label %if.end

if.end23.i.i:                                     ; preds = %for.body.i.i
  %arrayidx12.i.i = getelementptr %struct.es58x_fd_echo_msg, ptr %60, i32 %i.063.i.i
  %66 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %arrayidx12.i.i, align 1
  %68 = tail call i64 @llvm.bswap.i64(i64 %67) #7
  %arrayidx26.i.i = getelementptr i64, ptr %timestamps.i.i, i32 %i.063.i.i
  %69 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %arrayidx26.i.i, align 8
  %inc.i.i = add nuw nsw i32 %rcv_packet_idx.064.i.i, 1
  %inc27.i.i = add nuw nsw i32 %i.063.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc27.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end23.i.i.for.body.i.i_crit_edge

if.end23.i.i.for.body.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %tx_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_tail.i.i, align 4
  %call29.i.i = tail call i32 @es58x_can_get_echo_skb(ptr noundef %8, i32 noundef %71, ptr noundef %timestamps.i.i, i32 noundef %div.i.zext.i.i) #7
  br label %sw.epilog

sw.bb9.i:                                         ; preds = %if.end.i
  %msg_len.i.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %72 = ptrtoint ptr %msg_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %msg_len.i.i, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 7800, i16 %74)
  %cmp.i.i.i = icmp ugt i16 %74, 7800
  br i1 %cmp.i.i.i, label %__es58x_check_msg_max_len.exit.i.i, label %if.end.i53.i

__es58x_check_msg_max_len.exit.i.i:               ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i51.i = zext i16 %74 to i32
  %es58x_dev1.i52.i = getelementptr i8, ptr %8, i32 2616
  %75 = ptrtoint ptr %es58x_dev1.i52.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %es58x_dev1.i52.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.23, i32 noundef 7800, i32 noundef %conv.i51.i) #10
  br label %if.end

if.end.i53.i:                                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp.not142.i.i = icmp eq i16 %73, 0
  br i1 %cmp.not142.i.i, label %if.end.i53.i.for.end.i58.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i53.i.for.end.i58.i_crit_edge:             ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i58.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i53.i
  %79 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5
  br label %for.body.i55.i

for.body.i55.i:                                   ; preds = %cleanup63.thread127.i.i.for.body.i55.i_crit_edge, %for.body.lr.ph.i.i
  %rx_can_msg_buf.0146.i.i = phi ptr [ %79, %for.body.lr.ph.i.i ], [ %add.ptr.i.i, %cleanup63.thread127.i.i.for.body.i55.i_crit_edge ]
  %pkts.0144.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i57.i, %cleanup63.thread127.i.i.for.body.i55.i_crit_edge ]
  %rx_can_msg_buf_len.0143.i.i = phi i16 [ %74, %for.body.lr.ph.i.i ], [ %conv61.i.i, %cleanup63.thread127.i.i.for.body.i55.i_crit_edge ]
  %conv4148.i.i = zext i16 %rx_can_msg_buf_len.0143.i.i to i32
  %flags.i.i = getelementptr inbounds %struct.es58x_fd_rx_can_msg, ptr %rx_can_msg_buf.0146.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %flags.i.i, align 1
  %82 = and i8 %81, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool7.not.i.i = icmp eq i8 %82, 0
  %__msg.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %rx_can_msg_buf.0146.i.i, i32 13
  %83 = ptrtoint ptr %__msg.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %__msg.sroa.5.0.copyload.i.i = load i8, ptr %__msg.sroa.5.0..sroa_idx.i.i, align 1
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %for.body.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %__msg.sroa.5.0.copyload.i.i) #7
  %call1.i.i.i = tail call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %call.i.i.i) #7
  br label %if.end22.i.i

if.else.i.i:                                      ; preds = %for.body.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = tail call i8 @llvm.umin.i8(i8 %__msg.sroa.5.0.copyload.i.i, i8 8) #7
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.else.i.i, %if.then13.i.i
  %__msg_len.0.in.i.i = phi i8 [ %call1.i.i.i, %if.then13.i.i ], [ %84, %if.else.i.i ]
  %__msg_len.0.i.i = zext i8 %__msg_len.0.in.i.i to i32
  %85 = add nuw nsw i32 %__msg_len.0.i.i, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv4148.i.i)
  %cmp27.i.i = icmp ugt i32 %85, %conv4148.i.i
  br i1 %cmp27.i.i, label %if.then29.i.i, label %if.end32.i.i

if.then29.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.es58x_fd_rx_can_msg, i32 noundef %85, i32 noundef %conv4148.i.i) #10
  br label %if.end

if.end32.i.i:                                     ; preds = %if.end22.i.i
  %86 = ptrtoint ptr %__msg.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %__msg.sroa.5.0..sroa_idx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %87)
  %cmp34.i.i = icmp ugt i8 %87, 64
  br i1 %cmp34.i.i, label %if.then36.i.i, label %if.end38.i.i

if.then36.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv33.i.i = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.es58x_fd_rx_can_msg, i32 noundef %conv33.i.i, i32 noundef 64) #10
  br label %if.end

if.end38.i.i:                                     ; preds = %if.end32.i.i
  %88 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i56.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i56.i, label %if.end38.i.i.cleanup63.thread127.i.i_crit_edge, label %if.then40.i.i

if.end38.i.i.cleanup63.thread127.i.i_crit_edge:   ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63.thread127.i.i

if.then40.i.i:                                    ; preds = %if.end38.i.i
  %90 = ptrtoint ptr %rx_can_msg_buf.0146.i.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %91 = load i64, ptr %rx_can_msg_buf.0146.i.i, align 1
  %92 = tail call i64 @llvm.bswap.i64(i64 %91) #7
  %can_id42.i.i = getelementptr inbounds %struct.es58x_fd_rx_can_msg, ptr %rx_can_msg_buf.0146.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %can_id42.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %can_id42.i.i, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #7
  br i1 %tobool7.not.i.i, label %if.then40.i.i.if.end48.i.i_crit_edge, label %if.then45.i.i

if.then40.i.i.if.end48.i.i_crit_edge:             ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call46.i.i = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %87) #7
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.then40.i.i.if.end48.i.i_crit_edge
  %dlc.0.i.i = phi i8 [ %call46.i.i, %if.then45.i.i ], [ %87, %if.then40.i.i.if.end48.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.es58x_fd_rx_can_msg, ptr %rx_can_msg_buf.0146.i.i, i32 0, i32 4
  %96 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %flags.i.i, align 1
  %conv51.i.i = zext i8 %97 to i32
  %call52.i.i = tail call i32 @es58x_rx_can_msg(ptr noundef %8, i64 noundef %92, ptr noundef %data.i.i, i32 noundef %95, i32 noundef %conv51.i.i, i8 noundef zeroext %dlc.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %tobool53.not.i.i = icmp eq i32 %call52.i.i, 0
  br i1 %tobool53.not.i.i, label %if.end48.i.i.cleanup63.thread127.i.i_crit_edge, label %if.end48.i.i.for.end.i58.i_crit_edge

if.end48.i.i.for.end.i58.i_crit_edge:             ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i58.i

if.end48.i.i.cleanup63.thread127.i.i_crit_edge:   ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63.thread127.i.i

cleanup63.thread127.i.i:                          ; preds = %if.end48.i.i.cleanup63.thread127.i.i_crit_edge, %if.end38.i.i.cleanup63.thread127.i.i_crit_edge
  %98 = trunc i32 %85 to i16
  %conv61.i.i = sub i16 %rx_can_msg_buf_len.0143.i.i, %98
  %add.ptr.i.i = getelementptr i8, ptr %rx_can_msg_buf.0146.i.i, i32 %85
  %inc.i57.i = add i32 %pkts.0144.i.i, 1
  %cmp.not.i.i = icmp eq i16 %conv61.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup63.thread127.i.i.for.end.i58.i_crit_edge, label %cleanup63.thread127.i.i.for.body.i55.i_crit_edge

cleanup63.thread127.i.i.for.body.i55.i_crit_edge: ; preds = %cleanup63.thread127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i55.i

cleanup63.thread127.i.i.for.end.i58.i_crit_edge:  ; preds = %cleanup63.thread127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i58.i

for.end.i58.i:                                    ; preds = %cleanup63.thread127.i.i.for.end.i58.i_crit_edge, %if.end48.i.i.for.end.i58.i_crit_edge, %if.end.i53.i.for.end.i58.i_crit_edge
  %pkts.0.lcssa.i.i = phi i32 [ 0, %if.end.i53.i.for.end.i58.i_crit_edge ], [ %pkts.0144.i.i, %if.end48.i.i.for.end.i58.i_crit_edge ], [ %inc.i57.i, %cleanup63.thread127.i.i.for.end.i58.i_crit_edge ]
  %ret.3.i.i = phi i32 [ 0, %if.end.i53.i.for.end.i58.i_crit_edge ], [ %call52.i.i, %if.end48.i.i.for.end.i58.i_crit_edge ], [ 0, %cleanup63.thread127.i.i.for.end.i58.i_crit_edge ]
  %99 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i119.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i119.i.i)
  %tobool.i120.not.i.i = icmp eq i32 %and1.i.i119.i.i, 0
  br i1 %tobool.i120.not.i.i, label %if.then69.i.i, label %for.end.i58.i.sw.epilog_crit_edge

for.end.i58.i.sw.epilog_crit_edge:                ; preds = %for.end.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then69.i.i:                                    ; preds = %for.end.i58.i
  %call70.i.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i.i)
  %tobool71.not.i.i = icmp eq i32 %call70.i.i, 0
  br i1 %tobool71.not.i.i, label %if.then69.i.i.if.end74.i.i_crit_edge, label %if.then72.i.i

if.then69.i.i.if.end74.i.i_crit_edge:             ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i.i

if.then72.i.i:                                    ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %8, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.es58x_fd_rx_can_msg, ptr noundef %8, i32 noundef %pkts.0.lcssa.i.i) #10
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.then72.i.i, %if.then69.i.i.if.end74.i.i_crit_edge
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 6
  %101 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_dropped.i.i, align 8
  %add.i.i = add i32 %102, %pkts.0.lcssa.i.i
  store i32 %add.i.i, ptr %rx_dropped.i.i, align 8
  br label %sw.epilog

sw.bb11.i:                                        ; preds = %if.end.i
  %msg_len2.i59.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %103 = ptrtoint ptr %msg_len2.i59.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %msg_len2.i59.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %104)
  %cmp.not.i.i60.i = icmp eq i16 %104, 1024
  br i1 %cmp.not.i.i60.i, label %if.end.i65.i, label %__es58x_check_msg_len.exit.i63.i

__es58x_check_msg_len.exit.i63.i:                 ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #7
  %conv.i61.i = zext i16 %105 to i32
  %es58x_dev1.i62.i = getelementptr i8, ptr %8, i32 2616
  %106 = ptrtoint ptr %es58x_dev1.i62.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %es58x_dev1.i62.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef %conv.i61.i) #10
  br label %if.end

if.end.i65.i:                                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %110, align 1
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #7
  %call6.i64.i = tail call i32 @es58x_rx_cmd_ret_u32(ptr noundef nonnull %8, i32 noundef 4, i32 noundef %113) #7
  br label %sw.epilog

sw.bb13.i:                                        ; preds = %if.end.i
  %msg_len2.i68.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %114 = ptrtoint ptr %msg_len2.i68.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %msg_len2.i68.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %115)
  %cmp.not.i.i69.i = icmp eq i16 %115, 1024
  br i1 %cmp.not.i.i69.i, label %if.end.i74.i, label %__es58x_check_msg_len.exit.i72.i

__es58x_check_msg_len.exit.i72.i:                 ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #7
  %conv.i70.i = zext i16 %116 to i32
  %es58x_dev1.i71.i = getelementptr i8, ptr %8, i32 2616
  %117 = ptrtoint ptr %es58x_dev1.i71.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %es58x_dev1.i71.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef %conv.i70.i) #10
  br label %if.end

if.end.i74.i:                                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #9
  %121 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %121, align 1
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #7
  %call6.i73.i = tail call i32 @es58x_rx_cmd_ret_u32(ptr noundef nonnull %8, i32 noundef 5, i32 noundef %124) #7
  br label %sw.epilog

sw.bb15.i:                                        ; preds = %if.end.i
  %msg_len2.i77.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %125 = ptrtoint ptr %msg_len2.i77.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %msg_len2.i77.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %126)
  %cmp.not.i.i78.i = icmp eq i16 %126, 4096
  br i1 %cmp.not.i.i78.i, label %if.end.i82.i, label %__es58x_check_msg_len.exit.i81.i

__es58x_check_msg_len.exit.i81.i:                 ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #9
  %127 = tail call i16 @llvm.bswap.i16(i16 %126) #7
  %conv.i79.i = zext i16 %127 to i32
  %es58x_dev1.i80.i = getelementptr i8, ptr %8, i32 2616
  %128 = ptrtoint ptr %es58x_dev1.i80.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %es58x_dev1.i80.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29, i32 noundef 16, i32 noundef %conv.i79.i) #10
  br label %if.end

if.end.i82.i:                                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5
  %error_code.i.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5, i32 0, i32 4
  %133 = ptrtoint ptr %error_code.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %error_code.i.i, align 1
  %conv5.i.i = zext i8 %134 to i32
  %event_code.i.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5, i32 0, i32 5
  %135 = ptrtoint ptr %event_code.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %event_code.i.i, align 1
  %conv6.i.i = zext i8 %136 to i32
  %137 = ptrtoint ptr %132 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 8)
  %138 = load i64, ptr %132, align 1
  %139 = tail call i64 @llvm.bswap.i64(i64 %138) #7
  %call8.i.i = tail call i32 @es58x_rx_err_msg(ptr noundef nonnull %8, i32 noundef %conv5.i.i, i32 noundef %conv6.i.i, i64 noundef %139) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %cmd_id.i14 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 2
  %140 = ptrtoint ptr %cmd_id.i14 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %cmd_id.i14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %141)
  %cond.i = icmp eq i8 %141, 2
  br i1 %cond.i, label %sw.bb.i16, label %sw.bb1.do.end_crit_edge

sw.bb1.do.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb.i16:                                        ; preds = %sw.bb1
  %msg_len1.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %142 = ptrtoint ptr %msg_len1.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %msg_len1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %143)
  %cmp.not.i.i15 = icmp eq i16 %143, 2048
  br i1 %cmp.not.i.i15, label %if.end.i17, label %__es58x_check_msg_len.exit.i

__es58x_check_msg_len.exit.i:                     ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #9
  %144 = tail call i16 @llvm.bswap.i16(i16 %143) #7
  %conv2.i = zext i16 %144 to i32
  %145 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %es58x_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef %conv2.i) #10
  br label %if.end

if.end.i17:                                       ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #9
  %147 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 5
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %149 = load i64, ptr %147, align 1
  %150 = tail call i64 @llvm.bswap.i64(i64 %149) #7
  tail call void @es58x_rx_timestamp(ptr noundef %es58x_dev, i64 noundef %150) #7
  br label %if.end

sw.epilog:                                        ; preds = %if.end.i82.i, %if.end.i74.i, %if.end.i65.i, %if.end74.i.i, %for.end.i58.i.sw.epilog_crit_edge, %for.end.i.i, %if.end.i45.i, %if.end.i37.i, %if.end.i29.i
  %ret.0 = phi i32 [ %call6.i.i, %if.end.i29.i ], [ %call6.i36.i, %if.end.i37.i ], [ %call7.i.i, %if.end.i45.i ], [ %call29.i.i, %for.end.i.i ], [ %ret.3.i.i, %if.end74.i.i ], [ %ret.3.i.i, %for.end.i58.i.sw.epilog_crit_edge ], [ %call6.i64.i, %if.end.i65.i ], [ %call6.i73.i, %if.end.i74.i ], [ %call8.i.i, %if.end.i82.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -56, i32 %ret.0)
  %cmp = icmp eq i32 %ret.0, -56
  br i1 %cmp, label %sw.epilog.do.end_crit_edge, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %sw.bb1.do.end_crit_edge, %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %151 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %es58x_dev, align 8
  %153 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %cmd_type, align 1
  %conv5 = zext i8 %154 to i32
  %cmd_id = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 2
  %155 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %cmd_id, align 1
  %conv6 = zext i8 %156 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv5, i32 noundef %conv6) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.epilog.if.end_crit_edge, %if.end.i17, %__es58x_check_msg_len.exit.i, %__es58x_check_msg_len.exit.i81.i, %__es58x_check_msg_len.exit.i72.i, %__es58x_check_msg_len.exit.i63.i, %if.then36.i.i, %if.then29.i.i, %__es58x_check_msg_max_len.exit.i.i, %if.then17.i.i, %do.end12.i.i.i, %do.end6.i.i.i, %do.end.i.i.i, %__es58x_check_msg_len.exit.i44.i, %__es58x_check_msg_len.exit.i35.i, %__es58x_check_msg_len.exit.i.i, %lor.lhs.false4.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %ret.021 = phi i32 [ -56, %do.end ], [ %ret.0, %sw.epilog.if.end_crit_edge ], [ -90, %__es58x_check_msg_len.exit.i ], [ 0, %if.end.i17 ], [ -19, %lor.lhs.false4.i.i.if.end_crit_edge ], [ -44, %sw.bb.if.end_crit_edge ], [ -19, %if.end.i.i.if.end_crit_edge ], [ -90, %__es58x_check_msg_len.exit.i81.i ], [ -90, %__es58x_check_msg_len.exit.i72.i ], [ -90, %__es58x_check_msg_len.exit.i63.i ], [ -90, %if.then36.i.i ], [ -90, %if.then29.i.i ], [ -75, %__es58x_check_msg_max_len.exit.i.i ], [ -90, %do.end.i.i.i ], [ -90, %do.end6.i.i.i ], [ -75, %do.end12.i.i.i ], [ -74, %if.then17.i.i ], [ -90, %__es58x_check_msg_len.exit.i44.i ], [ -90, %__es58x_check_msg_len.exit.i35.i ], [ -90, %__es58x_check_msg_len.exit.i.i ]
  ret i32 %ret.021
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @es58x_fd_fill_urb_header(ptr nocapture noundef writeonly %urb_cmd, i8 noundef zeroext %cmd_type, i8 noundef zeroext %cmd_id, i8 noundef zeroext %channel_idx, i16 noundef zeroext %msg_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %urb_cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -1330, ptr %urb_cmd, align 1
  %cmd_type1 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 1
  %1 = ptrtoint ptr %cmd_type1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %cmd_type, ptr %cmd_type1, align 1
  %cmd_id2 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 2
  %2 = ptrtoint ptr %cmd_id2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %cmd_id, ptr %cmd_id2, align 1
  %channel_idx3 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 3
  %3 = ptrtoint ptr %channel_idx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %channel_idx, ptr %channel_idx3, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %msg_len)
  %msg_len4 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %urb_cmd, i32 0, i32 4
  %5 = ptrtoint ptr %msg_len4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %msg_len4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_fd_tx_can_msg(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %skb) #1 align 64 {
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
  %tx_can_msg_cnt = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 5
  %10 = ptrtoint ptr %tx_can_msg_cnt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_can_msg_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv4 = select i1 %cmp.i, i8 4, i8 3
  %channel_idx = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 8
  %12 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %channel_idx, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 -1330, ptr %5, align 1
  %cmd_type1.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %cmd_type1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4, ptr %cmd_type1.i, align 1
  %cmd_id2.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %cmd_id2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 85, ptr %cmd_id2.i, align 1
  %channel_idx3.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %channel_idx3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %13, ptr %channel_idx3.i, align 1
  %msg_len4.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %msg_len4.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 0, ptr %msg_len4.i, align 1
  br label %if.end10

if.end:                                           ; preds = %entry
  %msg_len.i = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %msg_len.i, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #7
  %phi.cast = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7029, i16 %21)
  %cmp.i86 = icmp ugt i16 %21, 7029
  br i1 %cmp.i86, label %__es58x_check_msg_max_len.exit, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

__es58x_check_msg_max_len.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %phi.cast, 71
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.31, i32 noundef 7100, i32 noundef %add) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.end.thread
  %msg_len.093.ph = phi i32 [ 0, %if.end.thread ], [ %phi.cast, %if.end.if.end10_crit_edge ]
  %raw_msg = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %5, i32 0, i32 5
  %arrayidx = getelementptr [0 x i8], ptr %raw_msg, i32 0, i32 %msg_len.093.ph
  %tx_head = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 4
  %24 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_head, align 4
  %conv11 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv11, ptr %arrayidx, align 1
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not7.i = icmp slt i32 %28, 0
  %retval.0.v.i = select i1 %tobool.not7.i, i32 536870911, i32 2047
  %retval.0.i87 = and i32 %retval.0.v.i, %28
  %can_id = getelementptr inbounds %struct.es58x_fd_tx_can_msg, ptr %arrayidx, i32 0, i32 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i87) #7
  %30 = ptrtoint ptr %can_id to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %can_id, align 1
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %.lobit.i = lshr i32 %34, 31
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 72
  br i1 %cmp.i.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.canfd_frame, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags.i, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool4.not.i = icmp eq i8 %39, 0
  %spec.select31.v.i = select i1 %tobool4.not.i, i32 64, i32 72
  %spec.select31.i = or i32 %spec.select31.v.i, %.lobit.i
  %40 = shl i8 %38, 4
  %41 = and i8 %40, 32
  %42 = zext i8 %41 to i32
  %43 = or i32 %spec.select31.i, %42
  br label %es58x_get_flags.exit

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %and16.i = lshr i32 %34, 29
  %44 = and i32 %and16.i, 2
  %45 = or i32 %44, %.lobit.i
  br label %es58x_get_flags.exit

es58x_get_flags.exit:                             ; preds = %if.else.i, %if.then1.i
  %es58x_flags.2.i = phi i32 [ %45, %if.else.i ], [ %43, %if.then1.i ]
  %conv14 = trunc i32 %es58x_flags.2.i to i8
  %flags = getelementptr inbounds %struct.es58x_fd_tx_can_msg, ptr %arrayidx, i32 0, i32 2
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv14, ptr %flags, align 1
  br i1 %cmp.i, label %es58x_get_flags.exit.if.end19.sink.split_crit_edge, label %if.else17

es58x_get_flags.exit.if.end19.sink.split_crit_edge: ; preds = %es58x_get_flags.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split

if.else17:                                        ; preds = %es58x_get_flags.exit
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %47 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else17.if.end19.sink.split_crit_edge, label %land.lhs.true.i

if.else17.if.end19.sink.split_crit_edge:          ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split

land.lhs.true.i:                                  ; preds = %if.else17
  %49 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %51)
  %cmp.i88 = icmp eq i8 %51, 8
  br i1 %cmp.i88, label %land.lhs.true2.i, label %land.lhs.true.i.if.end19.sink.split_crit_edge

land.lhs.true.i.if.end19.sink.split_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 4
  %52 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %len8_dlc.i, align 1
  %54 = add i8 %53, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %54)
  %55 = icmp ult i8 %54, 7
  br i1 %55, label %land.lhs.true2.i.if.end19_crit_edge, label %land.lhs.true2.i.if.end19.sink.split_crit_edge

land.lhs.true2.i.if.end19.sink.split_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split

land.lhs.true2.i.if.end19_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19.sink.split:                              ; preds = %land.lhs.true2.i.if.end19.sink.split_crit_edge, %land.lhs.true.i.if.end19.sink.split_crit_edge, %if.else17.if.end19.sink.split_crit_edge, %es58x_get_flags.exit.if.end19.sink.split_crit_edge
  %56 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %land.lhs.true2.i.if.end19_crit_edge
  %retval.0.i89.sink = phi i8 [ %53, %land.lhs.true2.i.if.end19_crit_edge ], [ %58, %if.end19.sink.split ]
  %59 = getelementptr inbounds %struct.es58x_fd_tx_can_msg, ptr %arrayidx, i32 0, i32 3
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %retval.0.i89.sink, ptr %59, align 1
  %data20 = getelementptr inbounds %struct.es58x_fd_tx_can_msg, ptr %arrayidx, i32 0, i32 4
  %data21 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 5
  %61 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  %conv23 = zext i8 %63 to i32
  %64 = call ptr @memcpy(ptr %data20, ptr %data21, i32 %conv23)
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %65)
  %__msg.sroa.4.0.copyload = load i8, ptr %flags, align 1
  %__msg.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 6
  %66 = ptrtoint ptr %__msg.sroa.5.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %66)
  %__msg.sroa.5.0.copyload = load i8, ptr %__msg.sroa.5.0..sroa_idx, align 1
  %67 = and i8 %__msg.sroa.4.0.copyload, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool26.not = icmp eq i8 %67, 0
  br i1 %tobool26.not, label %if.else30, label %if.then27

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %__msg.sroa.5.0.copyload) #7
  %call1.i = tail call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %call.i) #7
  br label %if.end38

if.else30:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %68 = tail call i8 @llvm.umin.i8(i8 %__msg.sroa.5.0.copyload, i8 8)
  br label %if.end38

if.end38:                                         ; preds = %if.else30, %if.then27
  %__msg_len.0.in = phi i8 [ %call1.i, %if.then27 ], [ %68, %if.else30 ]
  %__msg_len.0 = zext i8 %__msg_len.0.in to i32
  %69 = add nuw nsw i32 %msg_len.093.ph, 7
  %add41 = add nuw nsw i32 %69, %__msg_len.0
  %conv42 = trunc i32 %add41 to i16
  %param.i = getelementptr inbounds %struct.es58x_device, ptr %1, i32 0, i32 3
  %70 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %param.i, align 8
  %urb_cmd_header_len.i = getelementptr inbounds %struct.es58x_parameters, ptr %71, i32 0, i32 13
  %72 = ptrtoint ptr %urb_cmd_header_len.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %urb_cmd_header_len.i, align 1
  %conv.i = zext i8 %73 to i32
  %conv1.i = and i32 %add41, 65535
  %add.i = add nuw nsw i32 %conv.i, 2
  %add2.i = add nuw nsw i32 %add.i, %conv1.i
  %74 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_urb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 19
  %76 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add2.i, ptr %transfer_buffer_length, align 4
  %msg_len45 = getelementptr inbounds %struct.es58x_fd_urb_cmd, ptr %5, i32 0, i32 4
  %77 = tail call i16 @llvm.bswap.i16(i16 %conv42) #7
  %78 = ptrtoint ptr %msg_len45 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %77, ptr %msg_len45, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %__es58x_check_msg_max_len.exit
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -75, %__es58x_check_msg_max_len.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_fd_enable_channel(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  %tx_conf_msg = alloca %struct.es58x_fd_tx_conf_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %es58x_dev1 = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %es58x_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev1, align 4
  %channel_idx = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel_idx, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.es58x_device, ptr %1, i32 0, i32 2, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %tx_conf_msg) #7
  %6 = getelementptr inbounds i8, ptr %tx_conf_msg, i32 16
  %7 = call ptr @memset(ptr %6, i32 0, i32 19)
  %bittiming = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4
  %8 = ptrtoint ptr %bittiming to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bittiming, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %11 = ptrtoint ptr %tx_conf_msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_conf_msg, align 4
  %prop_seg.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %prop_seg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prop_seg.i, align 4
  %phase_seg1.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %phase_seg1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phase_seg1.i, align 4
  %add.i = add i32 %15, %13
  %16 = trunc i32 %add.i to i16
  %conv.i = add i16 %16, -1
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %tseg1.i = getelementptr inbounds %struct.es58x_fd_bittiming, ptr %tx_conf_msg, i32 0, i32 1
  %18 = ptrtoint ptr %tseg1.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %tseg1.i, align 4
  %phase_seg2.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 5
  %19 = ptrtoint ptr %phase_seg2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phase_seg2.i, align 4
  %21 = trunc i32 %20 to i16
  %conv3.i = add i16 %21, -1
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #7
  %tseg2.i = getelementptr inbounds %struct.es58x_fd_bittiming, ptr %tx_conf_msg, i32 0, i32 2
  %23 = ptrtoint ptr %tseg2.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %tseg2.i, align 2
  %brp.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 7
  %24 = ptrtoint ptr %brp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brp.i, align 4
  %26 = trunc i32 %25 to i16
  %conv5.i = add i16 %26, -1
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv5.i) #7
  %brp6.i = getelementptr inbounds %struct.es58x_fd_bittiming, ptr %tx_conf_msg, i32 0, i32 3
  %28 = ptrtoint ptr %brp6.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %brp6.i, align 4
  %sjw.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 6
  %29 = ptrtoint ptr %sjw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sjw.i, align 4
  %31 = trunc i32 %30 to i16
  %conv8.i = add i16 %31, -1
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #7
  %sjw9.i = getelementptr inbounds %struct.es58x_fd_bittiming, ptr %tx_conf_msg, i32 0, i32 4
  %33 = ptrtoint ptr %sjw9.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %sjw9.i, align 2
  %ctrlmode4 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %34 = ptrtoint ptr %ctrlmode4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctrlmode4, align 4
  %and = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 2
  %36 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %spec.select, ptr %36, align 4
  %sync_edge = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 2
  %38 = ptrtoint ptr %sync_edge to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %sync_edge, align 1
  %physical_layer = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 3
  %39 = ptrtoint ptr %physical_layer to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %physical_layer, align 2
  %echo_mode = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 4
  %40 = ptrtoint ptr %echo_mode to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %echo_mode, align 1
  %and6 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %entry.if.end16_crit_edge, label %if.then8

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrlmode9 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 5
  %41 = ptrtoint ptr %ctrlmode9 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ctrlmode9, align 4
  %43 = or i8 %42, 1
  store i8 %43, ptr %ctrlmode9, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %entry.if.end16_crit_edge
  %and17 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else24, label %if.end16.if.end34.sink.split_crit_edge

if.end16.if.end34.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split

if.else24:                                        ; preds = %if.end16
  %and25 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else24.if.end34_crit_edge, label %if.else24.if.end34.sink.split_crit_edge

if.else24.if.end34.sink.split_crit_edge:          ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split

if.else24.if.end34_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end34.sink.split:                              ; preds = %if.else24.if.end34.sink.split_crit_edge, %if.end16.if.end34.sink.split_crit_edge
  %.sink86 = phi i8 [ 32, %if.end16.if.end34.sink.split_crit_edge ], [ 16, %if.else24.if.end34.sink.split_crit_edge ]
  %ctrlmode20 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 5
  %44 = ptrtoint ptr %ctrlmode20 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ctrlmode20, align 4
  %46 = or i8 %45, %.sink86
  store i8 %46, ptr %ctrlmode20, align 4
  %canfd_enabled32 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 6
  %47 = ptrtoint ptr %canfd_enabled32 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %canfd_enabled32, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else24.if.end34_crit_edge
  %canfd_enabled35 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 6
  %48 = ptrtoint ptr %canfd_enabled35 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %canfd_enabled35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool36.not = icmp eq i8 %49, 0
  br i1 %tobool36.not, label %if.end34.if.end51_crit_edge, label %if.then37

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then37:                                        ; preds = %if.end34
  %data_bittiming = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 7
  %data_bittiming39 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5
  %50 = ptrtoint ptr %data_bittiming39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_bittiming39, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  %53 = ptrtoint ptr %data_bittiming to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %data_bittiming, align 2
  %prop_seg.i70 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5, i32 3
  %54 = ptrtoint ptr %prop_seg.i70 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %prop_seg.i70, align 4
  %phase_seg1.i71 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5, i32 4
  %56 = ptrtoint ptr %phase_seg1.i71 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phase_seg1.i71, align 4
  %add.i72 = add i32 %57, %55
  %58 = trunc i32 %add.i72 to i16
  %conv.i73 = add i16 %58, -1
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv.i73) #7
  %tseg1.i74 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %tseg1.i74 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %tseg1.i74, align 2
  %phase_seg2.i75 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5, i32 5
  %61 = ptrtoint ptr %phase_seg2.i75 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %phase_seg2.i75, align 4
  %63 = trunc i32 %62 to i16
  %conv3.i76 = add i16 %63, -1
  %64 = tail call i16 @llvm.bswap.i16(i16 %conv3.i76) #7
  %tseg2.i77 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 7, i32 2
  %65 = ptrtoint ptr %tseg2.i77 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %tseg2.i77, align 4
  %brp.i78 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5, i32 7
  %66 = ptrtoint ptr %brp.i78 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %brp.i78, align 4
  %68 = trunc i32 %67 to i16
  %conv5.i79 = add i16 %68, -1
  %69 = tail call i16 @llvm.bswap.i16(i16 %conv5.i79) #7
  %brp6.i80 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 7, i32 3
  %70 = ptrtoint ptr %brp6.i80 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %brp6.i80, align 2
  %sjw.i81 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5, i32 6
  %71 = ptrtoint ptr %sjw.i81 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sjw.i81, align 4
  %73 = trunc i32 %72 to i16
  %conv8.i82 = add i16 %73, -1
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv8.i82) #7
  %sjw9.i83 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 7, i32 4
  %75 = ptrtoint ptr %sjw9.i83 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %sjw9.i83, align 4
  %and.i = and i32 %35, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then37.if.end51_crit_edge, label %if.then41

if.then37.if.end51_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %tdc_enabled = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 8
  %76 = ptrtoint ptr %tdc_enabled to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %tdc_enabled, align 2
  %tdco = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 7, i32 1
  %77 = ptrtoint ptr %tdco to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tdco, align 4
  %conv43 = trunc i32 %78 to i16
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv43)
  %tdco44 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 9
  %80 = ptrtoint ptr %tdco44 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %79, ptr %tdco44, align 1
  %tdcf = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 7, i32 2
  %81 = ptrtoint ptr %tdcf to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tdcf, align 4
  %conv47 = trunc i32 %82 to i16
  %83 = tail call i16 @llvm.bswap.i16(i16 %conv47)
  %tdcf48 = getelementptr inbounds %struct.es58x_fd_tx_conf_msg, ptr %tx_conf_msg, i32 0, i32 10
  %84 = ptrtoint ptr %tdcf48 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %83, ptr %tdcf48, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then41, %if.then37.if.end51_crit_edge, %if.end34.if.end51_crit_edge
  %conf_len.0 = phi i16 [ 35, %if.then41 ], [ 35, %if.then37.if.end51_crit_edge ], [ 17, %if.end34.if.end51_crit_edge ]
  %ctrlmode1.i = getelementptr i8, ptr %5, i32 2476
  %85 = ptrtoint ptr %ctrlmode1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ctrlmode1.i, align 4
  %and.i84 = and i32 %86, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i = icmp eq i32 %and.i84, 0
  %conv53 = select i1 %tobool.not.i, i8 3, i8 4
  %call57 = call i32 @es58x_send_msg(ptr noundef %1, i8 noundef zeroext %conv53, i8 noundef zeroext 1, ptr noundef nonnull %tx_conf_msg, i16 noundef zeroext %conf_len.0, i32 noundef %idxprom) #7
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %tx_conf_msg) #7
  ret i32 %call57
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_fd_disable_channel(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %es58x_dev = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %es58x_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es58x_dev, align 4
  %channel_idx = getelementptr inbounds %struct.es58x_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel_idx, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 @es58x_send_msg(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es58x_fd_get_timestamp(ptr noundef %es58x_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @es58x_send_msg(ptr noundef %es58x_dev, i8 noundef zeroext -1, i8 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 255) #7
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
declare dso_local i32 @es58x_rx_cmd_ret_u32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_tx_ack_msg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_rx_can_msg(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_rx_err_msg(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @es58x_rx_timestamp(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @es58x_send_msg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @es58x_fd_param, !1, !"es58x_fd_param", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 517, i32 31}
!2 = !{ptr @es58x_fd_ops, !3, !"es58x_fd_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 556, i32 30}
!4 = !{ptr @es58x_fd_nom_bittiming_const, !5, !"es58x_fd_nom_bittiming_const", i1 false, i1 false}
!5 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 474, i32 41}
!6 = !{ptr @es58x_fd_data_bittiming_const, !7, !"es58x_fd_data_bittiming_const", i1 false, i1 false}
!7 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 491, i32 41}
!8 = !{ptr @es58x_tdc_const, !9, !"es58x_tdc_const", i1 false, i1 false}
!9 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 508, i32 35}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 311, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @es58x_fd_handle_urb_cmd._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @es58x_fd_handle_urb_cmd._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 194, i32 8}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 448, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__es58x_check_msg_len._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @__es58x_check_msg_len._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 212, i32 8}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 74, i32 16}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 84, i32 23}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 514, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__es58x_msg_num_element._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @__es58x_msg_num_element._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 519, i32 3}
!39 = !{ptr @__es58x_msg_num_element._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @__es58x_msg_num_element._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 524, i32 3}
!43 = !{ptr @__es58x_msg_num_element._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @__es58x_msg_num_element._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 527, i32 3}
!47 = !{ptr @__es58x_msg_num_element._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @__es58x_msg_num_element._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 105, i32 8}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 124, i32 8}
!53 = !{ptr @__func__.es58x_fd_rx_can_msg, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 125, i32 8}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 131, i32 8}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 159, i32 9}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/usb/etas_es58x/es58x_core.h", i32 479, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__es58x_check_msg_max_len._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @__es58x_check_msg_max_len._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 175, i32 8}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 274, i32 9}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/can/usb/etas_es58x/es58x_fd.c", i32 354, i32 8}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
