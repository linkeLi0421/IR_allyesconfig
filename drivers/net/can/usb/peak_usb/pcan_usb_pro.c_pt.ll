; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/peak_usb/pcan_usb_pro.c_pt.bc'
source_filename = "../drivers/net/can/usb/peak_usb/pcan_usb_pro.c"
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.pcan_usb_pro_interface = type { [2 x ptr], %struct.peak_time_ref, i32, i32 }
%struct.peak_time_ref = type { i64, i64, i32, i32, i64, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.pcan_usb_pro_blinfo = type { i32, [4 x i8], i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.pcan_usb_pro_device = type { %struct.peak_usb_device, ptr, i32 }
%struct.pcan_usb_pro_msg = type { ptr, i32, i32, %union.anon.148 }
%union.anon.148 = type { ptr }
%struct.pcan_usb_pro_busact = type { i8, i8, i16 }
%struct.pcan_usb_pro_rxmsg = type { i8, i8, i8, i8, i32, i32, [8 x i8] }
%struct.can_frame = type { i32, %union.anon.149, i8, i8, i8, [8 x i8] }
%union.anon.149 = type { i8 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.pcan_usb_pro_rxstatus = type { i8, i8, i16, i32, i32 }
%struct.pcan_usb_pro_rxts = type { i8, [3 x i8], [2 x i32] }
%struct.__va_list = type { ptr }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unable to request usb[type=%d value=%d] err=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCAN-USB Pro\00", [19 x i8] zeroinitializer }, align 32
@pcan_usb_pro_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pcan_usb_pro\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcan_usb_pro_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcan_usb_pro_set_phys_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@pcan_usb_pro = dso_local constant { %struct.peak_usb_adapter, [40 x i8] } { %struct.peak_usb_adapter { ptr @.str.1, i32 13, i32 14, %struct.can_clock { i32 56000000 }, ptr @pcan_usb_pro_const, ptr null, i32 2, ptr @pcan_usb_pro_ethtool_ops, ptr @pcan_usb_pro_probe, ptr @pcan_usb_pro_init, ptr @pcan_usb_pro_exit, ptr @pcan_usb_pro_free, ptr null, ptr null, ptr @pcan_usb_pro_set_bittiming, ptr null, ptr @pcan_usb_pro_set_bus, ptr @pcan_usb_pro_get_device_id, ptr @pcan_usb_pro_decode_buf, ptr @pcan_usb_pro_encode_msg, ptr @pcan_usb_pro_start, ptr @pcan_usb_pro_stop, ptr @pcan_usb_pro_restart_async, ptr null, i8 -126, [2 x i8] c"\02\03", i8 32, i8 0, i32 1, i32 1024, i32 64, i32 708 }, [40 x i8] zeroinitializer }, align 32
@pcan_msg_add_rec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: %s(): unknown data type %02Xh (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcan_msg_add_rec\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/can/usb/peak_usb/pcan_usb_pro.c\00", [52 x i8] zeroinitializer }, align 32
@pcan_msg_add_rec._entry_ptr = internal global ptr @pcan_msg_add_rec._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peak_usb\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sending command failure: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pcan_usb_pro_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 882, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to read %s firmware info (err %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcan_usb_pro_init\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcan_usb_pro_init._entry_ptr = internal global ptr @pcan_usb_pro_init._entry, section ".printk_index", align 4
@pcan_usb_pro_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.4, i32 892, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unable to read %s bootloader info (err %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@pcan_usb_pro_init._entry_ptr.13 = internal global ptr @pcan_usb_pro_init._entry.11, section ".printk_index", align 4
@pcan_usb_pro_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.4, i32 905, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"PEAK-System %s hwrev %u serial %08X.%08X (%u channels)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcan_usb_pro_init._entry_ptr.17 = internal global ptr @pcan_usb_pro_init._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting ccbt=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"waiting rsp error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"got abnormal too small rsp (len=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"got unprocessed record in msg\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rcvd rsp msg\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"got unwanted rsp %xh: ignored\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"got rsp %xh but on chan%u: ignored\0A\00", [60 x i8] zeroinitializer }, align 32
@pcan_usb_pro_sizeof_rec = internal constant { <{ [134 x i16], [122 x i16] }>, [128 x i8] } { <{ [134 x i16], [122 x i16] }> <{ [134 x i16] [i16 0, i16 0, i16 8, i16 0, i16 4, i16 4, i16 0, i16 0, i16 0, i16 0, i16 4, i16 0, i16 0, i16 0, i16 0, i16 0, i16 4, i16 0, i16 8, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 8, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16, i16 12, i16 8, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 20, i16 16, i16 12, i16 12, i16 12, i16 12], [122 x i16] zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad msg hdr len %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"got unsupported rec in usb msg:\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"got frag rec: should inc usb rx buf size\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unhandled rec type 0x%02x (%d): ignored\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"received msg\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 129, i64 130, i64 131]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 8, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 4, i64 5, i64 10, i64 16, i64 18, i64 28, i64 65, i64 66, i64 67]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 340, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1043, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"pcan_usb_pro_const\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1030, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant [25 x i8] c"pcan_usb_pro_ethtool_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1023, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"pcan_usb_pro\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1042, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 181, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 219, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 880, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 890, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 901, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 458, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 254, i32 28 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 264, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 280, i32 9 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 281, i32 19 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 289, i32 9 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 296, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant [24 x i8] c"pcan_usb_pro_sizeof_rec\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 72, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 696, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 709, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 717, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 744, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [47 x i8] c"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 754, i32 17 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @pcan_msg_add_rec._entry, ptr @pcan_msg_add_rec._entry_ptr, ptr @pcan_usb_pro_init._entry, ptr @pcan_usb_pro_init._entry.11, ptr @pcan_usb_pro_init._entry.14, ptr @pcan_usb_pro_init._entry_ptr, ptr @pcan_usb_pro_init._entry_ptr.13, ptr @pcan_usb_pro_init._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @pcan_usb_pro_const, ptr @pcan_usb_pro_ethtool_ops, ptr @pcan_usb_pro, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @pcan_usb_pro_sizeof_rec, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_pro_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_pro_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_pro to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_msg_add_rec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_pro_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_pro_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_pro_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_pro_sizeof_rec to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcan_usb_pro_send_req(ptr nocapture noundef readonly %dev, i32 noundef %req_id, i32 noundef %req_value, ptr noundef %req_addr, i32 noundef %req_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %req_id)
  %cond = icmp eq i32 %req_id, 2
  %udev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %shl.i, -2147483648
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or4 = or i32 %shl.i, -2147483520
  %6 = call ptr @memset(ptr %req_addr, i32 0, i32 %req_size)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %req_type.0 = phi i8 [ 67, %sw.bb ], [ -61, %sw.default ]
  %p.0 = phi i32 [ %or, %sw.bb ], [ %or4, %sw.default ]
  %udev7 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %udev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev7, align 4
  %conv8 = trunc i32 %req_id to i8
  %conv9 = trunc i32 %req_value to i16
  %conv10 = trunc i32 %req_size to i16
  %call11 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %p.0, i8 noundef zeroext %conv8, i8 noundef zeroext %req_type.0, i16 noundef zeroext %conv9, i16 noundef zeroext 0, ptr noundef %req_addr, i16 noundef zeroext %conv10, i32 noundef 10000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then13, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %req_id, i32 noundef %req_value, i32 noundef %call11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcan_usb_pro_restart_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @peak_usb_async_complete(ptr noundef %urb) #8
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @peak_usb_restart_complete(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_async_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_restart_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcan_usb_pro_probe(ptr nocapture noundef readonly %intf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 8
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp9.not = icmp eq i8 %3, 0
  br i1 %cmp9.not, label %entry.cleanup4_crit_edge, label %for.body.lr.ph

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup4

for.body.lr.ph:                                   ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %endpoint, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %bEndpointAddress = getelementptr %struct.usb_host_endpoint, ptr %5, i32 %i.010, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %for.body.cleanup4_crit_edge [
    i8 1, label %for.body.for.inc.critedge_crit_edge
    i8 -127, label %for.body.for.inc.critedge_crit_edge12
    i8 2, label %for.body.for.inc.critedge_crit_edge13
    i8 3, label %for.body.for.inc.critedge_crit_edge14
    i8 -126, label %for.body.for.inc.critedge_crit_edge15
    i8 -125, label %for.body.for.inc.critedge_crit_edge16
  ]

for.body.for.inc.critedge_crit_edge16:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

for.body.for.inc.critedge_crit_edge15:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

for.body.for.inc.critedge_crit_edge14:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

for.body.for.inc.critedge_crit_edge13:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

for.body.for.inc.critedge_crit_edge12:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

for.body.for.inc.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

for.body.cleanup4_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup4

for.inc.critedge:                                 ; preds = %for.body.for.inc.critedge_crit_edge, %for.body.for.inc.critedge_crit_edge12, %for.body.for.inc.critedge_crit_edge13, %for.body.for.inc.critedge_crit_edge14, %for.body.for.inc.critedge_crit_edge15, %for.body.for.inc.critedge_crit_edge16
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.critedge.cleanup4_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.critedge.cleanup4_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup4

cleanup4:                                         ; preds = %for.inc.critedge.cleanup4_crit_edge, %for.body.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup4_crit_edge ], [ 0, %for.inc.critedge.cleanup4_crit_edge ], [ -19, %for.body.cleanup4_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_pro_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prev_siblings = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %prev_siblings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev_siblings, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 56) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 16) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i73 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 28) #12
  %tobool3.not = icmp eq ptr %call7.i.i, null
  %tobool4.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  %tobool6.not = icmp eq ptr %call7.i73, null
  %or.cond72 = select i1 %or.cond, i1 true, i1 %tobool6.not
  br i1 %or.cond72, label %if.then.err_out_crit_edge, label %if.end

if.then.err_out_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end:                                           ; preds = %if.then
  %cm_ignore_count = getelementptr inbounds %struct.pcan_usb_pro_interface, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %cm_ignore_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %cm_ignore_count, align 8
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end12_crit_edge, label %if.end.i

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i:                                         ; preds = %if.end
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or4.i = or i32 %shl.i.i, -2147483520
  %12 = call ptr @memset(ptr %call7.i, i32 0, i32 16)
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -61, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 16, i32 noundef 10000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i = icmp slt i32 %call11.i, 0
  br i1 %cmp.i, label %do.end, label %if.end.i.if.end12_crit_edge

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %13 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 1, i32 noundef %call11.i) #11
  %15 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 133, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %call11.i) #11
  br label %err_out

if.end12:                                         ; preds = %if.end.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 4
  %and.i75 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %tobool.not.i76 = icmp eq i32 %and.i75, 0
  br i1 %tobool.not.i76, label %if.end12.if.end22_crit_edge, label %if.end.i79

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end.i79:                                       ; preds = %if.end12
  %udev.i77 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %21 = ptrtoint ptr %udev.i77 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev.i77, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i78 = shl i32 %24, 8
  %or4.i80 = or i32 %shl.i.i78, -2147483520
  %25 = call ptr @memset(ptr %call7.i73, i32 0, i32 28)
  %call11.i82 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or4.i80, i8 noundef zeroext 0, i8 noundef zeroext -61, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i73, i16 noundef zeroext 28, i32 noundef 10000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i82)
  %cmp.i83 = icmp slt i32 %call11.i82, 0
  br i1 %cmp.i83, label %do.end18, label %if.end.i79.if.end22_crit_edge

if.end.i79.if.end22_crit_edge:                    ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end18:                                         ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i84 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %26 = ptrtoint ptr %netdev.i84 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev.i84, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef %call11.i82) #11
  %28 = ptrtoint ptr %netdev.i84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev.i84, align 4
  %parent21 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 133, i32 1
  %30 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef %call11.i82) #11
  br label %err_out

if.end22:                                         ; preds = %if.end.i79.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %call23 = tail call fastcc i32 @pcan_usb_pro_drv_loaded(ptr noundef %dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end29, label %if.end22.err_out_crit_edge

if.end22.err_out_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %netdev30 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %32 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev30, align 4
  %parent32 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 133, i32 1
  %34 = ptrtoint ptr %parent32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent32, align 8
  %hw_rev = getelementptr inbounds %struct.pcan_usb_pro_blinfo, ptr %call7.i73, i32 0, i32 9
  %36 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_rev, align 8
  %serial_num_hi = getelementptr inbounds %struct.pcan_usb_pro_blinfo, ptr %call7.i73, i32 0, i32 6
  %38 = ptrtoint ptr %serial_num_hi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %serial_num_hi, align 4
  %serial_num_lo = getelementptr inbounds %struct.pcan_usb_pro_blinfo, ptr %call7.i73, i32 0, i32 7
  %40 = ptrtoint ptr %serial_num_lo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %serial_num_lo, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 2) #11
  br label %if.end35

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %usb_if.i = getelementptr inbounds %struct.pcan_usb_pro_device, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %usb_if.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_if.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %do.end29
  %usb_if.0 = phi ptr [ %43, %if.else ], [ %call7.i.i, %do.end29 ]
  %fi.0 = phi ptr [ null, %if.else ], [ %call7.i, %do.end29 ]
  %bi.0 = phi ptr [ null, %if.else ], [ %call7.i73, %do.end29 ]
  %usb_if36 = getelementptr inbounds %struct.pcan_usb_pro_device, ptr %dev, i32 0, i32 1
  %44 = ptrtoint ptr %usb_if36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %usb_if.0, ptr %usb_if36, align 4
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %45 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ctrl_idx, align 4
  %arrayidx = getelementptr [2 x ptr], ptr %usb_if.0, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev, ptr %arrayidx, align 4
  %call38 = tail call fastcc i32 @pcan_usb_pro_set_led(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 1)
  br label %cleanup

err_out:                                          ; preds = %if.end22.err_out_crit_edge, %do.end18, %do.end, %if.then.err_out_crit_edge
  %err.0 = phi i32 [ %call11.i, %do.end ], [ %call11.i82, %do.end18 ], [ %call23, %if.end22.err_out_crit_edge ], [ -12, %if.then.err_out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i73) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end35
  %call7.i.sink = phi ptr [ %call7.i, %err_out ], [ %bi.0, %if.end35 ]
  %call7.i.i.sink = phi ptr [ %call7.i.i, %err_out ], [ %fi.0, %if.end35 ]
  %retval.0 = phi i32 [ %err.0, %err_out ], [ 0, %if.end35 ]
  tail call void @kfree(ptr noundef %call7.i.sink) #8
  tail call void @kfree(ptr noundef %call7.i.i.sink) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcan_usb_pro_exit(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pcan_usb_pro_set_bus(ptr noundef %dev, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %usb_if = getelementptr inbounds %struct.pcan_usb_pro_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_if, align 4
  %dev_opened_count = getelementptr inbounds %struct.pcan_usb_pro_interface, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev_opened_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_opened_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call fastcc i32 @pcan_usb_pro_set_ts(ptr noundef %dev, i16 noundef zeroext 0)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2.if.end6_crit_edge
  %call7 = tail call fastcc i32 @pcan_usb_pro_drv_loaded(ptr noundef %dev, i32 noundef 0)
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcan_usb_pro_free(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prev_siblings = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %prev_siblings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev_siblings, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %next_siblings = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %next_siblings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_siblings, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %usb_if.i = getelementptr inbounds %struct.pcan_usb_pro_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %usb_if.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_if.i, align 4
  tail call void @kfree(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_pro_set_bittiming(ptr nocapture noundef %dev, ptr nocapture noundef readonly %bt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrlmode, align 4
  %and = shl i32 %1, 21
  %2 = and i32 %and, 8388608
  %sjw = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 6
  %3 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sjw, align 4
  %sub = shl i32 %4, 24
  %shl = add i32 %sub, -16777216
  %or = or i32 %shl, %2
  %phase_seg2 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 5
  %5 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phase_seg2, align 4
  %sub1 = shl i32 %6, 20
  %shl2 = add i32 %sub1, -1048576
  %or3 = or i32 %or, %shl2
  %prop_seg = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 3
  %7 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 4
  %9 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %10, %8
  %sub4 = shl i32 %add, 16
  %shl5 = add i32 %sub4, -65536
  %brp = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 7
  %11 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brp, align 4
  %sub7 = add i32 %12, -1
  %or6 = or i32 %or3, %sub7
  %or8 = or i32 %or6, %shl5
  %netdev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.18, i32 noundef %or8) #11
  %call = tail call fastcc i32 @pcan_usb_pro_set_bitrate(ptr noundef %dev, i32 noundef %or8)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_pro_set_bus(ptr nocapture noundef %dev, i8 noundef zeroext %onoff) #0 align 64 {
entry:
  %actual_length.i = alloca i32, align 4
  %um = alloca %struct.pcan_usb_pro_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %um) #8
  %0 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %onoff)
  %tobool.not = icmp eq i8 %onoff, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cached_ccbt = getelementptr inbounds %struct.pcan_usb_pro_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %cached_ccbt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cached_ccbt, align 4
  %call = tail call fastcc i32 @pcan_usb_pro_set_bitrate(ptr noundef %dev, i32 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmd_buf = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_buf, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %2, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %1, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %0, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %10 = ptrtoint ptr %um to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i.i, ptr %um, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %if.end.pcan_msg_init_empty.exit_crit_edge, label %if.then.i

if.end.pcan_msg_init_empty.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_msg_init_empty.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %1, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %6, align 4
  br label %pcan_msg_init_empty.exit

pcan_msg_init_empty.exit:                         ; preds = %if.then.i, %if.end.pcan_msg_init_empty.exit_crit_edge
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctrl_idx, align 4
  %conv = zext i8 %onoff to i32
  call void (ptr, i32, ...) @pcan_msg_add_rec(ptr noundef nonnull %um, i32 noundef 4, i32 noundef %14, i32 noundef %conv)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #8
  %15 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !70
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i9 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i9, label %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge, label %if.end.i

pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge: ; preds = %pcan_msg_init_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_send_cmd.exit

if.end.i:                                         ; preds = %pcan_msg_init_empty.exit
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %19, i32 noundef %or.i, ptr noundef %23, i32 noundef %25, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge, label %if.then4.i

if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_send_cmd.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %26 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.6, i32 noundef %call2.i) #11
  br label %pcan_usb_pro_send_cmd.exit

pcan_usb_pro_send_cmd.exit:                       ; preds = %if.then4.i, %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge, %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge ], [ %call2.i, %if.then4.i ], [ 0, %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %um) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_pro_get_device_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %device_id) #0 align 64 {
entry:
  %actual_length.i18 = alloca i32, align 4
  %actual_length.i = alloca i32, align 4
  %um = alloca %struct.pcan_usb_pro_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %um) #8
  %0 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 3
  %cmd_buf = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_buf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %0, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %8 = ptrtoint ptr %um to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i.i, ptr %um, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.pcan_msg_init_empty.exit_crit_edge, label %if.then.i

entry.pcan_msg_init_empty.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_msg_init_empty.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %1, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  br label %pcan_msg_init_empty.exit

pcan_msg_init_empty.exit:                         ; preds = %if.then.i, %entry.pcan_msg_init_empty.exit_crit_edge
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %11 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctrl_idx, align 4
  call void (ptr, i32, ...) @pcan_msg_add_rec(ptr noundef nonnull %um, i32 noundef 18, i32 noundef %12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #8
  %13 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !70
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i17 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i17, label %pcan_msg_init_empty.exit.if.end_crit_edge, label %if.end.i

pcan_msg_init_empty.exit.if.end_crit_edge:        ; preds = %pcan_msg_init_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %pcan_msg_init_empty.exit
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i = shl i32 %19, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %17, i32 noundef %or.i, ptr noundef %21, i32 noundef %23, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %pcan_usb_pro_send_cmd.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pcan_usb_pro_send_cmd.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef %call2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %pcan_msg_init_empty.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i18) #8
  %26 = ptrtoint ptr %actual_length.i18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %actual_length.i18, align 4, !annotation !70
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state.i, align 4
  %and.i20 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %if.end.pcan_usb_pro_wait_rsp.exit.thread_crit_edge, label %if.end.i25

if.end.pcan_usb_pro_wait_rsp.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_wait_rsp.exit.thread

if.end.i25:                                       ; preds = %if.end
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %arrayidx.i = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %30, i32 5
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx2.i, align 1
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %30, align 4
  %udev.i23 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %conv31.i = zext i8 %32 to i32
  %netdev35.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp38.not.i = icmp eq i8 %34, -1
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc58.i.land.rhs.i_crit_edge, %if.end.i25
  %i.0114.i = phi i32 [ 0, %if.end.i25 ], [ %inc59.i, %for.inc58.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0114.i)
  %exitcond122.not.i = icmp eq i32 %i.0114.i, 2
  br i1 %exitcond122.not.i, label %land.rhs.i.pcan_usb_pro_wait_rsp.exit.thread32_crit_edge, label %for.body.i

land.rhs.i.pcan_usb_pro_wait_rsp.exit.thread32_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_wait_rsp.exit.thread32

for.body.i:                                       ; preds = %land.rhs.i
  %38 = ptrtoint ptr %udev.i23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev.i23, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i26 = shl i32 %41, 8
  %or6.i = or i32 %shl.i.i26, -1069514624
  %call8.i = call i32 @usb_bulk_msg(ptr noundef %39, i32 noundef %or6.i, ptr noundef %30, i32 noundef %37, ptr noundef nonnull %actual_length.i18, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %netdev35.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev35.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str.19, i32 noundef %call8.i) #11
  br label %for.end60.i

if.end11.i:                                       ; preds = %for.body.i
  %44 = ptrtoint ptr %actual_length.i18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual_length.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp12.i = icmp eq i32 %45, 0
  br i1 %cmp12.i, label %if.end11.i.for.inc58.i_crit_edge, label %if.end14.i

if.end11.i.for.inc58.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc58.i

if.end14.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp15.i = icmp slt i32 %45, 4
  br i1 %cmp15.i, label %if.then16.i, label %pcan_msg_init.exit.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %netdev35.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev35.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.20, i32 noundef %45) #11
  br label %for.end60.i

