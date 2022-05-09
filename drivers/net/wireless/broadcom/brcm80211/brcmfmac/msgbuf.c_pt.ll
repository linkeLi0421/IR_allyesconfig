; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_bus = type { %union.anon.128, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon.128 = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_msgbuf = type { ptr, ptr, ptr, ptr, i16, i16, i16, i16, i32, i16, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.wait_queue_head, i8, ptr, ptr, ptr, ptr, %struct.work_struct, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.list_head }
%struct.brcmf_commonring = type { i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i8, i8, %struct.atomic_t }
%struct.msgbuf_gen_status = type { %struct.msgbuf_common_hdr, %struct.msgbuf_completion_hdr, i16, [3 x i32] }
%struct.msgbuf_common_hdr = type { i8, i8, i8, i8, i32 }
%struct.msgbuf_completion_hdr = type { i16, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.msgbuf_ring_status = type { %struct.msgbuf_common_hdr, %struct.msgbuf_completion_hdr, i16, [5 x i16] }
%struct.msgbuf_flowring_create_resp = type { %struct.msgbuf_common_hdr, %struct.msgbuf_completion_hdr, [3 x i32] }
%struct.msgbuf_flowring_delete_resp = type { %struct.msgbuf_common_hdr, %struct.msgbuf_completion_hdr, [3 x i32] }
%struct.msgbuf_ioctl_resp_hdr = type { %struct.msgbuf_common_hdr, %struct.msgbuf_completion_hdr, i16, i16, i32, i32 }
%struct.msgbuf_rx_event = type { %struct.msgbuf_common_hdr, %struct.msgbuf_completion_hdr, i16, i16, [4 x i16] }
%struct.brcmf_msgbuf_pktids = type { i32, i32, i32, ptr }
%struct.brcmf_msgbuf_pktid = type { %struct.atomic_t, i16, ptr, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.brcmf_event = type { %struct.ethhdr, %struct.brcm_ethhdr, %struct.brcmf_event_msg_be }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.brcm_ethhdr = type { i16, i16, i8, [3 x i8], i16 }
%struct.brcmf_event_msg_be = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.msgbuf_tx_status = type { %struct.msgbuf_common_hdr, %struct.msgbuf_completion_hdr, i16, i16 }
%struct.msgbuf_rx_complete = type { %struct.msgbuf_common_hdr, %struct.msgbuf_completion_hdr, i16, i16, i16, i16, i32, i32, i32 }
%struct.msgbuf_tx_flowring_delete_req = type { %struct.msgbuf_common_hdr, i16, i16, [7 x i32] }
%struct.brcmf_bus_msgbuf = type { [5 x ptr], ptr, i32, i32, i16, i16, i16 }
%struct.msgbuf_tx_msghdr = type { %struct.msgbuf_common_hdr, [14 x i8], i8, i8, %struct.msgbuf_buf_addr, %struct.msgbuf_buf_addr, i16, i16, i32 }
%struct.msgbuf_buf_addr = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.msgbuf_ioctl_req_hdr = type { %struct.msgbuf_common_hdr, i32, i16, i16, i16, [3 x i16], %struct.msgbuf_buf_addr, [2 x i32] }
%struct.brcmf_msgbuf_work_item = type { %struct.list_head, i32, i32, [6 x i8], [6 x i8] }
%struct.msgbuf_rx_bufpost = type { %struct.msgbuf_common_hdr, i16, i16, i32, %struct.msgbuf_buf_addr, %struct.msgbuf_buf_addr }
%struct.msgbuf_tx_flowring_create_req = type { %struct.msgbuf_common_hdr, [6 x i8], [6 x i8], i8, i8, i16, i8, i8, i16, i16, i16, %struct.msgbuf_buf_addr }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.brcmf_flowring = type { ptr, [512 x %struct.brcmf_flowring_hash], ptr, %struct.spinlock, [16 x i32], i16, i8, ptr }
%struct.brcmf_flowring_hash = type { [6 x i8], i8, i8, i16 }
%struct.brcmf_flowring_ring = type { i16, i8, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.msgbuf_rx_ioctl_resp_or_event = type { %struct.msgbuf_common_hdr, i16, [3 x i16], %struct.msgbuf_buf_addr, [4 x i32] }

@__func__.brcmf_msgbuf_delete_flowring = private unnamed_addr constant [29 x i8] c"brcmf_msgbuf_delete_flowring\00", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bus down, flowring will be removed\0A\00", [60 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_delete_flowring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.brcmf_msgbuf_delete_flowring, ptr @.str.2, i32 1414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: FW unaware, flowring will be removed !!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_delete_flowring._entry_ptr = internal global ptr @brcmf_msgbuf_delete_flowring._entry, section ".printk_index", align 4
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Send Flow Delete Req flow ID %d, ifindex %d\0A\00", [51 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_delete_flowring._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.brcmf_msgbuf_delete_flowring, ptr @.str.2, i32 1438, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: Failed to submit RING_DELETE, flowring will be removed\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_delete_flowring._entry_ptr.8 = internal global ptr @brcmf_msgbuf_delete_flowring._entry.6, section ".printk_index", align 4
@brcmf_proto_msgbuf_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1513, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: driver not configured for this many flowrings %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcmf_proto_msgbuf_attach\00", [38 x i8] zeroinitializer }, align 32
@brcmf_proto_msgbuf_attach._entry_ptr = internal global ptr @brcmf_proto_msgbuf_attach._entry, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msgbuf_txflow\00", [18 x i8] zeroinitializer }, align 32
@brcmf_proto_msgbuf_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 1523, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: workqueue creation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmf_proto_msgbuf_attach._entry_ptr.15 = internal global ptr @brcmf_proto_msgbuf_attach._entry.13, section ".printk_index", align 4
@brcmf_proto_msgbuf_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&msgbuf->txflow_work)\00", [56 x i8] zeroinitializer }, align 32
@brcmf_proto_msgbuf_attach.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&msgbuf->ioctl_resp_wait\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Feeding buffers, rx data %d, rx event %d, rx ioctl resp %d\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmf_proto_msgbuf_attach.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&msgbuf->flowring_work)\00", [54 x i8] zeroinitializer }, align 32
@brcmf_proto_msgbuf_attach.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&msgbuf->flowring_work_lock\00", [36 x i8] zeroinitializer }, align 32
@__func__.brcmf_proto_msgbuf_detach = private unnamed_addr constant [26 x i8] c"brcmf_proto_msgbuf_detach\00", align 1
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@__func__.brcmf_msgbuf_process_msgtype = private unnamed_addr constant [29 x i8] c"brcmf_msgbuf_process_msgtype\00", align 1
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MSGBUF_TYPE_GEN_STATUS\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MSGBUF_TYPE_RING_STATUS\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MSGBUF_TYPE_FLOW_RING_CREATE_CMPLT\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MSGBUF_TYPE_FLOW_RING_DELETE_CMPLT\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MSGBUF_TYPE_IOCTLPTR_REQ_ACK\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MSGBUF_TYPE_IOCTL_CMPLT\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MSGBUF_TYPE_WL_EVENT\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MSGBUF_TYPE_TX_STATUS\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MSGBUF_TYPE_RX_CMPLT\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_msgtype._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.brcmf_msgbuf_process_msgtype, ptr @.str.2, i32 1324, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unsupported msgtype %d\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_msgtype._entry_ptr = internal global ptr @brcmf_msgbuf_process_msgtype._entry, section ".printk_index", align 4
@brcmf_msgbuf_process_gen_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Firmware reported general error: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"brcmf_msgbuf_process_gen_status\00", [32 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_gen_status._entry_ptr = internal global ptr @brcmf_msgbuf_process_gen_status._entry, section ".printk_index", align 4
@brcmf_msgbuf_process_ring_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Firmware reported ring %d error: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"brcmf_msgbuf_process_ring_status\00", [63 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_ring_status._entry_ptr = internal global ptr @brcmf_msgbuf_process_ring_status._entry, section ".printk_index", align 4
@brcmf_msgbuf_process_flow_ring_create_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Flowring creation failed, code %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"brcmf_msgbuf_process_flow_ring_create_response\00", [49 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_flow_ring_create_response._entry_ptr = internal global ptr @brcmf_msgbuf_process_flow_ring_create_response._entry, section ".printk_index", align 4
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Flowring %d Create response status %d\0A\00", [57 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_flow_ring_delete_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Flowring deletion failed, code %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"brcmf_msgbuf_process_flow_ring_delete_response\00", [49 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_flow_ring_delete_response._entry_ptr = internal global ptr @brcmf_msgbuf_process_flow_ring_delete_response._entry, section ".printk_index", align 4
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Flowring %d Delete response status %d\0A\00", [57 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1126, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Received pkt for invalid ifidx %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"brcmf_msgbuf_process_event\00", [37 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_event._entry_ptr = internal global ptr @brcmf_msgbuf_process_event._entry, section ".printk_index", align 4
@__func__.brcmf_msgbuf_get_pktid = private unnamed_addr constant [23 x i8] c"brcmf_msgbuf_get_pktid\00", align 1
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid packet id %d (max %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid packet id %d (not in use)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\10\18\00", [28 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_rx_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Received unexpected monitor pkt\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"brcmf_msgbuf_process_rx_complete\00", [63 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_rx_complete._entry_ptr = internal global ptr @brcmf_msgbuf_process_rx_complete._entry, section ".printk_index", align 4
@brcmf_msgbuf_process_rx_complete._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.51, ptr @.str.2, i32 1188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_process_rx_complete._entry_ptr.53 = internal global ptr @brcmf_msgbuf_process_rx_complete._entry.52, section ".printk_index", align 4
@__func__.brcmf_msgbuf_remove_flowring = private unnamed_addr constant [29 x i8] c"brcmf_msgbuf_remove_flowring\00", align 1
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Removing flowring %d\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@brcmf_msgbuf_txflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 719, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: No SKB, but qlen %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcmf_msgbuf_txflow\00", [44 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_txflow._entry_ptr = internal global ptr @brcmf_msgbuf_txflow._entry, section ".printk_index", align 4
@brcmf_msgbuf_txflow._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 727, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: No PKTID available !!\0A\00", [37 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_txflow._entry_ptr.59 = internal global ptr @brcmf_msgbuf_txflow._entry.57, section ".printk_index", align 4
@__func__.brcmf_msgbuf_alloc_pktid = private unnamed_addr constant [25 x i8] c"brcmf_msgbuf_alloc_pktid\00", align 1
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dma_map_single failed !!\0A\00", [38 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__func__.brcmf_msgbuf_query_dcmd = private unnamed_addr constant [24 x i8] c"brcmf_msgbuf_query_dcmd\00", align 1
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ifidx=%d, cmd=%d, len=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_query_dcmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.brcmf_msgbuf_query_dcmd, ptr @.str.2, i32 505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Timeout on response for query command\0A\00", [53 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_query_dcmd._entry_ptr = internal global ptr @brcmf_msgbuf_query_dcmd._entry, section ".printk_index", align 4
@brcmf_msgbuf_tx_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Failed to reserve space in commonring\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcmf_msgbuf_tx_ioctl\00", [42 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_tx_ioctl._entry_ptr = internal global ptr @brcmf_msgbuf_tx_ioctl._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msgbuf_stats\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"h2d_ctl_submit: rp %4u, wp %4u, depth %4u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"h2d_rx_submit:  rp %4u, wp %4u, depth %4u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"d2h_ctl_cmplt:  rp %4u, wp %4u, depth %4u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"d2h_tx_cmplt:   rp %4u, wp %4u, depth %4u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"d2h_rx_cmplt:   rp %4u, wp %4u, depth %4u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0Ah2d_flowrings: depth %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Active flowrings:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"id %3u: rp %4u, wp %4u, qlen %4u, blocked %u\0A        ifidx %u, fifo %u, da %pM\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.brcmf_msgbuf_rxbuf_data_post = private unnamed_addr constant [29 x i8] c"brcmf_msgbuf_rxbuf_data_post\00", align 1
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to reserve space in commonring\0A\00", [57 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_rxbuf_data_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @__func__.brcmf_msgbuf_rxbuf_data_post, ptr @.str.2, i32 926, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Failed to alloc SKB\0A\00", [39 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_rxbuf_data_post._entry_ptr = internal global ptr @brcmf_msgbuf_rxbuf_data_post._entry, section ".printk_index", align 4
@brcmf_msgbuf_rxbuf_data_post._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.brcmf_msgbuf_rxbuf_data_post, ptr @.str.2, i32 936, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_rxbuf_data_post._entry_ptr.79 = internal global ptr @brcmf_msgbuf_rxbuf_data_post._entry.78, section ".printk_index", align 4
@brcmf_msgbuf_rxbuf_ctrl_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.80, ptr @.str.2, i32 1024, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"brcmf_msgbuf_rxbuf_ctrl_post\00", [35 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_rxbuf_ctrl_post._entry_ptr = internal global ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry, section ".printk_index", align 4
@brcmf_msgbuf_rxbuf_ctrl_post._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.80, ptr @.str.2, i32 1036, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_rxbuf_ctrl_post._entry_ptr.82 = internal global ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry.81, section ".printk_index", align 4
@brcmf_msgbuf_rxbuf_ctrl_post._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.80, ptr @.str.2, i32 1046, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_rxbuf_ctrl_post._entry_ptr.84 = internal global ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry.83, section ".printk_index", align 4
@brcmf_msgbuf_flowring_create_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 599, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: dma_alloc_coherent failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"brcmf_msgbuf_flowring_create_worker\00", [60 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_flowring_create_worker._entry_ptr = internal global ptr @brcmf_msgbuf_flowring_create_worker._entry, section ".printk_index", align 4
@brcmf_msgbuf_flowring_create_worker._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.86, ptr @.str.2, i32 612, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_flowring_create_worker._entry_ptr.88 = internal global ptr @brcmf_msgbuf_flowring_create_worker._entry.87, section ".printk_index", align 4
@.str.89 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Send Flow Create Req flow ID %d for peer %pM prio %d ifindex %d\0A\00", [63 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_flowring_create_worker._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.2, i32 639, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Failed to write commonring\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmf_msgbuf_flowring_create_worker._entry_ptr.92 = internal global ptr @brcmf_msgbuf_flowring_create_worker._entry.90, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 1, i64 2, i64 4, i64 6, i64 10, i64 12, i64 14, i64 16, i64 18]
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1405, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1414, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1432, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1438, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1512, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1521, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1523, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1526, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1559, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1592, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1607, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1608, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1637, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1289, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1293, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1297, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1301, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1305, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1308, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1312, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1316, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1320, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1324, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1206, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1220, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1241, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1245, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1270, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1274, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1125, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 370, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 383, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 349, i32 13 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1176, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1187, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 550, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 718, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 727, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 332, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 326, i32 6 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 496, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 505, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 441, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1499, i32 32 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1455, i32 18 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1458, i32 18 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1461, i32 18 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1464, i32 18 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1467, i32 18 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1470, i32 18 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1472, i32 16 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1481, i32 19 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 915, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 926, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 936, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1024, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1036, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1046, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 599, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 612, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 633, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.391 = private constant [61 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 639, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @brcmf_msgbuf_delete_flowring._entry, ptr @brcmf_msgbuf_delete_flowring._entry.6, ptr @brcmf_msgbuf_delete_flowring._entry_ptr, ptr @brcmf_msgbuf_delete_flowring._entry_ptr.8, ptr @brcmf_msgbuf_flowring_create_worker._entry, ptr @brcmf_msgbuf_flowring_create_worker._entry.87, ptr @brcmf_msgbuf_flowring_create_worker._entry.90, ptr @brcmf_msgbuf_flowring_create_worker._entry_ptr, ptr @brcmf_msgbuf_flowring_create_worker._entry_ptr.88, ptr @brcmf_msgbuf_flowring_create_worker._entry_ptr.92, ptr @brcmf_msgbuf_process_event._entry, ptr @brcmf_msgbuf_process_event._entry_ptr, ptr @brcmf_msgbuf_process_flow_ring_create_response._entry, ptr @brcmf_msgbuf_process_flow_ring_create_response._entry_ptr, ptr @brcmf_msgbuf_process_flow_ring_delete_response._entry, ptr @brcmf_msgbuf_process_flow_ring_delete_response._entry_ptr, ptr @brcmf_msgbuf_process_gen_status._entry, ptr @brcmf_msgbuf_process_gen_status._entry_ptr, ptr @brcmf_msgbuf_process_msgtype._entry, ptr @brcmf_msgbuf_process_msgtype._entry_ptr, ptr @brcmf_msgbuf_process_ring_status._entry, ptr @brcmf_msgbuf_process_ring_status._entry_ptr, ptr @brcmf_msgbuf_process_rx_complete._entry, ptr @brcmf_msgbuf_process_rx_complete._entry.52, ptr @brcmf_msgbuf_process_rx_complete._entry_ptr, ptr @brcmf_msgbuf_process_rx_complete._entry_ptr.53, ptr @brcmf_msgbuf_query_dcmd._entry, ptr @brcmf_msgbuf_query_dcmd._entry_ptr, ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry, ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry.81, ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry.83, ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry_ptr, ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry_ptr.82, ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry_ptr.84, ptr @brcmf_msgbuf_rxbuf_data_post._entry, ptr @brcmf_msgbuf_rxbuf_data_post._entry.78, ptr @brcmf_msgbuf_rxbuf_data_post._entry_ptr, ptr @brcmf_msgbuf_rxbuf_data_post._entry_ptr.79, ptr @brcmf_msgbuf_tx_ioctl._entry, ptr @brcmf_msgbuf_tx_ioctl._entry_ptr, ptr @brcmf_msgbuf_txflow._entry, ptr @brcmf_msgbuf_txflow._entry.57, ptr @brcmf_msgbuf_txflow._entry_ptr, ptr @brcmf_msgbuf_txflow._entry_ptr.59, ptr @brcmf_proto_msgbuf_attach._entry, ptr @brcmf_proto_msgbuf_attach._entry.13, ptr @brcmf_proto_msgbuf_attach._entry_ptr, ptr @brcmf_proto_msgbuf_attach._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @brcmf_proto_msgbuf_attach.__key, ptr @.str.16, ptr @brcmf_proto_msgbuf_attach.__key.17, ptr @.str.18, ptr @.str.19, ptr @brcmf_proto_msgbuf_attach.__key.20, ptr @.str.21, ptr @brcmf_proto_msgbuf_attach.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.80, ptr @.str.85, ptr @.str.86, ptr @.str.89, ptr @.str.91], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_delete_flowring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_delete_flowring._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_msgbuf_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_msgbuf_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_msgbuf_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_msgbuf_attach.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_msgbuf_attach.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_msgbuf_attach.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_process_msgtype._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_process_gen_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_process_ring_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_process_flow_ring_create_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_process_flow_ring_delete_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_process_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_process_rx_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_process_rx_complete._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_txflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_txflow._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_query_dcmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_tx_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_rxbuf_data_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_rxbuf_data_post._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_flowring_create_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_flowring_create_worker._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msgbuf_flowring_create_worker._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_proto_msgbuf_rx_trigger(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr1, align 4
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %commonrings = getelementptr inbounds %struct.brcmf_msgbuf, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %commonrings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %commonrings, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @brcmf_msgbuf_process_rx(ptr noundef %7, ptr noundef %11)
  %12 = ptrtoint ptr %commonrings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %commonrings, align 4
  %arrayidx3 = getelementptr ptr, ptr %13, i32 3
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3, align 4
  tail call fastcc void @brcmf_msgbuf_process_rx(ptr noundef %7, ptr noundef %15)
  %16 = ptrtoint ptr %commonrings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %commonrings, align 4
  %arrayidx5 = getelementptr ptr, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx5, align 4
  tail call fastcc void @brcmf_msgbuf_process_rx(ptr noundef %7, ptr noundef %19)
  %txstatus_done_map = getelementptr inbounds %struct.brcmf_msgbuf, ptr %7, i32 0, i32 33
  %20 = ptrtoint ptr %txstatus_done_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %txstatus_done_map, align 4
  %max_flowrings = getelementptr inbounds %struct.brcmf_msgbuf, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max_flowrings, align 4
  %conv = zext i16 %23 to i32
  %call6 = tail call i32 @_find_next_bit_be(ptr noundef %21, i32 noundef %conv, i32 noundef 0) #10
  %24 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_flowrings, align 4
  %conv847 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %conv847)
  %cmp48 = icmp ult i32 %call6, %conv847
  br i1 %cmp48, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flowrings = getelementptr inbounds %struct.brcmf_msgbuf, ptr %7, i32 0, i32 2
  %flow = getelementptr inbounds %struct.brcmf_msgbuf, ptr %7, i32 0, i32 29
  %flow_map.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %7, i32 0, i32 32
  %txflow_wq.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %7, i32 0, i32 30
  %txflow_work.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %7, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %flowid.049 = phi i32 [ %call6, %for.body.lr.ph ], [ %call23, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %txstatus_done_map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %txstatus_done_map, align 4
  tail call void @_clear_bit(i32 noundef %flowid.049, ptr noundef %27) #10
  %28 = ptrtoint ptr %flowrings to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %flowrings, align 4
  %arrayidx11 = getelementptr ptr, ptr %29, i32 %flowid.049
  %30 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx11, align 4
  %32 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %flow, align 4
  %conv12 = trunc i32 %flowid.049 to i16
  %call13 = tail call i32 @brcmf_flowring_qlen(ptr noundef %33, i16 noundef zeroext %conv12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, 32
  br i1 %cmp14, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %lor.lhs.false.for.inc_crit_edge, label %land.lhs.true

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false
  %outstanding_tx = getelementptr inbounds %struct.brcmf_commonring, ptr %31, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %outstanding_tx, i32 noundef 4) #10
  %34 = ptrtoint ptr %outstanding_tx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %outstanding_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %35)
  %cmp17 = icmp slt i32 %35, 32
  br i1 %cmp17, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %for.body.if.then_crit_edge
  %36 = ptrtoint ptr %flow_map.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %flow_map.i, align 4
  tail call void @_set_bit(i32 noundef %flowid.049, ptr noundef %37) #10
  %38 = ptrtoint ptr %txflow_wq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %txflow_wq.i, align 4
  %call.i.i46 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %txflow_work.i) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %40 = ptrtoint ptr %txstatus_done_map to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %txstatus_done_map, align 4
  %42 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %max_flowrings, align 4
  %conv22 = zext i16 %43 to i32
  %add = add nuw i32 %flowid.049, 1
  %call23 = tail call i32 @_find_next_bit_be(ptr noundef %41, i32 noundef %conv22, i32 noundef %add) #10
  %44 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %max_flowrings, align 4
  %conv8 = zext i16 %45 to i32
  %cmp = icmp ult i32 %call23, %conv8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_msgbuf_process_rx(ptr noundef %msgbuf, ptr noundef %commonring) unnamed_addr #0 align 64 {
entry:
  %count = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %count) #10
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %count, align 2, !annotation !204
  %rx_dataoffset = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 7
  %rxbufpost.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 10
  %max_rxbufpost.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 8
  %rx_pktids.i133.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 28
  %tx_pktids.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 27
  %txstatus_done_map.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 33
  %flowrings.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 2
  %cur_eventbuf.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 14
  %max_eventbuf.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 13
  %ioctl_resp_status.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 19
  %ioctl_resp_ret_len.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 20
  %ioctl_resp_pktid.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 21
  %ctl_completed.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 26
  %ioctl_resp_wait.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 25
  %cur_ioctlrespbuf.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 12
  %max_ioctlrespbuf.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 11
  %flowring_dma_handle.i.i83.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 3
  %flow.i.i86.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 29
  %flow_map.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 32
  %txflow_wq.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 30
  %txflow_work.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 31
  %item_len = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 4
  br label %again

again:                                            ; preds = %if.end12.again_crit_edge, %entry
  %call = call ptr @brcmf_commonring_get_read_ptr(ptr noundef %commonring, ptr noundef nonnull %count) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %again.cleanup_crit_edge, label %while.condthread-pre-split

again.cleanup_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.condthread-pre-split:                       ; preds = %again
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %1)
  %.pr = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool.not31 = icmp eq i16 %.pr, 0
  br i1 %tobool.not31, label %while.condthread-pre-split.if.end12_crit_edge, label %while.condthread-pre-split.while.body_crit_edge

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  br label %while.body

while.condthread-pre-split.if.end12_crit_edge:    ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.condthread-pre-split.while.body_crit_edge
  %processed.033 = phi i16 [ %processed.1, %if.end8.while.body_crit_edge ], [ 0, %while.condthread-pre-split.while.body_crit_edge ]
  %buf.032 = phi ptr [ %add.ptr2, %if.end8.while.body_crit_edge ], [ %call, %while.condthread-pre-split.while.body_crit_edge ]
  %2 = ptrtoint ptr %rx_dataoffset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_dataoffset, align 2
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %buf.032, i32 %conv
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end37.i [
    i8 1, label %do.body.i
    i8 2, label %do.body3.i
    i8 4, label %do.body7.i
    i8 6, label %do.body11.i
    i8 10, label %do.body15.i
    i8 12, label %do.body19.i
    i8 14, label %do.body23.i
    i8 16, label %do.body27.i
    i8 18, label %do.body31.i
  ]

do.body.i:                                        ; preds = %while.body
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_process_msgtype, ptr noundef nonnull @.str.25) #10
  %compl_hdr.i.i = getelementptr inbounds %struct.msgbuf_gen_status, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %compl_hdr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %compl_hdr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i, label %do.body.i.brcmf_msgbuf_process_msgtype.exit_crit_edge, label %do.end.i.i

do.body.i.brcmf_msgbuf_process_msgtype.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_process_msgtype.exit

do.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call i16 @llvm.bswap.i16(i16 %8) #10
  %conv.i.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msgbuf, align 4
  %wiphy.i.i = getelementptr inbounds %struct.brcmf_pub, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %conv.i.i) #13
  br label %brcmf_msgbuf_process_msgtype.exit

do.body3.i:                                       ; preds = %while.body
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_process_msgtype, ptr noundef nonnull @.str.26) #10
  %compl_hdr.i59.i = getelementptr inbounds %struct.msgbuf_ring_status, ptr %add.ptr, i32 0, i32 1
  %14 = ptrtoint ptr %compl_hdr.i59.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %compl_hdr.i59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i60.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i60.i, label %do.body3.i.brcmf_msgbuf_process_msgtype.exit_crit_edge, label %if.then.i.i

do.body3.i.brcmf_msgbuf_process_msgtype.exit_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_process_msgtype.exit

if.then.i.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call i16 @llvm.bswap.i16(i16 %15) #10
  %conv.i61.i = zext i16 %16 to i32
  %17 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msgbuf, align 4
  %flow_ring_id.i.i = getelementptr inbounds %struct.msgbuf_ring_status, ptr %add.ptr, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %flow_ring_id.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flow_ring_id.i.i, align 2
  %21 = call i16 @llvm.bswap.i16(i16 %20) #10
  %conv3.i.i = zext i16 %21 to i32
  %wiphy.i62.i = getelementptr inbounds %struct.brcmf_pub, ptr %18, i32 0, i32 2
  %22 = ptrtoint ptr %wiphy.i62.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy.i62.i, align 4
  %dev.i63.i = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i63.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %conv3.i.i, i32 noundef %conv.i61.i) #13
  br label %brcmf_msgbuf_process_msgtype.exit

do.body7.i:                                       ; preds = %while.body
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_process_msgtype, ptr noundef nonnull @.str.27) #10
  %compl_hdr.i64.i = getelementptr inbounds %struct.msgbuf_flowring_create_resp, ptr %add.ptr, i32 0, i32 1
  %flow_ring_id.i65.i = getelementptr inbounds %struct.msgbuf_flowring_create_resp, ptr %add.ptr, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %flow_ring_id.i65.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flow_ring_id.i65.i, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #10
  %sub.i.i = add i16 %26, -2
  %27 = ptrtoint ptr %compl_hdr.i64.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %compl_hdr.i64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i66.i = icmp eq i16 %28, 0
  br i1 %tobool.not.i66.i, label %do.body9.i.i, label %do.end.i69.i

do.end.i69.i:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = call i16 @llvm.bswap.i16(i16 %28) #10
  %30 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msgbuf, align 4
  %wiphy.i67.i = getelementptr inbounds %struct.brcmf_pub, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %wiphy.i67.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy.i67.i, align 4
  %dev.i68.i = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  %conv6.i.i = zext i16 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i68.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %conv6.i.i) #13
  %conv.i.i.i = zext i16 %sub.i.i to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_remove_flowring, ptr noundef nonnull @.str.54, i32 noundef %conv.i.i.i) #10
  %34 = ptrtoint ptr %flowrings.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %flowrings.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %35, i32 %conv.i.i.i
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i.i, align 4
  %buf_addr.i.i.i = getelementptr inbounds %struct.brcmf_commonring, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %buf_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf_addr.i.i.i, align 4
  %40 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %msgbuf, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev.i.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i.i, align 4
  %46 = ptrtoint ptr %flowring_dma_handle.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %flowring_dma_handle.i.i83.i, align 4
  %arrayidx2.i.i.i = getelementptr i32, ptr %47, i32 %conv.i.i.i
  %48 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx2.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %45, i32 noundef 24576, ptr noundef %39, i32 noundef %49, i32 noundef 0) #10
  %50 = ptrtoint ptr %flow.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %flow.i.i86.i, align 4
  call void @brcmf_flowring_delete(ptr noundef %51, i16 noundef zeroext %sub.i.i) #10
  br label %brcmf_msgbuf_process_msgtype.exit

