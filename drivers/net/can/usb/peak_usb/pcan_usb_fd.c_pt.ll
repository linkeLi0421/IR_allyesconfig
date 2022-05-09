; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/peak_usb/pcan_usb_fd.c_pt.bc'
source_filename = "../drivers/net/can/usb/peak_usb/pcan_usb_fd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.peak_usb_adapter = type { ptr, i32, i32, %struct.can_clock, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [2 x i8], i8, i8, i32, i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.peak_usb_device = type { %struct.can_priv, ptr, i32, i32, ptr, ptr, %struct.atomic_t, %struct.usb_anchor, [10 x %struct.peak_tx_urb_context], ptr, %struct.usb_anchor, i32, i8, i8, i8, ptr, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.peak_tx_urb_context = type { ptr, i32, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.pcan_usb_fd_device = type { %struct.peak_usb_device, %struct.can_berr_counter, ptr, ptr }
%struct.can_berr_counter = type { i16, i16 }
%struct.pcan_usb_fd_if = type { [2 x ptr], %struct.pcan_ufd_fw_info, %struct.peak_time_ref, i32, i32 }
%struct.pcan_ufd_fw_info = type { i16, i16, i8, [3 x i8], i8, [3 x i8], [2 x i32], i32, i32 }
%struct.peak_time_ref = type { i64, i64, i32, i32, i64, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.pcan_ufd_clock = type { i16, i8, [5 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.pucan_timing_slow = type { i16, i8, i8, i8, i8, i16 }
%struct.pucan_timing_fast = type { i16, i8, i8, i8, i8, i16 }
%struct.pucan_wr_err_cnt = type { i16, i16, i8, i8, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.pucan_msg = type { i16, i16, i32, i32 }
%struct.pucan_rx_msg = type { i16, i16, i32, i32, i32, i32, i8, i8, i16, i32, [0 x i8] }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_frame = type { i32, %union.anon.148, i8, i8, i8, [8 x i8] }
%union.anon.148 = type { i8 }
%struct.pcan_ufd_ts_msg = type { i16, i16, i32, i32, i16, i16 }
%struct.pucan_error_msg = type { i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.pucan_status_msg = type { i16, i16, i32, i32, i8, [3 x i8] }
%struct.pcan_ufd_ovr_msg = type { i16, i16, i32, i32, i8, [3 x i8] }
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
%struct.pucan_tx_msg = type { i16, i16, i32, i32, i8, i8, i16, i32, [0 x i8] }
%struct.pucan_filter_std = type { i16, i16, i32 }
%struct.pcan_ufd_led = type { i16, i8, [5 x i8] }
%struct.pcan_ufd_options = type { i16, i16, i16, i16 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PCAN-USB FD\00", [20 x i8] zeroinitializer }, align 32
@pcan_usb_fd_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pcan_usb_fd\00\00\00\00\00", i32 1, i32 256, i32 1, i32 128, i32 128, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcan_usb_fd_data_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pcan_usb_fd\00\00\00\00\00", i32 1, i32 32, i32 1, i32 16, i32 16, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcan_usb_fd_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcan_usb_fd_set_phys_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@pcan_usb_fd = dso_local constant { %struct.peak_usb_adapter, [40 x i8] } { %struct.peak_usb_adapter { ptr @.str, i32 18, i32 302, %struct.can_clock { i32 80000000 }, ptr @pcan_usb_fd_const, ptr @pcan_usb_fd_data_const, i32 1, ptr @pcan_usb_fd_ethtool_ops, ptr @pcan_usb_pro_probe, ptr @pcan_usb_fd_init, ptr @pcan_usb_fd_exit, ptr @pcan_usb_fd_free, ptr null, ptr null, ptr @pcan_usb_fd_set_bittiming_slow, ptr @pcan_usb_fd_set_bittiming_fast, ptr @pcan_usb_fd_set_bus, ptr null, ptr @pcan_usb_fd_decode_buf, ptr @pcan_usb_fd_encode_msg, ptr @pcan_usb_fd_start, ptr @pcan_usb_fd_stop, ptr @pcan_usb_fd_restart_async, ptr @pcan_usb_fd_get_berr_counter, i8 -126, [2 x i8] c"\02\00", i8 32, i8 0, i32 1, i32 2048, i32 512, i32 712 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCAN-Chip USB\00", [18 x i8] zeroinitializer }, align 32
@pcan_usb_chip_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pcan_chip_usb\00\00\00", i32 1, i32 256, i32 1, i32 128, i32 128, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcan_usb_chip_data_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pcan_chip_usb\00\00\00", i32 1, i32 32, i32 1, i32 16, i32 16, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcan_usb_chip = dso_local constant { %struct.peak_usb_adapter, [40 x i8] } { %struct.peak_usb_adapter { ptr @.str.1, i32 19, i32 302, %struct.can_clock { i32 80000000 }, ptr @pcan_usb_chip_const, ptr @pcan_usb_chip_data_const, i32 1, ptr @pcan_usb_fd_ethtool_ops, ptr @pcan_usb_pro_probe, ptr @pcan_usb_fd_init, ptr @pcan_usb_fd_exit, ptr @pcan_usb_fd_free, ptr null, ptr null, ptr @pcan_usb_fd_set_bittiming_slow, ptr @pcan_usb_fd_set_bittiming_fast, ptr @pcan_usb_fd_set_bus, ptr null, ptr @pcan_usb_fd_decode_buf, ptr @pcan_usb_fd_encode_msg, ptr @pcan_usb_fd_start, ptr @pcan_usb_fd_stop, ptr @pcan_usb_fd_restart_async, ptr @pcan_usb_fd_get_berr_counter, i8 -126, [2 x i8] c"\02\00", i8 32, i8 0, i32 1, i32 2048, i32 512, i32 712 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCAN-USB Pro FD\00", [16 x i8] zeroinitializer }, align 32
@pcan_usb_pro_fd_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pcan_usb_pro_fd\00", i32 1, i32 256, i32 1, i32 128, i32 128, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcan_usb_pro_fd_data_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pcan_usb_pro_fd\00", i32 1, i32 32, i32 1, i32 16, i32 16, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcan_usb_pro_fd = dso_local constant { %struct.peak_usb_adapter, [40 x i8] } { %struct.peak_usb_adapter { ptr @.str.2, i32 17, i32 302, %struct.can_clock { i32 80000000 }, ptr @pcan_usb_pro_fd_const, ptr @pcan_usb_pro_fd_data_const, i32 2, ptr @pcan_usb_fd_ethtool_ops, ptr @pcan_usb_pro_probe, ptr @pcan_usb_fd_init, ptr @pcan_usb_fd_exit, ptr @pcan_usb_fd_free, ptr null, ptr null, ptr @pcan_usb_fd_set_bittiming_slow, ptr @pcan_usb_fd_set_bittiming_fast, ptr @pcan_usb_fd_set_bus, ptr null, ptr @pcan_usb_fd_decode_buf, ptr @pcan_usb_fd_encode_msg, ptr @pcan_usb_fd_start, ptr @pcan_usb_fd_stop, ptr @pcan_usb_fd_restart_async, ptr @pcan_usb_fd_get_berr_counter, i8 -126, [2 x i8] c"\02\03", i8 32, i8 0, i32 1, i32 2048, i32 512, i32 712 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PCAN-USB X6\00", [20 x i8] zeroinitializer }, align 32
@pcan_usb_x6_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pcan_usb_x6\00\00\00\00\00", i32 1, i32 256, i32 1, i32 128, i32 128, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcan_usb_x6_data_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pcan_usb_x6\00\00\00\00\00", i32 1, i32 32, i32 1, i32 16, i32 16, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcan_usb_x6 = dso_local constant { %struct.peak_usb_adapter, [40 x i8] } { %struct.peak_usb_adapter { ptr @.str.3, i32 20, i32 302, %struct.can_clock { i32 80000000 }, ptr @pcan_usb_x6_const, ptr @pcan_usb_x6_data_const, i32 2, ptr @pcan_usb_fd_ethtool_ops, ptr @pcan_usb_pro_probe, ptr @pcan_usb_fd_init, ptr @pcan_usb_fd_exit, ptr @pcan_usb_fd_free, ptr null, ptr null, ptr @pcan_usb_fd_set_bittiming_slow, ptr @pcan_usb_fd_set_bittiming_fast, ptr @pcan_usb_fd_set_bus, ptr null, ptr @pcan_usb_fd_decode_buf, ptr @pcan_usb_fd_encode_msg, ptr @pcan_usb_fd_start, ptr @pcan_usb_fd_stop, ptr @pcan_usb_fd_restart_async, ptr @pcan_usb_fd_get_berr_counter, i8 -126, [2 x i8] c"\02\03", i8 32, i8 0, i32 1, i32 2048, i32 512, i32 712 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sending command failure: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pcan_usb_fd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 888, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to read %s firmware info (err %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcan_usb_fd_init\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/can/usb/peak_usb/pcan_usb_fd.c\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcan_usb_fd_init._entry_ptr = internal global ptr @pcan_usb_fd_init._entry, section ".printk_index", align 4
@pcan_usb_fd_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 902, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PEAK-System %s v%u fw v%u.%u.%u (%u channels)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcan_usb_fd_init._entry_ptr.13 = internal global ptr @pcan_usb_fd_init._entry.10, section ".printk_index", align 4
@pcan_usb_fd_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 918, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unable to tell %s driver is loaded (err %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@pcan_usb_fd_init._entry_ptr.16 = internal global ptr @pcan_usb_fd_init._entry.14, section ".printk_index", align 4
@pcan_usb_fd_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 946, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"incompatible clock frequencies\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pcan_usb_fd_init._entry_ptr.20 = internal global ptr @pcan_usb_fd_init._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"got frag rec: should inc usb rx buf sze\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unhandled msg type 0x%02x (%d): ignored\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"received msg\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 20000000, i64 24000000, i64 30000000, i64 40000000, i64 60000000, i64 80000000]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 256, i64 257]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1063, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"pcan_usb_fd_const\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1038, i32 41 }
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"pcan_usb_fd_data_const\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1050, i32 41 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"pcan_usb_fd_ethtool_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1033, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"pcan_usb_fd\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1062, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1137, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"pcan_usb_chip_const\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1112, i32 41 }
@___asan_gen_.47 = private unnamed_addr constant [25 x i8] c"pcan_usb_chip_data_const\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1124, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"pcan_usb_chip\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1136, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1211, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"pcan_usb_pro_fd_const\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1186, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"pcan_usb_pro_fd_data_const\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1198, i32 41 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"pcan_usb_pro_fd\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1210, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1285, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"pcan_usb_x6_const\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1260, i32 41 }
@___asan_gen_.71 = private unnamed_addr constant [23 x i8] c"pcan_usb_x6_data_const\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1272, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"pcan_usb_x6\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1284, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 208, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 886, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 896, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 916, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 945, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 680, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 716, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [46 x i8] c"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 726, i32 17 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @pcan_usb_fd_init._entry, ptr @pcan_usb_fd_init._entry.10, ptr @pcan_usb_fd_init._entry.14, ptr @pcan_usb_fd_init._entry.17, ptr @pcan_usb_fd_init._entry_ptr, ptr @pcan_usb_fd_init._entry_ptr.13, ptr @pcan_usb_fd_init._entry_ptr.16, ptr @pcan_usb_fd_init._entry_ptr.20, ptr @.str, ptr @pcan_usb_fd_const, ptr @pcan_usb_fd_data_const, ptr @pcan_usb_fd_ethtool_ops, ptr @pcan_usb_fd, ptr @.str.1, ptr @pcan_usb_chip_const, ptr @pcan_usb_chip_data_const, ptr @pcan_usb_chip, ptr @.str.2, ptr @pcan_usb_pro_fd_const, ptr @pcan_usb_pro_fd_data_const, ptr @pcan_usb_pro_fd, ptr @.str.3, ptr @pcan_usb_x6_const, ptr @pcan_usb_x6_data_const, ptr @pcan_usb_x6, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_fd_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_fd_data_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_fd_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_fd to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_chip_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_chip_data_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_chip to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_pro_fd_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_pro_fd_data_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_pro_fd to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_x6_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_x6_data_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_x6 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_fd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_fd_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_fd_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_fd_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcan_usb_pro_probe(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_fd_init(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prev_siblings = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %prev_siblings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev_siblings, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else62

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 88) #10
  %usb_if = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %usb_if to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %usb_if, align 4
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i164 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 512) #10
  %cmd_buffer_addr = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %cmd_buffer_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i164, ptr %cmd_buffer_addr, align 4
  %tobool6.not = icmp eq ptr %call7.i.i164, null
  br i1 %tobool6.not, label %if.end.err_out_1_crit_edge, label %if.end8

if.end.err_out_1_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_1

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_if, align 4
  %cm_ignore_count = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cm_ignore_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %cm_ignore_count, align 8
  %9 = load ptr, ptr %usb_if, align 4
  %fw_info = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %9, i32 0, i32 1
  %call11 = tail call i32 @pcan_usb_pro_send_req(ptr noundef %dev, i32 noundef 0, i32 noundef 1, ptr noundef %fw_info, i32 noundef 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %netdev19 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %netdev19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev19, align 4
  %parent21 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 133, i32 1
  %12 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent21, align 8
  %adapter22 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %adapter22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter22, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  br i1 %tobool12.not, label %do.end18, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef %17, i32 noundef %call11) #11
  br label %err_out_2

do.end18:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_if, align 4
  %hw_version = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %19, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %hw_version to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hw_version, align 8
  %conv = zext i8 %21 to i32
  %fw_version = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %19, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %fw_version to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fw_version, align 1
  %conv28 = zext i8 %23 to i32
  %arrayidx32 = getelementptr %struct.pcan_usb_fd_if, ptr %19, i32 0, i32 1, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %25 to i32
  %arrayidx37 = getelementptr %struct.pcan_usb_fd_if, ptr %19, i32 0, i32 1, i32 5, i32 2
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %27 to i32
  %ctrl_count = getelementptr inbounds %struct.peak_usb_adapter, ptr %15, i32 0, i32 6
  %28 = ptrtoint ptr %ctrl_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctrl_count, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef %17, i32 noundef %conv, i32 noundef %conv28, i32 noundef %conv33, i32 noundef %conv38, i32 noundef %29) #11
  %30 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_if, align 4
  %fw_version42 = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %31, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %fw_version42 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fw_version42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp = icmp ugt i8 %33, 1
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %ctrlmode_supported = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 23
  %ctrlmode.sink172 = select i1 %cmp, ptr %ctrlmode_supported, ptr %ctrlmode
  %34 = ptrtoint ptr %ctrlmode.sink172 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctrlmode.sink172, align 4
  %or48 = or i32 %35, 128
  store i32 %or48, ptr %ctrlmode.sink172, align 4
  %36 = ptrtoint ptr %cmd_buffer_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmd_buffer_addr, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %37, align 1
  %39 = load ptr, ptr %cmd_buffer_addr, align 4
  %arrayidx3.i = getelementptr i8, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %arrayidx3.i, align 1
  %41 = load ptr, ptr %cmd_buffer_addr, align 4
  %call.i = tail call i32 @pcan_usb_pro_send_req(ptr noundef %dev, i32 noundef 2, i32 noundef 5, ptr noundef %41, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool51.not = icmp eq i32 %call.i, 0
  br i1 %tobool51.not, label %do.end18.if.end81_crit_edge, label %do.end55

do.end18.if.end81_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

do.end55:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %netdev19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev19, align 4
  %parent58 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 133, i32 1
  %44 = ptrtoint ptr %parent58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent58, align 8
  %46 = ptrtoint ptr %adapter22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter22, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.15, ptr noundef %49, i32 noundef %call.i) #11
  br label %err_out_2

if.else62:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %usb_if67 = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %usb_if67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_if67, align 4
  %usb_if68 = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 2
  %52 = ptrtoint ptr %usb_if68 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %usb_if68, align 4
  %cmd_buffer_addr69 = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %cmd_buffer_addr69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmd_buffer_addr69, align 4
  %cmd_buffer_addr70 = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %55 = ptrtoint ptr %cmd_buffer_addr70 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %cmd_buffer_addr70, align 4
  %ctrlmode73 = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 22
  %56 = ptrtoint ptr %ctrlmode73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ctrlmode73, align 4
  %ctrlmode75 = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %58 = ptrtoint ptr %ctrlmode75 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %ctrlmode75, align 4
  %ctrlmode_supported78 = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 23
  %59 = ptrtoint ptr %ctrlmode_supported78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ctrlmode_supported78, align 4
  %ctrlmode_supported80 = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 23
  %61 = ptrtoint ptr %ctrlmode_supported80 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %ctrlmode_supported80, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.else62, %do.end18.if.end81_crit_edge
  %usb_if82 = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 2
  %62 = ptrtoint ptr %usb_if82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %usb_if82, align 4
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %64 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ctrl_idx, align 4
  %arrayidx84 = getelementptr [2 x ptr], ptr %63, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dev, ptr %arrayidx84, align 4
  %67 = load ptr, ptr %usb_if82, align 4
  %68 = load i32, ptr %ctrl_idx, align 4
  %arrayidx88 = getelementptr %struct.pcan_usb_fd_if, ptr %67, i32 0, i32 1, i32 6, i32 %68
  %69 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx88, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %device_number = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 11
  %72 = ptrtoint ptr %device_number to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %device_number, align 4
  %adapter91 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 1
  %73 = ptrtoint ptr %adapter91 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter91, align 4
  %clock = getelementptr inbounds %struct.peak_usb_adapter, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %clock, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values)
  switch i32 %76, label %for.inc.5 [
    i32 80000000, label %if.end81.if.end106_crit_edge
    i32 60000000, label %if.end106.fold.split
    i32 40000000, label %if.end106.fold.split173
    i32 30000000, label %if.end106.fold.split174
    i32 24000000, label %if.end106.fold.split175
    i32 20000000, label %if.end106.fold.split176
  ]

if.end81.if.end106_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

for.inc.5:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %netdev103 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %78 = ptrtoint ptr %netdev103 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %netdev103, align 4
  %parent105 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 133, i32 1
  %80 = ptrtoint ptr %parent105 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent105, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.18) #11
  br label %err_out_2

if.end106.fold.split:                             ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.end106.fold.split173:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.end106.fold.split174:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.end106.fold.split175:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.end106.fold.split176:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.end106:                                        ; preds = %if.end106.fold.split176, %if.end106.fold.split175, %if.end106.fold.split174, %if.end106.fold.split173, %if.end106.fold.split, %if.end81.if.end106_crit_edge
  %i.0168.lcssa = phi i8 [ 0, %if.end81.if.end106_crit_edge ], [ 1, %if.end106.fold.split ], [ 2, %if.end106.fold.split173 ], [ 3, %if.end106.fold.split174 ], [ 4, %if.end106.fold.split175 ], [ 5, %if.end106.fold.split176 ]
  %cmd_buffer_addr.i.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %82 = ptrtoint ptr %cmd_buffer_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmd_buffer_addr.i.i, align 4
  %.tr.i = trunc i32 %68 to i16
  %84 = shl i16 %.tr.i, 12
  %conv.i.i = or i16 %84, 128
  %85 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %85, ptr %83, align 1
  %mode.i = getelementptr inbounds %struct.pcan_ufd_clock, ptr %83, i32 0, i32 1
  %87 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %i.0168.lcssa, ptr %mode.i, align 1
  %incdec.ptr.i = getelementptr %struct.pcan_ufd_clock, ptr %83, i32 1
  %88 = ptrtoint ptr %cmd_buffer_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cmd_buffer_addr.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %90 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end106.pcan_usb_fd_set_clock_domain.exit_crit_edge, label %if.end.i.i

if.end106.pcan_usb_fd_set_clock_domain.exit_crit_edge: ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_set_clock_domain.exit

if.end.i.i:                                       ; preds = %if.end106
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %89 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 505, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i, 505
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end.i.i.if.end2.i.i_crit_edge

if.end.i.i.if.end2.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 -1, ptr %incdec.ptr.i, align 1
  %add.i.i = add nuw nsw i32 %sub.ptr.sub.i.i, 8
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end2.i.i_crit_edge
  %cmd_len.0.i.i = phi i32 [ %add.i.i, %if.then1.i.i ], [ %sub.ptr.sub.i.i, %if.end.i.i.if.end2.i.i_crit_edge ]
  %udev.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %93 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %udev.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %cmp3.not.i.i = icmp eq i32 %96, 3
  br i1 %cmp3.not.i.i, label %if.end2.i.i.do.body.i.i.preheader_crit_edge, label %if.then6.i.i, !prof !75

if.end2.i.i.do.body.i.i.preheader_crit_edge:      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.preheader

if.then6.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = tail call i32 @llvm.smin.i32(i32 %cmd_len.0.i.i, i32 64) #7
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %if.then6.i.i, %if.end2.i.i.do.body.i.i.preheader_crit_edge
  %packet_len.1.i.i.ph = phi i32 [ %cmd_len.0.i.i, %if.end2.i.i.do.body.i.i.preheader_crit_edge ], [ %97, %if.then6.i.i ]
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end15.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %packet_ptr.0.i.i = phi ptr [ %add.ptr.i.i, %if.end15.i.i.do.body.i.i_crit_edge ], [ %89, %do.body.i.i.preheader ]
  %packet_len.1.i.i = phi i32 [ %spec.select.i.i, %if.end15.i.i.do.body.i.i_crit_edge ], [ %packet_len.1.i.i.ph, %do.body.i.i.preheader ]
  %cmd_len.1.i.i = phi i32 [ %sub.i.i, %if.end15.i.i.do.body.i.i_crit_edge ], [ %cmd_len.0.i.i, %do.body.i.i.preheader ]
  %98 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %udev.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %shl.i.i.i = shl i32 %101, 8
  %or.i1.i = or i32 %shl.i.i.i, -1073709056
  %call12.i.i = tail call i32 @usb_bulk_msg(ptr noundef %99, i32 noundef %or.i1.i, ptr noundef %packet_ptr.0.i.i, i32 noundef %packet_len.1.i.i, ptr noundef null, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end15.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %102 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %netdev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %103, ptr noundef nonnull @.str.4, i32 noundef %call12.i.i) #11
  br label %pcan_usb_fd_set_clock_domain.exit

if.end15.i.i:                                     ; preds = %do.body.i.i
  %add.ptr.i.i = getelementptr i8, ptr %packet_ptr.0.i.i, i32 %packet_len.1.i.i
  %sub.i.i = sub i32 %cmd_len.1.i.i, %packet_len.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i.i)
  %cmp16.i.i = icmp slt i32 %sub.i.i, 64
  %spec.select.i.i = select i1 %cmp16.i.i, i32 %sub.i.i, i32 %packet_len.1.i.i
  %cmp19.i.i = icmp sgt i32 %spec.select.i.i, 0
  br i1 %cmp19.i.i, label %if.end15.i.i.do.body.i.i_crit_edge, label %if.end15.i.i.pcan_usb_fd_set_clock_domain.exit_crit_edge

if.end15.i.i.pcan_usb_fd_set_clock_domain.exit_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_set_clock_domain.exit

if.end15.i.i.do.body.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

pcan_usb_fd_set_clock_domain.exit:                ; preds = %if.end15.i.i.pcan_usb_fd_set_clock_domain.exit_crit_edge, %if.then14.i.i, %if.end106.pcan_usb_fd_set_clock_domain.exit_crit_edge
  %call109 = tail call fastcc i32 @pcan_usb_fd_set_can_led(ptr noundef %dev, i8 noundef zeroext 0)
  br label %cleanup

err_out_2:                                        ; preds = %for.inc.5, %do.end55, %do.end
  %err.0 = phi i32 [ -22, %for.inc.5 ], [ %call11, %do.end ], [ %call.i, %do.end55 ]
  %cmd_buffer_addr110 = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %104 = ptrtoint ptr %cmd_buffer_addr110 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cmd_buffer_addr110, align 4
  tail call void @kfree(ptr noundef %105) #7
  br label %err_out_1

err_out_1:                                        ; preds = %err_out_2, %if.end.err_out_1_crit_edge
  %err.1 = phi i32 [ %err.0, %err_out_2 ], [ -12, %if.end.err_out_1_crit_edge ]
  %usb_if111 = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 2
  %106 = ptrtoint ptr %usb_if111 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %usb_if111, align 4
  tail call void @kfree(ptr noundef %107) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out_1, %pcan_usb_fd_set_clock_domain.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pcan_usb_fd_set_clock_domain.exit ], [ %err.1, %err_out_1 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcan_usb_fd_exit(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @pcan_usb_fd_set_bus(ptr noundef %dev, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call fastcc i32 @pcan_usb_fd_set_can_led(ptr noundef %dev, i8 noundef zeroext 4)
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %usb_if = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_if, align 4
  %dev_opened_count = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev_opened_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_opened_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call fastcc i32 @pcan_usb_fd_set_options(ptr noundef %dev, i1 noundef zeroext false)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3.if.end7_crit_edge
  %cmd_buffer_addr.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %10, align 1
  %12 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx3.i, align 1
  %14 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %call.i = tail call i32 @pcan_usb_pro_send_req(ptr noundef %dev, i32 noundef 2, i32 noundef 5, ptr noundef %14, i32 noundef 16) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcan_usb_fd_free(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prev_siblings = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %prev_siblings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev_siblings, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %next_siblings = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %next_siblings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_siblings, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_buffer_addr = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_buffer_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buffer_addr, align 4
  tail call void @kfree(ptr noundef %5) #7
  %usb_if = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_if, align 4
  tail call void @kfree(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_fd_set_bittiming_slow(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %bt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buffer_addr.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_idx, align 4
  %.tr = trunc i32 %3 to i16
  %4 = shl i16 %.tr, 12
  %conv.i = or i16 %4, 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %1, align 1
  %sjw = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 6
  %7 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sjw, align 4
  %sub = add i32 %8, 127
  %and = and i32 %sub, 127
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %9 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrlmode, align 4
  %11 = shl i32 %10, 5
  %shl = and i32 %11, 128
  %or = or i32 %shl, %and
  %conv = trunc i32 %or to i8
  %sjw_t = getelementptr inbounds %struct.pucan_timing_slow, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %sjw_t to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %sjw_t, align 1
  %phase_seg2 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 5
  %13 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phase_seg2, align 4
  %15 = trunc i32 %14 to i8
  %16 = add i8 %15, 127
  %conv6 = and i8 %16, 127
  %tseg2 = getelementptr inbounds %struct.pucan_timing_slow, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %tseg2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6, ptr %tseg2, align 1
  %prop_seg = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 3
  %18 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 4
  %20 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %21, %19
  %22 = trunc i32 %add to i8
  %conv9 = add i8 %22, -1
  %tseg1 = getelementptr inbounds %struct.pucan_timing_slow, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %tseg1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv9, ptr %tseg1, align 1
  %brp = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 7
  %24 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brp, align 4
  %26 = trunc i32 %25 to i16
  %27 = add i16 %26, 1023
  %conv12 = and i16 %27, 1023
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %brp13 = getelementptr inbounds %struct.pucan_timing_slow, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %brp13 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %brp13, align 1
  %ewl = getelementptr inbounds %struct.pucan_timing_slow, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %ewl to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 96, ptr %ewl, align 1
  %incdec.ptr = getelementptr %struct.pucan_timing_slow, ptr %1, i32 1
  %31 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state.i, align 4
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.pcan_usb_fd_send_cmd.exit_crit_edge, label %if.end.i

entry.pcan_usb_fd_send_cmd.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_send_cmd.exit

if.end.i:                                         ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 505, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 505
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end2.i_crit_edge

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 -1, ptr %incdec.ptr, align 1
  %add.i = add nuw nsw i32 %sub.ptr.sub.i, 8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %cmd_len.0.i = phi i32 [ %add.i, %if.then1.i ], [ %sub.ptr.sub.i, %if.end.i.if.end2.i_crit_edge ]
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %36 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp3.not.i = icmp eq i32 %39, 3
  br i1 %cmp3.not.i, label %if.end2.i.do.body.i.preheader_crit_edge, label %if.then6.i, !prof !75

if.end2.i.do.body.i.preheader_crit_edge:          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.preheader

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = tail call i32 @llvm.smin.i32(i32 %cmd_len.0.i, i32 64) #7
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then6.i, %if.end2.i.do.body.i.preheader_crit_edge
  %packet_len.1.i.ph = phi i32 [ %cmd_len.0.i, %if.end2.i.do.body.i.preheader_crit_edge ], [ %40, %if.then6.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %if.end15.i.do.body.i_crit_edge, %do.body.i.preheader
  %packet_ptr.0.i = phi ptr [ %add.ptr.i, %if.end15.i.do.body.i_crit_edge ], [ %32, %do.body.i.preheader ]
  %packet_len.1.i = phi i32 [ %spec.select.i, %if.end15.i.do.body.i_crit_edge ], [ %packet_len.1.i.ph, %do.body.i.preheader ]
  %cmd_len.1.i = phi i32 [ %sub.i, %if.end15.i.do.body.i_crit_edge ], [ %cmd_len.0.i, %do.body.i.preheader ]
  %41 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %udev.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i = shl i32 %44, 8
  %or.i28 = or i32 %shl.i.i, -1073709056
  %call12.i = tail call i32 @usb_bulk_msg(ptr noundef %42, i32 noundef %or.i28, ptr noundef %packet_ptr.0.i, i32 noundef %packet_len.1.i, ptr noundef null, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then14.i

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %45 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.4, i32 noundef %call12.i) #11
  br label %pcan_usb_fd_send_cmd.exit

if.end15.i:                                       ; preds = %do.body.i
  %add.ptr.i = getelementptr i8, ptr %packet_ptr.0.i, i32 %packet_len.1.i
  %sub.i = sub i32 %cmd_len.1.i, %packet_len.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i)
  %cmp16.i = icmp slt i32 %sub.i, 64
  %spec.select.i = select i1 %cmp16.i, i32 %sub.i, i32 %packet_len.1.i
  %cmp19.i = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp19.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge

if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_send_cmd.exit

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

pcan_usb_fd_send_cmd.exit:                        ; preds = %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge, %if.then14.i, %entry.pcan_usb_fd_send_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pcan_usb_fd_send_cmd.exit_crit_edge ], [ %call12.i, %if.then14.i ], [ 0, %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_fd_set_bittiming_fast(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %bt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buffer_addr.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_idx, align 4
  %.tr = trunc i32 %3 to i16
  %4 = shl i16 %.tr, 12
  %conv.i = or i16 %4, 5
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %1, align 1
  %sjw = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 6
  %7 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sjw, align 4
  %9 = trunc i32 %8 to i8
  %10 = add i8 %9, 15
  %conv = and i8 %10, 15
  %sjw2 = getelementptr inbounds %struct.pucan_timing_fast, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %sjw2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %sjw2, align 1
  %phase_seg2 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 5
  %12 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phase_seg2, align 4
  %14 = trunc i32 %13 to i8
  %15 = add i8 %14, 15
  %conv5 = and i8 %15, 15
  %tseg2 = getelementptr inbounds %struct.pucan_timing_fast, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %tseg2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %tseg2, align 1
  %prop_seg = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 3
  %17 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 4
  %19 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %20, %18
  %21 = trunc i32 %add to i8
  %22 = add i8 %21, 31
  %conv8 = and i8 %22, 31
  %tseg1 = getelementptr inbounds %struct.pucan_timing_fast, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %tseg1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv8, ptr %tseg1, align 1
  %brp = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 7
  %24 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brp, align 4
  %26 = trunc i32 %25 to i16
  %27 = add i16 %26, 1023
  %conv11 = and i16 %27, 1023
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv11)
  %brp12 = getelementptr inbounds %struct.pucan_timing_fast, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %brp12 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %brp12, align 1
  %incdec.ptr = getelementptr %struct.pucan_timing_fast, ptr %1, i32 1
  %30 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state.i, align 4
  %and.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.pcan_usb_fd_send_cmd.exit_crit_edge, label %if.end.i

entry.pcan_usb_fd_send_cmd.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_send_cmd.exit

if.end.i:                                         ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 505, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 505
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end2.i_crit_edge

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 -1, ptr %incdec.ptr, align 1
  %add.i = add nuw nsw i32 %sub.ptr.sub.i, 8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %cmd_len.0.i = phi i32 [ %add.i, %if.then1.i ], [ %sub.ptr.sub.i, %if.end.i.if.end2.i_crit_edge ]
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %35 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp3.not.i = icmp eq i32 %38, 3
  br i1 %cmp3.not.i, label %if.end2.i.do.body.i.preheader_crit_edge, label %if.then6.i, !prof !75

if.end2.i.do.body.i.preheader_crit_edge:          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.preheader

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = tail call i32 @llvm.smin.i32(i32 %cmd_len.0.i, i32 64) #7
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then6.i, %if.end2.i.do.body.i.preheader_crit_edge
  %packet_len.1.i.ph = phi i32 [ %cmd_len.0.i, %if.end2.i.do.body.i.preheader_crit_edge ], [ %39, %if.then6.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %if.end15.i.do.body.i_crit_edge, %do.body.i.preheader
  %packet_ptr.0.i = phi ptr [ %add.ptr.i, %if.end15.i.do.body.i_crit_edge ], [ %31, %do.body.i.preheader ]
  %packet_len.1.i = phi i32 [ %spec.select.i, %if.end15.i.do.body.i_crit_edge ], [ %packet_len.1.i.ph, %do.body.i.preheader ]
  %cmd_len.1.i = phi i32 [ %sub.i, %if.end15.i.do.body.i_crit_edge ], [ %cmd_len.0.i, %do.body.i.preheader ]
  %40 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i = shl i32 %43, 8
  %or.i25 = or i32 %shl.i.i, -1073709056
  %call12.i = tail call i32 @usb_bulk_msg(ptr noundef %41, i32 noundef %or.i25, ptr noundef %packet_ptr.0.i, i32 noundef %packet_len.1.i, ptr noundef null, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then14.i

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %44 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %45, ptr noundef nonnull @.str.4, i32 noundef %call12.i) #11
  br label %pcan_usb_fd_send_cmd.exit

if.end15.i:                                       ; preds = %do.body.i
  %add.ptr.i = getelementptr i8, ptr %packet_ptr.0.i, i32 %packet_len.1.i
  %sub.i = sub i32 %cmd_len.1.i, %packet_len.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i)
  %cmp16.i = icmp slt i32 %sub.i, 64
  %spec.select.i = select i1 %cmp16.i, i32 %sub.i, i32 %packet_len.1.i
  %cmp19.i = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp19.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge

if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_send_cmd.exit

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

pcan_usb_fd_send_cmd.exit:                        ; preds = %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge, %if.then14.i, %entry.pcan_usb_fd_send_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pcan_usb_fd_send_cmd.exit_crit_edge ], [ %call12.i, %if.then14.i ], [ 0, %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_fd_set_bus(ptr nocapture noundef readonly %dev, i8 noundef zeroext %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buffer_addr.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_buffer_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %onoff)
  %tobool.not = icmp eq i8 %onoff, 0
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_idx, align 4
  %.tr = trunc i32 %3 to i16
  %4 = shl i16 %.tr, 12
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv.i.i = or i16 %4, 10
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %1, align 1
  %sel_mask.i = getelementptr inbounds %struct.pucan_wr_err_cnt, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %sel_mask.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 192, ptr %sel_mask.i, align 1
  %tx_counter.i = getelementptr inbounds %struct.pucan_wr_err_cnt, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %tx_counter.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tx_counter.i, align 1
  %rx_counter.i = getelementptr inbounds %struct.pucan_wr_err_cnt, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %rx_counter.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rx_counter.i, align 1
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %ctrlmode_supported.i = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 23
  %10 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrlmode_supported.i, align 4
  %and.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.pcan_usb_fd_build_restart_cmd.exit_crit_edge, label %if.then.i

if.then.pcan_usb_fd_build_restart_cmd.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_build_restart_cmd.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %12 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrlmode.i, align 4
  %and2.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %14 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl_idx, align 4
  %.tr49.i = trunc i32 %15 to i16
  %16 = shl i16 %.tr49.i, 12
  %..i = select i1 %tobool3.not.i, i16 11, i16 12
  %conv.i44.i = or i16 %16, %..i
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i44.i) #7
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %add.ptr.i, align 1
  %options.i = getelementptr i8, ptr %1, i32 10
  %19 = ptrtoint ptr %options.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 1024, ptr %options.i, align 1
  %unused.i = getelementptr i8, ptr %1, i32 12
  %20 = ptrtoint ptr %unused.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %unused.i, align 1
  %add.ptr11.i = getelementptr i8, ptr %1, i32 16
  br label %pcan_usb_fd_build_restart_cmd.exit

pcan_usb_fd_build_restart_cmd.exit:               ; preds = %if.then.i, %if.then.pcan_usb_fd_build_restart_cmd.exit_crit_edge
  %pc.0.i = phi ptr [ %add.ptr11.i, %if.then.i ], [ %add.ptr.i, %if.then.pcan_usb_fd_build_restart_cmd.exit_crit_edge ]
  %21 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctrl_idx, align 4
  %ctrlmode14.i = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %23 = ptrtoint ptr %ctrlmode14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrlmode14.i, align 4
  %and15.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, i32 2, i32 3
  %shl.i45.i = shl i32 %22, 12
  %or.i46.i = or i32 %cond17.i, %shl.i45.i
  %conv.i47.i = trunc i32 %or.i46.i to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i47.i) #7
  %26 = ptrtoint ptr %pc.0.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %pc.0.i, align 1
  %add.ptr20.i = getelementptr i8, ptr %pc.0.i, i32 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr20.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = or i16 %4, 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %1, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %pcan_usb_fd_build_restart_cmd.exit
  %l.0 = phi i32 [ %sub.ptr.sub.i, %pcan_usb_fd_build_restart_cmd.exit ], [ 8, %if.else ]
  %add.ptr = getelementptr i8, ptr %1, i32 %l.0
  %29 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i, align 4
  %and.i9 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %if.end.pcan_usb_fd_send_cmd.exit_crit_edge, label %if.end.i

if.end.pcan_usb_fd_send_cmd.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_send_cmd.exit

if.end.i:                                         ; preds = %if.end
  %sub.ptr.lhs.cast.i11 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i12 = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i13 = sub i32 %sub.ptr.lhs.cast.i11, %sub.ptr.rhs.cast.i12
  call void @__sanitizer_cov_trace_const_cmp4(i32 505, i32 %sub.ptr.sub.i13)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i13, 505
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end2.i_crit_edge

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 -1, ptr %add.ptr, align 1
  %add.i = add nuw nsw i32 %sub.ptr.sub.i13, 8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %cmd_len.0.i = phi i32 [ %add.i, %if.then1.i ], [ %sub.ptr.sub.i13, %if.end.i.if.end2.i_crit_edge ]
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %34 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %udev.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp3.not.i = icmp eq i32 %37, 3
  br i1 %cmp3.not.i, label %if.end2.i.do.body.i.preheader_crit_edge, label %if.then6.i, !prof !75

if.end2.i.do.body.i.preheader_crit_edge:          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.preheader

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = tail call i32 @llvm.smin.i32(i32 %cmd_len.0.i, i32 64) #7
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then6.i, %if.end2.i.do.body.i.preheader_crit_edge
  %packet_len.1.i.ph = phi i32 [ %cmd_len.0.i, %if.end2.i.do.body.i.preheader_crit_edge ], [ %38, %if.then6.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %if.end15.i.do.body.i_crit_edge, %do.body.i.preheader
  %packet_ptr.0.i = phi ptr [ %add.ptr.i15, %if.end15.i.do.body.i_crit_edge ], [ %30, %do.body.i.preheader ]
  %packet_len.1.i = phi i32 [ %spec.select.i, %if.end15.i.do.body.i_crit_edge ], [ %packet_len.1.i.ph, %do.body.i.preheader ]
  %cmd_len.1.i = phi i32 [ %sub.i, %if.end15.i.do.body.i_crit_edge ], [ %cmd_len.0.i, %do.body.i.preheader ]
  %39 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udev.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i = shl i32 %42, 8
  %or.i14 = or i32 %shl.i.i, -1073709056
  %call12.i = tail call i32 @usb_bulk_msg(ptr noundef %40, i32 noundef %or.i14, ptr noundef %packet_ptr.0.i, i32 noundef %packet_len.1.i, ptr noundef null, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then14.i

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %43 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.4, i32 noundef %call12.i) #11
  br label %pcan_usb_fd_send_cmd.exit

if.end15.i:                                       ; preds = %do.body.i
  %add.ptr.i15 = getelementptr i8, ptr %packet_ptr.0.i, i32 %packet_len.1.i
  %sub.i = sub i32 %cmd_len.1.i, %packet_len.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i)
  %cmp16.i = icmp slt i32 %sub.i, 64
  %spec.select.i = select i1 %cmp16.i, i32 %sub.i, i32 %packet_len.1.i
  %cmp19.i = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp19.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge

if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_send_cmd.exit

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

pcan_usb_fd_send_cmd.exit:                        ; preds = %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge, %if.then14.i, %if.end.pcan_usb_fd_send_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.pcan_usb_fd_send_cmd.exit_crit_edge ], [ %call12.i, %if.then14.i ], [ 0, %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_fd_decode_buf(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %urb) #1 align 64 {
entry:
  %cf.i106 = alloca ptr, align 4
  %cf.i = alloca ptr, align 4
  %cfd.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_if.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %usb_if.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_if.i, align 4
  %netdev1 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %cmp133 = icmp ult ptr %5, %add.ptr
  br i1 %cmp133, label %for.body.lr.ph, label %entry.cleanup44_crit_edge

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

for.body.lr.ph:                                   ; preds = %entry
  %cm_ignore_count.i = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %1, i32 0, i32 3
  %time_ref.i = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %msg_ptr.0134 = phi ptr [ %5, %for.body.lr.ph ], [ %add.ptr4, %cleanup.for.body_crit_edge ]
  %8 = ptrtoint ptr %msg_ptr.0134 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %msg_ptr.0134, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %for.body.cleanup44_crit_edge, label %if.end

for.body.cleanup44_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

if.end:                                           ; preds = %for.body
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  %add.ptr4 = getelementptr i8, ptr %msg_ptr.0134, i32 %conv
  %cmp5 = icmp ugt ptr %add.ptr4, %add.ptr
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.21) #11
  br label %if.then40

if.end8:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.pucan_msg, ptr %msg_ptr.0134, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %type, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %13, label %sw.default [
    i16 1, label %sw.bb
    i16 256, label %sw.bb15
    i16 2, label %sw.bb16
    i16 3, label %sw.bb22
    i16 257, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfd.i) #7
  %15 = ptrtoint ptr %cfd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %cfd.i, align 4, !annotation !76
  %channel_dlc.i.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg_ptr.0134, i32 0, i32 6
  %16 = ptrtoint ptr %channel_dlc.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %channel_dlc.i.i, align 1
  %18 = and i8 %17, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i = icmp ugt i8 %18, 1
  br i1 %cmp.i, label %sw.bb.pcan_usb_fd_decode_canmsg.exit.thread_crit_edge, label %if.end.i

sw.bb.pcan_usb_fd_decode_canmsg.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_decode_canmsg.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %and.i.i = zext i8 %18 to i32
  %flags.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg_ptr.0134, i32 0, i32 8
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %flags.i, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20) #7
  %arrayidx.i = getelementptr [2 x ptr], ptr %1, i32 0, i32 %and.i.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %netdev3.i = getelementptr inbounds %struct.peak_usb_device, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %netdev3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev3.i, align 4
  %conv.i = zext i16 %21 to i32
  %and.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %call5.i = call ptr @alloc_canfd_skb(ptr noundef %25, ptr noundef nonnull %cfd.i) #7
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then4.i.pcan_usb_fd_decode_canmsg.exit.thread_crit_edge, label %if.end8.i

if.then4.i.pcan_usb_fd_decode_canmsg.exit.thread_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_decode_canmsg.exit.thread

if.end8.i:                                        ; preds = %if.then4.i
  %and10.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end16.i_crit_edge, label %if.then12.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %cfd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfd.i, align 4
  %flags13.i = getelementptr inbounds %struct.canfd_frame, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags13.i, align 1
  %30 = or i8 %29, 1
  store i8 %30, ptr %flags13.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end16.i_crit_edge
  %and18.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.if.end25.i_crit_edge, label %if.then20.i

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %cfd.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfd.i, align 4
  %flags21.i = getelementptr inbounds %struct.canfd_frame, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %flags21.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags21.i, align 1
  %35 = or i8 %34, 2
  store i8 %35, ptr %flags21.i, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end25.i_crit_edge
  %36 = ptrtoint ptr %channel_dlc.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %channel_dlc.i.i, align 1
  %38 = lshr i8 %37, 4
  %call27.i = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %38) #7
  %39 = ptrtoint ptr %cfd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfd.i, align 4
  %len.i = getelementptr inbounds %struct.canfd_frame, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %call27.i, ptr %len.i, align 4
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end.i
  %call28.i = call ptr @alloc_can_skb(ptr noundef %25, ptr noundef nonnull %cfd.i) #7
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.else.i.pcan_usb_fd_decode_canmsg.exit.thread_crit_edge, label %if.end31.i

if.else.i.pcan_usb_fd_decode_canmsg.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_decode_canmsg.exit.thread

if.end31.i:                                       ; preds = %if.else.i
  %42 = ptrtoint ptr %cfd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfd.i, align 4
  %44 = ptrtoint ptr %channel_dlc.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %channel_dlc.i.i, align 1
  %46 = lshr i8 %45, 4
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %23, i32 0, i32 22
  %47 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctrlmode.i, align 4
  %and.i84.i = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i)
  %tobool.not.i.i = icmp ne i32 %and.i84.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -113, i8 %45)
  %cmp.i.i = icmp ugt i8 %45, -113
  %or.cond.i.i = and i1 %cmp.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end31.i.can_frame_set_cc_len.exit.i_crit_edge

if.end31.i.can_frame_set_cc_len.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_frame_set_cc_len.exit.i

if.then.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %len8_dlc.i.i = getelementptr inbounds %struct.can_frame, ptr %43, i32 0, i32 4
  %49 = ptrtoint ptr %len8_dlc.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %len8_dlc.i.i, align 1
  br label %can_frame_set_cc_len.exit.i

can_frame_set_cc_len.exit.i:                      ; preds = %if.then.i.i, %if.end31.i.can_frame_set_cc_len.exit.i_crit_edge
  %50 = call i8 @llvm.umin.i8(i8 %46, i8 8) #7
  %51 = getelementptr inbounds %struct.can_frame, ptr %43, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %50, ptr %51, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %can_frame_set_cc_len.exit.i, %if.end25.i
  %skb.0.i = phi ptr [ %call5.i, %if.end25.i ], [ %call28.i, %can_frame_set_cc_len.exit.i ]
  %can_id.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg_ptr.0134, i32 0, i32 9
  %53 = ptrtoint ptr %can_id.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %can_id.i, align 1
  %55 = call i32 @llvm.bswap.i32(i32 %54) #7
  %56 = ptrtoint ptr %cfd.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfd.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %55, ptr %57, align 8
  %and36.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end33.i.if.end41.i_crit_edge, label %if.then38.i

if.end33.i.if.end41.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %cfd.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfd.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %or40.i = or i32 %62, -2147483648
  store i32 %or40.i, ptr %60, align 8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.end33.i.if.end41.i_crit_edge
  %and43.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %63 = ptrtoint ptr %cfd.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfd.i, align 4
  br i1 %tobool44.not.i, label %if.else48.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %or47.i = or i32 %66, 1073741824
  store i32 %or47.i, ptr %64, align 8
  br label %pcan_usb_fd_decode_canmsg.exit

if.else48.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.canfd_frame, ptr %64, i32 0, i32 5
  %d.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg_ptr.0134, i32 0, i32 10
  %len50.i = getelementptr inbounds %struct.canfd_frame, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %len50.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %len50.i, align 4
  %conv51.i = zext i8 %68 to i32
  %69 = call ptr @memcpy(ptr %data.i, ptr %d.i, i32 %conv51.i)
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 2
  %70 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %71, %conv51.i
  store i32 %add.i, ptr %rx_bytes.i, align 8
  br label %pcan_usb_fd_decode_canmsg.exit

pcan_usb_fd_decode_canmsg.exit.thread:            ; preds = %if.else.i.pcan_usb_fd_decode_canmsg.exit.thread_crit_edge, %if.then4.i.pcan_usb_fd_decode_canmsg.exit.thread_crit_edge, %sw.bb.pcan_usb_fd_decode_canmsg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfd.i) #7
  br label %if.then40

pcan_usb_fd_decode_canmsg.exit:                   ; preds = %if.else48.i, %if.then45.i
  %stats55.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36
  %72 = ptrtoint ptr %stats55.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stats55.i, align 8
  %inc.i = add i32 %73, 1
  store i32 %inc.i, ptr %stats55.i, align 8
  %ts_low.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg_ptr.0134, i32 0, i32 2
  %74 = ptrtoint ptr %ts_low.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %ts_low.i, align 1
  %76 = call i32 @llvm.bswap.i32(i32 %75) #7
  %ts_high.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg_ptr.0134, i32 0, i32 3
  %77 = ptrtoint ptr %ts_high.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %ts_high.i, align 1
  %79 = call i32 @llvm.bswap.i32(i32 %78) #7
  %call56.i = call i32 @peak_usb_netif_rx_64(ptr noundef nonnull %skb.0.i, i32 noundef %76, i32 noundef %79) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfd.i) #7
  br label %cleanup

sw.bb15:                                          ; preds = %if.end8
  %80 = ptrtoint ptr %cm_ignore_count.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cm_ignore_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i79 = icmp sgt i32 %81, 0
  br i1 %cmp.i79, label %if.then.i, label %if.else.i81

if.then.i:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add nsw i32 %81, -1
  %82 = ptrtoint ptr %cm_ignore_count.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %dec.i, ptr %cm_ignore_count.i, align 8
  br label %cleanup

if.else.i81:                                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %ts_low.i80 = getelementptr inbounds %struct.pcan_ufd_ts_msg, ptr %msg_ptr.0134, i32 0, i32 2
  %83 = ptrtoint ptr %ts_low.i80 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %ts_low.i80, align 1
  %85 = call i32 @llvm.bswap.i32(i32 %84) #7
  call void @peak_usb_set_ts_now(ptr noundef %time_ref.i, i32 noundef %85) #7
  br label %cleanup

sw.bb16:                                          ; preds = %if.end8
  %channel_type_d.i.i = getelementptr inbounds %struct.pucan_error_msg, ptr %msg_ptr.0134, i32 0, i32 4
  %86 = ptrtoint ptr %channel_type_d.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %channel_type_d.i.i, align 1
  %88 = and i8 %87, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %88)
  %cmp.i83 = icmp ugt i8 %88, 1
  br i1 %cmp.i83, label %sw.bb16.if.then40_crit_edge, label %pcan_usb_fd_decode_error.exit

sw.bb16.if.then40_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

pcan_usb_fd_decode_error.exit:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i84 = zext i8 %88 to i32
  %arrayidx.i85 = getelementptr [2 x ptr], ptr %1, i32 0, i32 %and.i.i84
  %89 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i85, align 4
  %tx_err_cnt.i = getelementptr inbounds %struct.pucan_error_msg, ptr %msg_ptr.0134, i32 0, i32 6
  %91 = ptrtoint ptr %tx_err_cnt.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %tx_err_cnt.i, align 1
  %conv.i86 = zext i8 %92 to i16
  %bec.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %90, i32 0, i32 1
  %93 = ptrtoint ptr %bec.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.i86, ptr %bec.i, align 4
  %rx_err_cnt.i = getelementptr inbounds %struct.pucan_error_msg, ptr %msg_ptr.0134, i32 0, i32 7
  %94 = ptrtoint ptr %rx_err_cnt.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rx_err_cnt.i, align 1
  %conv3.i = zext i8 %95 to i16
  %rxerr.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %90, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %rxerr.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv3.i, ptr %rxerr.i, align 2
  br label %cleanup

sw.bb22:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #7
  %97 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !76
  %channel_p_w_b.i.i = getelementptr inbounds %struct.pucan_status_msg, ptr %msg_ptr.0134, i32 0, i32 4
  %98 = ptrtoint ptr %channel_p_w_b.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %channel_p_w_b.i.i, align 1
  %100 = and i8 %99, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %100)
  %cmp.i89 = icmp ugt i8 %100, 1
  br i1 %cmp.i89, label %sw.bb22.pcan_usb_fd_decode_status.exit_crit_edge, label %if.end.i93

sw.bb22.pcan_usb_fd_decode_status.exit_crit_edge: ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_decode_status.exit

if.end.i93:                                       ; preds = %sw.bb22
  %and.i.i90 = zext i8 %100 to i32
  %arrayidx.i91 = getelementptr [2 x ptr], ptr %1, i32 0, i32 %and.i.i90
  %101 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i91, align 4
  %netdev3.i92 = getelementptr inbounds %struct.peak_usb_device, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %netdev3.i92 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %netdev3.i92, align 4
  %state.i = getelementptr inbounds %struct.can_priv, ptr %102, i32 0, i32 21
  %105 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %106)
  %cmp4.i = icmp eq i32 %106, 3
  br i1 %cmp4.i, label %if.end.i93.pcan_usb_fd_decode_status.exit.thread_crit_edge, label %if.end6.i