pcan_msg_init.exit.i:                             ; preds = %if.end14.i
  %48 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp23110.not.i = icmp eq i32 %49, 0
  br i1 %cmp23110.not.i, label %for.inc58.thread.i, label %for.body24.preheader.i

for.inc58.thread.i:                               ; preds = %pcan_msg_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc59124.i = add nuw nsw i32 %i.0114.i, 1
  br label %for.end60.i

for.body24.preheader.i:                           ; preds = %pcan_msg_init.exit.i
  %50 = call i32 @llvm.bswap.i32(i32 %49) #8
  %umax.i = call i32 @llvm.umax.i32(i32 %50, i32 1) #8
  br label %for.body24.i

for.body24.i:                                     ; preds = %if.end51.i.for.body24.i_crit_edge, %for.body24.preheader.i
  %pc.0112.i = phi ptr [ %add.ptr.i, %if.end51.i.for.body24.i_crit_edge ], [ %arrayidx.i, %for.body24.preheader.i ]
  %r.0111.i = phi i32 [ %inc.i, %if.end51.i.for.body24.i_crit_edge ], [ 0, %for.body24.preheader.i ]
  %51 = ptrtoint ptr %pc.0112.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pc.0112.i, align 1
  %idxprom.i = zext i8 %52 to i32
  %arrayidx25.i = getelementptr [256 x i16], ptr @pcan_usb_pro_sizeof_rec, i32 0, i32 %idxprom.i
  %53 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx25.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool26.not.i = icmp eq i16 %54, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end30.i