do.body9.i.i:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv10.i.i = zext i16 %sub.i.i to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %conv10.i.i, i32 noundef 0) #10
  %52 = ptrtoint ptr %flow.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %flow.i.i86.i, align 4
  call void @brcmf_flowring_open(ptr noundef %53, i16 noundef zeroext %sub.i.i) #10
  %54 = ptrtoint ptr %flow_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %flow_map.i.i.i, align 4
  call void @_set_bit(i32 noundef %conv10.i.i, ptr noundef %55) #10
  %56 = ptrtoint ptr %txflow_wq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %txflow_wq.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %txflow_work.i.i.i) #10
  br label %brcmf_msgbuf_process_msgtype.exit

do.body11.i:                                      ; preds = %while.body
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_process_msgtype, ptr noundef nonnull @.str.28) #10
  %compl_hdr.i70.i = getelementptr inbounds %struct.msgbuf_flowring_delete_resp, ptr %add.ptr, i32 0, i32 1
  %flow_ring_id.i71.i = getelementptr inbounds %struct.msgbuf_flowring_delete_resp, ptr %add.ptr, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %flow_ring_id.i71.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %flow_ring_id.i71.i, align 2
  %60 = call i16 @llvm.bswap.i16(i16 %59) #10
  %sub.i72.i = add i16 %60, -2
  %61 = ptrtoint ptr %compl_hdr.i70.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %compl_hdr.i70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not.i73.i = icmp eq i16 %62, 0
  br i1 %tobool.not.i73.i, label %do.body9.i85.i, label %do.end.i77.i

do.end.i77.i:                                     ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = call i16 @llvm.bswap.i16(i16 %62) #10
  %64 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %msgbuf, align 4
  %wiphy.i74.i = getelementptr inbounds %struct.brcmf_pub, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %wiphy.i74.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wiphy.i74.i, align 4
  %dev.i75.i = getelementptr inbounds %struct.wiphy, ptr %67, i32 0, i32 56
  %conv6.i76.i = zext i16 %63 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i75.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %conv6.i76.i) #13
  br label %brcmf_msgbuf_process_flow_ring_delete_response.exit.i

do.body9.i85.i:                                   ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv10.i78.i = zext i16 %sub.i72.i to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %conv10.i78.i, i32 noundef 0) #10
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_remove_flowring, ptr noundef nonnull @.str.54, i32 noundef %conv10.i78.i) #10
  %68 = ptrtoint ptr %flowrings.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %flowrings.i.i, align 4
  %arrayidx.i.i80.i = getelementptr ptr, ptr %69, i32 %conv10.i78.i
  %70 = ptrtoint ptr %arrayidx.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i80.i, align 4
  %buf_addr.i.i81.i = getelementptr inbounds %struct.brcmf_commonring, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %buf_addr.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buf_addr.i.i81.i, align 4
  %74 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %msgbuf, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %dev.i.i82.i = getelementptr inbounds %struct.brcmf_bus, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %dev.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i82.i, align 4
  %80 = ptrtoint ptr %flowring_dma_handle.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %flowring_dma_handle.i.i83.i, align 4
  %arrayidx2.i.i84.i = getelementptr i32, ptr %81, i32 %conv10.i78.i
  %82 = ptrtoint ptr %arrayidx2.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx2.i.i84.i, align 4
  call void @dma_free_attrs(ptr noundef %79, i32 noundef 24576, ptr noundef %73, i32 noundef %83, i32 noundef 0) #10
  br label %brcmf_msgbuf_process_flow_ring_delete_response.exit.i

brcmf_msgbuf_process_flow_ring_delete_response.exit.i: ; preds = %do.body9.i85.i, %do.end.i77.i
  %84 = ptrtoint ptr %flow.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %flow.i.i86.i, align 4
  call void @brcmf_flowring_delete(ptr noundef %85, i16 noundef zeroext %sub.i72.i) #10
  br label %brcmf_msgbuf_process_msgtype.exit

do.body15.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_process_msgtype, ptr noundef nonnull @.str.29) #10
  br label %brcmf_msgbuf_process_msgtype.exit

do.body19.i:                                      ; preds = %while.body
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_process_msgtype, ptr noundef nonnull @.str.30) #10
  %compl_hdr.i87.i = getelementptr inbounds %struct.msgbuf_ioctl_resp_hdr, ptr %add.ptr, i32 0, i32 1
  %86 = ptrtoint ptr %compl_hdr.i87.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %compl_hdr.i87.i, align 4
  %88 = call i16 @llvm.bswap.i16(i16 %87) #10
  %conv.i88.i = sext i16 %88 to i32
  %89 = ptrtoint ptr %ioctl_resp_status.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv.i88.i, ptr %ioctl_resp_status.i.i, align 4
  %resp_len.i.i = getelementptr inbounds %struct.msgbuf_ioctl_resp_hdr, ptr %add.ptr, i32 0, i32 2
  %90 = ptrtoint ptr %resp_len.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %resp_len.i.i, align 4
  %92 = call i16 @llvm.bswap.i16(i16 %91) #10
  %conv1.i.i = zext i16 %92 to i32
  %93 = ptrtoint ptr %ioctl_resp_ret_len.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv1.i.i, ptr %ioctl_resp_ret_len.i.i, align 4
  %request_id.i.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %add.ptr, i32 0, i32 4
  %94 = ptrtoint ptr %request_id.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %request_id.i.i, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #10
  %97 = ptrtoint ptr %ioctl_resp_pktid.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %ioctl_resp_pktid.i.i, align 4
  %98 = ptrtoint ptr %ctl_completed.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %ctl_completed.i.i.i, align 4
  call void @__wake_up(ptr noundef %ioctl_resp_wait.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %99 = ptrtoint ptr %cur_ioctlrespbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cur_ioctlrespbuf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i89.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i89.i, label %do.body19.i.brcmf_msgbuf_process_ioctl_complete.exit.i_crit_edge, label %if.then.i90.i

do.body19.i.brcmf_msgbuf_process_ioctl_complete.exit.i_crit_edge: ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_process_ioctl_complete.exit.i

if.then.i90.i:                                    ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i.i = add i32 %100, -1
  %101 = ptrtoint ptr %cur_ioctlrespbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %dec.i.i, ptr %cur_ioctlrespbuf.i.i, align 4
  br label %brcmf_msgbuf_process_ioctl_complete.exit.i

brcmf_msgbuf_process_ioctl_complete.exit.i:       ; preds = %if.then.i90.i, %do.body19.i.brcmf_msgbuf_process_ioctl_complete.exit.i_crit_edge
  %102 = ptrtoint ptr %max_ioctlrespbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_ioctlrespbuf.i.i.i, align 4
  %104 = ptrtoint ptr %cur_ioctlrespbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cur_ioctlrespbuf.i.i, align 4
  %sub.i.i.i = sub i32 %103, %105
  %call.i.i.i = call fastcc i32 @brcmf_msgbuf_rxbuf_ctrl_post(ptr noundef %msgbuf, i1 noundef zeroext false, i32 noundef %sub.i.i.i) #10
  %106 = ptrtoint ptr %cur_ioctlrespbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cur_ioctlrespbuf.i.i, align 4
  %add.i.i.i = add i32 %107, %call.i.i.i
  store i32 %add.i.i.i, ptr %cur_ioctlrespbuf.i.i, align 4
  br label %brcmf_msgbuf_process_msgtype.exit

do.body23.i:                                      ; preds = %while.body
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_process_msgtype, ptr noundef nonnull @.str.31) #10
  %108 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %msgbuf, align 4
  %request_id.i91.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %add.ptr, i32 0, i32 4
  %110 = ptrtoint ptr %request_id.i91.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %request_id.i91.i, align 4
  %112 = call i32 @llvm.bswap.i32(i32 %111) #10
  %event_data_len.i.i = getelementptr inbounds %struct.msgbuf_rx_event, ptr %add.ptr, i32 0, i32 2
  %113 = ptrtoint ptr %event_data_len.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %event_data_len.i.i, align 4
  %115 = call i16 @llvm.bswap.i16(i16 %114) #10
  %116 = ptrtoint ptr %cur_eventbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cur_eventbuf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i92.i = icmp eq i32 %117, 0
  br i1 %tobool.not.i92.i, label %do.body23.i.if.end.i.i_crit_edge, label %if.then.i94.i

do.body23.i.if.end.i.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i94.i:                                    ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i93.i = add i32 %117, -1
  %118 = ptrtoint ptr %cur_eventbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %dec.i93.i, ptr %cur_eventbuf.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i94.i, %do.body23.i.if.end.i.i_crit_edge
  %119 = ptrtoint ptr %max_eventbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max_eventbuf.i.i.i, align 4
  %121 = ptrtoint ptr %cur_eventbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cur_eventbuf.i.i, align 4
  %sub.i.i95.i = sub i32 %120, %122
  %call.i.i96.i = call fastcc i32 @brcmf_msgbuf_rxbuf_ctrl_post(ptr noundef %msgbuf, i1 noundef zeroext true, i32 noundef %sub.i.i95.i) #10
  %123 = ptrtoint ptr %cur_eventbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cur_eventbuf.i.i, align 4
  %add.i.i97.i = add i32 %124, %call.i.i96.i
  store i32 %add.i.i97.i, ptr %cur_eventbuf.i.i, align 4
  %125 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %msgbuf, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %dev.i98.i = getelementptr inbounds %struct.brcmf_bus, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %dev.i98.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i98.i, align 4
  %131 = ptrtoint ptr %rx_pktids.i133.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rx_pktids.i133.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %112)
  %cmp.not.i.i.i = icmp ugt i32 %134, %112
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_get_pktid, ptr noundef nonnull @.str.47, i32 noundef %112, i32 noundef %134) #10
  br label %brcmf_msgbuf_process_msgtype.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %array.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %132, i32 0, i32 3
  %135 = ptrtoint ptr %array.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %array.i.i.i, align 4
  %arrayidx.i.i99.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %136, i32 %112
  %137 = ptrtoint ptr %arrayidx.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i.i99.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i.i.i = icmp eq i32 %138, 0
  br i1 %tobool.not.i.i.i, label %do.body9.i.i.i, label %brcmf_msgbuf_get_pktid.exit.i.i

do.body9.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_get_pktid, ptr noundef nonnull @.str.48, i32 noundef %112) #10
  br label %brcmf_msgbuf_process_msgtype.exit

brcmf_msgbuf_get_pktid.exit.i.i:                  ; preds = %if.end.i.i.i
  %physaddr.i.i.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %136, i32 %112, i32 3
  %139 = ptrtoint ptr %physaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %physaddr.i.i.i, align 4
  %skb5.i.i.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %136, i32 %112, i32 2
  %141 = ptrtoint ptr %skb5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %skb5.i.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 6
  %143 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len.i.i.i, align 4
  %data_offset.i.i.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %136, i32 %112, i32 1
  %145 = ptrtoint ptr %data_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %data_offset.i.i.i, align 4
  %conv.i.i100.i = zext i16 %146 to i32
  %sub.i58.i.i = sub i32 %144, %conv.i.i100.i
  %direction.i.i.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %132, i32 0, i32 2
  %147 = ptrtoint ptr %direction.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %direction.i.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %130, i32 noundef %140, i32 noundef %sub.i58.i.i, i32 noundef %148, i32 noundef 0) #10
  %149 = ptrtoint ptr %skb5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %skb5.i.i.i, align 4
  %151 = ptrtoint ptr %arrayidx.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %arrayidx.i.i99.i, align 4
  %tobool4.not.i.i = icmp eq ptr %150, null
  br i1 %tobool4.not.i.i, label %brcmf_msgbuf_get_pktid.exit.i.i.brcmf_msgbuf_process_msgtype.exit_crit_edge, label %if.end6.i.i

brcmf_msgbuf_get_pktid.exit.i.i.brcmf_msgbuf_process_msgtype.exit_crit_edge: ; preds = %brcmf_msgbuf_get_pktid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_process_msgtype.exit

if.end6.i.i:                                      ; preds = %brcmf_msgbuf_get_pktid.exit.i.i
  %152 = ptrtoint ptr %rx_dataoffset to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %rx_dataoffset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool7.not.i.i = icmp eq i16 %153, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

if.end6.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i101.i = zext i16 %153 to i32
  %call10.i.i = call ptr @skb_pull(ptr noundef nonnull %150, i32 noundef %conv.i101.i) #10
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %if.end6.i.i.if.end11.i.i_crit_edge
  %conv12.i.i = zext i16 %115 to i32
  call void @skb_trim(ptr noundef nonnull %150, i32 noundef %conv12.i.i) #10
  %154 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %msgbuf, align 4
  %ifidx.i.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %add.ptr, i32 0, i32 1
  %156 = ptrtoint ptr %ifidx.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %ifidx.i.i, align 1
  %conv15.i.i = zext i8 %157 to i32
  %call16.i.i = call ptr @brcmf_get_ifp(ptr noundef %155, i32 noundef %conv15.i.i) #10
  %tobool17.not.i.i = icmp eq ptr %call16.i.i, null
  br i1 %tobool17.not.i.i, label %if.end11.i.i.do.end.i103.i_crit_edge, label %lor.lhs.false.i.i

if.end11.i.i.do.end.i103.i_crit_edge:             ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i103.i

lor.lhs.false.i.i:                                ; preds = %if.end11.i.i
  %ndev.i.i = getelementptr inbounds %struct.brcmf_if, ptr %call16.i.i, i32 0, i32 2
  %158 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ndev.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %159, null
  br i1 %tobool18.not.i.i, label %lor.lhs.false.i.i.do.end.i103.i_crit_edge, label %if.end27.i.i

lor.lhs.false.i.i.do.end.i103.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i103.i