if.end.i93.pcan_usb_fd_decode_status.exit.thread_crit_edge: ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_decode_status.exit.thread

if.end6.i:                                        ; preds = %if.end.i93
  %conv.i94 = zext i8 %99 to i32
  %and.i95 = and i32 %conv.i94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i96 = icmp eq i32 %and.i95, 0
  br i1 %tobool.not.i96, label %if.else.i99, label %if.end6.i.if.end23.i_crit_edge

if.end6.i.if.end23.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.else.i99:                                      ; preds = %if.end6.i
  %and10.i97 = and i32 %conv.i94, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i97)
  %tobool11.not.i98 = icmp eq i32 %and10.i97, 0
  br i1 %tobool11.not.i98, label %if.else13.i, label %if.else.i99.if.end23.i_crit_edge

if.else.i99.if.end23.i_crit_edge:                 ; preds = %if.else.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.else13.i:                                      ; preds = %if.else.i99
  %and16.i = and i32 %conv.i94, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else19.i, label %if.else13.i.if.end23.i_crit_edge

if.else13.i.if.end23.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.else19.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  %bec.i100 = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %102, i32 0, i32 1
  %107 = ptrtoint ptr %bec.i100 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %bec.i100, align 4
  %rxerr.i101 = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %102, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %rxerr.i101 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %rxerr.i101, align 2
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else19.i, %if.else13.i.if.end23.i_crit_edge, %if.else.i99.if.end23.i_crit_edge, %if.end6.i.if.end23.i_crit_edge
  %new_state.0.i = phi i32 [ 0, %if.else19.i ], [ 3, %if.end6.i.if.end23.i_crit_edge ], [ 2, %if.else.i99.if.end23.i_crit_edge ], [ 1, %if.else13.i.if.end23.i_crit_edge ]
  %109 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_state.0.i, i32 %110)
  %cmp26.i = icmp eq i32 %new_state.0.i, %110
  br i1 %cmp26.i, label %if.end23.i.pcan_usb_fd_decode_status.exit.thread_crit_edge, label %if.end29.i