if.then27.i:                                      ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %netdev35.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev35.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull @.str.21) #11
  %57 = ptrtoint ptr %actual_length.i18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %actual_length.i18, align 4
  call void @pcan_dump_mem(ptr noundef nonnull @.str.22, ptr noundef %30, i32 noundef %58) #8
  br label %for.inc58.i

if.end30.i:                                       ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %32)
  %cmp32.not.i = icmp eq i8 %52, %32
  br i1 %cmp32.not.i, label %if.else.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %netdev35.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev35.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.23, i32 noundef %idxprom.i) #11
  br label %if.end51.i

if.else.i:                                        ; preds = %if.end30.i
  br i1 %cmp38.not.i, label %if.else.i.pcan_usb_pro_wait_rsp.exit.thread_crit_edge, label %land.lhs.true.i

if.else.i.pcan_usb_pro_wait_rsp.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_wait_rsp.exit.thread

land.lhs.true.i:                                  ; preds = %if.else.i
  %channel.i = getelementptr inbounds %struct.pcan_usb_pro_busact, ptr %pc.0112.i, i32 0, i32 1
  %61 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %channel.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %34)
  %cmp42.not.i = icmp eq i8 %62, %34
  br i1 %cmp42.not.i, label %land.lhs.true.i.pcan_usb_pro_wait_rsp.exit.thread_crit_edge, label %if.then44.i

land.lhs.true.i.pcan_usb_pro_wait_rsp.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_wait_rsp.exit.thread

if.then44.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv40.i = zext i8 %62 to i32
  %63 = ptrtoint ptr %netdev35.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev35.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.24, i32 noundef %conv31.i, i32 noundef %conv40.i) #11
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then44.i, %if.then34.i
  %conv52.i = zext i16 %54 to i32
  %add.ptr.i = getelementptr i8, ptr %pc.0112.i, i32 %conv52.i
  %inc.i = add nuw i32 %r.0111.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end51.i.for.inc58.i_crit_edge, label %if.end51.i.for.body24.i_crit_edge

if.end51.i.for.body24.i_crit_edge:                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.i

if.end51.i.for.inc58.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc58.i

for.inc58.i:                                      ; preds = %if.end51.i.for.inc58.i_crit_edge, %if.then27.i, %if.end11.i.for.inc58.i_crit_edge
  %err.1.ph.i = phi i32 [ -74, %if.then27.i ], [ 0, %if.end11.i.for.inc58.i_crit_edge ], [ -74, %if.end51.i.for.inc58.i_crit_edge ]
  %inc59.i = add nuw nsw i32 %i.0114.i, 1
  br i1 %cmp12.i, label %for.inc58.i.land.rhs.i_crit_edge, label %for.inc58.i.for.end60.i_crit_edge

for.inc58.i.for.end60.i_crit_edge:                ; preds = %for.inc58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60.i

for.inc58.i.land.rhs.i_crit_edge:                 ; preds = %for.inc58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.end60.i:                                      ; preds = %for.inc58.i.for.end60.i_crit_edge, %for.inc58.thread.i, %if.then16.i, %if.then10.i
  %i.0106.i = phi i32 [ %i.0114.i, %if.then10.i ], [ %i.0114.i, %if.then16.i ], [ %inc59124.i, %for.inc58.thread.i ], [ %inc59.i, %for.inc58.i.for.end60.i_crit_edge ]
  %err.2.i = phi i32 [ %call8.i, %if.then10.i ], [ -74, %if.then16.i ], [ -74, %for.inc58.thread.i ], [ %err.1.ph.i, %for.inc58.i.for.end60.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0106.i)
  %cmp61.i = icmp sgt i32 %i.0106.i, 1
  br i1 %cmp61.i, label %for.end60.i.pcan_usb_pro_wait_rsp.exit.thread32_crit_edge, label %pcan_usb_pro_wait_rsp.exit

for.end60.i.pcan_usb_pro_wait_rsp.exit.thread32_crit_edge: ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_wait_rsp.exit.thread32

pcan_usb_pro_wait_rsp.exit.thread32:              ; preds = %for.end60.i.pcan_usb_pro_wait_rsp.exit.thread32_crit_edge, %land.rhs.i.pcan_usb_pro_wait_rsp.exit.thread32_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i18) #8
  br label %cleanup

pcan_usb_pro_wait_rsp.exit.thread:                ; preds = %land.lhs.true.i.pcan_usb_pro_wait_rsp.exit.thread_crit_edge, %if.else.i.pcan_usb_pro_wait_rsp.exit.thread_crit_edge, %if.end.pcan_usb_pro_wait_rsp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i18) #8
  br label %if.end6

pcan_usb_pro_wait_rsp.exit:                       ; preds = %for.end60.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool4.not = icmp eq i32 %err.2.i, 0
  br i1 %tobool4.not, label %pcan_usb_pro_wait_rsp.exit.if.end6_crit_edge, label %pcan_usb_pro_wait_rsp.exit.cleanup_crit_edge