do.end.i103.i:                                    ; preds = %lor.lhs.false.i.i.do.end.i103.i_crit_edge, %if.end11.i.i.do.end.i103.i_crit_edge
  %wiphy.i102.i = getelementptr inbounds %struct.brcmf_pub, ptr %109, i32 0, i32 2
  %160 = ptrtoint ptr %wiphy.i102.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %wiphy.i102.i, align 4
  %dev21.i.i = getelementptr inbounds %struct.wiphy, ptr %161, i32 0, i32 56
  %162 = ptrtoint ptr %ifidx.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %ifidx.i.i, align 1
  %conv24.i.i = zext i8 %163 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %conv24.i.i) #13
  br label %exit.i.i

if.end27.i.i:                                     ; preds = %lor.lhs.false.i.i
  %call29.i.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %150, ptr noundef nonnull %159) #10
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 15, i32 0, i32 18
  %164 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %call29.i.i, ptr %protocol.i.i, align 8
  %165 = ptrtoint ptr %call16.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %call16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30612, i16 %call29.i.i)
  %cmp.not.i59.i.i = icmp eq i16 %call29.i.i, -30612
  br i1 %cmp.not.i59.i.i, label %if.end.i62.i.i, label %if.end27.i.i.exit.i.i_crit_edge

if.end27.i.i.exit.i.i_crit_edge:                  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.i.i

if.end.i62.i.i:                                   ; preds = %if.end27.i.i
  %len.i60.i.i = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 6
  %167 = ptrtoint ptr %len.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %len.i60.i.i, align 4
  %add.i61.i.i = add i32 %168, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %add.i61.i.i)
  %cmp2.i.i.i = icmp ult i32 %add.i61.i.i, 72
  br i1 %cmp2.i.i.i, label %if.end.i62.i.i.exit.i.i_crit_edge, label %if.end5.i.i.i

if.end.i62.i.i.exit.i.i_crit_edge:                ; preds = %if.end.i62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i62.i.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 18
  %169 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 15, i32 0, i32 21
  %171 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %172 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %170, i32 %conv.i.i.i.i
  %oui.i.i.i = getelementptr inbounds %struct.brcmf_event, ptr %add.ptr.i.i.i.i, i32 0, i32 1, i32 3
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.49, ptr noundef dereferenceable(3) %oui.i.i.i, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %if.end22.i.i.i, label %if.end5.i.i.i.exit.i.i_crit_edge

if.end5.i.i.i.exit.i.i_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.i.i

if.end22.i.i.i:                                   ; preds = %if.end5.i.i.i
  %usr_subtype.i.i.i = getelementptr inbounds %struct.brcmf_event, ptr %add.ptr.i.i.i.i, i32 0, i32 1, i32 4
  %173 = ptrtoint ptr %usr_subtype.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %usr_subtype.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %174)
  %cmp26.not.i.i.i = icmp eq i16 %174, 1
  br i1 %cmp26.not.i.i.i, label %if.end29.i.i.i, label %if.end22.i.i.i.exit.i.i_crit_edge

if.end22.i.i.i.exit.i.i_crit_edge:                ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.i.i

if.end29.i.i.i:                                   ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @brcmf_fweh_process_event(ptr noundef %166, ptr noundef %add.ptr.i.i.i.i, i32 noundef %add.i61.i.i, i32 noundef 3264) #10
  br label %exit.i.i

exit.i.i:                                         ; preds = %if.end29.i.i.i, %if.end22.i.i.i.exit.i.i_crit_edge, %if.end5.i.i.i.exit.i.i_crit_edge, %if.end.i62.i.i.exit.i.i_crit_edge, %if.end27.i.i.exit.i.i_crit_edge, %do.end.i103.i
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %150) #10
  br label %brcmf_msgbuf_process_msgtype.exit

do.body27.i:                                      ; preds = %while.body
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_process_msgtype, ptr noundef nonnull @.str.32) #10
  %request_id.i104.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %add.ptr, i32 0, i32 4
  %175 = ptrtoint ptr %request_id.i104.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %request_id.i104.i, align 4
  %177 = call i32 @llvm.bswap.i32(i32 %176) #10
  %sub.i105.i = add i32 %177, -1
  %flow_ring_id.i106.i = getelementptr inbounds %struct.msgbuf_tx_status, ptr %add.ptr, i32 0, i32 1, i32 1
  %178 = ptrtoint ptr %flow_ring_id.i106.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %flow_ring_id.i106.i, align 2
  %180 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %msgbuf, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %dev.i107.i = getelementptr inbounds %struct.brcmf_bus, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %dev.i107.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev.i107.i, align 4
  %186 = ptrtoint ptr %tx_pktids.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %tx_pktids.i.i, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %sub.i105.i)
  %cmp.not.i.i108.i = icmp ugt i32 %189, %sub.i105.i
  br i1 %cmp.not.i.i108.i, label %if.end.i.i113.i, label %do.body.i.i109.i

do.body.i.i109.i:                                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_get_pktid, ptr noundef nonnull @.str.47, i32 noundef %sub.i105.i, i32 noundef %189) #10
  br label %brcmf_msgbuf_process_msgtype.exit

if.end.i.i113.i:                                  ; preds = %do.body27.i
  %array.i.i110.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %187, i32 0, i32 3
  %190 = ptrtoint ptr %array.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %array.i.i110.i, align 4
  %arrayidx.i.i111.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %191, i32 %sub.i105.i
  %192 = ptrtoint ptr %arrayidx.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx.i.i111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i.i112.i = icmp eq i32 %193, 0
  br i1 %tobool.not.i.i112.i, label %do.body9.i.i114.i, label %brcmf_msgbuf_get_pktid.exit.i123.i

do.body9.i.i114.i:                                ; preds = %if.end.i.i113.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_get_pktid, ptr noundef nonnull @.str.48, i32 noundef %sub.i105.i) #10
  br label %brcmf_msgbuf_process_msgtype.exit

brcmf_msgbuf_get_pktid.exit.i123.i:               ; preds = %if.end.i.i113.i
  %physaddr.i.i115.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %191, i32 %sub.i105.i, i32 3
  %194 = ptrtoint ptr %physaddr.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %physaddr.i.i115.i, align 4
  %skb5.i.i116.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %191, i32 %sub.i105.i, i32 2
  %196 = ptrtoint ptr %skb5.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %skb5.i.i116.i, align 4
  %len.i.i117.i = getelementptr inbounds %struct.sk_buff, ptr %197, i32 0, i32 6
  %198 = ptrtoint ptr %len.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %len.i.i117.i, align 4
  %data_offset.i.i118.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %191, i32 %sub.i105.i, i32 1
  %200 = ptrtoint ptr %data_offset.i.i118.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %data_offset.i.i118.i, align 4
  %conv.i.i119.i = zext i16 %201 to i32
  %sub.i.i120.i = sub i32 %199, %conv.i.i119.i
  %direction.i.i121.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %187, i32 0, i32 2
  %202 = ptrtoint ptr %direction.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %direction.i.i121.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %185, i32 noundef %195, i32 noundef %sub.i.i120.i, i32 noundef %203, i32 noundef 0) #10
  %204 = ptrtoint ptr %skb5.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %skb5.i.i116.i, align 4
  %206 = ptrtoint ptr %arrayidx.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %arrayidx.i.i111.i, align 4
  %tobool.not.i122.i = icmp eq ptr %205, null
  br i1 %tobool.not.i122.i, label %brcmf_msgbuf_get_pktid.exit.i123.i.brcmf_msgbuf_process_msgtype.exit_crit_edge, label %if.end.i128.i

brcmf_msgbuf_get_pktid.exit.i123.i.brcmf_msgbuf_process_msgtype.exit_crit_edge: ; preds = %brcmf_msgbuf_get_pktid.exit.i123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_process_msgtype.exit

if.end.i128.i:                                    ; preds = %brcmf_msgbuf_get_pktid.exit.i123.i
  call void @__sanitizer_cov_trace_pc() #12
  %207 = call i16 @llvm.bswap.i16(i16 %179) #10
  %sub1.i.i = add i16 %207, -2
  %conv3.i124.i = zext i16 %sub1.i.i to i32
  %208 = ptrtoint ptr %txstatus_done_map.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %txstatus_done_map.i.i, align 4
  call void @_set_bit(i32 noundef %conv3.i124.i, ptr noundef %209) #10
  %210 = ptrtoint ptr %flowrings.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %flowrings.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %211, i32 %conv3.i124.i
  %212 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx.i.i, align 4
  %outstanding_tx.i.i = getelementptr inbounds %struct.brcmf_commonring, ptr %213, i32 0, i32 16
  %call.i.i.i125.i = call zeroext i1 @__kasan_check_write(ptr noundef %outstanding_tx.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %outstanding_tx.i.i, i32 1, i32 3, i32 1) #10
  %214 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %outstanding_tx.i.i, ptr %outstanding_tx.i.i, i32 1, ptr elementtype(i32) %outstanding_tx.i.i) #10, !srcloc !205
  %215 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %msgbuf, align 4
  %ifidx.i126.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %add.ptr, i32 0, i32 1
  %217 = ptrtoint ptr %ifidx.i126.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %ifidx.i126.i, align 1
  %conv6.i127.i = zext i8 %218 to i32
  %call7.i.i = call ptr @brcmf_get_ifp(ptr noundef %216, i32 noundef %conv6.i127.i) #10
  call void @brcmf_txfinalize(ptr noundef %call7.i.i, ptr noundef nonnull %205, i1 noundef zeroext true) #10
  br label %brcmf_msgbuf_process_msgtype.exit

do.body31.i:                                      ; preds = %while.body
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_process_msgtype, ptr noundef nonnull @.str.33) #10
  %219 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %msgbuf, align 4
  %221 = ptrtoint ptr %rxbufpost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %rxbufpost.i.i.i, align 4
  %sub.i.i129.i = add i32 %222, -1
  store i32 %sub.i.i129.i, ptr %rxbufpost.i.i.i, align 4
  %223 = ptrtoint ptr %max_rxbufpost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %max_rxbufpost.i.i.i, align 4
  %sub2.i.i.i = add i32 %224, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i129.i, i32 %sub2.i.i.i)
  %cmp.not.i.i130.i = icmp ugt i32 %sub.i.i129.i, %sub2.i.i.i
  br i1 %cmp.not.i.i130.i, label %do.body31.i.brcmf_msgbuf_update_rxbufpost_count.exit.i.i_crit_edge, label %if.then.i.i.i

do.body31.i.brcmf_msgbuf_update_rxbufpost_count.exit.i.i_crit_edge: ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_update_rxbufpost_count.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef %msgbuf) #10
  br label %brcmf_msgbuf_update_rxbufpost_count.exit.i.i

brcmf_msgbuf_update_rxbufpost_count.exit.i.i:     ; preds = %if.then.i.i.i, %do.body31.i.brcmf_msgbuf_update_rxbufpost_count.exit.i.i_crit_edge
  %data_offset2.i.i = getelementptr inbounds %struct.msgbuf_rx_complete, ptr %add.ptr, i32 0, i32 4
  %225 = ptrtoint ptr %data_offset2.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %data_offset2.i.i, align 4
  %227 = call i16 @llvm.bswap.i16(i16 %226) #10
  %data_len.i.i = getelementptr inbounds %struct.msgbuf_rx_complete, ptr %add.ptr, i32 0, i32 3
  %228 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %data_len.i.i, align 2
  %230 = call i16 @llvm.bswap.i16(i16 %229) #10
  %request_id.i131.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %add.ptr, i32 0, i32 4
  %231 = ptrtoint ptr %request_id.i131.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %request_id.i131.i, align 4
  %233 = call i32 @llvm.bswap.i32(i32 %232) #10
  %flags3.i.i = getelementptr inbounds %struct.msgbuf_rx_complete, ptr %add.ptr, i32 0, i32 5
  %234 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %flags3.i.i, align 2
  %236 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %msgbuf, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %dev.i132.i = getelementptr inbounds %struct.brcmf_bus, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %dev.i132.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev.i132.i, align 4
  %242 = ptrtoint ptr %rx_pktids.i133.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %rx_pktids.i133.i, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %243, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %245, i32 %233)
  %cmp.not.i87.i.i = icmp ugt i32 %245, %233
  br i1 %cmp.not.i87.i.i, label %if.end.i.i138.i, label %do.body.i.i134.i

do.body.i.i134.i:                                 ; preds = %brcmf_msgbuf_update_rxbufpost_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_get_pktid, ptr noundef nonnull @.str.47, i32 noundef %233, i32 noundef %245) #10
  br label %brcmf_msgbuf_process_msgtype.exit

if.end.i.i138.i:                                  ; preds = %brcmf_msgbuf_update_rxbufpost_count.exit.i.i
  %array.i.i135.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %243, i32 0, i32 3
  %246 = ptrtoint ptr %array.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %array.i.i135.i, align 4
  %arrayidx.i.i136.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %247, i32 %233
  %248 = ptrtoint ptr %arrayidx.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx.i.i136.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool.not.i.i137.i = icmp eq i32 %249, 0
  br i1 %tobool.not.i.i137.i, label %do.body9.i.i139.i, label %brcmf_msgbuf_get_pktid.exit.i147.i

do.body9.i.i139.i:                                ; preds = %if.end.i.i138.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_get_pktid, ptr noundef nonnull @.str.48, i32 noundef %233) #10
  br label %brcmf_msgbuf_process_msgtype.exit

brcmf_msgbuf_get_pktid.exit.i147.i:               ; preds = %if.end.i.i138.i
  %physaddr.i.i140.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %247, i32 %233, i32 3
  %250 = ptrtoint ptr %physaddr.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %physaddr.i.i140.i, align 4
  %skb5.i.i141.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %247, i32 %233, i32 2
  %252 = ptrtoint ptr %skb5.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %skb5.i.i141.i, align 4
  %len.i.i142.i = getelementptr inbounds %struct.sk_buff, ptr %253, i32 0, i32 6
  %254 = ptrtoint ptr %len.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %len.i.i142.i, align 4
  %data_offset.i.i143.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %247, i32 %233, i32 1
  %256 = ptrtoint ptr %data_offset.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %data_offset.i.i143.i, align 4
  %conv.i.i144.i = zext i16 %257 to i32
  %sub.i88.i.i = sub i32 %255, %conv.i.i144.i
  %direction.i.i145.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %243, i32 0, i32 2
  %258 = ptrtoint ptr %direction.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %direction.i.i145.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %241, i32 noundef %251, i32 noundef %sub.i88.i.i, i32 noundef %259, i32 noundef 0) #10
  %260 = ptrtoint ptr %skb5.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %skb5.i.i141.i, align 4
  %262 = ptrtoint ptr %arrayidx.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %arrayidx.i.i136.i, align 4
  %tobool.not.i146.i = icmp eq ptr %261, null
  br i1 %tobool.not.i146.i, label %brcmf_msgbuf_get_pktid.exit.i147.i.brcmf_msgbuf_process_msgtype.exit_crit_edge, label %if.end.i148.i

brcmf_msgbuf_get_pktid.exit.i147.i.brcmf_msgbuf_process_msgtype.exit_crit_edge: ; preds = %brcmf_msgbuf_get_pktid.exit.i147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_process_msgtype.exit

if.end.i148.i:                                    ; preds = %brcmf_msgbuf_get_pktid.exit.i147.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %226)
  %tobool5.not.i.i = icmp eq i16 %226, 0
  br i1 %tobool5.not.i.i, label %if.else.i.i, label %if.end.i148.i.if.end14.sink.split.i.i_crit_edge

if.end.i148.i.if.end14.sink.split.i.i_crit_edge:  ; preds = %if.end.i148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end.i148.i
  %263 = ptrtoint ptr %rx_dataoffset to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %rx_dataoffset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %264)
  %tobool8.not.i.i = icmp eq i16 %264, 0
  br i1 %tobool8.not.i.i, label %if.else.i.i.if.end14.i.i_crit_edge, label %if.else.i.i.if.end14.sink.split.i.i_crit_edge

if.else.i.i.if.end14.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split.i.i

if.else.i.i.if.end14.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

if.end14.sink.split.i.i:                          ; preds = %if.else.i.i.if.end14.sink.split.i.i_crit_edge, %if.end.i148.i.if.end14.sink.split.i.i_crit_edge
  %.sink.i.i = phi i16 [ %227, %if.end.i148.i.if.end14.sink.split.i.i_crit_edge ], [ %264, %if.else.i.i.if.end14.sink.split.i.i_crit_edge ]
  %conv11.i.i = zext i16 %.sink.i.i to i32
  %call12.i.i = call ptr @skb_pull(ptr noundef nonnull %261, i32 noundef %conv11.i.i) #10
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end14.sink.split.i.i, %if.else.i.i.if.end14.i.i_crit_edge
  %conv15.i150.i = zext i16 %230 to i32
  call void @skb_trim(ptr noundef nonnull %261, i32 noundef %conv15.i150.i) #10
  %265 = and i16 %235, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %265)
  %cmp.i.i = icmp eq i16 %265, 512
  %266 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %msgbuf, align 4
  br i1 %cmp.i.i, label %if.then18.i.i, label %if.end27.i154.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  %mon_if.i.i = getelementptr inbounds %struct.brcmf_pub, ptr %267, i32 0, i32 11
  %268 = ptrtoint ptr %mon_if.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mon_if.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %269, null
  br i1 %tobool20.not.i.i, label %do.end.i152.i, label %if.end26.i.i

do.end.i152.i:                                    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy.i151.i = getelementptr inbounds %struct.brcmf_pub, ptr %220, i32 0, i32 2
  %270 = ptrtoint ptr %wiphy.i151.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %wiphy.i151.i, align 4
  %dev23.i.i = getelementptr inbounds %struct.wiphy, ptr %271, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #13
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %261) #10
  br label %brcmf_msgbuf_process_msgtype.exit

if.end26.i.i:                                     ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @brcmf_netif_mon_rx(ptr noundef nonnull %269, ptr noundef nonnull %261) #10
  br label %brcmf_msgbuf_process_msgtype.exit

if.end27.i154.i:                                  ; preds = %if.end14.i.i
  %ifidx.i153.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %add.ptr, i32 0, i32 1
  %272 = ptrtoint ptr %ifidx.i153.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %ifidx.i153.i, align 1
  %conv30.i.i = zext i8 %273 to i32
  %call31.i.i = call ptr @brcmf_get_ifp(ptr noundef %267, i32 noundef %conv30.i.i) #10
  %tobool32.not.i.i = icmp eq ptr %call31.i.i, null
  br i1 %tobool32.not.i.i, label %if.end27.i154.i.do.end38.i.i_crit_edge, label %lor.lhs.false.i156.i

if.end27.i154.i.do.end38.i.i_crit_edge:           ; preds = %if.end27.i154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38.i.i

lor.lhs.false.i156.i:                             ; preds = %if.end27.i154.i
  %ndev.i155.i = getelementptr inbounds %struct.brcmf_if, ptr %call31.i.i, i32 0, i32 2
  %274 = ptrtoint ptr %ndev.i155.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %ndev.i155.i, align 4
  %tobool33.not.i.i = icmp eq ptr %275, null
  br i1 %tobool33.not.i.i, label %lor.lhs.false.i156.i.do.end38.i.i_crit_edge, label %if.end46.i.i

lor.lhs.false.i156.i.do.end38.i.i_crit_edge:      ; preds = %lor.lhs.false.i156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38.i.i

do.end38.i.i:                                     ; preds = %lor.lhs.false.i156.i.do.end38.i.i_crit_edge, %if.end27.i154.i.do.end38.i.i_crit_edge
  %wiphy39.i.i = getelementptr inbounds %struct.brcmf_pub, ptr %220, i32 0, i32 2
  %276 = ptrtoint ptr %wiphy39.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %wiphy39.i.i, align 4
  %dev40.i.i = getelementptr inbounds %struct.wiphy, ptr %277, i32 0, i32 56
  %278 = ptrtoint ptr %ifidx.i153.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %ifidx.i153.i, align 1
  %conv43.i.i = zext i8 %279 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40.i.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.51, i32 noundef %conv43.i.i) #13
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %261) #10
  br label %brcmf_msgbuf_process_msgtype.exit

if.end46.i.i:                                     ; preds = %lor.lhs.false.i156.i
  call void @__sanitizer_cov_trace_pc() #12
  %call48.i.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %261, ptr noundef nonnull %275) #10
  %protocol.i157.i = getelementptr inbounds %struct.sk_buff, ptr %261, i32 0, i32 15, i32 0, i32 18
  %280 = ptrtoint ptr %protocol.i157.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %call48.i.i, ptr %protocol.i157.i, align 8
  call void @brcmf_netif_rx(ptr noundef nonnull %call31.i.i, ptr noundef nonnull %261, i1 noundef zeroext false) #10
  br label %brcmf_msgbuf_process_msgtype.exit

do.end37.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %5 to i32
  %281 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %msgbuf, align 4
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %282, i32 0, i32 2
  %283 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %284, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.brcmf_msgbuf_process_msgtype, i32 noundef %conv.i) #13
  br label %brcmf_msgbuf_process_msgtype.exit