if.end23.i.pcan_usb_fd_decode_status.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_decode_status.exit.thread

if.end29.i:                                       ; preds = %if.end23.i
  %bec30.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %102, i32 0, i32 1
  %111 = ptrtoint ptr %bec30.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %bec30.i, align 4
  %rxerr34.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %102, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %rxerr34.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %rxerr34.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %112, i16 %114)
  %cmp36.not.i = icmp ult i16 %112, %114
  %spec.select.i = select i1 %cmp36.not.i, i32 0, i32 %new_state.0.i
  call void @__sanitizer_cov_trace_cmp2(i16 %112, i16 %114)
  %cmp44.not.i = icmp ugt i16 %112, %114
  %cond49.i = select i1 %cmp44.not.i, i32 0, i32 %new_state.0.i
  %call50.i = call ptr @alloc_can_err_skb(ptr noundef %104, ptr noundef nonnull %cf.i) #7
  %115 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cf.i, align 4
  call void @can_change_state(ptr noundef %104, ptr noundef %116, i32 noundef %spec.select.i, i32 noundef %cond49.i) #7
  br i1 %tobool.not.i96, label %if.end29.i.if.end54.i102_crit_edge, label %if.then53.i

if.end29.i.if.end54.i102_crit_edge:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i102

if.then53.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @can_bus_off(ptr noundef %104) #7
  br label %if.end54.i102