pcan_usb_pro_wait_rsp.exit.cleanup_crit_edge:     ; preds = %pcan_usb_pro_wait_rsp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pcan_usb_pro_wait_rsp.exit.if.end6_crit_edge:     ; preds = %pcan_usb_pro_wait_rsp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %pcan_usb_pro_wait_rsp.exit.if.end6_crit_edge, %pcan_usb_pro_wait_rsp.exit.thread
  %serial_num = getelementptr i8, ptr %4, i32 8
  %65 = ptrtoint ptr %serial_num to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %serial_num, align 1
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %device_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %pcan_usb_pro_wait_rsp.exit.cleanup_crit_edge, %pcan_usb_pro_wait_rsp.exit.thread32, %pcan_usb_pro_send_cmd.exit
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call2.i, %pcan_usb_pro_send_cmd.exit ], [ %err.2.i, %pcan_usb_pro_wait_rsp.exit.cleanup_crit_edge ], [ -34, %pcan_usb_pro_wait_rsp.exit.thread32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %um) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_pro_decode_buf(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  %can_frame.i75 = alloca ptr, align 4
  %can_frame.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_if.i = getelementptr inbounds %struct.pcan_usb_pro_device, ptr %dev, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i = icmp slt i32 %7, 4
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %pcan_msg_init.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

pcan_msg_init.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %pcan_msg_init.exit.if.then_crit_edge, label %if.end

pcan_msg_init.exit.if.then_crit_edge:             ; preds = %pcan_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %pcan_msg_init.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %7) #11
  br label %cleanup39

if.end:                                           ; preds = %pcan_msg_init.exit
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not109 = icmp eq i16 %9, 0
  br i1 %cmp.not109, label %if.end.cleanup39_crit_edge, label %for.body.lr.ph

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

for.body.lr.ph:                                   ; preds = %if.end
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %cm_ignore_count.i = getelementptr inbounds %struct.pcan_usb_pro_interface, ptr %1, i32 0, i32 2
  %time_ref.i90 = getelementptr inbounds %struct.pcan_usb_pro_interface, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rec_cnt.0114 = phi i16 [ %10, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %rec_ptr.0110 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %add.ptr11, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %rec_ptr.0110 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rec_ptr.0110, align 1
  %idxprom = zext i8 %12 to i32
  %arrayidx = getelementptr [256 x i16], ptr @pcan_usb_pro_sizeof_rec, i32 0, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool7.not = icmp eq i16 %14, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.27) #11
  br label %if.then35

if.end9:                                          ; preds = %for.body
  %conv10 = zext i16 %14 to i32
  %add.ptr11 = getelementptr i8, ptr %rec_ptr.0110, i32 %conv10
  %cmp12 = icmp ugt ptr %add.ptr11, %add.ptr
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #11
  br label %if.then35

if.end15:                                         ; preds = %if.end9
  %15 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %12, label %sw.default [
    i8 -128, label %if.end15.sw.bb_crit_edge
    i8 -127, label %if.end15.sw.bb_crit_edge115
    i8 -126, label %if.end15.sw.bb_crit_edge116
    i8 -125, label %if.end15.sw.bb_crit_edge117
    i8 -124, label %sw.bb22
    i8 -123, label %sw.bb28
  ]

if.end15.sw.bb_crit_edge117:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end15.sw.bb_crit_edge116:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end15.sw.bb_crit_edge115:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge115, %if.end15.sw.bb_crit_edge116, %if.end15.sw.bb_crit_edge117
  %len.i = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, ptr %rec_ptr.0110, i32 0, i32 3
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len.i, align 1
  %18 = lshr i8 %17, 4
  %19 = zext i8 %18 to i32
  %arrayidx.i = getelementptr [2 x ptr], ptr %1, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %netdev2.i = getelementptr inbounds %struct.peak_usb_device, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %can_frame.i) #8
  %24 = ptrtoint ptr %can_frame.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %can_frame.i, align 4, !annotation !70
  %call.i = call ptr @alloc_can_skb(ptr noundef %23, ptr noundef nonnull %can_frame.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %pcan_usb_pro_handle_canmsg.exit.thread, label %if.end.i73

pcan_usb_pro_handle_canmsg.exit.thread:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %can_frame.i) #8
  br label %if.then35

if.end.i73:                                       ; preds = %sw.bb
  %id.i = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, ptr %rec_ptr.0110, i32 0, i32 5
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %id.i, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26) #8
  %28 = ptrtoint ptr %can_frame.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %can_frame.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %29, align 8
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %len.i, align 1
  %33 = and i8 %32, 15
  %34 = load ptr, ptr %can_frame.i, align 4
  %35 = getelementptr inbounds %struct.can_frame, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %33, ptr %35, align 4
  %flags.i = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, ptr %rec_ptr.0110, i32 0, i32 2
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags.i, align 1
  %39 = and i8 %38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool9.not.i = icmp eq i8 %39, 0
  br i1 %tobool9.not.i, label %if.end.i73.if.end12.i_crit_edge, label %if.then10.i

if.end.i73.if.end12.i_crit_edge:                  ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %34, align 8
  %or.i = or i32 %41, -2147483648
  store i32 %or.i, ptr %34, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end.i73.if.end12.i_crit_edge
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags.i, align 1
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool16.not.i = icmp eq i8 %44, 0
  %45 = ptrtoint ptr %can_frame.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %can_frame.i, align 4
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %or19.i = or i32 %48, 1073741824
  store i32 %or19.i, ptr %46, align 8
  br label %pcan_usb_pro_handle_canmsg.exit

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.can_frame, ptr %46, i32 0, i32 5
  %data20.i = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, ptr %rec_ptr.0110, i32 0, i32 6
  %49 = getelementptr inbounds %struct.can_frame, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv22.i = zext i8 %51 to i32
  %52 = call ptr @memcpy(ptr %data.i, ptr %data20.i, i32 %conv22.i)
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 2
  %53 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %54, %conv22.i
  store i32 %add.i, ptr %rx_bytes.i, align 8
  br label %pcan_usb_pro_handle_canmsg.exit

pcan_usb_pro_handle_canmsg.exit:                  ; preds = %if.else.i, %if.then17.i
  %stats25.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36
  %55 = ptrtoint ptr %stats25.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stats25.i, align 8
  %inc.i = add i32 %56, 1
  store i32 %inc.i, ptr %stats25.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %57 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %58, i32 0, i32 7
  %ts32.i = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, ptr %rec_ptr.0110, i32 0, i32 4
  %59 = ptrtoint ptr %ts32.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %ts32.i, align 1
  %61 = call i32 @llvm.bswap.i32(i32 %60) #8
  call void @peak_usb_get_ts_time(ptr noundef %time_ref.i90, i32 noundef %61, ptr noundef %hwtstamps.i.i) #8
  %call27.i = call i32 @netif_rx(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %can_frame.i) #8
  br label %for.inc

sw.bb22:                                          ; preds = %if.end15
  %status.i = getelementptr inbounds %struct.pcan_usb_pro_rxstatus, ptr %rec_ptr.0110, i32 0, i32 2
  %62 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %status.i, align 1
  %64 = call i16 @llvm.bswap.i16(i16 %63) #8
  %channel.i = getelementptr inbounds %struct.pcan_usb_pro_rxstatus, ptr %rec_ptr.0110, i32 0, i32 1
  %65 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %channel.i, align 1
  %67 = lshr i8 %66, 4
  %68 = zext i8 %67 to i32
  %arrayidx.i76 = getelementptr [2 x ptr], ptr %1, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i76, align 4
  %netdev2.i77 = getelementptr inbounds %struct.peak_usb_device, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %netdev2.i77 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %netdev2.i77, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %can_frame.i75) #8
  %73 = ptrtoint ptr %can_frame.i75 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 -1 to ptr), ptr %can_frame.i75, align 4, !annotation !70
  %state.i = getelementptr inbounds %struct.can_priv, ptr %70, i32 0, i32 21
  %74 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp.i78 = icmp eq i32 %75, 3
  br i1 %cmp.i78, label %sw.bb22.pcan_usb_pro_handle_error.exit.thread_crit_edge, label %if.end.i80

sw.bb22.pcan_usb_pro_handle_error.exit.thread_crit_edge: ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_handle_error.exit.thread

if.end.i80:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not.i79 = icmp eq i16 %63, 0
  br i1 %tobool.not.i79, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %state.i, align 4
  br label %pcan_usb_pro_handle_error.exit.thread

if.end7.i:                                        ; preds = %if.end.i80
  %conv8.i = zext i16 %64 to i32
  %and9.i = and i32 %conv8.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %spec.select.i = select i1 %tobool10.not.i, i32 0, i32 6
  %and14.i = and i32 %conv8.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else.i81, label %if.end7.i.if.end73.i_crit_edge

if.end7.i.if.end73.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.else.i81:                                      ; preds = %if.end7.i
  %and18.i = and i32 %conv8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else.i81.if.end67.i_crit_edge, label %if.then20.i

if.else.i81.if.end67.i_crit_edge:                 ; preds = %if.else.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

if.then20.i:                                      ; preds = %if.else.i81
  %err_frm.i = getelementptr inbounds %struct.pcan_usb_pro_rxstatus, ptr %rec_ptr.0110, i32 0, i32 4
  %77 = ptrtoint ptr %err_frm.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %err_frm.i, align 1
  %79 = call i32 @llvm.bswap.i32(i32 %78) #8
  %and21.i = lshr i32 %79, 16
  %shr22.i = and i32 %and21.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %shr22.i)
  %cmp26.i = icmp ugt i32 %shr22.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %shr22.i)
  %cmp32.i = icmp ugt i32 %shr22.i, 96
  %spec.select184.i = select i1 %cmp32.i, i8 4, i8 0
  %err_mask.0.i = select i1 %cmp26.i, i8 16, i8 %spec.select184.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp40.i = icmp slt i32 %79, 0
  %80 = or i8 %err_mask.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1627389951, i32 %79)
  %cmp47.i = icmp ugt i32 %79, 1627389951
  %81 = or i8 %err_mask.0.i, 8
  %spec.select185.i = select i1 %cmp47.i, i8 %81, i8 %err_mask.0.i
  %err_mask.1.i = select i1 %cmp40.i, i8 %80, i8 %spec.select185.i
  %conv55.i = zext i8 %err_mask.1.i to i32
  %and56.i = and i32 %conv55.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.else59.i, label %if.then20.i.if.end67.i_crit_edge