brcmf_msgbuf_process_msgtype.exit:                ; preds = %do.end37.i, %if.end46.i.i, %do.end38.i.i, %if.end26.i.i, %do.end.i152.i, %brcmf_msgbuf_get_pktid.exit.i147.i.brcmf_msgbuf_process_msgtype.exit_crit_edge, %do.body9.i.i139.i, %do.body.i.i134.i, %if.end.i128.i, %brcmf_msgbuf_get_pktid.exit.i123.i.brcmf_msgbuf_process_msgtype.exit_crit_edge, %do.body9.i.i114.i, %do.body.i.i109.i, %exit.i.i, %brcmf_msgbuf_get_pktid.exit.i.i.brcmf_msgbuf_process_msgtype.exit_crit_edge, %do.body9.i.i.i, %do.body.i.i.i, %brcmf_msgbuf_process_ioctl_complete.exit.i, %do.body15.i, %brcmf_msgbuf_process_flow_ring_delete_response.exit.i, %do.body9.i.i, %do.end.i69.i, %if.then.i.i, %do.body3.i.brcmf_msgbuf_process_msgtype.exit_crit_edge, %do.end.i.i, %do.body.i.brcmf_msgbuf_process_msgtype.exit_crit_edge
  %285 = ptrtoint ptr %item_len to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %item_len, align 4
  %conv1 = zext i16 %286 to i32
  %add.ptr2 = getelementptr i8, ptr %buf.032, i32 %conv1
  %inc = add i16 %processed.033, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %inc)
  %cmp4 = icmp eq i16 %inc, 48
  br i1 %cmp4, label %if.then6, label %brcmf_msgbuf_process_msgtype.exit.if.end8_crit_edge

brcmf_msgbuf_process_msgtype.exit.if.end8_crit_edge: ; preds = %brcmf_msgbuf_process_msgtype.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %brcmf_msgbuf_process_msgtype.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call i32 @brcmf_commonring_read_complete(ptr noundef %commonring, i16 noundef zeroext 48) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %brcmf_msgbuf_process_msgtype.exit.if.end8_crit_edge
  %processed.1 = phi i16 [ 0, %if.then6 ], [ %inc, %brcmf_msgbuf_process_msgtype.exit.if.end8_crit_edge ]
  %287 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %count, align 2
  %dec = add i16 %288, -1
  store i16 %dec, ptr %count, align 2
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %while.end, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %processed.1)
  %tobool9.not = icmp eq i16 %processed.1, 0
  br i1 %tobool9.not, label %while.end.if.end12_crit_edge, label %if.then10

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = call i32 @brcmf_commonring_read_complete(ptr noundef %commonring, i16 noundef zeroext %processed.1) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %while.end.if.end12_crit_edge, %while.condthread-pre-split.if.end12_crit_edge
  %289 = ptrtoint ptr %commonring to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %commonring, align 4
  %cmp14 = icmp eq i16 %290, 0
  br i1 %cmp14, label %if.end12.again_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.again_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %again

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %again.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %count) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_flowring_qlen(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_msgbuf_delete_flowring(ptr nocapture noundef readonly %drvr, i16 noundef zeroext %flowid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %4 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvr, align 4
  %state = getelementptr inbounds %struct.brcmf_bus, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_delete_flowring, ptr noundef nonnull @.str) #10
  %conv.i = zext i16 %flowid to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_remove_flowring, ptr noundef nonnull @.str.54, i32 noundef %conv.i) #10
  %flowrings.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %flowrings.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flowrings.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %conv.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %buf_addr.i = getelementptr inbounds %struct.brcmf_commonring, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf_addr.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev.i = getelementptr inbounds %struct.brcmf_bus, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %flowring_dma_handle.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %flowring_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flowring_dma_handle.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %21, i32 %conv.i
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.i, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef 24576, ptr noundef %13, i32 noundef %23, i32 noundef 0) #10
  %flow.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 29
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %commonrings = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %commonrings to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %commonrings, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void @brcmf_commonring_lock(ptr noundef %27) #10
  %call = tail call ptr @brcmf_commonring_reserve_for_write(ptr noundef %27) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %28 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_msgbuf_delete_flowring) #13
  tail call void @brcmf_commonring_unlock(ptr noundef %27) #10
  %conv.i58 = zext i16 %flowid to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_remove_flowring, ptr noundef nonnull @.str.54, i32 noundef %conv.i58) #10
  %flowrings.i59 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %flowrings.i59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %flowrings.i59, align 4
  %arrayidx.i60 = getelementptr ptr, ptr %31, i32 %conv.i58
  %32 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i60, align 4
  %buf_addr.i61 = getelementptr inbounds %struct.brcmf_commonring, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %buf_addr.i61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf_addr.i61, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dev.i62 = getelementptr inbounds %struct.brcmf_bus, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i62, align 4
  %flowring_dma_handle.i63 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %flowring_dma_handle.i63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %flowring_dma_handle.i63, align 4
  %arrayidx2.i64 = getelementptr i32, ptr %43, i32 %conv.i58
  %44 = ptrtoint ptr %arrayidx2.i64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx2.i64, align 4
  tail call void @dma_free_attrs(ptr noundef %41, i32 noundef 24576, ptr noundef %35, i32 noundef %45, i32 noundef 0) #10
  %flow.i65 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 29
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  %flow = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 29
  %46 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %flow, align 4
  %call9 = tail call zeroext i8 @brcmf_flowring_ifidx_get(ptr noundef %47, i16 noundef zeroext %flowid) #10
  %48 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 5, ptr %call, align 4
  %ifidx11 = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %call, i32 0, i32 1
  %49 = ptrtoint ptr %ifidx11 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call9, ptr %ifidx11, align 1
  %request_id = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %call, i32 0, i32 4
  %50 = ptrtoint ptr %request_id to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %request_id, align 4
  %conv = zext i16 %flowid to i32
  %add = add i16 %flowid, 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %add)
  %flow_ring_id = getelementptr inbounds %struct.msgbuf_tx_flowring_delete_req, ptr %call, i32 0, i32 1
  %52 = ptrtoint ptr %flow_ring_id to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %flow_ring_id, align 4
  %reason = getelementptr inbounds %struct.msgbuf_tx_flowring_delete_req, ptr %call, i32 0, i32 2
  %53 = ptrtoint ptr %reason to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %reason, align 2
  %conv16 = zext i8 %call9 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_delete_flowring, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv16) #10
  %call19 = tail call i32 @brcmf_commonring_write_complete(ptr noundef %27) #10
  tail call void @brcmf_commonring_unlock(ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end8.cleanup_crit_edge, label %do.end25

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end25:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy26 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %54 = ptrtoint ptr %wiphy26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wiphy26, align 4
  %dev27 = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.brcmf_msgbuf_delete_flowring) #13
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_remove_flowring, ptr noundef nonnull @.str.54, i32 noundef %conv) #10
  %flowrings.i67 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 2
  %56 = ptrtoint ptr %flowrings.i67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %flowrings.i67, align 4
  %arrayidx.i68 = getelementptr ptr, ptr %57, i32 %conv
  %58 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i68, align 4
  %buf_addr.i69 = getelementptr inbounds %struct.brcmf_commonring, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %buf_addr.i69 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf_addr.i69, align 4
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %dev.i70 = getelementptr inbounds %struct.brcmf_bus, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dev.i70 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i70, align 4
  %flowring_dma_handle.i71 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 3
  %68 = ptrtoint ptr %flowring_dma_handle.i71 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %flowring_dma_handle.i71, align 4
  %arrayidx2.i72 = getelementptr i32, ptr %69, i32 %conv
  %70 = ptrtoint ptr %arrayidx2.i72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx2.i72, align 4
  tail call void @dma_free_attrs(ptr noundef %67, i32 noundef 24576, ptr noundef %61, i32 noundef %71, i32 noundef 0) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end25, %do.end5, %do.body
  %flow.sink = phi ptr [ %flow, %do.end25 ], [ %flow.i65, %do.end5 ], [ %flow.i, %do.body ]
  %72 = ptrtoint ptr %flow.sink to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %flow.sink, align 4
  tail call void @brcmf_flowring_delete(ptr noundef %73, i16 noundef zeroext %flowid) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_commonring_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_commonring_reserve_for_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_commonring_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @brcmf_flowring_ifidx_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_commonring_write_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_proto_msgbuf_attach(ptr noundef %drvr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvr, align 4
  %msgbuf1 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %msgbuf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msgbuf1, align 4
  %max_flowrings = getelementptr inbounds %struct.brcmf_bus_msgbuf, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_flowrings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %5)
  %cmp = icmp ugt i16 %5, 511
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %5 to i32
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %conv) #13
  %8 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 511, ptr %max_flowrings, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 308) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.11, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.12) #10
  %txflow_wq = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 30
  %10 = ptrtoint ptr %txflow_wq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %txflow_wq, align 4
  %cmp13 = icmp eq ptr %call11, null
  br i1 %cmp13, label %do.end19, label %do.body25

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy20 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %11 = ptrtoint ptr %wiphy20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy20, align 4
  %dev21 = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #13
  br label %if.then135

do.body25:                                        ; preds = %if.end10
  %txflow_work = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 31
  tail call void @__init_work(ptr noundef %txflow_work, i32 noundef 0) #10
  %13 = ptrtoint ptr %txflow_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %txflow_work, align 8
  %lockdep_map = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 31, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @brcmf_proto_msgbuf_attach.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry29 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 31, i32 1
  %14 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 31, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry29, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 31, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @brcmf_msgbuf_txflow_worker, ptr %func, align 4
  %17 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %max_flowrings, align 4
  %conv34 = zext i16 %18 to i32
  %sub = add nuw nsw i32 %conv34, 31
  %19 = lshr i32 %sub, 3
  %mul = and i32 %19, 16380
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #16
  %flow_map315 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 32
  %20 = ptrtoint ptr %flow_map315 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i, ptr %flow_map315, align 4
  %tobool37.not316 = icmp eq ptr %call9.i.i, null
  br i1 %tobool37.not316, label %do.body25.if.then135_crit_edge, label %if.end8.i.i284

do.body25.if.then135_crit_edge:                   ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135

if.end8.i.i284:                                   ; preds = %do.body25
  %call9.i.i283 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #16
  %txstatus_done_map = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 33
  %21 = ptrtoint ptr %txstatus_done_map to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i283, ptr %txstatus_done_map, align 8
  %tobool42.not = icmp eq ptr %call9.i.i283, null
  br i1 %tobool42.not, label %if.end8.i.i284.if.then135_crit_edge, label %if.end44

if.end8.i.i284.if.then135_crit_edge:              ; preds = %if.end8.i.i284
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135

if.end44:                                         ; preds = %if.end8.i.i284
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %drvr, ptr %call7.i.i, align 8
  %23 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drvr, align 4
  %dev47 = getelementptr inbounds %struct.brcmf_bus, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev47, align 4
  %ioctbuf_handle = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 16
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %26, i32 noundef 1518, ptr noundef %ioctbuf_handle, i32 noundef 3264, i32 noundef 0) #10
  %ioctbuf = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 15
  %27 = ptrtoint ptr %ioctbuf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %ioctbuf, align 4
  %tobool50.not = icmp eq ptr %call.i, null
  br i1 %tobool50.not, label %if.end44.if.then135_crit_edge, label %if.end52

if.end44.if.then135_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135

if.end52:                                         ; preds = %if.end44
  %28 = ptrtoint ptr %ioctbuf_handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ioctbuf_handle, align 8
  %ioctbuf_phys_hi = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 17
  %30 = ptrtoint ptr %ioctbuf_phys_hi to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ioctbuf_phys_hi, align 4
  %ioctbuf_phys_lo = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 18
  %31 = ptrtoint ptr %ioctbuf_phys_lo to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %ioctbuf_phys_lo, align 8
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %32 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %proto, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @brcmf_msgbuf_hdrpull, ptr %33, align 4
  %35 = load ptr, ptr %proto, align 4
  %query_dcmd = getelementptr inbounds %struct.brcmf_proto, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %query_dcmd to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @brcmf_msgbuf_query_dcmd, ptr %query_dcmd, align 4
  %37 = load ptr, ptr %proto, align 4
  %set_dcmd = getelementptr inbounds %struct.brcmf_proto, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %set_dcmd to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @brcmf_msgbuf_set_dcmd, ptr %set_dcmd, align 4
  %39 = load ptr, ptr %proto, align 4
  %tx_queue_data = getelementptr inbounds %struct.brcmf_proto, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %tx_queue_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @brcmf_msgbuf_tx_queue_data, ptr %tx_queue_data, align 4
  %41 = load ptr, ptr %proto, align 4
  %configure_addr_mode = getelementptr inbounds %struct.brcmf_proto, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %configure_addr_mode to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @brcmf_msgbuf_configure_addr_mode, ptr %configure_addr_mode, align 4
  %43 = load ptr, ptr %proto, align 4
  %delete_peer = getelementptr inbounds %struct.brcmf_proto, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %delete_peer to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @brcmf_msgbuf_delete_peer, ptr %delete_peer, align 4
  %45 = load ptr, ptr %proto, align 4
  %add_tdls_peer = getelementptr inbounds %struct.brcmf_proto, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %add_tdls_peer to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @brcmf_msgbuf_add_tdls_peer, ptr %add_tdls_peer, align 4
  %47 = load ptr, ptr %proto, align 4
  %rxreorder = getelementptr inbounds %struct.brcmf_proto, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %rxreorder to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @brcmf_msgbuf_rxreorder, ptr %rxreorder, align 4
  %49 = load ptr, ptr %proto, align 4
  %debugfs_create = getelementptr inbounds %struct.brcmf_proto, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %debugfs_create to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @brcmf_msgbuf_debugfs_create, ptr %debugfs_create, align 4
  %51 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %pd, align 4
  %ioctl_resp_wait = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 25
  tail call void @__init_waitqueue_head(ptr noundef %ioctl_resp_wait, ptr noundef nonnull @.str.18, ptr noundef nonnull @brcmf_proto_msgbuf_attach.__key.17) #10
  %commonrings69 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %commonrings69 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %3, ptr %commonrings69, align 4
  %flowrings = getelementptr inbounds %struct.brcmf_bus_msgbuf, ptr %3, i32 0, i32 1
  %54 = ptrtoint ptr %flowrings to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %flowrings, align 4
  %flowrings70 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %flowrings70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %flowrings70, align 8
  %57 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %max_flowrings, align 4
  %max_flowrings72 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %max_flowrings72 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %max_flowrings72, align 8
  %conv74 = zext i16 %58 to i32
  %60 = shl nuw nsw i32 %conv74, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %60, i32 noundef 3520) #16
  %flowring_dma_handle = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %flowring_dma_handle to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call8.i.i, ptr %flowring_dma_handle, align 4
  %tobool77.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool77.not, label %if.end52.if.then135_crit_edge, label %if.end79

if.end52.if.then135_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135

if.end79:                                         ; preds = %if.end52
  %rx_dataoffset = getelementptr inbounds %struct.brcmf_bus_msgbuf, ptr %3, i32 0, i32 2
  %62 = ptrtoint ptr %rx_dataoffset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_dataoffset, align 4
  %conv80 = trunc i32 %63 to i16
  %rx_dataoffset81 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 7
  %64 = ptrtoint ptr %rx_dataoffset81 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv80, ptr %rx_dataoffset81, align 2
  %max_rxbufpost = getelementptr inbounds %struct.brcmf_bus_msgbuf, ptr %3, i32 0, i32 3
  %65 = ptrtoint ptr %max_rxbufpost to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_rxbufpost, align 4
  %max_rxbufpost82 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 8
  %67 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %max_rxbufpost82, align 8
  %max_ioctlrespbuf = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 11
  %68 = ptrtoint ptr %max_ioctlrespbuf to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 8, ptr %max_ioctlrespbuf, align 4
  %max_eventbuf = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 13
  %69 = ptrtoint ptr %max_eventbuf to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 8, ptr %max_eventbuf, align 4
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3520, i32 noundef 3) #16
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end79.brcmf_msgbuf_init_pktids.exit.thread_crit_edge, label %if.end.i

if.end79.brcmf_msgbuf_init_pktids.exit.thread_crit_edge: ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_init_pktids.exit.thread

if.end.i:                                         ; preds = %if.end79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i292 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 16) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i.i292, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end87

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i.i) #10
  br label %brcmf_msgbuf_init_pktids.exit.thread

brcmf_msgbuf_init_pktids.exit.thread:             ; preds = %if.then3.i, %if.end79.brcmf_msgbuf_init_pktids.exit.thread_crit_edge
  %tx_pktids331 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 27
  %71 = ptrtoint ptr %tx_pktids331 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %tx_pktids331, align 8
  br label %if.then135

if.end87:                                         ; preds = %if.end.i
  %array5.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %call7.i.i.i292, i32 0, i32 3
  %72 = ptrtoint ptr %array5.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call1.i.i.i.i.i, ptr %array5.i, align 4
  %73 = ptrtoint ptr %call7.i.i.i292 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2048, ptr %call7.i.i.i292, align 8
  %tx_pktids = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 27
  %74 = ptrtoint ptr %tx_pktids to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i.i292, ptr %tx_pktids, align 8
  %call1.i.i.i.i.i294 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not.i295 = icmp eq ptr %call1.i.i.i.i.i294, null
  br i1 %tobool.not.i295, label %if.end87.brcmf_msgbuf_init_pktids.exit303.thread_crit_edge, label %if.end.i298

if.end87.brcmf_msgbuf_init_pktids.exit303.thread_crit_edge: ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_init_pktids.exit303.thread

if.end.i298:                                      ; preds = %if.end87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i296 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 16) #15
  %tobool2.not.i297 = icmp eq ptr %call7.i.i.i296, null
  br i1 %tobool2.not.i297, label %if.then3.i299, label %if.end92

if.then3.i299:                                    ; preds = %if.end.i298
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i.i294) #10
  br label %brcmf_msgbuf_init_pktids.exit303.thread

brcmf_msgbuf_init_pktids.exit303.thread:          ; preds = %if.then3.i299, %if.end87.brcmf_msgbuf_init_pktids.exit303.thread_crit_edge
  %rx_pktids334 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 28
  %76 = ptrtoint ptr %rx_pktids334 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %rx_pktids334, align 4
  br label %if.then135

if.end92:                                         ; preds = %if.end.i298
  %array5.i300 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %call7.i.i.i296, i32 0, i32 3
  %77 = ptrtoint ptr %array5.i300 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call1.i.i.i.i.i294, ptr %array5.i300, align 4
  %78 = ptrtoint ptr %call7.i.i.i296 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1024, ptr %call7.i.i.i296, align 8
  %rx_pktids = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 28
  %79 = ptrtoint ptr %rx_pktids to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i.i296, ptr %rx_pktids, align 4
  %80 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %drvr, align 4
  %dev94 = getelementptr inbounds %struct.brcmf_bus, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev94, align 4
  %84 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %max_flowrings, align 4
  %call96 = tail call ptr @brcmf_flowring_attach(ptr noundef %83, i16 noundef zeroext %85) #10
  %flow = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 29
  %86 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call96, ptr %flow, align 8
  %tobool98.not = icmp eq ptr %call96, null
  br i1 %tobool98.not, label %if.end92.if.then135_crit_edge, label %do.body101

if.end92.if.then135_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135

do.body101:                                       ; preds = %if.end92
  %87 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_rxbufpost82, align 8
  %89 = ptrtoint ptr %max_eventbuf to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_eventbuf, align 4
  %91 = ptrtoint ptr %max_ioctlrespbuf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_ioctlrespbuf, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.19, i32 noundef %88, i32 noundef %90, i32 noundef %92) #10
  %rxbufpost = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 10
  tail call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef nonnull %call7.i.i)
  %93 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_rxbufpost82, align 8
  %95 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rxbufpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp109.not = icmp eq i32 %94, %96
  br i1 %cmp109.not, label %do.body101.do.end116_crit_edge, label %if.then111

do.body101.do.end116_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then111:                                       ; preds = %do.body101
  tail call void @msleep(i32 noundef 10) #10
  tail call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef nonnull %call7.i.i)
  %97 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_rxbufpost82, align 8
  %99 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rxbufpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp109.not.1 = icmp eq i32 %98, %100
  br i1 %cmp109.not.1, label %if.then111.do.end116_crit_edge, label %if.then111.1

if.then111.do.end116_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then111.1:                                     ; preds = %if.then111
  tail call void @msleep(i32 noundef 10) #10
  tail call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef nonnull %call7.i.i)
  %101 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_rxbufpost82, align 8
  %103 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rxbufpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp109.not.2 = icmp eq i32 %102, %104
  br i1 %cmp109.not.2, label %if.then111.1.do.end116_crit_edge, label %if.then111.2

if.then111.1.do.end116_crit_edge:                 ; preds = %if.then111.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then111.2:                                     ; preds = %if.then111.1
  tail call void @msleep(i32 noundef 10) #10
  tail call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef nonnull %call7.i.i)
  %105 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_rxbufpost82, align 8
  %107 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rxbufpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp109.not.3 = icmp eq i32 %106, %108
  br i1 %cmp109.not.3, label %if.then111.2.do.end116_crit_edge, label %if.then111.3

if.then111.2.do.end116_crit_edge:                 ; preds = %if.then111.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then111.3:                                     ; preds = %if.then111.2
  tail call void @msleep(i32 noundef 10) #10
  tail call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef nonnull %call7.i.i)
  %109 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max_rxbufpost82, align 8
  %111 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rxbufpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %112)
  %cmp109.not.4 = icmp eq i32 %110, %112
  br i1 %cmp109.not.4, label %if.then111.3.do.end116_crit_edge, label %if.then111.4

if.then111.3.do.end116_crit_edge:                 ; preds = %if.then111.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then111.4:                                     ; preds = %if.then111.3
  tail call void @msleep(i32 noundef 10) #10
  tail call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef nonnull %call7.i.i)
  %113 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_rxbufpost82, align 8
  %115 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rxbufpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %116)
  %cmp109.not.5 = icmp eq i32 %114, %116
  br i1 %cmp109.not.5, label %if.then111.4.do.end116_crit_edge, label %if.then111.5