if.end54.i102:                                    ; preds = %if.then53.i, %if.end29.i.if.end54.i102_crit_edge
  %tobool55.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool55.not.i, label %if.end54.i102.pcan_usb_fd_decode_status.exit_crit_edge, label %if.end57.i

if.end54.i102.pcan_usb_fd_decode_status.exit_crit_edge: ; preds = %if.end54.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_decode_status.exit

if.end57.i:                                       ; preds = %if.end54.i102
  call void @__sanitizer_cov_trace_pc() #9
  %ts_low.i103 = getelementptr inbounds %struct.pucan_status_msg, ptr %msg_ptr.0134, i32 0, i32 2
  %117 = ptrtoint ptr %ts_low.i103 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %ts_low.i103, align 1
  %119 = call i32 @llvm.bswap.i32(i32 %118) #7
  %ts_high.i104 = getelementptr inbounds %struct.pucan_status_msg, ptr %msg_ptr.0134, i32 0, i32 3
  %120 = ptrtoint ptr %ts_high.i104 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %ts_high.i104, align 1
  %122 = call i32 @llvm.bswap.i32(i32 %121) #7
  %call58.i = call i32 @peak_usb_netif_rx_64(ptr noundef nonnull %call50.i, i32 noundef %119, i32 noundef %122) #7
  br label %pcan_usb_fd_decode_status.exit.thread