if.then20.i.if.end67.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

if.else59.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  %and61.i = and i32 %conv55.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  %spec.select186.i = select i1 %tobool62.not.i, i32 %spec.select.i, i32 2
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else59.i, %if.then20.i.if.end67.i_crit_edge, %if.else.i81.if.end67.i_crit_edge
  %new_state.2.i = phi i32 [ %spec.select.i, %if.else.i81.if.end67.i_crit_edge ], [ 1, %if.then20.i.if.end67.i_crit_edge ], [ %spec.select186.i, %if.else59.i ]
  %err_mask.2.i = phi i8 [ 0, %if.else.i81.if.end67.i_crit_edge ], [ %err_mask.1.i, %if.then20.i.if.end67.i_crit_edge ], [ %err_mask.1.i, %if.else59.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %new_state.2.i)
  %cmp70.i = icmp eq i32 %75, %new_state.2.i
  br i1 %cmp70.i, label %if.end67.i.pcan_usb_pro_handle_error.exit.thread_crit_edge, label %if.end67.i.if.end73.i_crit_edge

if.end67.i.if.end73.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.end67.i.pcan_usb_pro_handle_error.exit.thread_crit_edge: ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_handle_error.exit.thread

if.end73.i:                                       ; preds = %if.end67.i.if.end73.i_crit_edge, %if.end7.i.if.end73.i_crit_edge
  %err_mask.2191.i = phi i8 [ %err_mask.2.i, %if.end67.i.if.end73.i_crit_edge ], [ 0, %if.end7.i.if.end73.i_crit_edge ]
  %new_state.2190.i = phi i32 [ %new_state.2.i, %if.end67.i.if.end73.i_crit_edge ], [ 3, %if.end7.i.if.end73.i_crit_edge ]
  %call.i82 = call ptr @alloc_can_err_skb(ptr noundef %72, ptr noundef nonnull %can_frame.i75) #8
  %tobool74.not.i = icmp eq ptr %call.i82, null
  br i1 %tobool74.not.i, label %pcan_usb_pro_handle_error.exit, label %if.end76.i

if.end76.i:                                       ; preds = %if.end73.i
  %82 = zext i32 %new_state.2190.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %new_state.2190.i, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb79.i
    i32 1, label %sw.bb90.i
    i32 0, label %if.end76.i.sw.epilog.i_crit_edge
  ]

if.end76.i.sw.epilog.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %can_frame.i75 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %can_frame.i75, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 8
  %or77.i = or i32 %86, 64
  store i32 %or77.i, ptr %84, align 8
  %bus_off.i = getelementptr inbounds %struct.can_priv, ptr %70, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %bus_off.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bus_off.i, align 4
  %inc.i83 = add i32 %88, 1
  store i32 %inc.i83, ptr %bus_off.i, align 4
  call void @can_bus_off(ptr noundef %72) #8
  br label %sw.epilog.i

sw.bb79.i:                                        ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %can_frame.i75 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %can_frame.i75, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %or81.i = or i32 %92, 4
  store i32 %or81.i, ptr %90, align 8
  %93 = load ptr, ptr %can_frame.i75, align 4
  %arrayidx83.i = getelementptr %struct.can_frame, ptr %93, i32 0, i32 5, i32 1
  %94 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx83.i, align 1
  %or85183.i = or i8 %95, %err_mask.2191.i
  store i8 %or85183.i, ptr %arrayidx83.i, align 1
  %error_passive.i = getelementptr inbounds %struct.can_priv, ptr %70, i32 0, i32 1, i32 2
  %96 = ptrtoint ptr %error_passive.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %error_passive.i, align 4
  %inc89.i = add i32 %97, 1
  store i32 %inc89.i, ptr %error_passive.i, align 4
  br label %sw.epilog.i

sw.bb90.i:                                        ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %can_frame.i75 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %can_frame.i75, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %or92.i = or i32 %101, 4
  store i32 %or92.i, ptr %99, align 8
  %102 = load ptr, ptr %can_frame.i75, align 4
  %arrayidx95.i = getelementptr %struct.can_frame, ptr %102, i32 0, i32 5, i32 1
  %103 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx95.i, align 1
  %or97182.i = or i8 %104, %err_mask.2191.i
  store i8 %or97182.i, ptr %arrayidx95.i, align 1
  %error_warning.i = getelementptr inbounds %struct.can_priv, ptr %70, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %error_warning.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %error_warning.i, align 4
  %inc101.i = add i32 %106, 1
  store i32 %inc101.i, ptr %error_warning.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end76.i
  %and103.i = and i32 %conv8.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %sw.default.i.if.end116.i_crit_edge, label %if.then105.i

sw.default.i.if.end116.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.i

if.then105.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %can_frame.i75 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %can_frame.i75, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 8
  %or107.i = or i32 %110, 8
  store i32 %or107.i, ptr %108, align 8
  %111 = load ptr, ptr %can_frame.i75, align 4
  %arrayidx109.i = getelementptr %struct.can_frame, ptr %111, i32 0, i32 5, i32 2
  %112 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx109.i, align 2
  %114 = or i8 %113, 32
  store i8 %114, ptr %arrayidx109.i, align 2
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 36, i32 11
  %115 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_over_errors.i, align 4
  %inc113.i = add i32 %116, 1
  store i32 %inc113.i, ptr %rx_over_errors.i, align 4
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 36, i32 4
  %117 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_errors.i, align 8
  %inc115.i = add i32 %118, 1
  store i32 %inc115.i, ptr %rx_errors.i, align 8
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then105.i, %sw.default.i.if.end116.i_crit_edge
  %and118.i = and i32 %conv8.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %if.end116.i.sw.epilog.i_crit_edge, label %if.then120.i

if.end116.i.sw.epilog.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then120.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %can_frame.i75 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %can_frame.i75, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 8
  %or122.i = or i32 %122, 4
  store i32 %or122.i, ptr %120, align 8
  %123 = load ptr, ptr %can_frame.i75, align 4
  %arrayidx124.i = getelementptr %struct.can_frame, ptr %123, i32 0, i32 5, i32 1
  %124 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx124.i, align 1
  %126 = or i8 %125, 1
  store i8 %126, ptr %arrayidx124.i, align 1
  %rx_over_errors129.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 36, i32 11
  %127 = ptrtoint ptr %rx_over_errors129.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_over_errors129.i, align 4
  %inc130.i = add i32 %128, 1
  store i32 %inc130.i, ptr %rx_over_errors129.i, align 4
  %rx_errors132.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 36, i32 4
  %129 = ptrtoint ptr %rx_errors132.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rx_errors132.i, align 8
  %inc133.i = add i32 %130, 1
  store i32 %inc133.i, ptr %rx_errors132.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then120.i, %if.end116.i.sw.epilog.i_crit_edge, %sw.bb90.i, %sw.bb79.i, %sw.bb.i, %if.end76.i.sw.epilog.i_crit_edge
  %new_state.3.i = phi i32 [ %new_state.2190.i, %if.end76.i.sw.epilog.i_crit_edge ], [ 1, %sw.bb90.i ], [ 2, %sw.bb79.i ], [ 3, %sw.bb.i ], [ 0, %if.then120.i ], [ 0, %if.end116.i.sw.epilog.i_crit_edge ]
  %131 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %new_state.3.i, ptr %state.i, align 4
  %end.i.i.i84 = getelementptr inbounds %struct.sk_buff, ptr %call.i82, i32 0, i32 17
  %132 = ptrtoint ptr %end.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %end.i.i.i84, align 4
  %hwtstamps.i.i85 = getelementptr inbounds %struct.skb_shared_info, ptr %133, i32 0, i32 7
  %ts32.i87 = getelementptr inbounds %struct.pcan_usb_pro_rxstatus, ptr %rec_ptr.0110, i32 0, i32 3
  %134 = ptrtoint ptr %ts32.i87 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %ts32.i87, align 1
  %136 = call i32 @llvm.bswap.i32(i32 %135) #8
  call void @peak_usb_get_ts_time(ptr noundef %time_ref.i90, i32 noundef %136, ptr noundef %hwtstamps.i.i85) #8
  %call138.i = call i32 @netif_rx(ptr noundef nonnull %call.i82) #8
  br label %pcan_usb_pro_handle_error.exit.thread

pcan_usb_pro_handle_error.exit.thread:            ; preds = %sw.epilog.i, %if.end67.i.pcan_usb_pro_handle_error.exit.thread_crit_edge, %if.then4.i, %sw.bb22.pcan_usb_pro_handle_error.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %can_frame.i75) #8
  br label %for.inc

pcan_usb_pro_handle_error.exit:                   ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %can_frame.i75) #8
  br label %if.then35

sw.bb28:                                          ; preds = %if.end15
  %137 = ptrtoint ptr %cm_ignore_count.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cm_ignore_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i89 = icmp sgt i32 %138, 0
  br i1 %cmp.i89, label %if.then.i, label %if.else.i92

if.then.i:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add nsw i32 %138, -1
  %139 = ptrtoint ptr %cm_ignore_count.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %dec.i, ptr %cm_ignore_count.i, align 8
  br label %for.inc

if.else.i92:                                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i91 = getelementptr %struct.pcan_usb_pro_rxts, ptr %rec_ptr.0110, i32 0, i32 2, i32 1
  %140 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %arrayidx.i91, align 1
  %142 = call i32 @llvm.bswap.i32(i32 %141) #8
  call void @peak_usb_set_ts_now(ptr noundef %time_ref.i90, i32 noundef %142) #8
  br label %for.inc

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %idxprom, i32 noundef %idxprom) #11
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %if.else.i92, %if.then.i, %pcan_usb_pro_handle_error.exit.thread, %pcan_usb_pro_handle_canmsg.exit
  %dec = add i16 %rec_cnt.0114, -1
  %cmp.not = icmp eq i16 %dec, 0
  br i1 %cmp.not, label %for.inc.cleanup39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