if.then111.4.do.end116_crit_edge:                 ; preds = %if.then111.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then111.5:                                     ; preds = %if.then111.4
  tail call void @msleep(i32 noundef 10) #10
  tail call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef nonnull %call7.i.i)
  %117 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %max_rxbufpost82, align 8
  %119 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rxbufpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp109.not.6 = icmp eq i32 %118, %120
  br i1 %cmp109.not.6, label %if.then111.5.do.end116_crit_edge, label %if.then111.6

if.then111.5.do.end116_crit_edge:                 ; preds = %if.then111.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then111.6:                                     ; preds = %if.then111.5
  tail call void @msleep(i32 noundef 10) #10
  tail call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef nonnull %call7.i.i)
  %121 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %max_rxbufpost82, align 8
  %123 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rxbufpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp109.not.7 = icmp eq i32 %122, %124
  br i1 %cmp109.not.7, label %if.then111.6.do.end116_crit_edge, label %if.then111.7

if.then111.6.do.end116_crit_edge:                 ; preds = %if.then111.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then111.7:                                     ; preds = %if.then111.6
  tail call void @msleep(i32 noundef 10) #10
  tail call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef nonnull %call7.i.i)
  %125 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %max_rxbufpost82, align 8
  %127 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rxbufpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp109.not.8 = icmp eq i32 %126, %128
  br i1 %cmp109.not.8, label %if.then111.7.do.end116_crit_edge, label %if.then111.8

if.then111.7.do.end116_crit_edge:                 ; preds = %if.then111.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then111.8:                                     ; preds = %if.then111.7
  tail call void @msleep(i32 noundef 10) #10
  tail call fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr noundef nonnull %call7.i.i)
  %129 = ptrtoint ptr %max_rxbufpost82 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_rxbufpost82, align 8
  %131 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rxbufpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp109.not.9 = icmp eq i32 %130, %132
  br i1 %cmp109.not.9, label %if.then111.8.do.end116_crit_edge, label %if.then111.9

if.then111.8.do.end116_crit_edge:                 ; preds = %if.then111.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.then111.9:                                     ; preds = %if.then111.8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 10) #10
  br label %do.end116

do.end116:                                        ; preds = %if.then111.9, %if.then111.8.do.end116_crit_edge, %if.then111.7.do.end116_crit_edge, %if.then111.6.do.end116_crit_edge, %if.then111.5.do.end116_crit_edge, %if.then111.4.do.end116_crit_edge, %if.then111.3.do.end116_crit_edge, %if.then111.2.do.end116_crit_edge, %if.then111.1.do.end116_crit_edge, %if.then111.do.end116_crit_edge, %do.body101.do.end116_crit_edge
  %133 = ptrtoint ptr %max_eventbuf to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_eventbuf, align 4
  %cur_eventbuf.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 14
  %135 = ptrtoint ptr %cur_eventbuf.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cur_eventbuf.i, align 8
  %sub.i = sub i32 %134, %136
  %call.i304 = tail call fastcc i32 @brcmf_msgbuf_rxbuf_ctrl_post(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true, i32 noundef %sub.i) #10
  %137 = ptrtoint ptr %cur_eventbuf.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cur_eventbuf.i, align 8
  %add.i = add i32 %138, %call.i304
  store i32 %add.i, ptr %cur_eventbuf.i, align 8
  %139 = ptrtoint ptr %max_ioctlrespbuf to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %max_ioctlrespbuf, align 4
  %cur_ioctlrespbuf.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 12
  %141 = ptrtoint ptr %cur_ioctlrespbuf.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cur_ioctlrespbuf.i, align 8
  %sub.i305 = sub i32 %140, %142
  %call.i306 = tail call fastcc i32 @brcmf_msgbuf_rxbuf_ctrl_post(ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, i32 noundef %sub.i305) #10
  %143 = ptrtoint ptr %cur_ioctlrespbuf.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cur_ioctlrespbuf.i, align 8
  %add.i307 = add i32 %144, %call.i306
  store i32 %add.i307, ptr %cur_ioctlrespbuf.i, align 8
  %flowring_work = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 34
  tail call void @__init_work(ptr noundef %flowring_work, i32 noundef 0) #10
  %145 = ptrtoint ptr %flowring_work to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -64, ptr %flowring_work, align 4
  %lockdep_map123 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 34, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map123, ptr noundef nonnull @.str.21, ptr noundef nonnull @brcmf_proto_msgbuf_attach.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry125 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 34, i32 1
  %146 = ptrtoint ptr %entry125 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %entry125, ptr %entry125, align 8
  %prev.i308 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 34, i32 1, i32 1
  %147 = ptrtoint ptr %prev.i308 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %entry125, ptr %prev.i308, align 4
  %func127 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 34, i32 2
  %148 = ptrtoint ptr %func127 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @brcmf_msgbuf_flowring_worker, ptr %func127, align 8
  %flowring_work_lock = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 35
  tail call void @__raw_spin_lock_init(ptr noundef %flowring_work_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @brcmf_proto_msgbuf_attach.__key.22, i16 noundef signext 3) #10
  %work_queue = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 36
  %149 = ptrtoint ptr %work_queue to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %work_queue, ptr %work_queue, align 4
  %prev.i309 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 36, i32 1
  %150 = ptrtoint ptr %prev.i309 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %work_queue, ptr %prev.i309, align 8
  br label %cleanup

if.then135:                                       ; preds = %if.end92.if.then135_crit_edge, %brcmf_msgbuf_init_pktids.exit303.thread, %brcmf_msgbuf_init_pktids.exit.thread, %if.end52.if.then135_crit_edge, %if.end44.if.then135_crit_edge, %if.end8.i.i284.if.then135_crit_edge, %do.body25.if.then135_crit_edge, %do.end19
  %flow_map136 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 32
  %151 = ptrtoint ptr %flow_map136 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %flow_map136, align 4
  tail call void @kfree(ptr noundef %152) #10
  %txstatus_done_map137 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 33
  %153 = ptrtoint ptr %txstatus_done_map137 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %txstatus_done_map137, align 8
  tail call void @kfree(ptr noundef %154) #10
  tail call fastcc void @brcmf_msgbuf_release_pktids(ptr noundef nonnull %call7.i.i)
  %flowring_dma_handle138 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 3
  %155 = ptrtoint ptr %flowring_dma_handle138 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %flowring_dma_handle138, align 4
  tail call void @kfree(ptr noundef %156) #10
  %ioctbuf139 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 15
  %157 = ptrtoint ptr %ioctbuf139 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ioctbuf139, align 4
  %tobool140.not = icmp eq ptr %158, null
  br i1 %tobool140.not, label %if.then135.if.end146_crit_edge, label %if.then141

if.then135.if.end146_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then141:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %drvr, align 4
  %dev143 = getelementptr inbounds %struct.brcmf_bus, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev143, align 4
  %ioctbuf_handle145 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %call7.i.i, i32 0, i32 16
  %163 = ptrtoint ptr %ioctbuf_handle145 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ioctbuf_handle145, align 8
  tail call void @dma_free_attrs(ptr noundef %162, i32 noundef 1518, ptr noundef nonnull %158, i32 noundef %164, i32 noundef 0) #10
  br label %if.end146

if.end146:                                        ; preds = %if.then141, %if.then135.if.end146_crit_edge
  %165 = ptrtoint ptr %txflow_wq to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %txflow_wq, align 4
  %tobool148.not = icmp eq ptr %166, null
  br i1 %tobool148.not, label %if.end146.if.end151_crit_edge, label %if.then149

if.end146.if.end151_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %166) #10
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end146.if.end151_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %do.end116, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end116 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end151 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_msgbuf_txflow_worker(ptr nocapture noundef readonly %worker) #0 align 64 {
entry:
  %physaddr.i = alloca i32, align 4
  %pktid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %worker, i32 -160
  %flow_map = getelementptr i8, ptr %worker, i32 44
  %0 = ptrtoint ptr %flow_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flow_map, align 4
  %max_flowrings = getelementptr i8, ptr %worker, i32 -144
  %2 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_flowrings, align 4
  %conv = zext i16 %3 to i32
  %call = tail call i32 @_find_next_bit_be(ptr noundef %1, i32 noundef %conv, i32 noundef 0) #10
  %4 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_flowrings, align 4
  %conv227 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv227)
  %cmp28 = icmp ult i32 %call, %conv227
  br i1 %cmp28, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flow1.i = getelementptr i8, ptr %worker, i32 -8
  %flowrings.i = getelementptr i8, ptr %worker, i32 -152
  %tx_pktids.i = getelementptr i8, ptr %worker, i32 -16
  br label %for.body

for.body:                                         ; preds = %brcmf_msgbuf_txflow.exit.for.body_crit_edge, %for.body.lr.ph
  %flowid.029 = phi i32 [ %call, %for.body.lr.ph ], [ %call9, %brcmf_msgbuf_txflow.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %flow_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flow_map, align 4
  tail call void @_clear_bit(i32 noundef %flowid.029, ptr noundef %7) #10
  %conv5 = trunc i32 %flowid.029 to i16
  %8 = ptrtoint ptr %flow1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flow1.i, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %physaddr.i) #10
  %12 = ptrtoint ptr %physaddr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %physaddr.i, align 4, !annotation !204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pktid.i) #10
  %13 = ptrtoint ptr %pktid.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %pktid.i, align 4, !annotation !204
  %14 = ptrtoint ptr %flowrings.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %flowrings.i, align 4
  %idxprom.i = and i32 %flowid.029, 65535
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i1 @brcmf_commonring_write_available(ptr noundef %17) #10
  br i1 %call.i, label %if.end.i, label %for.body.brcmf_msgbuf_txflow.exit_crit_edge

for.body.brcmf_msgbuf_txflow.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_txflow.exit

if.end.i:                                         ; preds = %for.body
  tail call void @brcmf_commonring_lock(ptr noundef %17) #10
  %call3124.i = tail call i32 @brcmf_flowring_qlen(ptr noundef %9, i16 noundef zeroext %conv5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3124.i)
  %tobool.not125.i = icmp eq i32 %call3124.i, 0
  br i1 %tobool.not125.i, label %if.end.i.if.then54.i_crit_edge, label %while.body.lr.ph.i

if.end.i.if.then54.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %outstanding_tx.i = getelementptr inbounds %struct.brcmf_commonring, ptr %17, i32 0, i32 16
  br label %while.body.i

while.body.i:                                     ; preds = %if.end52.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.0126.i = phi i32 [ 64, %while.body.lr.ph.i ], [ %count.1.i, %if.end52.i.while.body.i_crit_edge ]
  %call4.i = tail call ptr @brcmf_flowring_dequeue(ptr noundef %9, i16 noundef zeroext %conv5) #10
  %cmp.i = icmp eq ptr %call4.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  %call7.i = tail call i32 @brcmf_flowring_qlen(ptr noundef %9, i16 noundef zeroext %conv5) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %call7.i) #13
  br label %while.end.i

if.end10.i:                                       ; preds = %while.body.i
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %21(ptr noundef nonnull %call4.i) #10
  %22 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %destructor.i.i, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %23, align 4
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.end10.i
  %25 = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool3.not.i.i = icmp eq ptr %27, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !206

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !207
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %dev12.i = getelementptr inbounds %struct.brcmf_bus, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev12.i, align 4
  %34 = ptrtoint ptr %tx_pktids.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_pktids.i, align 4
  %call13.i = call fastcc i32 @brcmf_msgbuf_alloc_pktid(ptr noundef %33, ptr noundef %35, ptr noundef nonnull %call4.i, i16 noundef zeroext 14, ptr noundef nonnull %physaddr.i, ptr noundef nonnull %pktid.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end24.i, label %if.then15.i

if.then15.i:                                      ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmf_flowring_reinsert(ptr noundef %9, i16 noundef zeroext %conv5, ptr noundef nonnull %call4.i) #10
  %wiphy20.i = getelementptr inbounds %struct.brcmf_pub, ptr %11, i32 0, i32 2
  %36 = ptrtoint ptr %wiphy20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wiphy20.i, align 4
  %dev21.i = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56) #13
  br label %while.end.i

if.end24.i:                                       ; preds = %skb_orphan.exit.i
  %call25.i = tail call ptr @brcmf_commonring_reserve_for_write(ptr noundef %17) #10
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end33.i

if.then27.i:                                      ; preds = %if.end24.i
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %dev30.i = getelementptr inbounds %struct.brcmf_bus, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev30.i, align 4
  %44 = ptrtoint ptr %tx_pktids.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_pktids.i, align 4
  %46 = ptrtoint ptr %pktid.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pktid.i, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %47)
  %cmp.not.i.i = icmp ugt i32 %49, %47
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.body.i113.i

do.body.i113.i:                                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_get_pktid, ptr noundef nonnull @.str.47, i32 noundef %47, i32 noundef %49) #10
  br label %brcmf_msgbuf_get_pktid.exit.i

if.end.i.i:                                       ; preds = %if.then27.i
  %array.i.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %45, i32 0, i32 3
  %50 = ptrtoint ptr %array.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %array.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %51, i32 %47
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i114.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i114.i, label %do.body9.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %physaddr.i.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %51, i32 %47, i32 3
  %54 = ptrtoint ptr %physaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %physaddr.i.i, align 4
  %skb5.i.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %51, i32 %47, i32 2
  %56 = ptrtoint ptr %skb5.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb5.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i.i, align 4
  %data_offset.i.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %51, i32 %47, i32 1
  %60 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %data_offset.i.i, align 4
  %conv.i.i = zext i16 %61 to i32
  %sub.i.i = sub i32 %59, %conv.i.i
  %direction.i.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %45, i32 0, i32 2
  %62 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %direction.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %43, i32 noundef %55, i32 noundef %sub.i.i, i32 noundef %63, i32 noundef 0) #10
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %arrayidx.i.i, align 4
  br label %brcmf_msgbuf_get_pktid.exit.i

do.body9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_get_pktid, ptr noundef nonnull @.str.48, i32 noundef %47) #10
  br label %brcmf_msgbuf_get_pktid.exit.i

brcmf_msgbuf_get_pktid.exit.i:                    ; preds = %do.body9.i.i, %if.then2.i.i, %do.body.i113.i
  tail call void @brcmf_flowring_reinsert(ptr noundef %9, i16 noundef zeroext %conv5, ptr noundef nonnull %call4.i) #10
  br label %while.end.i

if.end33.i:                                       ; preds = %if.end24.i
  %inc.i = add i32 %count.0126.i, 1
  %65 = ptrtoint ptr %call25.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 15, ptr %call25.i, align 4
  %66 = ptrtoint ptr %pktid.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pktid.i, align 4
  %add.i = add i32 %67, 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %request_id.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %call25.i, i32 0, i32 4
  %69 = ptrtoint ptr %request_id.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %request_id.i, align 4
  %call35.i = tail call zeroext i8 @brcmf_flowring_ifidx_get(ptr noundef %9, i16 noundef zeroext %conv5) #10
  %ifidx.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %call25.i, i32 0, i32 1
  %70 = ptrtoint ptr %ifidx.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %call35.i, ptr %ifidx.i, align 1
  %flags.i = getelementptr inbounds %struct.msgbuf_tx_msghdr, ptr %call25.i, i32 0, i32 2
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %flags.i, align 2
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 15, i32 0, i32 6
  %72 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %priority.i, align 4
  %.tr.i = trunc i32 %73 to i8
  %74 = shl i8 %.tr.i, 5
  %conv38.i = or i8 %74, 1
  store i8 %conv38.i, ptr %flags.i, align 2
  %seg_cnt.i = getelementptr inbounds %struct.msgbuf_tx_msghdr, ptr %call25.i, i32 0, i32 3
  %75 = ptrtoint ptr %seg_cnt.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %seg_cnt.i, align 1
  %txhdr.i = getelementptr inbounds %struct.msgbuf_tx_msghdr, ptr %call25.i, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 19
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %78 = call ptr @memcpy(ptr %txhdr.i, ptr %77, i32 14)
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 6
  %79 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len.i, align 4
  %81 = trunc i32 %80 to i16
  %conv39.i = add i16 %81, -14
  %82 = tail call i16 @llvm.bswap.i16(i16 %conv39.i) #10
  %data_len.i = getelementptr inbounds %struct.msgbuf_tx_msghdr, ptr %call25.i, i32 0, i32 7
  %83 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %data_len.i, align 2
  %84 = ptrtoint ptr %physaddr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %physaddr.i, align 4
  %data_buf_addr.i = getelementptr inbounds %struct.msgbuf_tx_msghdr, ptr %call25.i, i32 0, i32 5
  %high_addr.i = getelementptr inbounds %struct.msgbuf_tx_msghdr, ptr %call25.i, i32 0, i32 5, i32 1
  %86 = ptrtoint ptr %high_addr.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %high_addr.i, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  %88 = ptrtoint ptr %data_buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %data_buf_addr.i, align 4
  %metadata_buf_len.i = getelementptr inbounds %struct.msgbuf_tx_msghdr, ptr %call25.i, i32 0, i32 6
  %89 = ptrtoint ptr %metadata_buf_len.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %metadata_buf_len.i, align 4
  %metadata_buf_addr.i = getelementptr inbounds %struct.msgbuf_tx_msghdr, ptr %call25.i, i32 0, i32 4
  %high_addr45.i = getelementptr inbounds %struct.msgbuf_tx_msghdr, ptr %call25.i, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %high_addr45.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %high_addr45.i, align 4
  %91 = ptrtoint ptr %metadata_buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %metadata_buf_addr.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %outstanding_tx.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %outstanding_tx.i, i32 1, i32 3, i32 1) #10
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %outstanding_tx.i, ptr %outstanding_tx.i, i32 1, ptr elementtype(i32) %outstanding_tx.i) #10, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %inc.i)
  %cmp48.i = icmp ugt i32 %inc.i, 95
  br i1 %cmp48.i, label %if.then50.i, label %if.end33.i.if.end52.i_crit_edge

if.end33.i.if.end52.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then50.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %call51.i = tail call i32 @brcmf_commonring_write_complete(ptr noundef %17) #10
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %if.end33.i.if.end52.i_crit_edge
  %count.1.i = phi i32 [ 0, %if.then50.i ], [ %inc.i, %if.end33.i.if.end52.i_crit_edge ]
  %call3.i = tail call i32 @brcmf_flowring_qlen(ptr noundef %9, i16 noundef zeroext %conv5) #10
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end52.i.while.end.i_crit_edge, label %if.end52.i.while.body.i_crit_edge

if.end52.i.while.body.i_crit_edge:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end52.i.while.end.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end52.i.while.end.i_crit_edge, %brcmf_msgbuf_get_pktid.exit.i, %if.then15.i, %do.end.i
  %count.0119.i = phi i32 [ %count.0126.i, %brcmf_msgbuf_get_pktid.exit.i ], [ %count.0126.i, %if.then15.i ], [ %count.0126.i, %do.end.i ], [ %count.1.i, %if.end52.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0119.i)
  %tobool53.not.i = icmp eq i32 %count.0119.i, 0
  br i1 %tobool53.not.i, label %while.end.i.if.end56.i_crit_edge, label %while.end.i.if.then54.i_crit_edge

while.end.i.if.then54.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i

while.end.i.if.end56.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

if.then54.i:                                      ; preds = %while.end.i.if.then54.i_crit_edge, %if.end.i.if.then54.i_crit_edge
  %call55.i = tail call i32 @brcmf_commonring_write_complete(ptr noundef %17) #10
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %while.end.i.if.end56.i_crit_edge
  tail call void @brcmf_commonring_unlock(ptr noundef %17) #10
  br label %brcmf_msgbuf_txflow.exit

brcmf_msgbuf_txflow.exit:                         ; preds = %if.end56.i, %for.body.brcmf_msgbuf_txflow.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pktid.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %physaddr.i) #10
  %93 = ptrtoint ptr %flow_map to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %flow_map, align 4
  %95 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %max_flowrings, align 4
  %conv8 = zext i16 %96 to i32
  %add = add i32 %flowid.029, 1
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %94, i32 noundef %conv8, i32 noundef %add) #10
  %97 = ptrtoint ptr %max_flowrings to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %max_flowrings, align 4
  %conv2 = zext i16 %98 to i32
  %cmp = icmp ult i32 %call9, %conv2
  br i1 %cmp, label %brcmf_msgbuf_txflow.exit.for.body_crit_edge, label %brcmf_msgbuf_txflow.exit.for.end_crit_edge

brcmf_msgbuf_txflow.exit.for.end_crit_edge:       ; preds = %brcmf_msgbuf_txflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

brcmf_msgbuf_txflow.exit.for.body_crit_edge:      ; preds = %brcmf_msgbuf_txflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %brcmf_msgbuf_txflow.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_msgbuf_hdrpull(ptr nocapture noundef readnone %drvr, i1 noundef zeroext %do_fws, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %ifp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_msgbuf_query_dcmd(ptr nocapture noundef readonly %drvr, i32 noundef %ifidx, i32 noundef %cmd, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef writeonly %fwerr) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_query_dcmd, ptr noundef nonnull @.str.63, i32 noundef %ifidx, i32 noundef %cmd, i32 noundef %len) #10
  %4 = ptrtoint ptr %fwerr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fwerr, align 4
  %ctl_completed = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 26
  %5 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ctl_completed, align 4
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proto, align 4
  %pd.i = getelementptr inbounds %struct.brcmf_proto, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd.i, align 4
  %commonrings.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %commonrings.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %commonrings.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void @brcmf_commonring_lock(ptr noundef %13) #10
  %call.i = tail call ptr @brcmf_commonring_reserve_for_write(ptr noundef %13) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %brcmf_msgbuf_tx_ioctl.exit.thread, label %if.end.i