pcan_usb_fd_decode_status.exit.thread:            ; preds = %if.end57.i, %if.end23.i.pcan_usb_fd_decode_status.exit.thread_crit_edge, %if.end.i93.pcan_usb_fd_decode_status.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #7
  br label %cleanup

pcan_usb_fd_decode_status.exit:                   ; preds = %if.end54.i102.pcan_usb_fd_decode_status.exit_crit_edge, %sw.bb22.pcan_usb_fd_decode_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #7
  br label %if.then40

sw.bb28:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i106) #7
  %123 = ptrtoint ptr %cf.i106 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i106, align 4, !annotation !76
  %channel.i.i = getelementptr inbounds %struct.pcan_ufd_ovr_msg, ptr %msg_ptr.0134, i32 0, i32 4
  %124 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %channel.i.i, align 1
  %126 = and i8 %125, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %126)
  %cmp.i107 = icmp ugt i8 %126, 1
  br i1 %cmp.i107, label %sw.bb28.pcan_usb_fd_decode_overrun.exit.thread_crit_edge, label %if.end.i112

sw.bb28.pcan_usb_fd_decode_overrun.exit.thread_crit_edge: ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_decode_overrun.exit.thread

if.end.i112:                                      ; preds = %sw.bb28
  %and.i.i108 = zext i8 %126 to i32
  %arrayidx.i109 = getelementptr [2 x ptr], ptr %1, i32 0, i32 %and.i.i108
  %127 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i109, align 4
  %netdev3.i110 = getelementptr inbounds %struct.peak_usb_device, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %netdev3.i110 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %netdev3.i110, align 4
  %call4.i = call ptr @alloc_can_err_skb(ptr noundef %130, ptr noundef nonnull %cf.i106) #7
  %tobool.not.i111 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i111, label %if.end.i112.pcan_usb_fd_decode_overrun.exit.thread_crit_edge, label %pcan_usb_fd_decode_overrun.exit