if.then35:                                        ; preds = %pcan_usb_pro_handle_error.exit, %pcan_usb_pro_handle_canmsg.exit.thread, %if.then14, %if.then8
  %err.3108 = phi i32 [ -12, %pcan_usb_pro_handle_canmsg.exit.thread ], [ -12, %pcan_usb_pro_handle_error.exit ], [ -524, %if.then8 ], [ -74, %if.then14 ]
  %143 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %transfer_buffer, align 4
  %145 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %actual_length, align 4
  call void @pcan_dump_mem(ptr noundef nonnull @.str.30, ptr noundef %144, i32 noundef %146) #8
  br label %cleanup39

cleanup39:                                        ; preds = %if.then35, %for.inc.cleanup39_crit_edge, %if.end.cleanup39_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %err.3108, %if.then35 ], [ 0, %if.end.cleanup39_crit_edge ], [ 0, %for.inc.cleanup39_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_pro_encode_msg(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %skb, ptr noundef %obuf, ptr nocapture noundef %size) #0 align 64 {
entry:
  %usb_msg = alloca %struct.pcan_usb_pro_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %usb_msg) #8
  %2 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %usb_msg, i32 0, i32 2
  %3 = call ptr @memset(ptr %usb_msg, i32 255, i32 16)
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 4
  br i1 %cmp.i.i, label %entry.pcan_msg_init_empty.exit_crit_edge, label %pcan_msg_init.exit.i

entry.pcan_msg_init_empty.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_msg_init_empty.exit

pcan_msg_init.exit.i:                             ; preds = %entry
  %6 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %usb_msg, i32 0, i32 3
  %7 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %usb_msg, i32 0, i32 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %obuf, ptr %6, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %2, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %7, align 4
  %add.ptr.i.i = getelementptr i8, ptr %obuf, i32 4
  %11 = ptrtoint ptr %usb_msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i.i, ptr %usb_msg, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %pcan_msg_init.exit.i.pcan_msg_init_empty.exit_crit_edge, label %if.then.i

pcan_msg_init.exit.i.pcan_msg_init_empty.exit_crit_edge: ; preds = %pcan_msg_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_msg_init_empty.exit

if.then.i:                                        ; preds = %pcan_msg_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %2, align 4
  %13 = ptrtoint ptr %obuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %obuf, align 4
  br label %pcan_msg_init_empty.exit

pcan_msg_init_empty.exit:                         ; preds = %if.then.i, %pcan_msg_init.exit.i.pcan_msg_init_empty.exit_crit_edge, %entry.pcan_msg_init_empty.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  %and = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %pcan_msg_init_empty.exit.if.end7_crit_edge

pcan_msg_init_empty.exit.if.end7_crit_edge:       ; preds = %pcan_msg_init_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

lor.lhs.false:                                    ; preds = %pcan_msg_init_empty.exit
  %16 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp = icmp eq i8 %18, 0
  br i1 %cmp, label %lor.lhs.false.if.end7_crit_edge, label %if.else

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %cmp3 = icmp ult i8 %18, 5
  %. = select i1 %cmp3, i32 66, i32 65
  br label %if.end7

if.end7:                                          ; preds = %if.else, %lor.lhs.false.if.end7_crit_edge, %pcan_msg_init_empty.exit.if.end7_crit_edge
  %data_type.0 = phi i32 [ 67, %lor.lhs.false.if.end7_crit_edge ], [ 67, %pcan_msg_init_empty.exit.if.end7_crit_edge ], [ %., %if.else ]
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %19 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl_idx, align 4
  %21 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %24 = lshr i32 %15, 30
  %25 = and i32 %24, 2
  %26 = or i32 %24, 1
  %flags.1 = select i1 %tobool.not, i32 %25, i32 %26
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %27 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctrlmode, align 4
  %29 = and i32 %28, 8
  %30 = or i32 %29, %flags.1
  %31 = and i8 %23, 15
  %.tr = trunc i32 %20 to i8
  %32 = shl i8 %.tr, 4
  %conv10 = or i8 %32, %31
  %conv36 = zext i8 %conv10 to i32
  %data38 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 5
  call void (ptr, i32, ...) @pcan_msg_add_rec(ptr noundef nonnull %usb_msg, i32 noundef %data_type.0, i32 noundef 0, i32 noundef %30, i32 noundef %conv36, i32 noundef %15, ptr noundef %data38)
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %2, align 4
  %35 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %size, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %usb_msg) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_pro_start(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %actual_length.i.i23 = alloca i32, align 4
  %um.i24 = alloca %struct.pcan_usb_pro_msg, align 4
  %actual_length.i.i = alloca i32, align 4
  %um.i = alloca %struct.pcan_usb_pro_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrlmode, align 4
  %conv = and i32 %1, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %um.i) #8
  %2 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um.i, i32 0, i32 3
  %cmd_buf.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_buf.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %4, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %3, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %2, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 4
  %10 = ptrtoint ptr %um.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i.i.i, ptr %um.i, align 4
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.pcan_msg_init_empty.exit.i_crit_edge, label %if.then.i.i

entry.pcan_msg_init_empty.exit.i_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_msg_init_empty.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %3, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %6, align 4
  br label %pcan_msg_init_empty.exit.i

pcan_msg_init_empty.exit.i:                       ; preds = %if.then.i.i, %entry.pcan_msg_init_empty.exit.i_crit_edge
  %ctrl_idx.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctrl_idx.i, align 4
  call void (ptr, i32, ...) @pcan_msg_add_rec(ptr noundef nonnull %um.i, i32 noundef 5, i32 noundef %14, i32 noundef %conv) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i) #8
  %15 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %actual_length.i.i, align 4, !annotation !70
  %state.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i5.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i5.i, label %pcan_msg_init_empty.exit.i.if.end_crit_edge, label %if.end.i.i

pcan_msg_init_empty.exit.i.if.end_crit_edge:      ; preds = %pcan_msg_init_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i:                                       ; preds = %pcan_msg_init_empty.exit.i
  %udev.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i.i = shl i32 %21, 8
  %or.i.i = or i32 %shl.i.i.i, -1073709056
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %call2.i.i = call i32 @usb_bulk_msg(ptr noundef %19, i32 noundef %or.i.i, ptr noundef %23, i32 noundef %25, ptr noundef nonnull %actual_length.i.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %pcan_usb_pro_set_silent.exit

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pcan_usb_pro_set_silent.exit:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %26 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.6, i32 noundef %call2.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %um.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.if.end_crit_edge, %pcan_msg_init_empty.exit.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %um.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %um.i24) #8
  %28 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um.i24, i32 0, i32 1
  %29 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um.i24, i32 0, i32 2
  %30 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um.i24, i32 0, i32 3
  %31 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd_buf.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %30, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %29, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 32, ptr %28, align 4
  %add.ptr.i.i.i26 = getelementptr i8, ptr %32, i32 4
  %36 = ptrtoint ptr %um.i24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i.i.i26, ptr %um.i24, align 4
  %tobool.not.i.i27 = icmp eq ptr %add.ptr.i.i.i26, null
  br i1 %tobool.not.i.i27, label %if.end.pcan_msg_init_empty.exit.i32_crit_edge, label %if.then.i.i28

if.end.pcan_msg_init_empty.exit.i32_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_msg_init_empty.exit.i32

if.then.i.i28:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %29, align 4
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %32, align 4
  br label %pcan_msg_init_empty.exit.i32

pcan_msg_init_empty.exit.i32:                     ; preds = %if.then.i.i28, %if.end.pcan_msg_init_empty.exit.i32_crit_edge
  %39 = ptrtoint ptr %ctrl_idx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctrl_idx.i, align 4
  call void (ptr, i32, ...) @pcan_msg_add_rec(ptr noundef nonnull %um.i24, i32 noundef 10, i32 noundef %40, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i23) #8
  %41 = ptrtoint ptr %actual_length.i.i23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %actual_length.i.i23, align 4, !annotation !70
  %42 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i.i, align 4
  %and.i.i31 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.not.i1.i = icmp eq i32 %and.i.i31, 0
  br i1 %tobool.not.i1.i, label %pcan_msg_init_empty.exit.i32.if.end4_crit_edge, label %if.end.i.i38

pcan_msg_init_empty.exit.i32.if.end4_crit_edge:   ; preds = %pcan_msg_init_empty.exit.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end.i.i38:                                     ; preds = %pcan_msg_init_empty.exit.i32
  %udev.i.i33 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %44 = ptrtoint ptr %udev.i.i33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udev.i.i33, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i.i34 = shl i32 %47, 8
  %or.i.i35 = or i32 %shl.i.i.i34, -1073709056
  %48 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %30, align 4
  %50 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %29, align 4
  %call2.i.i36 = call i32 @usb_bulk_msg(ptr noundef %45, i32 noundef %or.i.i35, ptr noundef %49, i32 noundef %51, ptr noundef nonnull %actual_length.i.i23, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i36)
  %tobool3.not.i.i37 = icmp eq i32 %call2.i.i36, 0
  br i1 %tobool3.not.i.i37, label %if.end.i.i38.if.end4_crit_edge, label %pcan_usb_pro_set_filter.exit

if.end.i.i38.if.end4_crit_edge:                   ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