brcmf_msgbuf_tx_ioctl.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %14 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #13
  tail call void @brcmf_commonring_unlock(ptr noundef %13) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %reqid.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %9, i32 0, i32 24
  %16 = ptrtoint ptr %reqid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reqid.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %reqid.i, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 9, ptr %call.i, align 4
  %conv.i = trunc i32 %ifidx to i8
  %ifidx5.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %ifidx5.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %ifidx5.i, align 1
  %flags.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %flags.i, align 2
  %request_id.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %request_id.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -16842752, ptr %request_id.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %cmd) #10
  %cmd8.i = getelementptr inbounds %struct.msgbuf_ioctl_req_hdr, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %cmd8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cmd8.i, align 4
  %conv9.i = trunc i32 %len to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #10
  %output_buf_len.i = getelementptr inbounds %struct.msgbuf_ioctl_req_hdr, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %output_buf_len.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %output_buf_len.i, align 4
  %26 = ptrtoint ptr %reqid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reqid.i, align 4
  %conv11.i = trunc i32 %27 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv11.i) #10
  %trans_id.i = getelementptr inbounds %struct.msgbuf_ioctl_req_hdr, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %trans_id.i, align 4
  %conv13.i = and i32 %len, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %conv13.i)
  %cmp.i = icmp ult i32 %conv13.i, 1518
  %cond.i = select i1 %cmp.i, i16 %conv9.i, i16 1518
  %30 = tail call i16 @llvm.bswap.i16(i16 %cond.i) #10
  %input_buf_len.i = getelementptr inbounds %struct.msgbuf_ioctl_req_hdr, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %input_buf_len.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %input_buf_len.i, align 2
  %ioctbuf_phys_hi.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %9, i32 0, i32 17
  %32 = ptrtoint ptr %ioctbuf_phys_hi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ioctbuf_phys_hi.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %req_buf_addr.i = getelementptr inbounds %struct.msgbuf_ioctl_req_hdr, ptr %call.i, i32 0, i32 6
  %high_addr.i = getelementptr inbounds %struct.msgbuf_ioctl_req_hdr, ptr %call.i, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %high_addr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %high_addr.i, align 4
  %ioctbuf_phys_lo.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %9, i32 0, i32 18
  %36 = ptrtoint ptr %ioctbuf_phys_lo.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ioctbuf_phys_lo.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %39 = ptrtoint ptr %req_buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %req_buf_addr.i, align 4
  %tobool20.not.i = icmp eq ptr %buf, null
  %ioctbuf23.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %9, i32 0, i32 15
  %40 = ptrtoint ptr %ioctbuf23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioctbuf23.i, align 4
  %conv24.i = zext i16 %cond.i to i32
  br i1 %tobool20.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = call ptr @memcpy(ptr %41, ptr %buf, i32 %conv24.i)
  br label %brcmf_msgbuf_tx_ioctl.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = call ptr @memset(ptr %41, i32 0, i32 %conv24.i)
  br label %brcmf_msgbuf_tx_ioctl.exit

brcmf_msgbuf_tx_ioctl.exit:                       ; preds = %if.else.i, %if.then21.i
  %call26.i = tail call i32 @brcmf_commonring_write_complete(ptr noundef %13) #10
  tail call void @brcmf_commonring_unlock(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool.not = icmp eq i32 %call26.i, 0
  br i1 %tobool.not, label %if.end, label %brcmf_msgbuf_tx_ioctl.exit.cleanup_crit_edge

brcmf_msgbuf_tx_ioctl.exit.cleanup_crit_edge:     ; preds = %brcmf_msgbuf_tx_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %brcmf_msgbuf_tx_ioctl.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 477) #10
  %44 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ctl_completed, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i45 = icmp eq i8 %45, 0
  br i1 %tobool.not.i45, label %if.then9.i, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %46 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %ioctl_resp_wait.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 25
  %call1252.i = call i32 @prepare_to_wait_event(ptr noundef %ioctl_resp_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %47 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ctl_completed, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool15.not53.not.i = icmp eq i8 %48, 0
  br i1 %tobool15.not53.not.i, label %if.then9.i.cleanup.i_crit_edge, label %brcmf_msgbuf_ioctl_resp_wait.exit.thread55

if.then9.i.cleanup.i_crit_edge:                   ; preds = %if.then9.i
  br label %cleanup.i

brcmf_msgbuf_ioctl_resp_wait.exit.thread55:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %ioctl_resp_wait.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %if.end10

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then9.i.cleanup.i_crit_edge
  %__ret10.155.i = phi i32 [ %__ret10.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 200, %if.then9.i.cleanup.i_crit_edge ]
  %call32.i = call i32 @schedule_timeout(i32 noundef %__ret10.155.i) #10
  %call12.i = call i32 @prepare_to_wait_event(ptr noundef %ioctl_resp_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %49 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ctl_completed, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool15.not.i = icmp eq i8 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool19.not.i = icmp eq i32 %call32.i, 0
  %spec.store.select37.i = select i1 %tobool19.not.i, i32 1, i32 %call32.i
  %__ret10.1.i = select i1 %tobool15.not.i, i32 %call32.i, i32 %spec.store.select37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1.i)
  %tobool25.not.i = icmp eq i32 %__ret10.1.i, 0
  %not.tobool15.not.i = xor i1 %tobool15.not.i, true
  %51 = select i1 %not.tobool15.not.i, i1 true, i1 %tobool25.not.i
  br i1 %51, label %brcmf_msgbuf_ioctl_resp_wait.exit, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

brcmf_msgbuf_ioctl_resp_wait.exit:                ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %ioctl_resp_wait.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br i1 %tobool25.not.i, label %do.end7, label %brcmf_msgbuf_ioctl_resp_wait.exit.if.end10_crit_edge

brcmf_msgbuf_ioctl_resp_wait.exit.if.end10_crit_edge: ; preds = %brcmf_msgbuf_ioctl_resp_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end7:                                          ; preds = %brcmf_msgbuf_ioctl_resp_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %52 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.brcmf_msgbuf_query_dcmd) #13
  br label %cleanup

if.end10:                                         ; preds = %brcmf_msgbuf_ioctl_resp_wait.exit.if.end10_crit_edge, %brcmf_msgbuf_ioctl_resp_wait.exit.thread55, %if.end.if.end10_crit_edge
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %dev12 = getelementptr inbounds %struct.brcmf_bus, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev12, align 4
  %rx_pktids = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 28
  %60 = ptrtoint ptr %rx_pktids to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_pktids, align 4
  %ioctl_resp_pktid = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 21
  %62 = ptrtoint ptr %ioctl_resp_pktid to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ioctl_resp_pktid, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %63)
  %cmp.not.i = icmp ugt i32 %65, %63
  br i1 %cmp.not.i, label %if.end.i47, label %do.body.i

do.body.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_get_pktid, ptr noundef nonnull @.str.47, i32 noundef %63, i32 noundef %65) #10
  br label %brcmf_msgbuf_get_pktid.exit

if.end.i47:                                       ; preds = %if.end10
  %array.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %61, i32 0, i32 3
  %66 = ptrtoint ptr %array.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %array.i, align 4
  %arrayidx.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %67, i32 %63
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i46 = icmp eq i32 %69, 0
  br i1 %tobool.not.i46, label %do.body9.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #12
  %physaddr.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %67, i32 %63, i32 3
  %70 = ptrtoint ptr %physaddr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %physaddr.i, align 4
  %skb5.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %67, i32 %63, i32 2
  %72 = ptrtoint ptr %skb5.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %skb5.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  %data_offset.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %67, i32 %63, i32 1
  %76 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %data_offset.i, align 4
  %conv.i48 = zext i16 %77 to i32
  %sub.i = sub i32 %75, %conv.i48
  %direction.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %61, i32 0, i32 2
  %78 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %direction.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %59, i32 noundef %71, i32 noundef %sub.i, i32 noundef %79, i32 noundef 0) #10
  %80 = ptrtoint ptr %skb5.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skb5.i, align 4
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %arrayidx.i, align 4
  br label %brcmf_msgbuf_get_pktid.exit

do.body9.i:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_get_pktid, ptr noundef nonnull @.str.48, i32 noundef %63) #10
  br label %brcmf_msgbuf_get_pktid.exit

brcmf_msgbuf_get_pktid.exit:                      ; preds = %do.body9.i, %if.then2.i, %do.body.i
  %retval.0.i49 = phi ptr [ null, %do.body.i ], [ %81, %if.then2.i ], [ null, %do.body9.i ]
  %ioctl_resp_ret_len = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 20
  %83 = ptrtoint ptr %ioctl_resp_ret_len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ioctl_resp_ret_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.not = icmp eq i32 %84, 0
  br i1 %cmp.not, label %brcmf_msgbuf_get_pktid.exit.if.end21_crit_edge, label %if.then14

brcmf_msgbuf_get_pktid.exit.if.end21_crit_edge:   ; preds = %brcmf_msgbuf_get_pktid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then14:                                        ; preds = %brcmf_msgbuf_get_pktid.exit
  %tobool15.not = icmp eq ptr %retval.0.i49, null
  br i1 %tobool15.not, label %if.then14.cleanup_crit_edge, label %if.end17

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i49, i32 0, i32 19
  %85 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data, align 4
  %87 = call i32 @llvm.umin.i32(i32 %84, i32 %len)
  %88 = call ptr @memcpy(ptr %buf, ptr %86, i32 %87)
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %brcmf_msgbuf_get_pktid.exit.if.end21_crit_edge
  call void @brcmu_pkt_buf_free_skb(ptr noundef %retval.0.i49) #10
  %ioctl_resp_status = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 19
  %89 = ptrtoint ptr %ioctl_resp_status to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ioctl_resp_status, align 4
  %91 = ptrtoint ptr %fwerr to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %fwerr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then14.cleanup_crit_edge, %do.end7, %brcmf_msgbuf_tx_ioctl.exit.cleanup_crit_edge, %brcmf_msgbuf_tx_ioctl.exit.thread
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -5, %do.end7 ], [ %call26.i, %brcmf_msgbuf_tx_ioctl.exit.cleanup_crit_edge ], [ -9, %if.then14.cleanup_crit_edge ], [ -12, %brcmf_msgbuf_tx_ioctl.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_msgbuf_set_dcmd(ptr nocapture noundef readonly %drvr, i32 noundef %ifidx, i32 noundef %cmd, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef writeonly %fwerr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @brcmf_msgbuf_query_dcmd(ptr noundef %drvr, i32 noundef %ifidx, i32 noundef %cmd, ptr noundef %buf, i32 noundef %len, ptr noundef %fwerr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_msgbuf_tx_queue_data(ptr nocapture noundef readonly %drvr, i32 noundef %ifidx, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %flow1 = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %flow1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flow1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %8 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priority, align 4
  %conv = trunc i32 %9 to i8
  %conv2 = trunc i32 %ifidx to i8
  %call = tail call i32 @brcmf_flowring_lookup(ptr noundef %5, ptr noundef %7, i8 noundef zeroext %conv, i8 noundef zeroext %conv2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 28) #15
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %13 = ptrtoint ptr %flow1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %flow1, align 4
  %15 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %priority, align 4
  %conv.i = trunc i32 %16 to i8
  %call2.i = tail call i32 @brcmf_flowring_create(ptr noundef %14, ptr noundef %11, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, -1
  br i1 %cmp3.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %flowid7.i = getelementptr inbounds %struct.brcmf_msgbuf_work_item, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flowid7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2.i, ptr %flowid7.i, align 8
  %ifidx8.i = getelementptr inbounds %struct.brcmf_msgbuf_work_item, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %ifidx8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ifidx, ptr %ifidx8.i, align 4
  %sa.i = getelementptr inbounds %struct.brcmf_msgbuf_work_item, ptr %call7.i.i.i, i32 0, i32 3
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %11, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %sa.i, ptr %h_source.i, i32 6)
  %da.i = getelementptr inbounds %struct.brcmf_msgbuf_work_item, ptr %call7.i.i.i, i32 0, i32 4
  %20 = call ptr @memcpy(ptr %da.i, ptr %11, i32 6)
  %flowring_work_lock.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 35
  %call18.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flowring_work_lock.i) #10
  %work_queue.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 36
  %prev.i.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 36, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %22, ptr noundef %work_queue.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.brcmf_msgbuf_flowring_create.exit_crit_edge

if.end6.i.brcmf_msgbuf_flowring_create.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_flowring_create.exit

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %work_queue.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i.i, ptr %22, align 4
  br label %brcmf_msgbuf_flowring_create.exit

brcmf_msgbuf_flowring_create.exit:                ; preds = %if.end.i.i.i, %if.end6.i.brcmf_msgbuf_flowring_create.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flowring_work_lock.i, i32 noundef %call18.i) #10
  %flowring_work.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i43.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %flowring_work.i) #10
  br label %if.end8

if.end8:                                          ; preds = %brcmf_msgbuf_flowring_create.exit, %entry.if.end8_crit_edge
  %flowid.0 = phi i32 [ %call2.i, %brcmf_msgbuf_flowring_create.exit ], [ %call, %entry.if.end8_crit_edge ]
  %conv9 = trunc i32 %flowid.0 to i16
  %call10 = tail call i32 @brcmf_flowring_enqueue(ptr noundef %5, i16 noundef zeroext %conv9, ptr noundef %skb) #10
  %rem = and i32 %call10, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp11 = icmp eq i32 %rem, 0
  %flow_map.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 32
  %28 = ptrtoint ptr %flow_map.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %flow_map.i, align 4
  tail call void @_set_bit(i32 noundef %flowid.0, ptr noundef %29) #10
  br i1 %cmp11, label %if.end8.if.then.i_crit_edge, label %lor.lhs.false.i

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end8
  %flowrings.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %flowrings.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %flowrings.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %31, i32 %flowid.0
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %outstanding_tx.i = getelementptr inbounds %struct.brcmf_commonring, ptr %33, i32 0, i32 16
  %call.i.i.i29 = tail call zeroext i1 @__kasan_check_read(ptr noundef %outstanding_tx.i, i32 noundef 4) #10
  %34 = ptrtoint ptr %outstanding_tx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %outstanding_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %35)
  %cmp.i30 = icmp slt i32 %35, 96
  br i1 %cmp.i30, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end8.if.then.i_crit_edge
  %txflow_wq.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 30
  %36 = ptrtoint ptr %txflow_wq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %txflow_wq.i, align 4
  %txflow_work.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %txflow_work.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.lhs.false.i.cleanup_crit_edge, %if.then5.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ -12, %if.then5.i ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_msgbuf_configure_addr_mode(ptr nocapture noundef readonly %drvr, i32 noundef %ifidx, i32 noundef %addr_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %flow = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flow, align 4
  tail call void @brcmf_flowring_configure_addr_mode(ptr noundef %5, i32 noundef %ifidx, i32 noundef %addr_mode) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_msgbuf_delete_peer(ptr nocapture noundef readonly %drvr, i32 noundef %ifidx, ptr noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %flow = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flow, align 4
  tail call void @brcmf_flowring_delete_peer(ptr noundef %5, i32 noundef %ifidx, ptr noundef %peer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_msgbuf_add_tdls_peer(ptr nocapture noundef readonly %drvr, i32 noundef %ifidx, ptr noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %flow = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flow, align 4
  tail call void @brcmf_flowring_add_tdls_peer(ptr noundef %5, i32 noundef %ifidx, ptr noundef %peer) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @brcmf_msgbuf_rxreorder(ptr nocapture noundef %ifp, ptr nocapture noundef %skb, i1 noundef zeroext %inirq) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_msgbuf_debugfs_create(ptr noundef %drvr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcmf_debugfs_add_entry(ptr noundef %drvr, ptr noundef nonnull @.str.67, ptr noundef nonnull @brcmf_msgbuf_stats_read) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_flowring_attach(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_msgbuf_rxbuf_data_fill(ptr nocapture noundef %msgbuf) unnamed_addr #0 align 64 {
entry:
  %alloced.i = alloca i16, align 2
  %physaddr.i = alloca i32, align 4
  %pktid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rxbufpost = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 8
  %0 = ptrtoint ptr %max_rxbufpost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rxbufpost, align 4
  %rxbufpost = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 10
  %2 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxbufpost, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not18 = icmp eq i32 %sub, 0
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %commonrings.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 1
  %rx_pktids.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 28
  %rx_metadata_offset.i = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %fillbufs.019 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub3, %if.end.while.body_crit_edge ]
  %4 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msgbuf, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %alloced.i) #10
  %6 = ptrtoint ptr %alloced.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %alloced.i, align 2, !annotation !204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %physaddr.i) #10
  %7 = ptrtoint ptr %physaddr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %physaddr.i, align 4, !annotation !204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pktid.i) #10
  %8 = ptrtoint ptr %pktid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pktid.i, align 4, !annotation !204
  %9 = ptrtoint ptr %commonrings.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %commonrings.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %fillbufs.019 to i16
  %call.i = call ptr @brcmf_commonring_reserve_for_write_multiple(ptr noundef %12, i16 noundef zeroext %conv.i, ptr noundef nonnull %alloced.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %while.body
  %13 = ptrtoint ptr %alloced.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %alloced.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp113.not.i = icmp eq i16 %14, 0
  br i1 %cmp113.not.i, label %for.cond.preheader.i.brcmf_msgbuf_rxbuf_data_post.exit.thread_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.brcmf_msgbuf_rxbuf_data_post.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_rxbuf_data_post.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %item_len.i = getelementptr inbounds %struct.brcmf_commonring, ptr %12, i32 0, i32 4
  br label %for.body.i

do.body.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_rxbuf_data_post, ptr noundef nonnull @.str.76) #10
  br label %brcmf_msgbuf_rxbuf_data_post.exit.thread

for.body.i:                                       ; preds = %if.end47.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0116.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end47.i.for.body.i_crit_edge ]
  %ret_ptr.0114.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %add.ptr.i, %if.end47.i.for.body.i_crit_edge ]
  %15 = call ptr @memset(ptr %ret_ptr.0114.i, i32 0, i32 32)
  %call4.i = call ptr @brcmu_pkt_buf_get_skb(i32 noundef 2048) #10
  %cmp5.i = icmp eq ptr %call4.i, null
  br i1 %cmp5.i, label %for.body.i.for.end.i_crit_edge, label %if.end16.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end16.i:                                       ; preds = %for.body.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 6
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  %18 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %msgbuf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev18.i = getelementptr inbounds %struct.brcmf_bus, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev18.i, align 4
  %24 = ptrtoint ptr %rx_pktids.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_pktids.i, align 4
  %call19.i = call fastcc i32 @brcmf_msgbuf_alloc_pktid(ptr noundef %23, ptr noundef %25, ptr noundef nonnull %call4.i, i16 noundef zeroext 0, ptr noundef nonnull %physaddr.i, ptr noundef nonnull %pktid.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end33.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call4.i, i32 noundef 1) #10
  br label %for.end.i

if.end33.i:                                       ; preds = %if.end16.i
  %26 = ptrtoint ptr %rx_metadata_offset.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rx_metadata_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool34.not.i = icmp eq i16 %27, 0
  br i1 %tobool34.not.i, label %if.end33.i.if.end47.i_crit_edge, label %if.then35.i

if.end33.i.if.end47.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %physaddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %physaddr.i, align 4
  %30 = call i16 @llvm.bswap.i16(i16 %27) #10
  %metadata_buf_len.i = getelementptr inbounds %struct.msgbuf_rx_bufpost, ptr %ret_ptr.0114.i, i32 0, i32 1
  %31 = ptrtoint ptr %metadata_buf_len.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %metadata_buf_len.i, align 4
  %metadata_buf_addr.i = getelementptr inbounds %struct.msgbuf_rx_bufpost, ptr %ret_ptr.0114.i, i32 0, i32 4
  %high_addr.i = getelementptr inbounds %struct.msgbuf_rx_bufpost, ptr %ret_ptr.0114.i, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %high_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %high_addr.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %29) #10
  %34 = ptrtoint ptr %metadata_buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %metadata_buf_addr.i, align 4
  %35 = ptrtoint ptr %rx_metadata_offset.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %rx_metadata_offset.i, align 4
  %conv42.i = zext i16 %36 to i32
  %call43.i = call ptr @skb_pull(ptr noundef nonnull %call4.i, i32 noundef %conv42.i) #10
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  %39 = ptrtoint ptr %rx_metadata_offset.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rx_metadata_offset.i, align 4
  %conv46.i = zext i16 %40 to i32
  %add.i = add i32 %29, %conv46.i
  %41 = ptrtoint ptr %physaddr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i, ptr %physaddr.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end47.i_crit_edge
  %pktlen.0.i = phi i32 [ %38, %if.then35.i ], [ %17, %if.end33.i.if.end47.i_crit_edge ]
  %42 = ptrtoint ptr %ret_ptr.0114.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 17, ptr %ret_ptr.0114.i, align 4
  %43 = ptrtoint ptr %pktid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pktid.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #10
  %request_id.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %ret_ptr.0114.i, i32 0, i32 4
  %46 = ptrtoint ptr %request_id.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %request_id.i, align 4
  %47 = ptrtoint ptr %physaddr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %physaddr.i, align 4
  %conv50.i = trunc i32 %pktlen.0.i to i16
  %49 = call i16 @llvm.bswap.i16(i16 %conv50.i) #10
  %data_buf_len.i = getelementptr inbounds %struct.msgbuf_rx_bufpost, ptr %ret_ptr.0114.i, i32 0, i32 2
  %50 = ptrtoint ptr %data_buf_len.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %data_buf_len.i, align 2
  %data_buf_addr.i = getelementptr inbounds %struct.msgbuf_rx_bufpost, ptr %ret_ptr.0114.i, i32 0, i32 5
  %high_addr53.i = getelementptr inbounds %struct.msgbuf_rx_bufpost, ptr %ret_ptr.0114.i, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %high_addr53.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %high_addr53.i, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %48) #10
  %53 = ptrtoint ptr %data_buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %data_buf_addr.i, align 4
  %54 = ptrtoint ptr %item_len.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %item_len.i, align 4
  %conv58.i = zext i16 %55 to i32
  %add.ptr.i = getelementptr i8, ptr %ret_ptr.0114.i, i32 %conv58.i
  %inc.i = add nuw nsw i32 %i.0116.i, 1
  %56 = ptrtoint ptr %alloced.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %alloced.i, align 2
  %conv2.i = zext i16 %57 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv2.i
  br i1 %cmp.i, label %if.end47.i.for.body.i_crit_edge, label %if.end47.i.if.end_crit_edge