if.end.i112.pcan_usb_fd_decode_overrun.exit.thread_crit_edge: ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_decode_overrun.exit.thread

pcan_usb_fd_decode_overrun.exit.thread:           ; preds = %if.end.i112.pcan_usb_fd_decode_overrun.exit.thread_crit_edge, %sw.bb28.pcan_usb_fd_decode_overrun.exit.thread_crit_edge
  %retval.0.i117.ph = phi i32 [ -12, %if.end.i112.pcan_usb_fd_decode_overrun.exit.thread_crit_edge ], [ -22, %sw.bb28.pcan_usb_fd_decode_overrun.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i106) #7
  br label %if.then40

pcan_usb_fd_decode_overrun.exit:                  ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %cf.i106 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cf.i106, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 8
  %or.i = or i32 %134, 4
  store i32 %or.i, ptr %132, align 8
  %135 = load ptr, ptr %cf.i106, align 4
  %arrayidx7.i = getelementptr %struct.can_frame, ptr %135, i32 0, i32 5, i32 1
  %136 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx7.i, align 1
  %138 = or i8 %137, 1
  store i8 %138, ptr %arrayidx7.i, align 1
  %ts_low.i113 = getelementptr inbounds %struct.pcan_ufd_ovr_msg, ptr %msg_ptr.0134, i32 0, i32 2
  %139 = ptrtoint ptr %ts_low.i113 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %ts_low.i113, align 1
  %141 = call i32 @llvm.bswap.i32(i32 %140) #7
  %ts_high.i114 = getelementptr inbounds %struct.pcan_ufd_ovr_msg, ptr %msg_ptr.0134, i32 0, i32 3
  %142 = ptrtoint ptr %ts_high.i114 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %ts_high.i114, align 1
  %144 = call i32 @llvm.bswap.i32(i32 %143) #7
  %call10.i = call i32 @peak_usb_netif_rx_64(ptr noundef nonnull %call4.i, i32 noundef %141, i32 noundef %144) #7
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %130, i32 0, i32 36, i32 11
  %145 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rx_over_errors.i, align 4
  %inc.i115 = add i32 %146, 1
  store i32 %inc.i115, ptr %rx_over_errors.i, align 4
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %130, i32 0, i32 36, i32 4
  %147 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rx_errors.i, align 8
  %inc12.i = add i32 %148, 1
  store i32 %inc12.i, ptr %rx_errors.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i106) #7
  br label %cleanup

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = zext i16 %13 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %conv9, i32 noundef %conv9) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %pcan_usb_fd_decode_overrun.exit, %pcan_usb_fd_decode_status.exit.thread, %pcan_usb_fd_decode_error.exit, %if.else.i81, %if.then.i, %pcan_usb_fd_decode_canmsg.exit
  %cmp = icmp ult ptr %add.ptr4, %add.ptr
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup44_crit_edge

cleanup.cleanup44_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then40:                                        ; preds = %pcan_usb_fd_decode_overrun.exit.thread, %pcan_usb_fd_decode_status.exit, %sw.bb16.if.then40_crit_edge, %pcan_usb_fd_decode_canmsg.exit.thread, %if.then7
  %err.3131 = phi i32 [ -74, %if.then7 ], [ -12, %pcan_usb_fd_decode_status.exit ], [ -12, %pcan_usb_fd_decode_canmsg.exit.thread ], [ %retval.0.i117.ph, %pcan_usb_fd_decode_overrun.exit.thread ], [ -22, %sw.bb16.if.then40_crit_edge ]
  %149 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %transfer_buffer, align 4
  %151 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %actual_length, align 4
  call void @pcan_dump_mem(ptr noundef nonnull @.str.23, ptr noundef %150, i32 noundef %152) #7
  br label %cleanup44

cleanup44:                                        ; preds = %if.then40, %cleanup.cleanup44_crit_edge, %for.body.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %err.3132 = phi i32 [ %err.3131, %if.then40 ], [ 0, %entry.cleanup44_crit_edge ], [ 0, %cleanup.cleanup44_crit_edge ], [ 0, %for.body.cleanup44_crit_edge ]
  ret i32 %err.3132
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_fd_encode_msg(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %obuf, ptr nocapture noundef writeonly %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %3)
  %cmp = icmp ugt i8 %3, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i16
  %add4 = add nuw nsw i16 %conv, 23
  %and = and i16 %add4, 508
  %4 = tail call i16 @llvm.bswap.i16(i16 %and)
  %5 = ptrtoint ptr %obuf to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %obuf, align 1
  %type = getelementptr inbounds %struct.pucan_tx_msg, ptr %obuf, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 16, ptr %type, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not = icmp sgt i32 %8, -1
  %. = select i1 %tobool.not, i32 2047, i32 536870911
  %9 = lshr i32 %8, 30
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, 2
  %and15 = and i32 %8, %.
  %12 = tail call i32 @llvm.bswap.i32(i32 %and15)
  %13 = getelementptr inbounds %struct.pucan_tx_msg, ptr %obuf, i32 0, i32 7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %12, ptr %13, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %16)
  %cmp.i = icmp eq i32 %16, 72
  br i1 %cmp.i, label %if.then18, label %if.else41

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %len, align 4
  %call20 = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %18) #7
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool26.not = icmp eq i8 %21, 0
  %spec.select.v = select i1 %tobool26.not, i16 16, i16 48
  %spec.select = or i16 %spec.select.v, %11
  %22 = shl i8 %20, 5
  %23 = and i8 %22, 64
  %24 = zext i8 %23 to i16
  %25 = or i16 %spec.select, %24
  br label %if.end51

if.else41:                                        ; preds = %if.end
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %26 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else41.if.end.i_crit_edge, label %land.lhs.true.i

if.else41.if.end.i_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else41
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %cmp.i111 = icmp eq i8 %29, 8
  br i1 %cmp.i111, label %land.lhs.true2.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %len8_dlc.i, align 1
  %32 = add i8 %31, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %32)
  %33 = icmp ult i8 %32, 7
  br i1 %33, label %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_get_cc_dlc.exit

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.else41.if.end.i_crit_edge
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %len, align 4
  br label %can_get_cc_dlc.exit