pcan_usb_pro_set_filter.exit:                     ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i.i39 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %52 = ptrtoint ptr %netdev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev.i.i39, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %53, ptr noundef nonnull @.str.6, i32 noundef %call2.i.i36) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i23) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %um.i24) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i38.if.end4_crit_edge, %pcan_msg_init_empty.exit.i32.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i23) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %um.i24) #8
  %usb_if = getelementptr inbounds %struct.pcan_usb_pro_device, ptr %dev, i32 0, i32 1
  %54 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usb_if, align 4
  %dev_opened_count = getelementptr inbounds %struct.pcan_usb_pro_interface, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %dev_opened_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dev_opened_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp = icmp eq i32 %57, 0
  br i1 %cmp, label %if.then6, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %time_ref = getelementptr inbounds %struct.pcan_usb_pro_interface, ptr %55, i32 0, i32 1
  call void @peak_usb_init_time_ref(ptr noundef %time_ref, ptr noundef nonnull @pcan_usb_pro) #8
  %call8 = call fastcc i32 @pcan_usb_pro_set_ts(ptr noundef %dev, i16 noundef zeroext 1)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %err.0 = phi i32 [ %call8, %if.then6 ], [ 0, %if.end4.if.end9_crit_edge ]
  %58 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_if, align 4
  %dev_opened_count11 = getelementptr inbounds %struct.pcan_usb_pro_interface, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %dev_opened_count11 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dev_opened_count11, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %dev_opened_count11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %pcan_usb_pro_set_filter.exit, %pcan_usb_pro_set_silent.exit
  %retval.0 = phi i32 [ %err.0, %if.end9 ], [ %call2.i.i, %pcan_usb_pro_set_silent.exit ], [ %call2.i.i36, %pcan_usb_pro_set_filter.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_pro_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_if = getelementptr inbounds %struct.pcan_usb_pro_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_if, align 4
  %dev_opened_count = getelementptr inbounds %struct.pcan_usb_pro_interface, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev_opened_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_opened_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @pcan_usb_pro_set_ts(ptr noundef %dev, i16 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %usb_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_if, align 4
  %dev_opened_count2 = getelementptr inbounds %struct.pcan_usb_pro_interface, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev_opened_count2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_opened_count2, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %dev_opened_count2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_pro_restart_async(ptr noundef %dev, ptr noundef %urb, ptr noundef %buf) #0 align 64 {
entry:
  %um = alloca %struct.pcan_usb_pro_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %um) #8
  %0 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buf, ptr %2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %1, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %0, align 4
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 4
  %6 = ptrtoint ptr %um to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i.i, ptr %um, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.pcan_msg_init_empty.exit_crit_edge, label %if.then.i

entry.pcan_msg_init_empty.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_msg_init_empty.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %1, align 4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %buf, align 4
  br label %pcan_msg_init_empty.exit

pcan_msg_init_empty.exit:                         ; preds = %if.then.i, %entry.pcan_msg_init_empty.exit_crit_edge
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl_idx, align 4
  call void (ptr, i32, ...) @pcan_msg_add_rec(ptr noundef nonnull %um, i32 noundef 4, i32 noundef %10, i32 noundef 1)
  %udev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or = or i32 %shl.i, -1073709056
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %16 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pcan_usb_pro_restart_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %20 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %context4.i, align 4
  %call4 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %um) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_pro_set_phys_id(ptr nocapture noundef readonly %netdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @pcan_usb_pro_set_led(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i32 noundef -1)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @pcan_usb_pro_set_led(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i32 noundef 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcan_usb_pro_set_led(ptr nocapture noundef readonly %dev, i8 noundef zeroext %mode, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %actual_length.i = alloca i32, align 4
  %um = alloca %struct.pcan_usb_pro_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %um) #8
  %0 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 3
  %cmd_buf = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_buf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %0, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %8 = ptrtoint ptr %um to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i.i, ptr %um, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.pcan_msg_init_empty.exit_crit_edge, label %if.then.i

entry.pcan_msg_init_empty.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_msg_init_empty.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %1, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  br label %pcan_msg_init_empty.exit

pcan_msg_init_empty.exit:                         ; preds = %if.then.i, %entry.pcan_msg_init_empty.exit_crit_edge
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %11 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctrl_idx, align 4
  %conv = zext i8 %mode to i32
  call void (ptr, i32, ...) @pcan_msg_add_rec(ptr noundef nonnull %um, i32 noundef 28, i32 noundef %12, i32 noundef %conv, i32 noundef %timeout)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #8
  %13 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !70
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i5 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i5, label %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge, label %if.end.i

pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge: ; preds = %pcan_msg_init_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_send_cmd.exit

if.end.i:                                         ; preds = %pcan_msg_init_empty.exit
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i = shl i32 %19, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %17, i32 noundef %or.i, ptr noundef %21, i32 noundef %23, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge, label %if.then4.i

if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_send_cmd.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef %call2.i) #11
  br label %pcan_usb_pro_send_cmd.exit

pcan_usb_pro_send_cmd.exit:                       ; preds = %if.then4.i, %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge, %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge ], [ %call2.i, %if.then4.i ], [ 0, %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %um) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcan_msg_add_rec(ptr nocapture noundef %pm, i32 noundef %id, ...) unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #8
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !70
  call void @llvm.va_start(ptr nonnull %ap)
  %1 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pm, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1
  %3 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %id, label %do.end [
    i32 65, label %sw.bb
    i32 66, label %entry.sw.bb1_crit_edge
    i32 67, label %entry.sw.bb3_crit_edge
    i32 2, label %entry.sw.bb18_crit_edge
    i32 18, label %entry.sw.bb18_crit_edge1
    i32 10, label %entry.sw.bb27_crit_edge
    i32 4, label %entry.sw.bb27_crit_edge2
    i32 5, label %entry.sw.bb27_crit_edge3
    i32 28, label %sw.bb36
    i32 16, label %sw.bb48
  ]

entry.sw.bb27_crit_edge3:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

entry.sw.bb27_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

entry.sw.bb18_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

entry.sw.bb18_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %i.0 = phi i32 [ 4, %entry.sw.bb1_crit_edge ], [ 8, %sw.bb ]
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb1, %entry.sw.bb3_crit_edge
  %i.1 = phi i32 [ 0, %entry.sw.bb3_crit_edge ], [ %i.0, %sw.bb1 ]
  %4 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %4)
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %5 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %argp.cur, align 4
  %conv = trunc i32 %6 to i8
  %incdec.ptr = getelementptr i8, ptr %2, i32 2
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %add.ptr, align 1
  %argp.cur4 = load ptr, ptr %ap, align 4
  %argp.next5 = getelementptr inbounds i8, ptr %argp.cur4, i32 4
  store ptr %argp.next5, ptr %ap, align 4
  %8 = ptrtoint ptr %argp.cur4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %argp.cur4, align 4
  %conv6 = trunc i32 %9 to i8
  %incdec.ptr7 = getelementptr i8, ptr %2, i32 3
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %incdec.ptr, align 1
  %argp.cur8 = load ptr, ptr %ap, align 4
  %argp.next9 = getelementptr inbounds i8, ptr %argp.cur8, i32 4
  store ptr %argp.next9, ptr %ap, align 4
  %11 = ptrtoint ptr %argp.cur8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %argp.cur8, align 4
  %conv10 = trunc i32 %12 to i8
  %incdec.ptr11 = getelementptr i8, ptr %2, i32 4
  %13 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %incdec.ptr7, align 1
  %argp.cur12 = load ptr, ptr %ap, align 4
  %argp.next13 = getelementptr inbounds i8, ptr %argp.cur12, i32 4
  store ptr %argp.next13, ptr %ap, align 4
  %14 = ptrtoint ptr %argp.cur12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %argp.cur12, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %incdec.ptr11, align 4
  %add.ptr14 = getelementptr i8, ptr %2, i32 8
  %18 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %18)
  %argp.cur15 = load ptr, ptr %ap, align 4
  %argp.next16 = getelementptr inbounds i8, ptr %argp.cur15, i32 4
  store ptr %argp.next16, ptr %ap, align 4
  %19 = ptrtoint ptr %argp.cur15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %argp.cur15, align 4
  %21 = call ptr @memcpy(ptr %add.ptr14, ptr %20, i32 %i.1)
  %add.ptr17 = getelementptr i8, ptr %add.ptr14, i32 %i.1
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry.sw.bb18_crit_edge, %entry.sw.bb18_crit_edge1
  %22 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %22)
  %argp.cur19 = load ptr, ptr %ap, align 4
  %argp.next20 = getelementptr inbounds i8, ptr %argp.cur19, i32 4
  store ptr %argp.next20, ptr %ap, align 4
  %23 = ptrtoint ptr %argp.cur19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %argp.cur19, align 4
  %conv21 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv21, ptr %add.ptr, align 1
  %add.ptr23 = getelementptr i8, ptr %2, i32 4
  %argp.cur24 = load ptr, ptr %ap, align 4
  %argp.next25 = getelementptr inbounds i8, ptr %argp.cur24, i32 4
  store ptr %argp.next25, ptr %ap, align 4
  %26 = ptrtoint ptr %argp.cur24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %argp.cur24, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr23, align 4
  %add.ptr26 = getelementptr i8, ptr %2, i32 8
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge2, %entry.sw.bb27_crit_edge3
  %30 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %30)
  %argp.cur28 = load ptr, ptr %ap, align 4
  %argp.next29 = getelementptr inbounds i8, ptr %argp.cur28, i32 4
  store ptr %argp.next29, ptr %ap, align 4
  %31 = ptrtoint ptr %argp.cur28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %argp.cur28, align 4
  %conv30 = trunc i32 %32 to i8
  %incdec.ptr31 = getelementptr i8, ptr %2, i32 2
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv30, ptr %add.ptr, align 1
  %argp.cur32 = load ptr, ptr %ap, align 4
  %argp.next33 = getelementptr inbounds i8, ptr %argp.cur32, i32 4
  store ptr %argp.next33, ptr %ap, align 4
  %34 = ptrtoint ptr %argp.cur32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %argp.cur32, align 4
  %conv34 = trunc i32 %35 to i16
  %36 = call i16 @llvm.bswap.i16(i16 %conv34)
  %37 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %incdec.ptr31, align 2
  %add.ptr35 = getelementptr i8, ptr %2, i32 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %38)
  %argp.cur37 = load ptr, ptr %ap, align 4
  %argp.next38 = getelementptr inbounds i8, ptr %argp.cur37, i32 4
  store ptr %argp.next38, ptr %ap, align 4
  %39 = ptrtoint ptr %argp.cur37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %argp.cur37, align 4
  %conv39 = trunc i32 %40 to i8
  %incdec.ptr40 = getelementptr i8, ptr %2, i32 2
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv39, ptr %add.ptr, align 1
  %argp.cur41 = load ptr, ptr %ap, align 4
  %argp.next42 = getelementptr inbounds i8, ptr %argp.cur41, i32 4
  store ptr %argp.next42, ptr %ap, align 4
  %42 = ptrtoint ptr %argp.cur41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %argp.cur41, align 4
  %conv43 = trunc i32 %43 to i16
  %44 = call i16 @llvm.bswap.i16(i16 %conv43)
  %45 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %incdec.ptr40, align 2
  %add.ptr44 = getelementptr i8, ptr %2, i32 4
  %46 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %46)
  %argp.cur45 = load ptr, ptr %ap, align 4
  %argp.next46 = getelementptr inbounds i8, ptr %argp.cur45, i32 4
  store ptr %argp.next46, ptr %ap, align 4
  %47 = ptrtoint ptr %argp.cur45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %argp.cur45, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %add.ptr44, align 4
  %add.ptr47 = getelementptr i8, ptr %2, i32 8
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr49 = getelementptr i8, ptr %2, i32 2
  %51 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %51)
  %argp.cur50 = load ptr, ptr %ap, align 4
  %argp.next51 = getelementptr inbounds i8, ptr %argp.cur50, i32 4
  store ptr %argp.next51, ptr %ap, align 4
  %52 = ptrtoint ptr %argp.cur50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %argp.cur50, align 4
  %conv52 = trunc i32 %53 to i16
  %54 = call i16 @llvm.bswap.i16(i16 %conv52)
  %55 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %incdec.ptr49, align 2
  %add.ptr53 = getelementptr i8, ptr %2, i32 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %id, i32 noundef %id) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb48, %sw.bb36, %sw.bb27, %sw.bb18, %sw.bb3
  %pc.0 = phi ptr [ %2, %do.end ], [ %add.ptr53, %sw.bb48 ], [ %add.ptr47, %sw.bb36 ], [ %add.ptr35, %sw.bb27 ], [ %add.ptr26, %sw.bb18 ], [ %add.ptr17, %sw.bb3 ]
  %56 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pm, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %pc.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %57 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp = icmp sgt i32 %sub.ptr.sub, 0
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %u = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %pm, i32 0, i32 3
  %58 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %u, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #8
  %add.i = add i32 %62, 1
  %63 = call i32 @llvm.bswap.i32(i32 %add.i) #8
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %59, align 4
  %conv57 = trunc i32 %id to i8
  %65 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pm, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv57, ptr %66, align 1
  store ptr %pc.0, ptr %pm, align 4
  %rec_buffer_len = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %pm, i32 0, i32 2
  %68 = ptrtoint ptr %rec_buffer_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rec_buffer_len, align 4
  %add60 = add i32 %69, %sub.ptr.sub
  store i32 %add60, ptr %rec_buffer_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcan_usb_pro_drv_loaded(ptr nocapture noundef readonly %dev, i32 noundef %loaded) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loaded)
  %tobool1 = icmp ne i32 %loaded, 0
  %conv = zext i1 %tobool1 to i8
  %arrayidx3 = getelementptr i8, ptr %call7.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx3, align 1
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.pcan_usb_pro_send_req.exit_crit_edge, label %if.end.i