if.end47.i.if.end_crit_edge:                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end47.i.for.body.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.then21.i, %for.body.i.for.end.i_crit_edge
  %.str.58.sink = phi ptr [ @.str.58, %if.then21.i ], [ @.str.77, %for.body.i.for.end.i_crit_edge ]
  %wiphy26.i = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %58 = ptrtoint ptr %wiphy26.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wiphy26.i, align 4
  %dev27.i = getelementptr inbounds %struct.wiphy, ptr %59, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull %.str.58.sink, ptr noundef nonnull @__func__.brcmf_msgbuf_rxbuf_data_post) #13
  %60 = ptrtoint ptr %alloced.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %.sink.i = load i16, ptr %alloced.i, align 2
  %61 = trunc i32 %i.0116.i to i16
  %conv32.i = sub i16 %.sink.i, %61
  call void @brcmf_commonring_write_cancel(ptr noundef %12, i16 noundef zeroext %conv32.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0116.i)
  %tobool59.not.i = icmp eq i32 %i.0116.i, 0
  br i1 %tobool59.not.i, label %for.end.i.brcmf_msgbuf_rxbuf_data_post.exit.thread_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.end.i.brcmf_msgbuf_rxbuf_data_post.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_rxbuf_data_post.exit.thread

brcmf_msgbuf_rxbuf_data_post.exit.thread:         ; preds = %for.end.i.brcmf_msgbuf_rxbuf_data_post.exit.thread_crit_edge, %do.body.i, %for.cond.preheader.i.brcmf_msgbuf_rxbuf_data_post.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pktid.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %physaddr.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %alloced.i) #10
  br label %while.end

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.end47.i.if.end_crit_edge
  %i.0110126.i = phi i32 [ %i.0116.i, %for.end.i.if.end_crit_edge ], [ %inc.i, %if.end47.i.if.end_crit_edge ]
  %call61.i = call i32 @brcmf_commonring_write_complete(ptr noundef %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pktid.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %physaddr.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %alloced.i) #10
  %62 = ptrtoint ptr %rxbufpost to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rxbufpost, align 4
  %add = add i32 %63, %i.0110126.i
  store i32 %add, ptr %rxbufpost, align 4
  %sub3 = sub i32 %fillbufs.019, %i.0110126.i
  %tobool.not = icmp eq i32 %sub3, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %brcmf_msgbuf_rxbuf_data_post.exit.thread, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_msgbuf_flowring_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -212
  %flowring_work_lock.i = getelementptr i8, ptr %work, i32 44
  %call2.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flowring_work_lock.i) #10
  %work_queue.i = getelementptr i8, ptr %work, i32 88
  %0 = ptrtoint ptr %work_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %work_queue.i, align 4
  %cmp.i.not.i9 = icmp eq ptr %1, %work_queue.i
  br i1 %cmp.i.not.i9, label %entry.brcmf_msgbuf_dequeue_work.exit.thread_crit_edge, label %if.then.i.lr.ph

entry.brcmf_msgbuf_dequeue_work.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_dequeue_work.exit.thread

if.then.i.lr.ph:                                  ; preds = %entry
  %flowring_dma_handle.i = getelementptr i8, ptr %work, i32 -200
  %flowrings.i = getelementptr i8, ptr %work, i32 -204
  %commonrings.i = getelementptr i8, ptr %work, i32 -208
  %flow27.i = getelementptr i8, ptr %work, i32 -60
  br label %if.then.i

brcmf_msgbuf_dequeue_work.exit.thread:            ; preds = %brcmf_msgbuf_flowring_create_worker.exit.brcmf_msgbuf_dequeue_work.exit.thread_crit_edge, %entry.brcmf_msgbuf_dequeue_work.exit.thread_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i8, %entry.brcmf_msgbuf_dequeue_work.exit.thread_crit_edge ], [ %call2.i, %brcmf_msgbuf_flowring_create_worker.exit.brcmf_msgbuf_dequeue_work.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flowring_work_lock.i, i32 noundef %call2.i.lcssa) #10
  br label %while.end

if.then.i:                                        ; preds = %brcmf_msgbuf_flowring_create_worker.exit.if.then.i_crit_edge, %if.then.i.lr.ph
  %2 = phi ptr [ %1, %if.then.i.lr.ph ], [ %97, %brcmf_msgbuf_flowring_create_worker.exit.if.then.i_crit_edge ]
  %call2.i10 = phi i32 [ %call2.i8, %if.then.i.lr.ph ], [ %call2.i, %brcmf_msgbuf_flowring_create_worker.exit.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.brcmf_msgbuf_dequeue_work.exit_crit_edge

if.then.i.brcmf_msgbuf_dequeue_work.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_dequeue_work.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %brcmf_msgbuf_dequeue_work.exit

brcmf_msgbuf_dequeue_work.exit:                   ; preds = %if.end.i.i.i, %if.then.i.brcmf_msgbuf_dequeue_work.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flowring_work_lock.i, i32 noundef %call2.i10) #10
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %brcmf_msgbuf_dequeue_work.exit.while.end_crit_edge, label %while.body

brcmf_msgbuf_dequeue_work.exit.while.end_crit_edge: ; preds = %brcmf_msgbuf_dequeue_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %brcmf_msgbuf_dequeue_work.exit
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %flowid2.i = getelementptr inbounds %struct.brcmf_msgbuf_work_item, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %flowid2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flowid2.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %dev.i = getelementptr inbounds %struct.brcmf_bus, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %flowring_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %flowring_dma_handle.i, align 4
  %arrayidx.i = getelementptr i32, ptr %20, i32 %14
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %18, i32 noundef 24576, ptr noundef %arrayidx.i, i32 noundef 3264, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 2
  %21 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy.i, align 4
  %dev5.i = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #13
  %23 = ptrtoint ptr %flow27.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %flow27.i, align 4
  %conv.i = trunc i32 %14 to i16
  tail call void @brcmf_flowring_delete(ptr noundef %24, i16 noundef zeroext %conv.i) #10
  br label %brcmf_msgbuf_flowring_create_worker.exit

if.end.i:                                         ; preds = %while.body
  %25 = ptrtoint ptr %flowrings.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %flowrings.i, align 4
  %arrayidx8.i = getelementptr ptr, ptr %26, i32 %14
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx8.i, align 4
  tail call void @brcmf_commonring_config(ptr noundef %28, i16 noundef zeroext 512, i16 noundef zeroext 48, ptr noundef nonnull %call.i.i) #10
  %29 = ptrtoint ptr %commonrings.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %commonrings.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  tail call void @brcmf_commonring_lock(ptr noundef %32) #10
  %call10.i = tail call ptr @brcmf_commonring_reserve_for_write(ptr noundef %32) #10
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %do.end16.i, label %if.end22.i

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy17.i = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 2
  %33 = ptrtoint ptr %wiphy17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy17.i, align 4
  %dev18.i = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.86) #13
  tail call void @brcmf_commonring_unlock(ptr noundef %32) #10
  %conv21.i = trunc i32 %14 to i16
  %conv.i.i = and i32 %14, 65535
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_remove_flowring, ptr noundef nonnull @.str.54, i32 noundef %conv.i.i) #10
  %35 = ptrtoint ptr %flowrings.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %flowrings.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %36, i32 %conv.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.brcmf_commonring, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf_addr.i.i, align 4
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %dev.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i, align 4
  %47 = ptrtoint ptr %flowring_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %flowring_dma_handle.i, align 4
  %arrayidx2.i.i = getelementptr i32, ptr %48, i32 %conv.i.i
  %49 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %46, i32 noundef 24576, ptr noundef %40, i32 noundef %50, i32 noundef 0) #10
  %51 = ptrtoint ptr %flow27.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %flow27.i, align 4
  tail call void @brcmf_flowring_delete(ptr noundef %52, i16 noundef zeroext %conv21.i) #10
  br label %brcmf_msgbuf_flowring_create_worker.exit

if.end22.i:                                       ; preds = %if.end.i
  %53 = ptrtoint ptr %call10.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %call10.i, align 4
  %ifidx.i = getelementptr inbounds %struct.brcmf_msgbuf_work_item, ptr %2, i32 0, i32 2
  %54 = ptrtoint ptr %ifidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ifidx.i, align 4
  %conv23.i = trunc i32 %55 to i8
  %ifidx25.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %call10.i, i32 0, i32 1
  %56 = ptrtoint ptr %ifidx25.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv23.i, ptr %ifidx25.i, align 1
  %request_id.i = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %call10.i, i32 0, i32 4
  %57 = ptrtoint ptr %request_id.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %request_id.i, align 4
  %58 = ptrtoint ptr %flow27.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %flow27.i, align 4
  %conv28.i = trunc i32 %14 to i16
  %call29.i = tail call zeroext i8 @brcmf_flowring_tid(ptr noundef %59, i16 noundef zeroext %conv28.i) #10
  %tid.i = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, ptr %call10.i, i32 0, i32 3
  %60 = ptrtoint ptr %tid.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %call29.i, ptr %tid.i, align 4
  %conv30.i = add i16 %conv28.i, 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %conv30.i) #10
  %flow_ring_id.i = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, ptr %call10.i, i32 0, i32 5
  %62 = ptrtoint ptr %flow_ring_id.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %flow_ring_id.i, align 2
  %sa.i = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, ptr %call10.i, i32 0, i32 2
  %sa31.i = getelementptr inbounds %struct.brcmf_msgbuf_work_item, ptr %2, i32 0, i32 3
  %63 = call ptr @memcpy(ptr %sa.i, ptr %sa31.i, i32 6)
  %da.i = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, ptr %call10.i, i32 0, i32 1
  %da34.i = getelementptr inbounds %struct.brcmf_msgbuf_work_item, ptr %2, i32 0, i32 4
  %64 = call ptr @memcpy(ptr %da.i, ptr %da34.i, i32 6)
  %65 = ptrtoint ptr %flowring_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %flowring_dma_handle.i, align 4
  %arrayidx37.i = getelementptr i32, ptr %66, i32 %14
  %67 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx37.i, align 4
  %flow_ring_addr.i = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, ptr %call10.i, i32 0, i32 11
  %high_addr.i = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, ptr %call10.i, i32 0, i32 11, i32 1
  %69 = ptrtoint ptr %high_addr.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %high_addr.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %68) #10
  %71 = ptrtoint ptr %flow_ring_addr.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %flow_ring_addr.i, align 4
  %max_items.i = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, ptr %call10.i, i32 0, i32 9
  %72 = ptrtoint ptr %max_items.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 2, ptr %max_items.i, align 4
  %len_item.i = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, ptr %call10.i, i32 0, i32 10
  %73 = ptrtoint ptr %len_item.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 12288, ptr %len_item.i, align 2
  %conv46.i = zext i8 %call29.i to i32
  %74 = ptrtoint ptr %ifidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ifidx.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.89, i32 noundef %14, ptr noundef %da34.i, i32 noundef %conv46.i, i32 noundef %75) #10
  %call50.i = tail call i32 @brcmf_commonring_write_complete(ptr noundef %32) #10
  tail call void @brcmf_commonring_unlock(ptr noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end22.i.brcmf_msgbuf_flowring_create_worker.exit_crit_edge, label %do.end56.i

if.end22.i.brcmf_msgbuf_flowring_create_worker.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_flowring_create_worker.exit

do.end56.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy57.i = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 2
  %76 = ptrtoint ptr %wiphy57.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wiphy57.i, align 4
  %dev58.i = getelementptr inbounds %struct.wiphy, ptr %77, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.86) #13
  %conv.i1.i = and i32 %14, 65535
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_msgbuf_remove_flowring, ptr noundef nonnull @.str.54, i32 noundef %conv.i1.i) #10
  %78 = ptrtoint ptr %flowrings.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %flowrings.i, align 4
  %arrayidx.i3.i = getelementptr ptr, ptr %79, i32 %conv.i1.i
  %80 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i3.i, align 4
  %buf_addr.i4.i = getelementptr inbounds %struct.brcmf_commonring, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %buf_addr.i4.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buf_addr.i4.i, align 4
  %84 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %dev.i5.i = getelementptr inbounds %struct.brcmf_bus, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %dev.i5.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i5.i, align 4
  %90 = ptrtoint ptr %flowring_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %flowring_dma_handle.i, align 4
  %arrayidx2.i7.i = getelementptr i32, ptr %91, i32 %conv.i1.i
  %92 = ptrtoint ptr %arrayidx2.i7.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx2.i7.i, align 4
  tail call void @dma_free_attrs(ptr noundef %89, i32 noundef 24576, ptr noundef %83, i32 noundef %93, i32 noundef 0) #10
  %94 = ptrtoint ptr %flow27.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %flow27.i, align 4
  tail call void @brcmf_flowring_delete(ptr noundef %95, i16 noundef zeroext %conv28.i) #10
  br label %brcmf_msgbuf_flowring_create_worker.exit

brcmf_msgbuf_flowring_create_worker.exit:         ; preds = %do.end56.i, %if.end22.i.brcmf_msgbuf_flowring_create_worker.exit_crit_edge, %do.end16.i, %do.end.i
  tail call void @kfree(ptr noundef nonnull %2) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flowring_work_lock.i) #10
  %96 = ptrtoint ptr %work_queue.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %work_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %97, %work_queue.i
  br i1 %cmp.i.not.i, label %brcmf_msgbuf_flowring_create_worker.exit.brcmf_msgbuf_dequeue_work.exit.thread_crit_edge, label %brcmf_msgbuf_flowring_create_worker.exit.if.then.i_crit_edge

brcmf_msgbuf_flowring_create_worker.exit.if.then.i_crit_edge: ; preds = %brcmf_msgbuf_flowring_create_worker.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

brcmf_msgbuf_flowring_create_worker.exit.brcmf_msgbuf_dequeue_work.exit.thread_crit_edge: ; preds = %brcmf_msgbuf_flowring_create_worker.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_msgbuf_dequeue_work.exit.thread

while.end:                                        ; preds = %brcmf_msgbuf_dequeue_work.exit.while.end_crit_edge, %brcmf_msgbuf_dequeue_work.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_msgbuf_release_pktids(ptr nocapture noundef readonly %msgbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pktids = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 28
  %0 = ptrtoint ptr %rx_pktids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_pktids, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msgbuf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.brcmf_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %array1.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %array1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %array1.i, align 4
  %direction.i = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %1, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then
  %count.0.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %9, i32 %count.0.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %physaddr.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %9, i32 %count.0.i, i32 3
  %12 = ptrtoint ptr %physaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %physaddr.i, align 4
  %skb.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %9, i32 %count.0.i, i32 2
  %14 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  %data_offset.i = getelementptr %struct.brcmf_msgbuf_pktid, ptr %9, i32 %count.0.i, i32 1
  %18 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data_offset.i, align 4
  %conv.i = zext i16 %19 to i32
  %sub.i = sub i32 %17, %conv.i
  %20 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %direction.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %13, i32 noundef %sub.i, i32 noundef %21, i32 noundef 0) #10
  %22 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb.i, align 4
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %23) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %count.0.i, 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %brcmf_msgbuf_release_array.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

brcmf_msgbuf_release_array.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %9) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %brcmf_msgbuf_release_array.exit, %entry.if.end_crit_edge
  %tx_pktids = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 27
  %26 = ptrtoint ptr %tx_pktids to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_pktids, align 4
  %tobool2.not = icmp eq ptr %27, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %28 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %msgbuf, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %dev6 = getelementptr inbounds %struct.brcmf_bus, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev6, align 4
  %array1.i15 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %27, i32 0, i32 3
  %34 = ptrtoint ptr %array1.i15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %array1.i15, align 4
  %direction.i16 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %27, i32 0, i32 2
  br label %do.body.i20

do.body.i20:                                      ; preds = %if.end.i30.do.body.i20_crit_edge, %if.then3
  %count.0.i17 = phi i32 [ 0, %if.then3 ], [ %inc.i28, %if.end.i30.do.body.i20_crit_edge ]
  %arrayidx.i18 = getelementptr %struct.brcmf_msgbuf_pktid, ptr %35, i32 %count.0.i17
  %36 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i19 = icmp eq i32 %37, 0
  br i1 %tobool.not.i19, label %do.body.i20.if.end.i30_crit_edge, label %if.then.i27

do.body.i20.if.end.i30_crit_edge:                 ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i30

if.then.i27:                                      ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  %physaddr.i21 = getelementptr %struct.brcmf_msgbuf_pktid, ptr %35, i32 %count.0.i17, i32 3
  %38 = ptrtoint ptr %physaddr.i21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %physaddr.i21, align 4
  %skb.i22 = getelementptr %struct.brcmf_msgbuf_pktid, ptr %35, i32 %count.0.i17, i32 2
  %40 = ptrtoint ptr %skb.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb.i22, align 4
  %len.i23 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %len.i23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i23, align 4
  %data_offset.i24 = getelementptr %struct.brcmf_msgbuf_pktid, ptr %35, i32 %count.0.i17, i32 1
  %44 = ptrtoint ptr %data_offset.i24 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %data_offset.i24, align 4
  %conv.i25 = zext i16 %45 to i32
  %sub.i26 = sub i32 %43, %conv.i25
  %46 = ptrtoint ptr %direction.i16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %direction.i16, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %39, i32 noundef %sub.i26, i32 noundef %47, i32 noundef 0) #10
  %48 = ptrtoint ptr %skb.i22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb.i22, align 4
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %49) #10
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.then.i27, %do.body.i20.if.end.i30_crit_edge
  %inc.i28 = add nuw i32 %count.0.i17, 1
  %50 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %27, align 4
  %cmp.i29 = icmp ult i32 %inc.i28, %51
  br i1 %cmp.i29, label %if.end.i30.do.body.i20_crit_edge, label %brcmf_msgbuf_release_array.exit31

if.end.i30.do.body.i20_crit_edge:                 ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i20

brcmf_msgbuf_release_array.exit31:                ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %35) #10
  tail call void @kfree(ptr noundef nonnull %27) #10
  br label %if.end8

if.end8:                                          ; preds = %brcmf_msgbuf_release_array.exit31, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_proto_msgbuf_detach(ptr nocapture noundef readonly %drvr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_proto_msgbuf_detach, ptr noundef nonnull @.str.24) #10
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %entry
  %flowring_work = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 34
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %flowring_work) #10
  %work_queue = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %work_queue, align 4
  %cmp.i.not29 = icmp eq ptr %5, %work_queue
  br i1 %cmp.i.not29, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.then.while.body_crit_edge
  %6 = phi ptr [ %16, %list_del.exit.while.body_crit_edge ], [ %5, %if.then.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %6) #10
  %15 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %work_queue, align 4
  %cmp.i.not = icmp eq ptr %16, %work_queue
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.then.while.end_crit_edge
  %flow_map = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 32
  %17 = ptrtoint ptr %flow_map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %flow_map, align 4
  tail call void @kfree(ptr noundef %18) #10
  %txstatus_done_map = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 33
  %19 = ptrtoint ptr %txstatus_done_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txstatus_done_map, align 4
  tail call void @kfree(ptr noundef %20) #10
  %txflow_wq = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 30
  %21 = ptrtoint ptr %txflow_wq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %txflow_wq, align 4
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %while.end.if.end_crit_edge, label %if.then7

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %22) #10
  br label %if.end