can_get_cc_dlc.exit:                              ; preds = %if.end.i, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge
  %retval.0.i = phi i8 [ %35, %if.end.i ], [ %31, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge ]
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 8
  %and44 = lshr i32 %37, 30
  %38 = trunc i32 %and44 to i16
  %39 = and i16 %38, 1
  %40 = or i16 %39, %11
  br label %if.end51

if.end51:                                         ; preds = %can_get_cc_dlc.exit, %if.then18
  %tx_msg_flags.2 = phi i16 [ %40, %can_get_cc_dlc.exit ], [ %25, %if.then18 ]
  %dlc.0 = phi i8 [ %retval.0.i, %can_get_cc_dlc.exit ], [ %call20, %if.then18 ]
  %ctrlmode53 = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %41 = ptrtoint ptr %ctrlmode53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrlmode53, align 4
  %43 = trunc i32 %42 to i16
  %44 = and i16 %43, 8
  %45 = or i16 %44, %tx_msg_flags.2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %flags61 = getelementptr inbounds %struct.pucan_tx_msg, ptr %obuf, i32 0, i32 6
  %47 = ptrtoint ptr %flags61 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %flags61, align 1
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %48 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ctrl_idx, align 4
  %and62 = and i32 %49, 15
  %conv63 = zext i8 %dlc.0 to i32
  %shl = shl nuw nsw i32 %conv63, 4
  %or64 = or i32 %and62, %shl
  %conv65 = trunc i32 %or64 to i8
  %channel_dlc = getelementptr inbounds %struct.pucan_tx_msg, ptr %obuf, i32 0, i32 4
  %50 = ptrtoint ptr %channel_dlc to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv65, ptr %channel_dlc, align 1
  %d = getelementptr inbounds %struct.pucan_tx_msg, ptr %obuf, i32 0, i32 8
  %data66 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %len, align 4
  %conv69 = zext i8 %52 to i32
  %53 = call ptr @memcpy(ptr %d, ptr %data66, i32 %conv69)
  %conv70 = zext i16 %and to i32
  %add.ptr = getelementptr i8, ptr %obuf, i32 %conv70
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 0, ptr %add.ptr, align 1
  %add73 = add nuw nsw i32 %conv70, 4
  %55 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add73, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_fd_start(ptr nocapture noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buffer_addr.i.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_buffer_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_buffer_addr.i.i, align 4
  %ctrl_idx.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.04.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %cmd.03.i = phi ptr [ %1, %entry ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %ctrl_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_idx.i, align 4
  %.tr.i = trunc i32 %3 to i16
  %4 = shl i16 %.tr.i, 12
  %conv.i.i = or i16 %4, 8
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  %6 = ptrtoint ptr %cmd.03.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %cmd.03.i, align 1
  %conv.i = trunc i32 %i.04.i to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %idx4.i = getelementptr inbounds %struct.pucan_filter_std, ptr %cmd.03.i, i32 0, i32 1
  %8 = ptrtoint ptr %idx4.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %idx4.i, align 1
  %mask5.i = getelementptr inbounds %struct.pucan_filter_std, ptr %cmd.03.i, i32 0, i32 2
  %9 = ptrtoint ptr %mask5.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 -1, ptr %mask5.i, align 1
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %incdec.ptr.i = getelementptr %struct.pucan_filter_std, ptr %cmd.03.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %10 = ptrtoint ptr %cmd_buffer_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd_buffer_addr.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.i.if.end_crit_edge, label %if.end.i.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %for.end.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 505, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i, 505
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end.i.i.if.end2.i.i_crit_edge

if.end.i.i.if.end2.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 -1, ptr %incdec.ptr.i, align 1
  %add.i.i = add nuw nsw i32 %sub.ptr.sub.i.i, 8
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end2.i.i_crit_edge
  %cmd_len.0.i.i = phi i32 [ %add.i.i, %if.then1.i.i ], [ %sub.ptr.sub.i.i, %if.end.i.i.if.end2.i.i_crit_edge ]
  %udev.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp3.not.i.i = icmp eq i32 %18, 3
  br i1 %cmp3.not.i.i, label %if.end2.i.i.do.body.i.i.preheader_crit_edge, label %if.then6.i.i, !prof !75

if.end2.i.i.do.body.i.i.preheader_crit_edge:      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.preheader

if.then6.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i32 @llvm.smin.i32(i32 %cmd_len.0.i.i, i32 64) #7
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %if.then6.i.i, %if.end2.i.i.do.body.i.i.preheader_crit_edge
  %packet_len.1.i.i.ph = phi i32 [ %cmd_len.0.i.i, %if.end2.i.i.do.body.i.i.preheader_crit_edge ], [ %19, %if.then6.i.i ]
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end15.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %packet_ptr.0.i.i = phi ptr [ %add.ptr.i.i, %if.end15.i.i.do.body.i.i_crit_edge ], [ %11, %do.body.i.i.preheader ]
  %packet_len.1.i.i = phi i32 [ %spec.select.i.i, %if.end15.i.i.do.body.i.i_crit_edge ], [ %packet_len.1.i.i.ph, %do.body.i.i.preheader ]
  %cmd_len.1.i.i = phi i32 [ %sub.i.i, %if.end15.i.i.do.body.i.i_crit_edge ], [ %cmd_len.0.i.i, %do.body.i.i.preheader ]
  %20 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i.i = shl i32 %23, 8
  %or.i1.i = or i32 %shl.i.i.i, -1073709056
  %call12.i.i = tail call i32 @usb_bulk_msg(ptr noundef %21, i32 noundef %or.i1.i, ptr noundef %packet_ptr.0.i.i, i32 noundef %packet_len.1.i.i, ptr noundef null, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end15.i.i, label %pcan_usb_fd_set_filter_std.exit

if.end15.i.i:                                     ; preds = %do.body.i.i
  %add.ptr.i.i = getelementptr i8, ptr %packet_ptr.0.i.i, i32 %packet_len.1.i.i
  %sub.i.i = sub i32 %cmd_len.1.i.i, %packet_len.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i.i)
  %cmp16.i.i = icmp slt i32 %sub.i.i, 64
  %spec.select.i.i = select i1 %cmp16.i.i, i32 %sub.i.i, i32 %packet_len.1.i.i
  %cmp19.i.i = icmp sgt i32 %spec.select.i.i, 0
  br i1 %cmp19.i.i, label %if.end15.i.i.do.body.i.i_crit_edge, label %if.end15.i.i.if.end_crit_edge

if.end15.i.i.if.end_crit_edge:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end15.i.i.do.body.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

pcan_usb_fd_set_filter_std.exit:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %24 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.4, i32 noundef %call12.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end15.i.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  %usb_if = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 2
  %26 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_if, align 4
  %dev_opened_count = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %dev_opened_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dev_opened_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %time_ref = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %27, i32 0, i32 2
  tail call void @peak_usb_init_time_ref(ptr noundef %time_ref, ptr noundef nonnull @pcan_usb_pro_fd) #7
  %call3 = tail call fastcc i32 @pcan_usb_fd_set_options(ptr noundef %dev, i1 noundef zeroext true)
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %err.0 = phi i32 [ %call3, %if.then1 ], [ 0, %if.end.if.end4_crit_edge ]
  %30 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_if, align 4
  %dev_opened_count6 = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %dev_opened_count6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_opened_count6, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %dev_opened_count6, align 4
  %bec = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 1
  %34 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %bec, align 4
  %rxerr = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %rxerr, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %pcan_usb_fd_set_filter_std.exit
  %retval.0 = phi i32 [ %err.0, %if.end4 ], [ %call12.i.i, %pcan_usb_fd_set_filter_std.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_fd_stop(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_if = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_if, align 4
  %dev_opened_count = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_opened_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_opened_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call fastcc i32 @pcan_usb_fd_set_options(ptr noundef %dev, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_if, align 4
  %dev_opened_count2 = getelementptr inbounds %struct.pcan_usb_fd_if, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %dev_opened_count2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_opened_count2, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %dev_opened_count2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_fd_restart_async(ptr noundef %dev, ptr noundef %urb, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_idx.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl_idx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_idx.i, align 4
  %.tr.i = trunc i32 %1 to i16
  %2 = shl i16 %.tr.i, 12
  %conv.i.i = or i16 %2, 10
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %buf, align 1
  %sel_mask.i = getelementptr inbounds %struct.pucan_wr_err_cnt, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %sel_mask.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 192, ptr %sel_mask.i, align 1
  %tx_counter.i = getelementptr inbounds %struct.pucan_wr_err_cnt, ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %tx_counter.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_counter.i, align 1
  %rx_counter.i = getelementptr inbounds %struct.pucan_wr_err_cnt, ptr %buf, i32 0, i32 3
  %7 = ptrtoint ptr %rx_counter.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rx_counter.i, align 1
  %add.ptr.i = getelementptr i8, ptr %buf, i32 8
  %ctrlmode_supported.i = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 23
  %8 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrlmode_supported.i, align 4
  %and.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.pcan_usb_fd_build_restart_cmd.exit_crit_edge, label %if.then.i

entry.pcan_usb_fd_build_restart_cmd.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_build_restart_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %10 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrlmode.i, align 4
  %and2.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %12 = ptrtoint ptr %ctrl_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl_idx.i, align 4
  %.tr49.i = trunc i32 %13 to i16
  %14 = shl i16 %.tr49.i, 12
  %..i = select i1 %tobool3.not.i, i16 11, i16 12
  %conv.i44.i = or i16 %14, %..i
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv.i44.i) #7
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %add.ptr.i, align 1
  %options.i = getelementptr i8, ptr %buf, i32 10
  %17 = ptrtoint ptr %options.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 1024, ptr %options.i, align 1
  %unused.i = getelementptr i8, ptr %buf, i32 12
  %18 = ptrtoint ptr %unused.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %unused.i, align 1
  %add.ptr11.i = getelementptr i8, ptr %buf, i32 16
  br label %pcan_usb_fd_build_restart_cmd.exit

pcan_usb_fd_build_restart_cmd.exit:               ; preds = %if.then.i, %entry.pcan_usb_fd_build_restart_cmd.exit_crit_edge
  %pc.0.i = phi ptr [ %add.ptr11.i, %if.then.i ], [ %add.ptr.i, %entry.pcan_usb_fd_build_restart_cmd.exit_crit_edge ]
  %19 = ptrtoint ptr %ctrl_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl_idx.i, align 4
  %ctrlmode14.i = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %21 = ptrtoint ptr %ctrlmode14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctrlmode14.i, align 4
  %and15.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, i32 2, i32 3
  %shl.i45.i = shl i32 %20, 12
  %or.i46.i = or i32 %cond17.i, %shl.i45.i
  %conv.i47.i = trunc i32 %or.i46.i to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv.i47.i) #7
  %24 = ptrtoint ptr %pc.0.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %pc.0.i, align 1
  %add.ptr20.i = getelementptr i8, ptr %pc.0.i, i32 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr20.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr = getelementptr i8, ptr %buf, i32 %sub.ptr.sub.i
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 -1, ptr %add.ptr, align 1
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 8
  %udev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %26 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i = shl i32 %29, 8
  %or = or i32 %shl.i, -1073709056
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %30 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %31 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %32 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %33 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.ptr.sub, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %34 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pcan_usb_pro_restart_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %35 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev, ptr %context4.i, align 4
  %call4 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #7
  ret i32 %call4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcan_usb_fd_get_berr_counter(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bec1 = getelementptr i8, ptr %netdev, i32 3004
  %0 = ptrtoint ptr %bec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bec1, align 4
  %2 = ptrtoint ptr %bec to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %bec, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_fd_set_phys_id(ptr nocapture noundef readonly %netdev, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 0, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  %call3 = tail call fastcc i32 @pcan_usb_fd_set_can_led(ptr noundef %add.ptr.i, i8 noundef zeroext %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call3, %sw.epilog.sink.split ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcan_usb_fd_set_can_led(ptr nocapture noundef readonly %dev, i8 noundef zeroext %led_mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buffer_addr.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_idx, align 4
  %.tr = trunc i32 %3 to i16
  %4 = shl i16 %.tr, 12
  %conv.i = or i16 %4, 134
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %1, align 1
  %mode = getelementptr inbounds %struct.pcan_ufd_led, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %led_mode, ptr %mode, align 1
  %incdec.ptr = getelementptr %struct.pcan_ufd_led, ptr %1, i32 1
  %8 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.pcan_usb_fd_send_cmd.exit_crit_edge, label %if.end.i

entry.pcan_usb_fd_send_cmd.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_send_cmd.exit

if.end.i:                                         ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 505, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 505
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end2.i_crit_edge

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 -1, ptr %incdec.ptr, align 1
  %add.i = add nuw nsw i32 %sub.ptr.sub.i, 8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %cmd_len.0.i = phi i32 [ %add.i, %if.then1.i ], [ %sub.ptr.sub.i, %if.end.i.if.end2.i_crit_edge ]
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp3.not.i = icmp eq i32 %16, 3
  br i1 %cmp3.not.i, label %if.end2.i.do.body.i.preheader_crit_edge, label %if.then6.i, !prof !75

if.end2.i.do.body.i.preheader_crit_edge:          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.preheader

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 @llvm.smin.i32(i32 %cmd_len.0.i, i32 64) #7
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then6.i, %if.end2.i.do.body.i.preheader_crit_edge
  %packet_len.1.i.ph = phi i32 [ %cmd_len.0.i, %if.end2.i.do.body.i.preheader_crit_edge ], [ %17, %if.then6.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %if.end15.i.do.body.i_crit_edge, %do.body.i.preheader
  %packet_ptr.0.i = phi ptr [ %add.ptr.i, %if.end15.i.do.body.i_crit_edge ], [ %9, %do.body.i.preheader ]
  %packet_len.1.i = phi i32 [ %spec.select.i, %if.end15.i.do.body.i_crit_edge ], [ %packet_len.1.i.ph, %do.body.i.preheader ]
  %cmd_len.1.i = phi i32 [ %sub.i, %if.end15.i.do.body.i_crit_edge ], [ %cmd_len.0.i, %do.body.i.preheader ]
  %18 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i7 = or i32 %shl.i.i, -1073709056
  %call12.i = tail call i32 @usb_bulk_msg(ptr noundef %19, i32 noundef %or.i7, ptr noundef %packet_ptr.0.i, i32 noundef %packet_len.1.i, ptr noundef null, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then14.i

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %22 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.4, i32 noundef %call12.i) #11
  br label %pcan_usb_fd_send_cmd.exit

if.end15.i:                                       ; preds = %do.body.i
  %add.ptr.i = getelementptr i8, ptr %packet_ptr.0.i, i32 %packet_len.1.i
  %sub.i = sub i32 %cmd_len.1.i, %packet_len.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i)
  %cmp16.i = icmp slt i32 %sub.i, 64
  %spec.select.i = select i1 %cmp16.i, i32 %sub.i, i32 %packet_len.1.i
  %cmp19.i = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp19.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge

if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_send_cmd.exit

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

pcan_usb_fd_send_cmd.exit:                        ; preds = %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge, %if.then14.i, %entry.pcan_usb_fd_send_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pcan_usb_fd_send_cmd.exit_crit_edge ], [ %call12.i, %if.then14.i ], [ 0, %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcan_usb_pro_send_req(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcan_usb_fd_set_options(ptr nocapture noundef readonly %dev, i1 noundef zeroext %onoff) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buffer_addr.i = getelementptr inbounds %struct.pcan_usb_fd_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_idx, align 4
  %cond = select i1 %onoff, i32 11, i32 12
  %shl.i = shl i32 %3, 12
  %or.i = or i32 %shl.i, %cond
  %conv.i = trunc i32 %or.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %1, align 1
  %ucan_mask2 = getelementptr inbounds %struct.pcan_ufd_options, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ucan_mask2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 256, ptr %ucan_mask2, align 1
  %usb_mask3 = getelementptr inbounds %struct.pcan_ufd_options, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %usb_mask3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 128, ptr %usb_mask3, align 1
  %incdec.ptr = getelementptr %struct.pcan_ufd_options, ptr %1, i32 1
  %8 = ptrtoint ptr %cmd_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd_buffer_addr.i, align 4
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.pcan_usb_fd_send_cmd.exit_crit_edge, label %if.end.i

entry.pcan_usb_fd_send_cmd.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_send_cmd.exit

if.end.i:                                         ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 505, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 505
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end2.i_crit_edge

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 -1, ptr %incdec.ptr, align 1
  %add.i = add nuw nsw i32 %sub.ptr.sub.i, 8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %cmd_len.0.i = phi i32 [ %add.i, %if.then1.i ], [ %sub.ptr.sub.i, %if.end.i.if.end2.i_crit_edge ]
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp3.not.i = icmp eq i32 %16, 3
  br i1 %cmp3.not.i, label %if.end2.i.do.body.i.preheader_crit_edge, label %if.then6.i, !prof !75

if.end2.i.do.body.i.preheader_crit_edge:          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.preheader

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 @llvm.smin.i32(i32 %cmd_len.0.i, i32 64) #7
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then6.i, %if.end2.i.do.body.i.preheader_crit_edge
  %packet_len.1.i.ph = phi i32 [ %cmd_len.0.i, %if.end2.i.do.body.i.preheader_crit_edge ], [ %17, %if.then6.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %if.end15.i.do.body.i_crit_edge, %do.body.i.preheader
  %packet_ptr.0.i = phi ptr [ %add.ptr.i, %if.end15.i.do.body.i_crit_edge ], [ %9, %do.body.i.preheader ]
  %packet_len.1.i = phi i32 [ %spec.select.i, %if.end15.i.do.body.i_crit_edge ], [ %packet_len.1.i.ph, %do.body.i.preheader ]
  %cmd_len.1.i = phi i32 [ %sub.i, %if.end15.i.do.body.i_crit_edge ], [ %cmd_len.0.i, %do.body.i.preheader ]
  %18 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i1 = or i32 %shl.i.i, -1073709056
  %call12.i = tail call i32 @usb_bulk_msg(ptr noundef %19, i32 noundef %or.i1, ptr noundef %packet_ptr.0.i, i32 noundef %packet_len.1.i, ptr noundef null, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then14.i

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %22 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.4, i32 noundef %call12.i) #11
  br label %pcan_usb_fd_send_cmd.exit

if.end15.i:                                       ; preds = %do.body.i
  %add.ptr.i = getelementptr i8, ptr %packet_ptr.0.i, i32 %packet_len.1.i
  %sub.i = sub i32 %cmd_len.1.i, %packet_len.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i)
  %cmp16.i = icmp slt i32 %sub.i, 64
  %spec.select.i = select i1 %cmp16.i, i32 %sub.i, i32 %packet_len.1.i
  %cmp19.i = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp19.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge

if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcan_usb_fd_send_cmd.exit

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

pcan_usb_fd_send_cmd.exit:                        ; preds = %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge, %if.then14.i, %entry.pcan_usb_fd_send_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pcan_usb_fd_send_cmd.exit_crit_edge ], [ %call12.i, %if.then14.i ], [ 0, %if.end15.i.pcan_usb_fd_send_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcan_dump_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @peak_usb_netif_rx_64(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_set_ts_now(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_init_time_ref(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcan_usb_pro_restart_complete(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1063, i32 10}
!2 = !{ptr @pcan_usb_fd, !3, !"pcan_usb_fd", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1062, i32 31}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1137, i32 10}
!6 = !{ptr @pcan_usb_chip, !7, !"pcan_usb_chip", i1 false, i1 false}
!7 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1136, i32 31}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1211, i32 10}
!10 = !{ptr @pcan_usb_pro_fd, !11, !"pcan_usb_pro_fd", i1 false, i1 false}
!11 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1210, i32 31}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1285, i32 10}
!14 = !{ptr @pcan_usb_x6, !15, !"pcan_usb_x6", i1 false, i1 false}
!15 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1284, i32 31}
!16 = !{ptr @pcan_usb_fd_const, !17, !"pcan_usb_fd_const", i1 false, i1 false}
!17 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1038, i32 41}
!18 = !{ptr @pcan_usb_fd_data_const, !19, !"pcan_usb_fd_data_const", i1 false, i1 false}
!19 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1050, i32 41}
!20 = !{ptr @pcan_usb_fd_ethtool_ops, !21, !"pcan_usb_fd_ethtool_ops", i1 false, i1 false}
!21 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1033, i32 33}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 208, i32 8}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 886, i32 4}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pcan_usb_fd_init._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @pcan_usb_fd_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 896, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pcan_usb_fd_init._entry.10, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @pcan_usb_fd_init._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 916, i32 4}
!39 = !{ptr @pcan_usb_fd_init._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pcan_usb_fd_init._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 945, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pcan_usb_fd_init._entry.17, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @pcan_usb_fd_init._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"pcan_usb_fd_clk_freq", i1 false, i1 false}
!47 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 145, i32 18}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 680, i32 8}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 716, i32 8}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 726, i32 17}
!54 = !{ptr @pcan_usb_chip_const, !55, !"pcan_usb_chip_const", i1 false, i1 false}
!55 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1112, i32 41}
!56 = !{ptr @pcan_usb_chip_data_const, !57, !"pcan_usb_chip_data_const", i1 false, i1 false}
!57 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1124, i32 41}
!58 = !{ptr @pcan_usb_pro_fd_const, !59, !"pcan_usb_pro_fd_const", i1 false, i1 false}
!59 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1186, i32 41}
!60 = !{ptr @pcan_usb_pro_fd_data_const, !61, !"pcan_usb_pro_fd_data_const", i1 false, i1 false}
!61 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1198, i32 41}
!62 = !{ptr @pcan_usb_x6_const, !63, !"pcan_usb_x6_const", i1 false, i1 false}
!63 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1260, i32 41}
!64 = !{ptr @pcan_usb_x6_data_const, !65, !"pcan_usb_x6_data_const", i1 false, i1 false}
!65 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_fd.c", i32 1272, i32 41}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!"auto-init"}