if.end.pcan_usb_pro_send_req.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_send_req.exit

if.end.i:                                         ; preds = %if.end
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 67, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 16, i32 noundef 10000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i = icmp slt i32 %call11.i, 0
  br i1 %cmp.i, label %if.then13.i, label %if.end.i.pcan_usb_pro_send_req.exit_crit_edge

if.end.i.pcan_usb_pro_send_req.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_send_req.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 5, i32 noundef %call11.i) #11
  br label %pcan_usb_pro_send_req.exit

pcan_usb_pro_send_req.exit:                       ; preds = %if.then13.i, %if.end.i.pcan_usb_pro_send_req.exit_crit_edge, %if.end.pcan_usb_pro_send_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %if.then13.i ], [ 0, %if.end.pcan_usb_pro_send_req.exit_crit_edge ], [ 0, %if.end.i.pcan_usb_pro_send_req.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %pcan_usb_pro_send_req.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %pcan_usb_pro_send_req.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcan_usb_pro_set_ts(ptr nocapture noundef readonly %dev, i16 noundef zeroext %onoff) unnamed_addr #0 align 64 {
entry:
  %actual_length.i = alloca i32, align 4
  %um = alloca %struct.pcan_usb_pro_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %um) #8
  %0 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 3
  %cmd_buf = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_buf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %0, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %8 = ptrtoint ptr %um to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i.i, ptr %um, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.pcan_msg_init_empty.exit_crit_edge, label %if.then.i

entry.pcan_msg_init_empty.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_msg_init_empty.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %1, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  br label %pcan_msg_init_empty.exit

pcan_msg_init_empty.exit:                         ; preds = %if.then.i, %entry.pcan_msg_init_empty.exit_crit_edge
  %conv = zext i16 %onoff to i32
  call void (ptr, i32, ...) @pcan_msg_add_rec(ptr noundef nonnull %um, i32 noundef 16, i32 noundef %conv)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #8
  %11 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !70
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i4 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i4, label %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge, label %if.end.i

pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge: ; preds = %pcan_msg_init_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_send_cmd.exit

if.end.i:                                         ; preds = %pcan_msg_init_empty.exit
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i = shl i32 %17, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %15, i32 noundef %or.i, ptr noundef %19, i32 noundef %21, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge, label %if.then4.i

if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_send_cmd.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %22 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.6, i32 noundef %call2.i) #11
  br label %pcan_usb_pro_send_cmd.exit

pcan_usb_pro_send_cmd.exit:                       ; preds = %if.then4.i, %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge, %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge ], [ %call2.i, %if.then4.i ], [ 0, %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %um) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcan_usb_pro_set_bitrate(ptr nocapture noundef %dev, i32 noundef %ccbt) unnamed_addr #0 align 64 {
entry:
  %actual_length.i = alloca i32, align 4
  %um = alloca %struct.pcan_usb_pro_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %um) #8
  %0 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pcan_usb_pro_msg, ptr %um, i32 0, i32 3
  %cmd_buf = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_buf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %0, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %8 = ptrtoint ptr %um to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i.i, ptr %um, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %entry.pcan_msg_init_empty.exit_crit_edge, label %if.then.i

entry.pcan_msg_init_empty.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_msg_init_empty.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %1, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  br label %pcan_msg_init_empty.exit

pcan_msg_init_empty.exit:                         ; preds = %if.then.i, %entry.pcan_msg_init_empty.exit_crit_edge
  %ctrl_idx = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 2
  %11 = ptrtoint ptr %ctrl_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctrl_idx, align 4
  call void (ptr, i32, ...) @pcan_msg_add_rec(ptr noundef nonnull %um, i32 noundef 2, i32 noundef %12, i32 noundef %ccbt)
  %cached_ccbt = getelementptr inbounds %struct.pcan_usb_pro_device, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %cached_ccbt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ccbt, ptr %cached_ccbt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #8
  %14 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !70
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i7 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i7, label %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge, label %if.end.i

pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge: ; preds = %pcan_msg_init_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_send_cmd.exit

if.end.i:                                         ; preds = %pcan_msg_init_empty.exit
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %18, i32 noundef %or.i, ptr noundef %22, i32 noundef %24, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge, label %if.then4.i

if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcan_usb_pro_send_cmd.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %25 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef %call2.i) #11
  br label %pcan_usb_pro_send_cmd.exit

pcan_usb_pro_send_cmd.exit:                       ; preds = %if.then4.i, %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge, %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %pcan_msg_init_empty.exit.pcan_usb_pro_send_cmd.exit_crit_edge ], [ %call2.i, %if.then4.i ], [ 0, %if.end.i.pcan_usb_pro_send_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %um) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcan_dump_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_get_ts_time(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_set_ts_now(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_init_time_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 340, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 1043, i32 10}
!4 = !{ptr @pcan_usb_pro, !5, !"pcan_usb_pro", i1 false, i1 false}
!5 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 1042, i32 31}
!6 = !{ptr @pcan_usb_pro_const, !7, !"pcan_usb_pro_const", i1 false, i1 false}
!7 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 1030, i32 41}
!8 = !{ptr @pcan_usb_pro_ethtool_ops, !9, !"pcan_usb_pro_ethtool_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 1023, i32 33}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 181, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pcan_msg_add_rec._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @pcan_msg_add_rec._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 219, i32 27}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 880, i32 4}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pcan_usb_pro_init._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @pcan_usb_pro_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 890, i32 4}
!28 = !{ptr @pcan_usb_pro_init._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pcan_usb_pro_init._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 901, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pcan_usb_pro_init._entry.14, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @pcan_usb_pro_init._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 458, i32 27}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 254, i32 28}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 264, i32 8}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 280, i32 9}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 281, i32 19}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 289, i32 9}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 296, i32 6}
!49 = !{ptr @pcan_usb_pro_sizeof_rec, !50, !"pcan_usb_pro_sizeof_rec", i1 false, i1 false}
!50 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 72, i32 12}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 696, i32 22}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 709, i32 8}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 717, i32 5}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 744, i32 8}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_pro.c", i32 754, i32 17}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