if.end:                                           ; preds = %if.then7, %while.end.if.end_crit_edge
  %flow = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 29
  %23 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %flow, align 4
  tail call void @brcmf_flowring_detach(ptr noundef %24) #10
  %25 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drvr, align 4
  %dev = getelementptr inbounds %struct.brcmf_bus, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %ioctbuf = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 15
  %29 = ptrtoint ptr %ioctbuf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioctbuf, align 4
  %ioctbuf_handle = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 16
  %31 = ptrtoint ptr %ioctbuf_handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ioctbuf_handle, align 4
  tail call void @dma_free_attrs(ptr noundef %28, i32 noundef 1518, ptr noundef %30, i32 noundef %32, i32 noundef 0) #10
  tail call fastcc void @brcmf_msgbuf_release_pktids(ptr noundef nonnull %3)
  %flowring_dma_handle = getelementptr inbounds %struct.brcmf_msgbuf, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %flowring_dma_handle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %flowring_dma_handle, align 4
  tail call void @kfree(ptr noundef %34) #10
  tail call void @kfree(ptr noundef nonnull %3) #10
  %35 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %proto, align 4
  %pd10 = getelementptr inbounds %struct.brcmf_proto, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %pd10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %pd10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_flowring_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_commonring_get_read_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_commonring_read_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_flowring_open(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_flowring_delete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_process_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_txfinalize(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_netif_mon_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_netif_rx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_commonring_write_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_flowring_dequeue(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_msgbuf_alloc_pktid(ptr noundef %dev, ptr nocapture noundef %pktids, ptr noundef %skb, i16 noundef zeroext %data_offset, ptr nocapture noundef %physaddr, ptr nocapture noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %array1 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %pktids, i32 0, i32 3
  %0 = ptrtoint ptr %array1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %array1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %conv = zext i16 %data_offset to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %direction = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %pktids, i32 0, i32 2
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !206

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %12 = ptrtoint ptr %physaddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %physaddr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #10
  br label %do.body

dma_map_single_attrs.exit:                        ; preds = %entry
  %sub = sub i32 %5, %conv
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %sub) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub, i32 noundef %7, i32 noundef 0) #10
  %15 = ptrtoint ptr %physaddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call41.i, ptr %physaddr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.body_crit_edge, label %if.end

dma_map_single_attrs.exit.do.body_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %dma_map_single_attrs.exit.do.body_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_msgbuf_alloc_pktid, ptr noundef nonnull @.str.60) #10
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %last_allocated_idx = getelementptr inbounds %struct.brcmf_msgbuf_pktids, ptr %pktids, i32 0, i32 1
  %16 = ptrtoint ptr %last_allocated_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_allocated_idx, align 4
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %idx, align 4
  br label %do.body4

do.body4:                                         ; preds = %if.end18.do.body4_crit_edge, %if.end
  %count.0 = phi i32 [ 0, %if.end ], [ %inc19, %if.end18.do.body4_crit_edge ]
  %19 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idx, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %idx, align 4
  %21 = ptrtoint ptr %pktids to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pktids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %22)
  %cmp = icmp eq i32 %inc, %22
  %spec.store.select = select i1 %cmp, i32 0, i32 %inc
  %23 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.store.select, ptr %idx, align 4
  %arrayidx = getelementptr %struct.brcmf_msgbuf_pktid, ptr %1, i32 %spec.store.select
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp8 = icmp eq i32 %25, 0
  br i1 %cmp8, label %if.then10, label %do.body4.if.end18_crit_edge

do.body4.if.end18_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then10:                                        ; preds = %do.body4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then10
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 0, i32 1, ptr elementtype(i32) %arrayidx) #10, !srcloc !211
  %asmresult.i.i.i = extractvalue { i32, i32 } %26, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %26, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp14 = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp14, label %atomic_cmpxchg.exit.do.end24_crit_edge, label %atomic_cmpxchg.exit.if.end18_crit_edge

atomic_cmpxchg.exit.if.end18_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

atomic_cmpxchg.exit.do.end24_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

if.end18:                                         ; preds = %atomic_cmpxchg.exit.if.end18_crit_edge, %do.body4.if.end18_crit_edge
  %inc19 = add nuw i32 %count.0, 1
  %27 = ptrtoint ptr %pktids to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pktids, align 4
  %cmp22 = icmp ult i32 %inc19, %28
  br i1 %cmp22, label %if.end18.do.body4_crit_edge, label %if.end18.do.end24_crit_edge

if.end18.do.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

if.end18.do.body4_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

do.end24:                                         ; preds = %if.end18.do.end24_crit_edge, %atomic_cmpxchg.exit.do.end24_crit_edge
  %count.1 = phi i32 [ %count.0, %atomic_cmpxchg.exit.do.end24_crit_edge ], [ %inc19, %if.end18.do.end24_crit_edge ]
  %29 = ptrtoint ptr %pktids to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pktids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1, i32 %30)
  %cmp26 = icmp eq i32 %count.1, %30
  br i1 %cmp26, label %do.end24.cleanup_crit_edge, label %if.end29

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx, align 4
  %data_offset31 = getelementptr %struct.brcmf_msgbuf_pktid, ptr %1, i32 %32, i32 1
  %33 = ptrtoint ptr %data_offset31 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %data_offset, ptr %data_offset31, align 4
  %34 = ptrtoint ptr %physaddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %physaddr, align 4
  %36 = load i32, ptr %idx, align 4
  %physaddr33 = getelementptr %struct.brcmf_msgbuf_pktid, ptr %1, i32 %36, i32 3
  %37 = ptrtoint ptr %physaddr33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %physaddr33, align 4
  %38 = load i32, ptr %idx, align 4
  %skb35 = getelementptr %struct.brcmf_msgbuf_pktid, ptr %1, i32 %38, i32 2
  %39 = ptrtoint ptr %skb35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %skb, ptr %skb35, align 4
  %40 = load i32, ptr %idx, align 4
  %41 = ptrtoint ptr %last_allocated_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %last_allocated_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end24.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -12, %do.body ], [ 0, %if.end29 ], [ -12, %do.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_flowring_reinsert(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_flowring_lookup(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_flowring_enqueue(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_flowring_create(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_flowring_configure_addr_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_flowring_delete_peer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_flowring_add_tdls_peer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_debugfs_add_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_msgbuf_stats_read(ptr noundef %seq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvr1, align 4
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd, align 4
  %commonrings = getelementptr inbounds %struct.brcmf_msgbuf, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %commonrings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %commonrings, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 4
  %conv = zext i16 %15 to i32
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %w_ptr, align 2
  %conv2 = zext i16 %17 to i32
  %depth = getelementptr inbounds %struct.brcmf_commonring, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %depth, align 2
  %conv3 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.68, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #10
  %20 = ptrtoint ptr %commonrings to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %commonrings, align 4
  %arrayidx5 = getelementptr ptr, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 4
  %conv7 = zext i16 %25 to i32
  %w_ptr8 = getelementptr inbounds %struct.brcmf_commonring, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %w_ptr8 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %w_ptr8, align 2
  %conv9 = zext i16 %27 to i32
  %depth10 = getelementptr inbounds %struct.brcmf_commonring, ptr %23, i32 0, i32 3
  %28 = ptrtoint ptr %depth10 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %depth10, align 2
  %conv11 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.69, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv11) #10
  %30 = ptrtoint ptr %commonrings to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %commonrings, align 4
  %arrayidx13 = getelementptr ptr, ptr %31, i32 2
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx13, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 4
  %conv15 = zext i16 %35 to i32
  %w_ptr16 = getelementptr inbounds %struct.brcmf_commonring, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %w_ptr16 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %w_ptr16, align 2
  %conv17 = zext i16 %37 to i32
  %depth18 = getelementptr inbounds %struct.brcmf_commonring, ptr %33, i32 0, i32 3
  %38 = ptrtoint ptr %depth18 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %depth18, align 2
  %conv19 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.70, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv19) #10
  %40 = ptrtoint ptr %commonrings to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %commonrings, align 4
  %arrayidx21 = getelementptr ptr, ptr %41, i32 3
  %42 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx21, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 4
  %conv23 = zext i16 %45 to i32
  %w_ptr24 = getelementptr inbounds %struct.brcmf_commonring, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %w_ptr24 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %w_ptr24, align 2
  %conv25 = zext i16 %47 to i32
  %depth26 = getelementptr inbounds %struct.brcmf_commonring, ptr %43, i32 0, i32 3
  %48 = ptrtoint ptr %depth26 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %depth26, align 2
  %conv27 = zext i16 %49 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.71, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %conv27) #10
  %50 = ptrtoint ptr %commonrings to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %commonrings, align 4
  %arrayidx29 = getelementptr ptr, ptr %51, i32 4
  %52 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx29, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 4
  %conv31 = zext i16 %55 to i32
  %w_ptr32 = getelementptr inbounds %struct.brcmf_commonring, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %w_ptr32 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %w_ptr32, align 2
  %conv33 = zext i16 %57 to i32
  %depth34 = getelementptr inbounds %struct.brcmf_commonring, ptr %53, i32 0, i32 3
  %58 = ptrtoint ptr %depth34 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %depth34, align 2
  %conv35 = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.72, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %conv35) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.73, i32 noundef 512) #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.74) #10
  %flow = getelementptr inbounds %struct.brcmf_msgbuf, ptr %9, i32 0, i32 29
  %60 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %flow, align 4
  %nrofrings108 = getelementptr inbounds %struct.brcmf_flowring, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %nrofrings108 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %nrofrings108, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp109.not = icmp eq i16 %63, 0
  br i1 %cmp109.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flowrings = getelementptr inbounds %struct.brcmf_msgbuf, ptr %9, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %64 = phi ptr [ %61, %for.body.lr.ph ], [ %91, %for.inc.for.body_crit_edge ]
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rings, align 4
  %arrayidx40 = getelementptr ptr, ptr %66, i32 %indvars.iv
  %67 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx40, align 4
  %tobool.not = icmp eq ptr %68, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %status = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp45.not = icmp eq i32 %70, 2
  br i1 %cmp45.not, label %if.end48, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end48:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %flowrings to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %flowrings, align 4
  %arrayidx50 = getelementptr ptr, ptr %72, i32 %indvars.iv
  %73 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx50, align 4
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %68, align 4
  %idxprom53 = zext i16 %76 to i32
  %arrayidx54 = getelementptr %struct.brcmf_flowring, ptr %64, i32 0, i32 1, i32 %idxprom53
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %74, align 4
  %conv57 = zext i16 %78 to i32
  %w_ptr58 = getelementptr inbounds %struct.brcmf_commonring, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %w_ptr58 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %w_ptr58, align 2
  %conv59 = zext i16 %80 to i32
  %qlen.i = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %68, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %qlen.i, align 4
  %blocked = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %68, i32 0, i32 1
  %83 = ptrtoint ptr %blocked to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %blocked, align 2, !range !209
  %85 = zext i8 %84 to i32
  %ifidx = getelementptr %struct.brcmf_flowring, ptr %64, i32 0, i32 1, i32 %idxprom53, i32 2
  %86 = ptrtoint ptr %ifidx to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ifidx, align 1
  %conv63 = zext i8 %87 to i32
  %fifo = getelementptr %struct.brcmf_flowring, ptr %64, i32 0, i32 1, i32 %idxprom53, i32 1
  %88 = ptrtoint ptr %fifo to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %fifo, align 2
  %conv64 = zext i8 %89 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.75, i32 noundef %indvars.iv, i32 noundef %conv57, i32 noundef %conv59, i32 noundef %82, i32 noundef %85, i32 noundef %conv63, i32 noundef %conv64, ptr noundef %arrayidx54) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %90 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %flow, align 4
  %nrofrings = getelementptr inbounds %struct.brcmf_flowring, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %nrofrings to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %nrofrings, align 4
  %94 = zext i16 %93 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %94
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_commonring_reserve_for_write_multiple(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pkt_buf_get_skb(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_commonring_write_cancel(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_msgbuf_rxbuf_ctrl_post(ptr nocapture noundef readonly %msgbuf, i1 noundef zeroext %event_buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %alloced = alloca i16, align 2
  %physaddr = alloca i32, align 4
  %pktid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgbuf, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %alloced) #10
  %2 = ptrtoint ptr %alloced to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %alloced, align 2, !annotation !204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %physaddr) #10
  %3 = ptrtoint ptr %physaddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %physaddr, align 4, !annotation !204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pktid) #10
  %4 = ptrtoint ptr %pktid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pktid, align 4, !annotation !204
  %commonrings = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 1
  %5 = ptrtoint ptr %commonrings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %commonrings, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @brcmf_commonring_lock(ptr noundef %8) #10
  %conv = trunc i32 %count to i16
  %call = call ptr @brcmf_commonring_reserve_for_write_multiple(ptr noundef %8, i16 noundef zeroext %conv, ptr noundef nonnull %alloced) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %9 = ptrtoint ptr %alloced to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %alloced, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp99.not = icmp eq i16 %10, 0
  br i1 %cmp99.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rx_pktids = getelementptr inbounds %struct.brcmf_msgbuf, ptr %msgbuf, i32 0, i32 28
  %. = select i1 %event_buf, i8 13, i8 11
  %item_len = getelementptr inbounds %struct.brcmf_commonring, ptr %8, i32 0, i32 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.80) #13
  br label %cleanup

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end38.for.body_crit_edge ]
  %ret_ptr.0100 = phi ptr [ %call, %for.body.lr.ph ], [ %add.ptr, %if.end38.for.body_crit_edge ]
  %13 = call ptr @memset(ptr %ret_ptr.0100, i32 0, i32 40)
  %call7 = call ptr @brcmu_pkt_buf_get_skb(i32 noundef 8192) #10
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %for.body.for.end_crit_edge, label %if.end21

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end21:                                         ; preds = %for.body
  %len = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %16 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msgbuf, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev23 = getelementptr inbounds %struct.brcmf_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23, align 4
  %22 = ptrtoint ptr %rx_pktids to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_pktids, align 4
  %call24 = call fastcc i32 @brcmf_msgbuf_alloc_pktid(ptr noundef %21, ptr noundef %23, ptr noundef nonnull %call7, i16 noundef zeroext 0, ptr noundef nonnull %physaddr, ptr noundef nonnull %pktid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end38, label %if.then26

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call7, i32 noundef 1) #10
  br label %for.end

if.end38:                                         ; preds = %if.end21
  %24 = ptrtoint ptr %ret_ptr.0100 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %., ptr %ret_ptr.0100, align 4
  %25 = ptrtoint ptr %pktid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pktid, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %request_id = getelementptr inbounds %struct.msgbuf_common_hdr, ptr %ret_ptr.0100, i32 0, i32 4
  %28 = ptrtoint ptr %request_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %request_id, align 4
  %29 = ptrtoint ptr %physaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %physaddr, align 4
  %conv46 = trunc i32 %15 to i16
  %31 = call i16 @llvm.bswap.i16(i16 %conv46)
  %host_buf_len = getelementptr inbounds %struct.msgbuf_rx_ioctl_resp_or_event, ptr %ret_ptr.0100, i32 0, i32 1
  %32 = ptrtoint ptr %host_buf_len to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %host_buf_len, align 4
  %host_buf_addr = getelementptr inbounds %struct.msgbuf_rx_ioctl_resp_or_event, ptr %ret_ptr.0100, i32 0, i32 3
  %high_addr = getelementptr inbounds %struct.msgbuf_rx_ioctl_resp_or_event, ptr %ret_ptr.0100, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %high_addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %high_addr, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %30)
  %35 = ptrtoint ptr %host_buf_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %host_buf_addr, align 4
  %36 = ptrtoint ptr %item_len to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %item_len, align 4
  %conv50 = zext i16 %37 to i32
  %add.ptr = getelementptr i8, ptr %ret_ptr.0100, i32 %conv50
  %inc = add nuw nsw i32 %i.0101, 1
  %38 = ptrtoint ptr %alloced to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %alloced, align 2
  %conv5 = zext i16 %39 to i32
  %cmp = icmp ult i32 %inc, %conv5
  br i1 %cmp, label %if.end38.for.body_crit_edge, label %if.end38.if.then52_crit_edge

if.end38.if.then52_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.then26, %for.body.for.end_crit_edge
  %.str.58.sink = phi ptr [ @.str.58, %if.then26 ], [ @.str.77, %for.body.for.end_crit_edge ]
  %wiphy31 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %wiphy31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wiphy31, align 4
  %dev32 = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull %.str.58.sink, ptr noundef nonnull @.str.80) #13
  %42 = ptrtoint ptr %alloced to i32
  call void @__asan_load2_noabort(i32 %42)
  %.sink = load i16, ptr %alloced, align 2
  %43 = trunc i32 %i.0101 to i16
  %conv37 = sub i16 %.sink, %43
  call void @brcmf_commonring_write_cancel(ptr noundef %8, i16 noundef zeroext %conv37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0101)
  %tobool51.not = icmp eq i32 %i.0101, 0
  br i1 %tobool51.not, label %for.end.cleanup_crit_edge, label %for.end.if.then52_crit_edge

for.end.if.then52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then52:                                        ; preds = %for.end.if.then52_crit_edge, %if.end38.if.then52_crit_edge
  %i.096112 = phi i32 [ %i.0101, %for.end.if.then52_crit_edge ], [ %inc, %if.end38.if.then52_crit_edge ]
  %call53 = call i32 @brcmf_commonring_write_complete(ptr noundef %8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %for.end.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %i.096112, %if.then52 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ]
  call void @brcmf_commonring_unlock(ptr noundef %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pktid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %physaddr) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %alloced) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_commonring_config(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @brcmf_flowring_tid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !87, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !102, !104, !106, !107, !108, !109, !111, !112, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !177, !178, !180, !181, !183, !184, !185, !186, !188, !189, !191, !193, !194}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__func__.brcmf_msgbuf_delete_flowring, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1405, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1414, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @brcmf_msgbuf_delete_flowring._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @brcmf_msgbuf_delete_flowring._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1432, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1438, i32 3}
!14 = !{ptr @brcmf_msgbuf_delete_flowring._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @brcmf_msgbuf_delete_flowring._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1512, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @brcmf_proto_msgbuf_attach._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @brcmf_proto_msgbuf_attach._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1521, i32 22}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1523, i32 3}
!26 = !{ptr @brcmf_proto_msgbuf_attach._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @brcmf_proto_msgbuf_attach._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @brcmf_proto_msgbuf_attach.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1526, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @brcmf_proto_msgbuf_attach.__key.17, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1559, i32 2}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1592, i32 2}
!36 = !{ptr @brcmf_proto_msgbuf_attach.__key.20, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1607, i32 2}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @brcmf_proto_msgbuf_attach.__key.22, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1608, i32 2}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__func__.brcmf_proto_msgbuf_detach, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1637, i32 2}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__func__.brcmf_msgbuf_process_msgtype, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1289, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1293, i32 3}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1297, i32 3}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1301, i32 3}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1305, i32 3}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1308, i32 3}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1312, i32 3}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1316, i32 3}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1320, i32 3}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1324, i32 3}
!66 = !{ptr @brcmf_msgbuf_process_msgtype._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @brcmf_msgbuf_process_msgtype._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1206, i32 3}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @brcmf_msgbuf_process_gen_status._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @brcmf_msgbuf_process_gen_status._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1220, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @brcmf_msgbuf_process_ring_status._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @brcmf_msgbuf_process_ring_status._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1241, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @brcmf_msgbuf_process_flow_ring_create_response._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @brcmf_msgbuf_process_flow_ring_create_response._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1245, i32 2}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1270, i32 3}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @brcmf_msgbuf_process_flow_ring_delete_response._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @brcmf_msgbuf_process_flow_ring_delete_response._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1274, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1125, i32 3}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @brcmf_msgbuf_process_event._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @brcmf_msgbuf_process_event._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @__func__.brcmf_msgbuf_get_pktid, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 370, i32 3}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 383, i32 3}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h", i32 349, i32 13}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1176, i32 4}
!106 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @brcmf_msgbuf_process_rx_complete._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @brcmf_msgbuf_process_rx_complete._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @brcmf_msgbuf_process_rx_complete._entry.52, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1187, i32 3}
!111 = !{ptr @brcmf_msgbuf_process_rx_complete._entry_ptr.53, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @__func__.brcmf_msgbuf_remove_flowring, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 550, i32 2}
!114 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 718, i32 4}
!117 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @brcmf_msgbuf_txflow._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @brcmf_msgbuf_txflow._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 727, i32 4}
!122 = !{ptr @brcmf_msgbuf_txflow._entry.57, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @brcmf_msgbuf_txflow._entry_ptr.59, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @__func__.brcmf_msgbuf_alloc_pktid, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 332, i32 3}
!126 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!129 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @__func__.brcmf_msgbuf_query_dcmd, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 496, i32 2}
!133 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 505, i32 3}
!136 = !{ptr @brcmf_msgbuf_query_dcmd._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @brcmf_msgbuf_query_dcmd._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 441, i32 3}
!140 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @brcmf_msgbuf_tx_ioctl._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @brcmf_msgbuf_tx_ioctl._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1499, i32 32}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1455, i32 18}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1458, i32 18}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1461, i32 18}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1464, i32 18}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1467, i32 18}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1470, i32 18}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1472, i32 16}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1481, i32 19}
!161 = !{ptr @__func__.brcmf_msgbuf_rxbuf_data_post, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 915, i32 3}
!163 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 926, i32 4}
!166 = !{ptr @brcmf_msgbuf_rxbuf_data_post._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @brcmf_msgbuf_rxbuf_data_post._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @brcmf_msgbuf_rxbuf_data_post._entry.78, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 936, i32 4}
!170 = !{ptr @brcmf_msgbuf_rxbuf_data_post._entry_ptr.79, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1024, i32 3}
!173 = !{ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry.81, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1036, i32 4}
!177 = !{ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry_ptr.82, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry.83, !179, !"_entry", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 1046, i32 4}
!180 = !{ptr @brcmf_msgbuf_rxbuf_ctrl_post._entry_ptr.84, !179, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 599, i32 3}
!183 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @brcmf_msgbuf_flowring_create_worker._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @brcmf_msgbuf_flowring_create_worker._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @brcmf_msgbuf_flowring_create_worker._entry.87, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 612, i32 3}
!188 = !{ptr @brcmf_msgbuf_flowring_create_worker._entry_ptr.88, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 633, i32 2}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c", i32 639, i32 3}
!193 = !{ptr @brcmf_msgbuf_flowring_create_worker._entry.90, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @brcmf_msgbuf_flowring_create_worker._entry_ptr.92, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{!"auto-init"}
!205 = !{i64 2148527391, i64 2148527417, i64 2148527446, i64 2148527480, i64 2148527511, i64 2148527534}
!206 = !{!"branch_weights", i32 2000, i32 1}
!207 = !{i64 2154997984, i64 2154998472, i64 2154998021, i64 2154998077, i64 2154998111, i64 2154998135, i64 2154998176, i64 2154998197, i64 2154998225, i64 2154998259}
!208 = !{i64 2148524926, i64 2148524952, i64 2148524981, i64 2148525015, i64 2148525046, i64 2148525069}
!209 = !{i8 0, i8 2}
!210 = !{i64 2148626773}
!211 = !{i64 1009459, i64 1009483, i64 1009504, i64 1009521, i64 1009538}
!212 = !{i64 2148626999}
