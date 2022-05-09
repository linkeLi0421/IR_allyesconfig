; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/htc_pipe.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/htc_pipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath6kl_htc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.127, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.128 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.127 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.124, ptr, ptr, ptr }
%union.anon.124 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.128 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.129, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.129 = type { i32 }
%struct.htc_target = type { [9 x %struct.htc_endpoint], %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], %struct.anon.126 }
%struct.htc_endpoint = type { i32, i16, %struct.list_head, %struct.list_head, %struct.htc_endpoint_credit_dist, %struct.htc_ep_callbacks, i32, i32, i32, i32, ptr, i8, i32, %struct.htc_endpoint_stats, i16, %struct.anon.125 }
%struct.htc_endpoint_credit_dist = type { %struct.list_head, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.htc_endpoint_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.125 = type { i8, i8, %struct.list_head, i8 }
%struct.anon.126 = type { ptr, [256 x i8], i32, i8, [9 x %struct.htc_pipe_txcredit_alloc] }
%struct.htc_pipe_txcredit_alloc = type { i16, i8 }
%struct.ath6kl_device = type { %struct.spinlock, %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_enable_reg, ptr, ptr }
%struct.ath6kl_irq_proc_registers = type { i8, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i32] }
%struct.ath6kl_irq_enable_reg = type { i8, i8, i8, i8 }
%struct.ath6kl_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.htc_service_connect_req = type { i16, i16, %struct.htc_ep_callbacks, i32, i32, i32 }
%struct.htc_service_connect_resp = type { i8, i8, i32, i32, i8 }
%struct.htc_conn_service_msg = type { i16, i16, i16, i8, i8 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.137 = type { i8, i8, i16 }
%struct.htc_frame_hdr = type <{ %union.anon.134, [2 x i8] }>
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { %union.anon.136 }
%union.anon.136 = type { i32 }
%struct.htc_record_hdr = type { i8, i8 }
%struct.htc_credit_report = type { i8, i8 }

@ath6kl_htc_pipe_ops = internal constant { %struct.ath6kl_htc_ops, [36 x i8] } { %struct.ath6kl_htc_ops { ptr @ath6kl_htc_pipe_create, ptr @ath6kl_htc_pipe_wait_target, ptr @ath6kl_htc_pipe_start, ptr @ath6kl_htc_pipe_conn_service, ptr @ath6kl_htc_pipe_tx, ptr @ath6kl_htc_pipe_stop, ptr @ath6kl_htc_pipe_cleanup, ptr @ath6kl_htc_pipe_flush_txep, ptr @ath6kl_htc_pipe_flush_rx_buf, ptr @ath6kl_htc_pipe_activity_changed, ptr @ath6kl_htc_pipe_get_rxbuf_num, ptr @ath6kl_htc_pipe_add_rxbuf_multiple, ptr @ath6kl_htc_pipe_credit_setup, ptr @ath6kl_htc_pipe_tx_complete, ptr @ath6kl_htc_pipe_rx_complete }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"htc create unable to allocate memory\0A\00", [58 x i8] zeroinitializer }, align 32
@ath6kl_htc_pipe_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&target->htc_lock\00", [46 x i8] zeroinitializer }, align 32
@ath6kl_htc_pipe_create.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&target->rx_lock\00", [47 x i8] zeroinitializer }, align 32
@ath6kl_htc_pipe_create.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&target->tx_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hif pipe get default\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid htc pipe ready msg len: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid htc pipe ready msg: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Target Ready! : transmit resources : %d size:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"htc pipe control receive timeout!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"HTC Service Index : %d TX : 0x%2.2X : alloc:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@ath6kl_htc_pipe_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/ath/ath6kl/htc_pipe.c\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HTC using TX credit flow control\0A\00", [62 x i8] zeroinitializer }, align 32
@ath6kl_htc_pipe_conn_service.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ath6kl_htc_pipe_conn_service.__already_done.16 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ath6kl_htc_pipe_conn_service.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ath6kl_htc_pipe_conn_service.__already_done.18 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: service 0x%X conn resp: status: %d ep: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.ath6kl_htc_pipe_conn_service = private unnamed_addr constant [29 x i8] c"ath6kl_htc_pipe_conn_service\00", align 1
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Target failed service 0x%X connect request (status:%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@ath6kl_htc_pipe_conn_service.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ath6kl_htc_pipe_conn_service.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ath6kl_htc_pipe_conn_service.__already_done.23 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SVC Ready: 0x%4.4X: ULpipe:%d DLpipe:%d id:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SVC: 0x%4.4X ep:%d TX flow control off\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"HTC Service TX : 0x%2.2X : allocation is zero!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: endPointId: %d, buffer: 0x%p, length: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.ath6kl_htc_pipe_tx = private unnamed_addr constant [19 x i8] c"ath6kl_htc_pipe_tx\00", align 1
@htc_send_packets_multiple.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: (queue:0x%p depth:%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.htc_try_send = private unnamed_addr constant [13 x i8] c"htc_try_send\00", align 1
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: Endpoint %d, TX queue will overflow :%d, Tx Depth:%d, Max:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@htc_try_send.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Indicate overflowed TX pkts: %p\0A\00", [59 x i8] zeroinitializer }, align 32
@htc_try_send.__already_done.31 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hif pipe get free queue number\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: got head packet:0x%p , queue depth: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.get_htc_packet_credit_based = private unnamed_addr constant [28 x i8] c"get_htc_packet_credit_based\00", align 1
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: creds required:%d got:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: host needs credits\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: got packet:0x%p , new queue depth: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.get_htc_packet = private unnamed_addr constant [15 x i8] c"get_htc_packet\00", align 1
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: queue: 0x%p, pkts %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.htc_issue_packets = private unnamed_addr constant [18 x i8] c"htc_issue_packets\00", align 1
@htc_issue_packets.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@htc_issue_packets.__already_done.38 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: failed status:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: failed pkt:0x%p status:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hif pipe send\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: calling ep %d, send complete multiple callback (%d pkts)\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.do_send_completion = private unnamed_addr constant [19 x i8] c"do_send_completion\00", align 1
@.str.43 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: calling ep %d send complete callback on packet 0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Flushing RX packet:0x%p, length:%d, ep:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@ath6kl_htc_pipe_flush_txep.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"htc rx flush pkt 0x%p len %d ep %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ath6kl_htc_pipe_add_rxbuf_multiple.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: epid: %d, cnt:%d, len: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.ath6kl_htc_pipe_add_rxbuf_multiple = private unnamed_addr constant [35 x i8] c"ath6kl_htc_pipe_add_rxbuf_multiple\00", align 1
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HTC TX lookup failed!\0A\00", [41 x i8] zeroinitializer }, align 32
@ath6kl_htc_pipe_rx_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Target not yet initialized\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HTC Rx: invalid EndpointID=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"HTC Rx: insufficient length, got:%d expected =%zu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid header: payloadlen should be %d, CB[0]: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HTC ignores Rx Ctrl after setup complete\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid length: %d (id:%d) buffer has: %d bytes left\0A\00", [42 x i8] zeroinitializer }, align 32
@htc_process_trailer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unhandled record: id:%d length:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@htc_process_credit_report.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Report indicated %d credits to distribute\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"ath6kl_htc_pipe_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1704, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1415, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1420, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1421, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1422, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1435, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 165, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1568, i32 15 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1576, i32 15 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1582, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1153, i32 15 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 641, i32 9 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1489, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1500, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1321, i32 7 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1329, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1387, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1394, i32 7 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1211, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1545, i32 6 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 311, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 347, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 385, i32 9 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 182, i32 29 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 113, i32 7 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 129, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 153, i32 9 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 190, i32 7 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 214, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 265, i32 9 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 285, i32 9 }
@___asan_gen_.160 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ath/ath6kl/hif-ops.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 157, i32 29 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 49, i32 7 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 70, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1116, i32 7 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1687, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1639, i32 29 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 760, i32 14 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 964, i32 14 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 977, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 988, i32 7 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1002, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1031, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 873, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 896, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [46 x i8] c"../drivers/net/wireless/ath/ath6kl/htc_pipe.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 684, i32 6 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @ath6kl_htc_pipe_ops, ptr @.str, ptr @ath6kl_htc_pipe_create.__key, ptr @.str.1, ptr @ath6kl_htc_pipe_create.__key.2, ptr @.str.3, ptr @ath6kl_htc_pipe_create.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.19, ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_htc_pipe_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_htc_pipe_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_htc_pipe_create.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_htc_pipe_create.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ath6kl_htc_pipe_attach(ptr nocapture noundef writeonly %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_ops = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 6
  %0 = ptrtoint ptr %htc_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ath6kl_htc_pipe_ops, ptr %htc_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ath6kl_htc_pipe_create(ptr noundef %ar) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2780) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.then24.thread, label %do.body

if.then24.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str) #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %htc_lock = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %htc_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ath6kl_htc_pipe_create.__key, i16 noundef signext 3) #7
  %rx_lock = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ath6kl_htc_pipe_create.__key.2, i16 noundef signext 3) #7
  %tx_lock = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @ath6kl_htc_pipe_create.__key.4, i16 noundef signext 3) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body
  %i.017.i = phi i32 [ 0, %do.body ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i
  %svc_id.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 1
  %1 = ptrtoint ptr %svc_id.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %svc_id.i, align 4
  %len_max.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 7
  %2 = ptrtoint ptr %len_max.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %len_max.i, align 8
  %max_txq_depth.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 6
  %3 = ptrtoint ptr %max_txq_depth.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_txq_depth.i, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.017.i, ptr %arrayidx.i, align 8
  %txq.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 2
  %5 = ptrtoint ptr %txq.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %txq.i, ptr %txq.i, align 8
  %prev.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %txq.i, ptr %prev.i.i, align 4
  %tx_lookup_queue.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 15, i32 2
  %7 = ptrtoint ptr %tx_lookup_queue.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %tx_lookup_queue.i, ptr %tx_lookup_queue.i, align 4
  %prev.i15.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 15, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tx_lookup_queue.i, ptr %prev.i15.i, align 8
  %rx_bufq.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 3
  %9 = ptrtoint ptr %rx_bufq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rx_bufq.i, ptr %rx_bufq.i, align 8
  %prev.i16.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i16.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rx_bufq.i, ptr %prev.i16.i, align 4
  %target1.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 10
  %11 = ptrtoint ptr %target1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %target1.i, align 4
  %tx_credit_flow_enabled.i = getelementptr [9 x %struct.htc_endpoint], ptr %call7.i.i, i32 0, i32 %i.017.i, i32 15, i32 3
  %12 = ptrtoint ptr %tx_credit_flow_enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %tx_credit_flow_enabled.i, align 4
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.cond.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.preheader:                               ; preds = %for.body.i
  %pipe.i = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.054 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 64) #10
  %cmp12.not = icmp eq ptr %call7.i.i52, null
  br i1 %cmp12.not, label %for.body.for.inc_crit_edge, label %if.then13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then13:                                        ; preds = %for.body
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #7
  %14 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe.i, align 4
  %cmp.i = icmp eq ptr %15, null
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i52, ptr %pipe.i, align 4
  %17 = ptrtoint ptr %call7.i.i52 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %call7.i.i52, align 8
  br label %free_htc_packet_container.exit

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call7.i.i52 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %call7.i.i52, align 8
  %19 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i52, ptr %pipe.i, align 4
  br label %free_htc_packet_container.exit

free_htc_packet_container.exit:                   ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #7
  br label %for.inc

for.inc:                                          ; preds = %free_htc_packet_container.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 80) #10
  %dev = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i53, ptr %dev, align 8
  %tobool.not = icmp eq ptr %call7.i.i53, null
  br i1 %tobool.not, label %if.then26, label %if.end18

if.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %ar20 = getelementptr inbounds %struct.ath6kl_device, ptr %call7.i.i53, i32 0, i32 4
  %22 = ptrtoint ptr %ar20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ar, ptr %ar20, align 4
  %htc_cnxt = getelementptr inbounds %struct.ath6kl_device, ptr %call7.i.i53, i32 0, i32 3
  %23 = ptrtoint ptr %htc_cnxt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %htc_cnxt, align 8
  %pipe = getelementptr inbounds %struct.htc_endpoint, ptr %call7.i.i, i32 0, i32 15
  %pipeid_dl = getelementptr inbounds %struct.htc_endpoint, ptr %call7.i.i, i32 0, i32 15, i32 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.7) #7
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %24 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hif_ops.i, align 4
  %pipe_get_default.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %pipe_get_default.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pipe_get_default.i, align 4
  tail call void %27(ptr noundef %ar, ptr noundef %pipe, ptr noundef %pipeid_dl) #7
  br label %cleanup

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.6) #7
  tail call void @ath6kl_htc_pipe_cleanup(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end18, %if.then24.thread
  %retval.0 = phi ptr [ %call7.i.i, %if.end18 ], [ null, %if.then26 ], [ null, %if.then24.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_pipe_wait_target(ptr noundef %target) #1 align 64 {
entry:
  %connect = alloca %struct.htc_service_connect_req, align 4
  %resp = alloca %struct.htc_service_connect_resp, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %connect) #7
  %0 = call ptr @memset(ptr %connect, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #7
  %1 = call ptr @memset(ptr %resp, i32 255, i32 16)
  %rx_lock.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  %ctrl_response_valid.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %count.015.i = phi i32 [ 200, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #7
  %2 = ptrtoint ptr %ctrl_response_valid.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl_response_valid.i, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %while.body.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #7
  %dec.i = add nsw i32 %count.015.i, -1
  %call.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %cmp.i = icmp ugt i32 %count.015.i, 1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %htc_wait_recv_ctrl_message.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

htc_wait_recv_ctrl_message.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  %4 = ptrtoint ptr %ctrl_response_valid.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ctrl_response_valid.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #7
  %ctrl_response_len = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %ctrl_response_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctrl_response_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp1 = icmp ult i32 %6, 10
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.8, i32 noundef %6) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ctrl_response_buf = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 1
  %7 = ptrtoint ptr %ctrl_response_buf to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %ctrl_response_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp7.not = icmp eq i16 %8, 256
  br i1 %cmp7.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %8 to i32
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.9, i32 noundef %conv) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %cred_cnt = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 1, i32 2
  %9 = ptrtoint ptr %cred_cnt to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %cred_cnt, align 1
  %conv15 = zext i16 %10 to i32
  %cred_sz = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 1, i32 4
  %11 = ptrtoint ptr %cred_sz to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %cred_sz, align 1
  %conv17 = zext i16 %12 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %conv15, i32 noundef %conv17) #7
  %13 = ptrtoint ptr %cred_cnt to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %cred_cnt, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv20 = zext i16 %15 to i32
  %tgt_creds = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 5
  %16 = ptrtoint ptr %tgt_creds to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv20, ptr %tgt_creds, align 4
  %17 = ptrtoint ptr %cred_sz to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %cred_sz, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv23 = zext i16 %19 to i32
  %tgt_cred_sz = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 6
  %20 = ptrtoint ptr %tgt_cred_sz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv23, ptr %tgt_cred_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp25 = icmp eq i16 %14, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp28 = icmp eq i16 %18, 0
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp28
  br i1 %or.cond, label %if.end13.cleanup_crit_edge, label %if.end31

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end13
  %.frozen = freeze i16 %19
  %div.i57 = udiv i16 1536, %.frozen
  %div.i.zext = zext i16 %div.i57 to i32
  %21 = mul i16 %div.i57, %.frozen
  %rem.i58.decomposed = sub i16 1536, %21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i58.decomposed)
  %tobool.not.i54 = icmp ne i16 %rem.i58.decomposed, 0
  %inc.i = zext i1 %tobool.not.i54 to i32
  %spec.select.i = add nuw nsw i32 %inc.i, %div.i.zext
  %incdec.ptr36.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 1
  %22 = ptrtoint ptr %incdec.ptr36.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 259, ptr %incdec.ptr36.i, align 2
  %div38.i596061 = lshr i16 %15, 2
  %conv39.i = trunc i16 %div38.i596061 to i8
  %credit_alloc40.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 1, i32 1
  %23 = and i16 %15, 1020
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp43.i = icmp eq i16 %23, 0
  %inc47.i = zext i1 %cmp43.i to i8
  %storemerge1.i = add i8 %inc47.i, %conv39.i
  %24 = ptrtoint ptr %credit_alloc40.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %storemerge1.i, ptr %credit_alloc40.i, align 2
  %conv50.i = zext i8 %storemerge1.i to i32
  %sub51.i = sub nsw i32 %conv20, %conv50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub51.i)
  %cmp52.i = icmp slt i32 %sub51.i, 1
  br i1 %cmp52.i, label %if.end31.htc_setup_target_buffer_assignments.exit_crit_edge, label %if.end55.i

if.end31.htc_setup_target_buffer_assignments.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_setup_target_buffer_assignments.exit

if.end55.i:                                       ; preds = %if.end31
  %incdec.ptr56.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 2
  %25 = ptrtoint ptr %incdec.ptr56.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 260, ptr %incdec.ptr56.i, align 2
  %div5834.i = lshr i32 %sub51.i, 2
  %conv59.i = trunc i32 %div5834.i to i8
  %credit_alloc60.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 2, i32 1
  %26 = and i32 %sub51.i, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp63.i = icmp eq i32 %26, 0
  %inc67.i = zext i1 %cmp63.i to i8
  %spec.select2.i = add i8 %inc67.i, %conv59.i
  %27 = ptrtoint ptr %credit_alloc60.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select2.i, ptr %credit_alloc60.i, align 2
  %conv70.i = zext i8 %spec.select2.i to i32
  %sub71.i = sub nsw i32 %sub51.i, %conv70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub71.i)
  %cmp72.i = icmp slt i32 %sub71.i, 1
  br i1 %cmp72.i, label %if.end55.i.htc_setup_target_buffer_assignments.exit_crit_edge, label %if.end75.i

if.end55.i.htc_setup_target_buffer_assignments.exit_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_setup_target_buffer_assignments.exit

if.end75.i:                                       ; preds = %if.end55.i
  %incdec.ptr76.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 3
  %28 = ptrtoint ptr %incdec.ptr76.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 256, ptr %incdec.ptr76.i, align 2
  %conv78.i = trunc i32 %spec.select.i to i8
  %credit_alloc79.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 3, i32 1
  %29 = ptrtoint ptr %credit_alloc79.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv78.i, ptr %credit_alloc79.i, align 2
  %conv81.i = and i32 %spec.select.i, 255
  %sub82.i = sub nsw i32 %sub71.i, %conv81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub82.i)
  %cmp83.i = icmp slt i32 %sub82.i, 1
  br i1 %cmp83.i, label %if.end75.i.htc_setup_target_buffer_assignments.exit_crit_edge, label %if.end86.i

if.end75.i.htc_setup_target_buffer_assignments.exit_crit_edge: ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_setup_target_buffer_assignments.exit

if.end86.i:                                       ; preds = %if.end75.i
  %incdec.ptr87.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 4
  %30 = ptrtoint ptr %incdec.ptr87.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 258, ptr %incdec.ptr87.i, align 2
  %credit_alloc90.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 4, i32 1
  %31 = ptrtoint ptr %credit_alloc90.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv78.i, ptr %credit_alloc90.i, align 2
  %sub93.i = sub nsw i32 %sub82.i, %conv81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub93.i)
  %cmp94.i = icmp slt i32 %sub93.i, 1
  br i1 %cmp94.i, label %if.end86.i.htc_setup_target_buffer_assignments.exit_crit_edge, label %if.end97.i

if.end86.i.htc_setup_target_buffer_assignments.exit_crit_edge: ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_setup_target_buffer_assignments.exit

if.end97.i:                                       ; preds = %if.end86.i
  %incdec.ptr98.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 5
  %32 = ptrtoint ptr %incdec.ptr98.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 257, ptr %incdec.ptr98.i, align 2
  %conv100.i = trunc i32 %sub93.i to i8
  %credit_alloc101.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 5, i32 1
  %33 = ptrtoint ptr %credit_alloc101.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv100.i, ptr %credit_alloc101.i, align 2
  %arrayidx110.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 0
  %34 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx110.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp113.not.i = icmp eq i16 %35, 0
  br i1 %cmp113.not.i, label %if.end97.i.for.inc.i_crit_edge, label %if.then115.i

if.end97.i.for.inc.i_crit_edge:                   ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then115.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv112.i = zext i16 %35 to i32
  %credit_alloc124.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %credit_alloc124.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %credit_alloc124.i, align 2
  %conv125.i = zext i8 %37 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef %conv112.i, i32 noundef %conv125.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then115.i, %if.end97.i.for.inc.i_crit_edge
  %38 = ptrtoint ptr %incdec.ptr36.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %incdec.ptr36.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp113.not.1.i = icmp eq i16 %39, 0
  br i1 %cmp113.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then115.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then115.1.i:                                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv112.1.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %credit_alloc40.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %credit_alloc40.i, align 2
  %conv125.1.i = zext i8 %41 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef %conv112.1.i, i32 noundef %conv125.1.i) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then115.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %42 = ptrtoint ptr %incdec.ptr56.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %incdec.ptr56.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp113.not.2.i = icmp eq i16 %43, 0
  br i1 %cmp113.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then115.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then115.2.i:                                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv112.2.i = zext i16 %43 to i32
  %44 = ptrtoint ptr %credit_alloc60.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %credit_alloc60.i, align 2
  %conv125.2.i = zext i8 %45 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef %conv112.2.i, i32 noundef %conv125.2.i) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then115.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %46 = ptrtoint ptr %incdec.ptr76.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %incdec.ptr76.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp113.not.3.i = icmp eq i16 %47, 0
  br i1 %cmp113.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then115.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.then115.3.i:                                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv112.3.i = zext i16 %47 to i32
  %48 = ptrtoint ptr %credit_alloc79.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %credit_alloc79.i, align 2
  %conv125.3.i = zext i8 %49 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef 3, i32 noundef %conv112.3.i, i32 noundef %conv125.3.i) #7
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then115.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %50 = ptrtoint ptr %incdec.ptr87.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %incdec.ptr87.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp113.not.4.i = icmp eq i16 %51, 0
  br i1 %cmp113.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then115.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

if.then115.4.i:                                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv112.4.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %credit_alloc90.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %credit_alloc90.i, align 2
  %conv125.4.i = zext i8 %53 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef 4, i32 noundef %conv112.4.i, i32 noundef %conv125.4.i) #7
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then115.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %54 = ptrtoint ptr %incdec.ptr98.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %incdec.ptr98.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp113.not.5.i = icmp eq i16 %55, 0
  br i1 %cmp113.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then115.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

if.then115.5.i:                                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv112.5.i = zext i16 %55 to i32
  %56 = ptrtoint ptr %credit_alloc101.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %credit_alloc101.i, align 2
  %conv125.5.i = zext i8 %57 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef 5, i32 noundef %conv112.5.i, i32 noundef %conv125.5.i) #7
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then115.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %arrayidx110.6.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 6
  %58 = ptrtoint ptr %arrayidx110.6.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx110.6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp113.not.6.i = icmp eq i16 %59, 0
  br i1 %cmp113.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then115.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

if.then115.6.i:                                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv112.6.i = zext i16 %59 to i32
  %credit_alloc124.6.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 6, i32 1
  %60 = ptrtoint ptr %credit_alloc124.6.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %credit_alloc124.6.i, align 2
  %conv125.6.i = zext i8 %61 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef 6, i32 noundef %conv112.6.i, i32 noundef %conv125.6.i) #7
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then115.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %arrayidx110.7.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 7
  %62 = ptrtoint ptr %arrayidx110.7.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx110.7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp113.not.7.i = icmp eq i16 %63, 0
  br i1 %cmp113.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.then115.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7.i

if.then115.7.i:                                   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv112.7.i = zext i16 %63 to i32
  %credit_alloc124.7.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 7, i32 1
  %64 = ptrtoint ptr %credit_alloc124.7.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %credit_alloc124.7.i, align 2
  %conv125.7.i = zext i8 %65 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef 7, i32 noundef %conv112.7.i, i32 noundef %conv125.7.i) #7
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then115.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %arrayidx110.8.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 8
  %66 = ptrtoint ptr %arrayidx110.8.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx110.8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp113.not.8.i = icmp eq i16 %67, 0
  br i1 %cmp113.not.8.i, label %for.inc.7.i.htc_setup_target_buffer_assignments.exit_crit_edge, label %if.then115.8.i

for.inc.7.i.htc_setup_target_buffer_assignments.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_setup_target_buffer_assignments.exit

if.then115.8.i:                                   ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv112.8.i = zext i16 %67 to i32
  %credit_alloc124.8.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 8, i32 1
  %68 = ptrtoint ptr %credit_alloc124.8.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %credit_alloc124.8.i, align 2
  %conv125.8.i = zext i8 %69 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef 8, i32 noundef %conv112.8.i, i32 noundef %conv125.8.i) #7
  br label %htc_setup_target_buffer_assignments.exit

htc_setup_target_buffer_assignments.exit:         ; preds = %if.then115.8.i, %for.inc.7.i.htc_setup_target_buffer_assignments.exit_crit_edge, %if.end86.i.htc_setup_target_buffer_assignments.exit_crit_edge, %if.end75.i.htc_setup_target_buffer_assignments.exit_crit_edge, %if.end55.i.htc_setup_target_buffer_assignments.exit_crit_edge, %if.end31.htc_setup_target_buffer_assignments.exit_crit_edge
  %70 = call ptr @memset(ptr %connect, i32 0, i32 48)
  %71 = call ptr @memset(ptr %resp, i32 0, i32 16)
  %ep_cb = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2
  %72 = ptrtoint ptr %ep_cb to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @htc_txctrl_complete, ptr %ep_cb, align 4
  %rx = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @htc_rxctrl_complete, ptr %rx, align 4
  %max_txq_depth = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 3
  %74 = ptrtoint ptr %max_txq_depth to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %max_txq_depth, align 4
  %75 = ptrtoint ptr %connect to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %connect, align 4
  %call34 = call i32 @ath6kl_htc_pipe_conn_service(ptr noundef %target, ptr noundef nonnull %connect, ptr noundef nonnull %resp)
  br label %cleanup

cleanup:                                          ; preds = %htc_setup_target_buffer_assignments.exit, %if.end13.cleanup_crit_edge, %if.then9, %if.then2, %htc_wait_recv_ctrl_message.exit
  %retval.0 = phi i32 [ -70, %if.then2 ], [ -70, %if.then9 ], [ %call34, %htc_setup_target_buffer_assignments.exit ], [ -110, %htc_wait_recv_ctrl_message.exit ], [ -70, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %connect) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_pipe_start(ptr noundef %target) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #10
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %entry.land.end_crit_edge, label %if.end.i.i

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end.i.i:                                       ; preds = %entry
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 262, i32 noundef 3264) #7
  %cmp2.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end35

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %land.end

land.end:                                         ; preds = %if.then3.i.i, %entry.land.end_crit_edge
  %.b51 = load i1, ptr @ath6kl_htc_pipe_start.__already_done, align 1
  br i1 %.b51, label %land.end.cleanup_crit_edge, label %if.then6, !prof !160

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1489, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %skb5.i.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 11
  %1 = ptrtoint ptr %skb5.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i.i, ptr %skb5.i.i, align 4
  %call37 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 10) #7
  %2 = getelementptr inbounds i8, ptr %call37, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 1
  %4 = ptrtoint ptr %call37 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 1280, ptr %call37, align 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.15) #7
  %pkt_cntxt.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pkt_cntxt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pkt_cntxt.i, align 8
  %buf1.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call37, ptr %buf1.i, align 8
  %act_len.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %act_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %act_len.i, align 8
  %endpoint.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %endpoint.i, align 4
  %info.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %info.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %info.i, align 4
  %htc_flags = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 11
  %10 = ptrtoint ptr %htc_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %htc_flags, align 4
  %or = or i32 %11, 2
  store i32 %or, ptr %htc_flags, align 4
  %call38 = tail call i32 @ath6kl_htc_pipe_tx(ptr noundef %target, ptr noundef nonnull %call7.i.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then6, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end35 ], [ -12, %if.then6 ], [ -12, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_pipe_conn_service(ptr noundef %target, ptr nocapture noundef readonly %conn_req, ptr nocapture noundef writeonly %conn_resp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ar1 = getelementptr inbounds %struct.ath6kl_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  %4 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %conn_req, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.else [
    i16 0, label %land.end
    i16 1, label %entry.if.end368_crit_edge
  ]

entry.if.end368_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end368

land.end:                                         ; preds = %entry
  %.b574 = load i1, ptr @ath6kl_htc_pipe_conn_service.__already_done, align 1
  br i1 %.b574, label %land.end.if.end472_crit_edge, label %if.then8, !prof !160

land.end.if.end472_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_conn_service.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1236, i32 noundef 9, ptr noundef null) #7
  br label %if.end472

if.else:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %5)
  %cmp3.i = icmp eq i16 %8, %5
  br i1 %cmp3.i, label %if.then.i, label %if.else.for.inc.i_crit_edge

if.else.for.inc.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %credit_alloc.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %credit_alloc.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %credit_alloc.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.else.for.inc.i_crit_edge
  %allocation.1.i = phi i8 [ %10, %if.then.i ], [ 0, %if.else.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %5)
  %cmp3.1.i = icmp eq i16 %12, %5
  br i1 %cmp3.1.i, label %if.then.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %credit_alloc.1.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 1, i32 1
  %13 = ptrtoint ptr %credit_alloc.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %credit_alloc.1.i, align 2
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %allocation.1.1.i = phi i8 [ %14, %if.then.1.i ], [ %allocation.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %5)
  %cmp3.2.i = icmp eq i16 %16, %5
  br i1 %cmp3.2.i, label %if.then.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %credit_alloc.2.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 2, i32 1
  %17 = ptrtoint ptr %credit_alloc.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %credit_alloc.2.i, align 2
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %allocation.1.2.i = phi i8 [ %18, %if.then.2.i ], [ %allocation.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %arrayidx.3.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 3
  %19 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %5)
  %cmp3.3.i = icmp eq i16 %20, %5
  br i1 %cmp3.3.i, label %if.then.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %credit_alloc.3.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 3, i32 1
  %21 = ptrtoint ptr %credit_alloc.3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %credit_alloc.3.i, align 2
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %allocation.1.3.i = phi i8 [ %22, %if.then.3.i ], [ %allocation.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %arrayidx.4.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 4
  %23 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.4.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %5)
  %cmp3.4.i = icmp eq i16 %24, %5
  br i1 %cmp3.4.i, label %if.then.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %credit_alloc.4.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 4, i32 1
  %25 = ptrtoint ptr %credit_alloc.4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %credit_alloc.4.i, align 2
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %allocation.1.4.i = phi i8 [ %26, %if.then.4.i ], [ %allocation.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %arrayidx.5.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 5
  %27 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %5)
  %cmp3.5.i = icmp eq i16 %28, %5
  br i1 %cmp3.5.i, label %if.then.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %credit_alloc.5.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 5, i32 1
  %29 = ptrtoint ptr %credit_alloc.5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %credit_alloc.5.i, align 2
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %allocation.1.5.i = phi i8 [ %30, %if.then.5.i ], [ %allocation.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %arrayidx.6.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 6
  %31 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.6.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %5)
  %cmp3.6.i = icmp eq i16 %32, %5
  br i1 %cmp3.6.i, label %if.then.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %credit_alloc.6.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 6, i32 1
  %33 = ptrtoint ptr %credit_alloc.6.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %credit_alloc.6.i, align 2
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %allocation.1.6.i = phi i8 [ %34, %if.then.6.i ], [ %allocation.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  %arrayidx.7.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 7
  %35 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.7.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %5)
  %cmp3.7.i = icmp eq i16 %36, %5
  br i1 %cmp3.7.i, label %if.then.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7.i

if.then.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %credit_alloc.7.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 7, i32 1
  %37 = ptrtoint ptr %credit_alloc.7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %credit_alloc.7.i, align 2
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %allocation.1.7.i = phi i8 [ %38, %if.then.7.i ], [ %allocation.1.6.i, %for.inc.6.i.for.inc.7.i_crit_edge ]
  %arrayidx.8.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 8
  %39 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %5)
  %cmp3.8.i = icmp eq i16 %40, %5
  br i1 %cmp3.8.i, label %if.then.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8.i

if.then.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %credit_alloc.8.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 26, i32 4, i32 8, i32 1
  %41 = ptrtoint ptr %credit_alloc.8.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %credit_alloc.8.i, align 2
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %if.then.8.i, %for.inc.7.i.for.inc.8.i_crit_edge
  %allocation.1.8.i = phi i8 [ %42, %if.then.8.i ], [ %allocation.1.7.i, %for.inc.7.i.for.inc.8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %allocation.1.8.i)
  %cmp9.i = icmp eq i8 %allocation.1.8.i, 0
  br i1 %cmp9.i, label %htc_get_credit_alloc.exit.thread, label %if.end48

htc_get_credit_alloc.exit.thread:                 ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv12.i = zext i16 %5 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.26, i32 noundef %conv12.i) #7
  br label %if.end472

if.end48:                                         ; preds = %for.inc.8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 64) #10
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %if.end48.land.end60_crit_edge, label %if.end.i.i

if.end48.land.end60_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end60

if.end.i.i:                                       ; preds = %if.end48
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 262, i32 noundef 3264) #7
  %cmp2.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end102

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %land.end60

land.end60:                                       ; preds = %if.then3.i.i, %if.end48.land.end60_crit_edge
  %.b562573 = load i1, ptr @ath6kl_htc_pipe_conn_service.__already_done.16, align 1
  br i1 %.b562573, label %land.end60.if.end472_crit_edge, label %if.then67, !prof !160

land.end60.if.end472_crit_edge:                   ; preds = %land.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472

if.then67:                                        ; preds = %land.end60
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_conn_service.__already_done.16, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1258, i32 noundef 9, ptr noundef null) #7
  br label %if.end472

if.end102:                                        ; preds = %if.end.i.i
  %skb5.i.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 11
  %44 = ptrtoint ptr %skb5.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i.i, ptr %skb5.i.i, align 4
  %call104 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8) #7
  %cmp105 = icmp eq ptr %call104, null
  br i1 %cmp105, label %land.end115, label %if.end157

land.end115:                                      ; preds = %if.end102
  %.b563572 = load i1, ptr @ath6kl_htc_pipe_conn_service.__already_done.17, align 1
  br i1 %.b563572, label %land.end115.if.then471_crit_edge, label %if.then122, !prof !160

land.end115.if.then471_crit_edge:                 ; preds = %land.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then471

if.then122:                                       ; preds = %land.end115
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_conn_service.__already_done.17, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1269, i32 noundef 9, ptr noundef null) #7
  br label %if.then471

if.end157:                                        ; preds = %if.end102
  %45 = ptrtoint ptr %call104 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 144115188075855872, ptr %call104, align 1
  %46 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %conn_req, align 4
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %svc_id159 = getelementptr inbounds %struct.htc_conn_service_msg, ptr %call104, i32 0, i32 1
  %49 = ptrtoint ptr %svc_id159 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %svc_id159, align 1
  %conn_flags = getelementptr inbounds %struct.htc_service_connect_req, ptr %conn_req, i32 0, i32 1
  %50 = ptrtoint ptr %conn_flags to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %conn_flags, align 2
  %52 = shl i16 %51, 8
  %conn_flags162 = getelementptr inbounds %struct.htc_conn_service_msg, ptr %call104, i32 0, i32 2
  %conv165 = zext i8 %allocation.1.8.i to i16
  %or = or i16 %52, %conv165
  %53 = ptrtoint ptr %conn_flags162 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %or, ptr %conn_flags162, align 1
  %54 = load i16, ptr %conn_flags, align 2
  %55 = and i16 %54, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool172.not = icmp ne i16 %55, 0
  %pkt_cntxt.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %pkt_cntxt.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %pkt_cntxt.i, align 8
  %buf1.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call104, ptr %buf1.i, align 8
  %act_len.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %act_len.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %act_len.i, align 8
  %endpoint.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %endpoint.i, align 4
  %info.i = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i.i.i, i32 0, i32 8
  %60 = ptrtoint ptr %info.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %info.i, align 4
  %call175 = tail call i32 @ath6kl_htc_pipe_tx(ptr noundef %target, ptr noundef nonnull %call7.i.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176.not = icmp eq i32 %call175, 0
  br i1 %cmp176.not, label %if.end179, label %if.end157.if.end472_crit_edge

if.end157.if.end472_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472

if.end179:                                        ; preds = %if.end157
  %rx_lock.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  %ctrl_response_valid.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end179
  %count.015.i = phi i32 [ 200, %if.end179 ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #7
  %61 = ptrtoint ptr %ctrl_response_valid.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ctrl_response_valid.i, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end184

if.end.i:                                         ; preds = %while.body.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #7
  %dec.i = add nsw i32 %count.015.i, -1
  %call.i = tail call i32 @msleep_interruptible(i32 noundef 10) #7
  %cmp.i = icmp ugt i32 %count.015.i, 1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %htc_wait_recv_ctrl_message.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

htc_wait_recv_ctrl_message.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.11) #7
  br label %if.end472

if.end184:                                        ; preds = %while.body.i
  %63 = ptrtoint ptr %ctrl_response_valid.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %ctrl_response_valid.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #7
  %ctrl_response_buf = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 1
  %64 = ptrtoint ptr %ctrl_response_buf to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %ctrl_response_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %65)
  %cmp187.not = icmp eq i16 %65, 768
  br i1 %cmp187.not, label %lor.lhs.false, label %if.end184.land.end200_crit_edge

if.end184.land.end200_crit_edge:                  ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end200

lor.lhs.false:                                    ; preds = %if.end184
  %ctrl_response_len = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 2
  %66 = ptrtoint ptr %ctrl_response_len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ctrl_response_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %67)
  %cmp190 = icmp ult i32 %67, 10
  br i1 %cmp190, label %lor.lhs.false.land.end200_crit_edge, label %if.end242

lor.lhs.false.land.end200_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end200

land.end200:                                      ; preds = %lor.lhs.false.land.end200_crit_edge, %if.end184.land.end200_crit_edge
  %.b564571 = load i1, ptr @ath6kl_htc_pipe_conn_service.__already_done.18, align 1
  br i1 %.b564571, label %land.end200.if.end472_crit_edge, label %if.then207, !prof !160

land.end200.if.end472_crit_edge:                  ; preds = %land.end200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472

if.then207:                                       ; preds = %land.end200
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_conn_service.__already_done.18, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1315, i32 noundef 9, ptr noundef null) #7
  br label %if.end472

if.end242:                                        ; preds = %lor.lhs.false
  %svc_id243 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 1, i32 2
  %68 = ptrtoint ptr %svc_id243 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %svc_id243, align 1
  %conv244 = zext i16 %69 to i32
  %status245 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 1, i32 4
  %70 = ptrtoint ptr %status245 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %status245, align 1
  %conv246 = zext i8 %71 to i32
  %eid = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 1, i32 5
  %72 = ptrtoint ptr %eid to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %eid, align 1
  %conv247 = zext i8 %73 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.ath6kl_htc_pipe_conn_service, i32 noundef %conv244, i32 noundef %conv246, i32 noundef %conv247) #7
  %74 = ptrtoint ptr %status245 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %status245, align 1
  %resp_code = getelementptr inbounds %struct.htc_service_connect_resp, ptr %conn_resp, i32 0, i32 4
  %76 = ptrtoint ptr %resp_code to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %resp_code, align 4
  %77 = load i8, ptr %status245, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp251.not = icmp eq i8 %77, 0
  br i1 %cmp251.not, label %if.end262, label %if.then253

if.then253:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  %conv250 = zext i8 %77 to i32
  %78 = ptrtoint ptr %svc_id243 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %svc_id243, align 1
  %conv255 = zext i16 %79 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %conv255, i32 noundef %conv250) #7
  br label %if.end472

if.end262:                                        ; preds = %if.end242
  %80 = ptrtoint ptr %eid to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %eid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %81)
  %cmp263 = icmp ugt i8 %81, 8
  br i1 %cmp263, label %land.end273, label %if.end315

land.end273:                                      ; preds = %if.end262
  %.b565570 = load i1, ptr @ath6kl_htc_pipe_conn_service.__already_done.21, align 1
  br i1 %.b565570, label %land.end273.if.end472_crit_edge, label %if.then280, !prof !160

land.end273.if.end472_crit_edge:                  ; preds = %land.end273
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472

if.then280:                                       ; preds = %land.end273
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_conn_service.__already_done.21, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1343, i32 noundef 9, ptr noundef null) #7
  br label %if.end472

if.end315:                                        ; preds = %if.end262
  %conv260 = zext i8 %81 to i32
  %phi.cast = zext i8 %allocation.1.8.i to i32
  %max_msg_sz = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26, i32 1, i32 6
  %82 = ptrtoint ptr %max_msg_sz to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %max_msg_sz, align 1
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %conv261 = zext i16 %84 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp316 = icmp eq i16 %83, 0
  br i1 %cmp316, label %land.end326, label %if.end315.if.end368_crit_edge

if.end315.if.end368_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end368

land.end326:                                      ; preds = %if.end315
  %.b566569 = load i1, ptr @ath6kl_htc_pipe_conn_service.__already_done.22, align 1
  br i1 %.b566569, label %land.end326.if.end472_crit_edge, label %if.then333, !prof !160

land.end326.if.end472_crit_edge:                  ; preds = %land.end326
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472

if.then333:                                       ; preds = %land.end326
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_conn_service.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1348, i32 noundef 9, ptr noundef null) #7
  br label %if.end472

if.end368:                                        ; preds = %if.end315.if.end368_crit_edge, %entry.if.end368_crit_edge
  %tx_alloc.0585597 = phi i32 [ %phi.cast, %if.end315.if.end368_crit_edge ], [ 0, %entry.if.end368_crit_edge ]
  %max_msg_size.0586596 = phi i32 [ %conv261, %if.end315.if.end368_crit_edge ], [ 256, %entry.if.end368_crit_edge ]
  %disable_credit_flowctrl.1.off0587595 = phi i1 [ %tobool172.not, %if.end315.if.end368_crit_edge ], [ false, %entry.if.end368_crit_edge ]
  %assigned_epid.0588594 = phi i32 [ %conv260, %if.end315.if.end368_crit_edge ], [ 0, %entry.if.end368_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %assigned_epid.0588594, ptr %arrayidx, align 4
  %svc_id370 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 1
  %86 = ptrtoint ptr %svc_id370 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %svc_id370, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp372.not = icmp eq i16 %87, 0
  br i1 %cmp372.not, label %if.end424, label %land.end382

land.end382:                                      ; preds = %if.end368
  %.b567568 = load i1, ptr @ath6kl_htc_pipe_conn_service.__already_done.23, align 1
  br i1 %.b567568, label %land.end382.if.end472_crit_edge, label %if.then389, !prof !160

land.end382.if.end472_crit_edge:                  ; preds = %land.end382
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472

if.then389:                                       ; preds = %land.end382
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_conn_service.__already_done.23, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1356, i32 noundef 9, ptr noundef null) #7
  br label %if.end472

if.end424:                                        ; preds = %if.end368
  %endpoint425 = getelementptr inbounds %struct.htc_service_connect_resp, ptr %conn_resp, i32 0, i32 2
  %88 = ptrtoint ptr %endpoint425 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %assigned_epid.0588594, ptr %endpoint425, align 4
  %len_max = getelementptr inbounds %struct.htc_service_connect_resp, ptr %conn_resp, i32 0, i32 3
  %89 = ptrtoint ptr %len_max to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %max_msg_size.0586596, ptr %len_max, align 4
  %90 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %conn_req, align 4
  %92 = ptrtoint ptr %svc_id370 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %svc_id370, align 4
  %max_txq_depth = getelementptr inbounds %struct.htc_service_connect_req, ptr %conn_req, i32 0, i32 3
  %93 = ptrtoint ptr %max_txq_depth to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_txq_depth, align 4
  %max_txq_depth428 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 6
  %95 = ptrtoint ptr %max_txq_depth428 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %max_txq_depth428, align 4
  %len_max429 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 7
  %96 = ptrtoint ptr %len_max429 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %max_msg_size.0586596, ptr %len_max429, align 4
  %credits = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 4, i32 7
  %97 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %tx_alloc.0585597, ptr %credits, align 4
  %tgt_cred_sz = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 6
  %98 = ptrtoint ptr %tgt_cred_sz to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tgt_cred_sz, align 4
  %cred_sz = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 4, i32 10
  %100 = ptrtoint ptr %cred_sz to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %cred_sz, align 4
  %div = udiv i32 %max_msg_size.0586596, %99
  %cred_per_msg = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 4, i32 11
  %101 = ptrtoint ptr %cred_per_msg to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div, ptr %cred_per_msg, align 4
  %102 = load i32, ptr %tgt_cred_sz, align 4
  %rem = urem i32 %max_msg_size.0586596, %102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool435.not = icmp eq i32 %rem, 0
  br i1 %tobool435.not, label %if.end424.if.end439_crit_edge, label %if.then436

if.end424.if.end439_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end439

if.then436:                                       ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nuw nsw i32 %div, 1
  %103 = ptrtoint ptr %cred_per_msg to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %inc, ptr %cred_per_msg, align 4
  br label %if.end439

if.end439:                                        ; preds = %if.then436, %if.end424.if.end439_crit_edge
  %ep_cb = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 5
  %ep_cb440 = getelementptr inbounds %struct.htc_service_connect_req, ptr %conn_req, i32 0, i32 2
  %104 = call ptr @memcpy(ptr %ep_cb, ptr %ep_cb440, i32 32)
  %tx_drop_packet_threshold = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 14
  %105 = ptrtoint ptr %tx_drop_packet_threshold to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 18, ptr %tx_drop_packet_threshold, align 4
  %106 = ptrtoint ptr %svc_id370 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %svc_id370, align 4
  %pipe442 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 15
  %pipeid_dl = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 15, i32 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.7) #7
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 5
  %108 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hif_ops.i, align 4
  %pipe_map_service.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %109, i32 0, i32 20
  %110 = ptrtoint ptr %pipe_map_service.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pipe_map_service.i, align 4
  %call.i575 = tail call i32 %111(ptr noundef %3, i16 noundef zeroext %107, ptr noundef %pipe442, ptr noundef %pipeid_dl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i575)
  %cmp445.not = icmp eq i32 %call.i575, 0
  br i1 %cmp445.not, label %if.end448, label %if.end439.if.end472_crit_edge

if.end439.if.end472_crit_edge:                    ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472

if.end448:                                        ; preds = %if.end439
  %112 = ptrtoint ptr %svc_id370 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %svc_id370, align 4
  %conv450 = zext i16 %113 to i32
  %114 = ptrtoint ptr %pipe442 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pipe442, align 4
  %conv453 = zext i8 %115 to i32
  %116 = ptrtoint ptr %pipeid_dl to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %pipeid_dl, align 1
  %conv456 = zext i8 %117 to i32
  %118 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %conv450, i32 noundef %conv453, i32 noundef %conv456, i32 noundef %119) #7
  br i1 %disable_credit_flowctrl.1.off0587595, label %land.lhs.true, label %if.end448.if.end472_crit_edge

if.end448.if.end472_crit_edge:                    ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472

land.lhs.true:                                    ; preds = %if.end448
  %tx_credit_flow_enabled = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_epid.0588594, i32 15, i32 3
  %120 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool461.not = icmp eq i8 %121, 0
  br i1 %tobool461.not, label %land.lhs.true.if.end472_crit_edge, label %if.then463

land.lhs.true.if.end472_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472

if.then463:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %tx_credit_flow_enabled, align 4
  %123 = ptrtoint ptr %svc_id370 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %svc_id370, align 4
  %conv467 = zext i16 %124 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %conv467, i32 noundef %assigned_epid.0588594) #7
  br label %if.end472

if.then471:                                       ; preds = %if.then122, %land.end115.if.then471_crit_edge
  %125 = ptrtoint ptr %skb5.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %skb5.i.i, align 4
  tail call void @consume_skb(ptr noundef %126) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %if.end472

if.end472:                                        ; preds = %if.then471, %if.then463, %land.lhs.true.if.end472_crit_edge, %if.end448.if.end472_crit_edge, %if.end439.if.end472_crit_edge, %if.then389, %land.end382.if.end472_crit_edge, %if.then333, %land.end326.if.end472_crit_edge, %if.then280, %land.end273.if.end472_crit_edge, %if.then253, %if.then207, %land.end200.if.end472_crit_edge, %htc_wait_recv_ctrl_message.exit, %if.end157.if.end472_crit_edge, %if.then67, %land.end60.if.end472_crit_edge, %htc_get_credit_alloc.exit.thread, %if.then8, %land.end.if.end472_crit_edge
  %status.0601 = phi i32 [ -22, %if.then471 ], [ -12, %htc_get_credit_alloc.exit.thread ], [ -22, %land.end382.if.end472_crit_edge ], [ -22, %if.then389 ], [ -22, %land.end326.if.end472_crit_edge ], [ -22, %if.then333 ], [ -22, %land.end273.if.end472_crit_edge ], [ -22, %if.then280 ], [ -22, %land.end200.if.end472_crit_edge ], [ -22, %if.then207 ], [ -12, %land.end60.if.end472_crit_edge ], [ -12, %if.then67 ], [ -22, %land.end.if.end472_crit_edge ], [ -22, %if.then8 ], [ -22, %if.then253 ], [ -110, %htc_wait_recv_ctrl_message.exit ], [ %call175, %if.end157.if.end472_crit_edge ], [ 0, %if.end448.if.end472_crit_edge ], [ 0, %land.lhs.true.if.end472_crit_edge ], [ 0, %if.then463 ], [ %call.i575, %if.end439.if.end472_crit_edge ]
  ret i32 %status.0601
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_pipe_tx(ptr noundef %target, ptr noundef %packet) #1 align 64 {
entry:
  %queue = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %queue) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %endpoint = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 6
  %1 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %endpoint, align 4
  %buf = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 3
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 5
  %5 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %act_len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.ath6kl_htc_pipe_tx, i32 noundef %2, ptr noundef %4, i32 noundef %6) #7
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %queue, ptr %queue, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %packet, ptr noundef nonnull %queue, ptr noundef nonnull %queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %packet, ptr %0, align 4
  %10 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %queue, ptr %packet, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %packet, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %queue, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %packet, ptr %queue, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %14, %queue
  br i1 %cmp.i.not.i, label %list_add_tail.exit.htc_send_packets_multiple.exit_crit_edge, label %if.end.i

list_add_tail.exit.htc_send_packets_multiple.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_send_packets_multiple.exit

if.end.i:                                         ; preds = %list_add_tail.exit
  %endpoint.i = getelementptr inbounds %struct.htc_packet, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %endpoint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp.i = icmp sgt i32 %16, 8
  br i1 %cmp.i, label %land.end.i, label %if.end38.i

land.end.i:                                       ; preds = %if.end.i
  %.b80.i = load i1, ptr @htc_send_packets_multiple.__already_done, align 1
  br i1 %.b80.i, label %land.end.i.htc_send_packets_multiple.exit_crit_edge, label %if.then7.i, !prof !160

land.end.i.htc_send_packets_multiple.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_send_packets_multiple.exit

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @htc_send_packets_multiple.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 793, i32 noundef 9, ptr noundef null) #7
  br label %htc_send_packets_multiple.exit

if.end38.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %16
  call fastcc void @htc_try_send(ptr noundef %target, ptr noundef %arrayidx.i, ptr noundef nonnull %queue) #7
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %queue, align 4
  %cmp.i81.not.i = icmp eq ptr %18, %queue
  br i1 %cmp.i81.not.i, label %if.end38.i.htc_send_packets_multiple.exit_crit_edge, label %if.end38.i.for.body.i_crit_edge

if.end38.i.for.body.i_crit_edge:                  ; preds = %if.end38.i
  br label %for.body.i

if.end38.i.htc_send_packets_multiple.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_send_packets_multiple.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end38.i.for.body.i_crit_edge
  %packet.084.i = phi ptr [ %tmp_pkt.0.i, %for.body.i.for.body.i_crit_edge ], [ %18, %if.end38.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %packet.084.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp_pkt.0.i = load ptr, ptr %packet.084.i, align 4
  %status.i = getelementptr inbounds %struct.htc_packet, ptr %packet.084.i, i32 0, i32 7
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -12, ptr %status.i, align 4
  %cmp54.not.i = icmp eq ptr %tmp_pkt.0.i, %queue
  br i1 %cmp54.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @do_send_completion(ptr noundef %arrayidx.i, ptr noundef nonnull %queue) #7
  br label %htc_send_packets_multiple.exit

htc_send_packets_multiple.exit:                   ; preds = %for.end.i, %if.end38.i.htc_send_packets_multiple.exit_crit_edge, %if.then7.i, %land.end.i.htc_send_packets_multiple.exit_crit_edge, %list_add_tail.exit.htc_send_packets_multiple.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %list_add_tail.exit.htc_send_packets_multiple.exit_crit_edge ], [ -22, %if.then7.i ], [ -22, %land.end.i.htc_send_packets_multiple.exit_crit_edge ], [ 0, %for.end.i ], [ 0, %if.end38.i.htc_send_packets_multiple.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %queue) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_htc_pipe_stop(ptr noundef %target) #1 align 64 {
entry:
  %container.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.list_head, ptr %container.i, i32 0, i32 1
  %rx_lock.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %htc_flush_rx_queue.exit.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %htc_flush_rx_queue.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.010
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %container.i) #7
  %1 = ptrtoint ptr %container.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %container.i, align 4, !annotation !161
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !161
  call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #7
  %rx_bufq.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.010, i32 3
  %3 = ptrtoint ptr %rx_bufq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %rx_bufq.i, align 4
  %cmp.i.not22.i = icmp eq ptr %4, %rx_bufq.i
  br i1 %cmp.i.not22.i, label %for.body.htc_flush_rx_queue.exit_crit_edge, label %if.end.lr.ph.i

for.body.htc_flush_rx_queue.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_flush_rx_queue.exit

if.end.lr.ph.i:                                   ; preds = %for.body
  %rx.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.010, i32 5, i32 1
  %target.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.010, i32 10
  br label %if.end.i

if.end.i:                                         ; preds = %do_recv_completion.exit.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %5 = phi ptr [ %4, %if.end.lr.ph.i ], [ %46, %do_recv_completion.exit.i.if.end.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #7
  %status.i = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -125, ptr %status.i, align 4
  %act_len.i = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %act_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %act_len.i, align 4
  %buf_len.i = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_len.i, align 4
  %endpoint.i = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endpoint.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.44, ptr noundef %5, i32 noundef %17, i32 noundef %19) #7
  %20 = ptrtoint ptr %container.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %container.i, ptr %container.i, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %container.i, ptr %0, align 4
  %call.i.i19.i = call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef nonnull %container.i, ptr noundef nonnull %container.i) #7
  br i1 %call.i.i19.i, label %if.end.i.i20.i, label %list_del.exit.i.list_add_tail.exit.i_crit_edge

list_del.exit.i.list_add_tail.exit.i_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i20.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %0, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %container.i, ptr %5, align 4
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %container.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %container.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %5, ptr %container.i, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i20.i, %list_del.exit.i.list_add_tail.exit.i_crit_edge
  %26 = ptrtoint ptr %container.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %container.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %27, %container.i
  br i1 %cmp.i.not.i.i, label %list_add_tail.exit.i.do_recv_completion.exit.i_crit_edge, label %while.cond.preheader.i.i

list_add_tail.exit.i.do_recv_completion.exit.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_recv_completion.exit.i

while.cond.preheader.i.i:                         ; preds = %list_add_tail.exit.i
  %28 = ptrtoint ptr %container.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %container.i, align 4
  %cmp.i7.not9.i.i = icmp eq ptr %29, %container.i
  br i1 %cmp.i7.not9.i.i, label %while.cond.preheader.i.i.do_recv_completion.exit.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.do_recv_completion.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_recv_completion.exit.i

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %30 = phi ptr [ %44, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %29, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i.i21.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i21.i, align 4
  %39 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx.i.i, align 4
  %41 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %target.i.i, align 4
  call void %40(ptr noundef %42, ptr noundef %30) #7
  %43 = ptrtoint ptr %container.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %container.i, align 4
  %cmp.i7.not.i.i = icmp eq ptr %44, %container.i
  br i1 %cmp.i7.not.i.i, label %list_del.exit.i.i.do_recv_completion.exit.i_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

list_del.exit.i.i.do_recv_completion.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_recv_completion.exit.i

do_recv_completion.exit.i:                        ; preds = %list_del.exit.i.i.do_recv_completion.exit.i_crit_edge, %while.cond.preheader.i.i.do_recv_completion.exit.i_crit_edge, %list_add_tail.exit.i.do_recv_completion.exit.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #7
  %45 = ptrtoint ptr %rx_bufq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %rx_bufq.i, align 4
  %cmp.i.not.i = icmp eq ptr %46, %rx_bufq.i
  br i1 %cmp.i.not.i, label %do_recv_completion.exit.i.htc_flush_rx_queue.exit_crit_edge, label %do_recv_completion.exit.i.if.end.i_crit_edge

do_recv_completion.exit.i.if.end.i_crit_edge:     ; preds = %do_recv_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do_recv_completion.exit.i.htc_flush_rx_queue.exit_crit_edge: ; preds = %do_recv_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_flush_rx_queue.exit

htc_flush_rx_queue.exit:                          ; preds = %do_recv_completion.exit.i.htc_flush_rx_queue.exit_crit_edge, %for.body.htc_flush_rx_queue.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %container.i) #7
  call fastcc void @htc_flush_tx_endpoint(ptr noundef %target, ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %htc_flush_rx_queue.exit.for.body.i_crit_edge, label %htc_flush_rx_queue.exit.for.body_crit_edge

htc_flush_rx_queue.exit.for.body_crit_edge:       ; preds = %htc_flush_rx_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

htc_flush_rx_queue.exit.for.body.i_crit_edge:     ; preds = %htc_flush_rx_queue.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %htc_flush_rx_queue.exit.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %htc_flush_rx_queue.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i
  %svc_id.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 1
  %47 = ptrtoint ptr %svc_id.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %svc_id.i, align 4
  %len_max.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 7
  %48 = ptrtoint ptr %len_max.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %len_max.i, align 4
  %max_txq_depth.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 6
  %49 = ptrtoint ptr %max_txq_depth.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %max_txq_depth.i, align 4
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %i.017.i, ptr %arrayidx.i, align 4
  %txq.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 2
  %51 = ptrtoint ptr %txq.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %txq.i, ptr %txq.i, align 4
  %prev.i.i8 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 2, i32 1
  %52 = ptrtoint ptr %prev.i.i8 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %txq.i, ptr %prev.i.i8, align 4
  %tx_lookup_queue.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 15, i32 2
  %53 = ptrtoint ptr %tx_lookup_queue.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %tx_lookup_queue.i, ptr %tx_lookup_queue.i, align 4
  %prev.i15.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 15, i32 2, i32 1
  %54 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %tx_lookup_queue.i, ptr %prev.i15.i, align 4
  %rx_bufq.i9 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 3
  %55 = ptrtoint ptr %rx_bufq.i9 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %rx_bufq.i9, ptr %rx_bufq.i9, align 4
  %prev.i16.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 3, i32 1
  %56 = ptrtoint ptr %prev.i16.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %rx_bufq.i9, ptr %prev.i16.i, align 4
  %target1.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 10
  %57 = ptrtoint ptr %target1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %target, ptr %target1.i, align 4
  %tx_credit_flow_enabled.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.017.i, i32 15, i32 3
  %58 = ptrtoint ptr %tx_credit_flow_enabled.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %tx_credit_flow_enabled.i, align 4
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %reset_endpoint_states.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

reset_endpoint_states.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %htc_flags = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 11
  %59 = ptrtoint ptr %htc_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %htc_flags, align 4
  %and = and i32 %60, -3
  store i32 %and, ptr %htc_flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_htc_pipe_cleanup(ptr noundef %target) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_lock.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #7
  %pipe.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26
  %0 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe.i, align 4
  %cmp.i4 = icmp eq ptr %1, null
  br i1 %cmp.i4, label %entry.while.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = phi ptr [ %8, %if.end.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pipe.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #7
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef nonnull %2) #7
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #7
  %7 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe.i, align 4
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %if.end.while.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #7
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void @kfree(ptr noundef %10) #7
  tail call void @kfree(ptr noundef %target) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_htc_pipe_flush_txep(ptr noundef %target, i32 noundef %endpoint, i16 noundef zeroext %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %svc_id = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %endpoint, i32 1
  %0 = ptrtoint ptr %svc_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %svc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %land.end, label %if.end37

land.end:                                         ; preds = %entry
  %.b42 = load i1, ptr @ath6kl_htc_pipe_flush_txep.__already_done, align 1
  br i1 %.b42, label %land.end.cleanup_crit_edge, label %if.then8, !prof !160

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_flush_txep.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1614, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %endpoint
  tail call fastcc void @htc_flush_tx_endpoint(ptr noundef %target, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then8, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_htc_pipe_flush_rx_buf(ptr noundef %target) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #7
  %rx_bufq = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.040, i32 3
  %0 = ptrtoint ptr %rx_bufq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_bufq, align 4
  %cmp9.not37 = icmp eq ptr %1, %rx_bufq
  br i1 %cmp9.not37, label %for.body.for.end_crit_edge, label %for.body.for.body10_crit_edge

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body10:                                       ; preds = %list_del.exit.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %packet.038 = phi ptr [ %tmp_pkt.0, %list_del.exit.for.body10_crit_edge ], [ %1, %for.body.for.body10_crit_edge ]
  %2 = ptrtoint ptr %packet.038 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_pkt.0 = load ptr, ptr %packet.038, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.038) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body10.list_del.exit_crit_edge

for.body10.list_del.exit_crit_edge:               ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %packet.038, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %packet.038 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %packet.038, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body10.list_del.exit_crit_edge
  %9 = ptrtoint ptr %packet.038 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.038, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %packet.038, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #7
  %buf_len = getelementptr inbounds %struct.htc_packet, ptr %packet.038, i32 0, i32 4
  %11 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_len, align 4
  %endpoint13 = getelementptr inbounds %struct.htc_packet, ptr %packet.038, i32 0, i32 6
  %13 = ptrtoint ptr %endpoint13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %endpoint13, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.45, ptr noundef %packet.038, i32 noundef %12, i32 noundef %14) #7
  %pkt_cntxt = getelementptr inbounds %struct.htc_packet, ptr %packet.038, i32 0, i32 1
  %15 = ptrtoint ptr %pkt_cntxt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pkt_cntxt, align 4
  tail call void @consume_skb(ptr noundef %16) #7
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #7
  %cmp9.not = icmp eq ptr %tmp_pkt.0, %rx_bufq
  br i1 %cmp9.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body10_crit_edge

list_del.exit.for.body10_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #7
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end22, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath6kl_htc_pipe_activity_changed(ptr nocapture noundef %target, i32 noundef %ep, i1 noundef zeroext %active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_pipe_get_rxbuf_num(ptr noundef %target, i32 noundef %endpoint) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #7
  %rx_bufq = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %endpoint, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %tmp_list.0.in.i = phi ptr [ %rx_bufq, %entry ], [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %rx_bufq
  %inc.i = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %get_queue_depth.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #7
  ret i32 %depth.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_pipe_add_rxbuf_multiple(ptr noundef %target, ptr noundef %pkt_queue) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pkt_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %pkt_queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint = getelementptr inbounds %struct.htc_packet, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %endpoint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp sgt i32 %3, 8
  br i1 %cmp, label %land.end, label %if.end.for.cond.i_crit_edge

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

land.end:                                         ; preds = %if.end
  %.b87 = load i1, ptr @ath6kl_htc_pipe_add_rxbuf_multiple.__already_done, align 1
  br i1 %.b87, label %land.end.cleanup_crit_edge, label %if.then7, !prof !160

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_add_rxbuf_multiple.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1635, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end.for.cond.i_crit_edge
  %tmp_list.0.in.i = phi ptr [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %pkt_queue, %if.end.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %if.end.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %pkt_queue
  %inc.i = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %get_queue_depth.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  %buf_len = getelementptr inbounds %struct.htc_packet, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf_len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.ath6kl_htc_pipe_add_rxbuf_multiple, i32 noundef %3, i32 noundef %depth.0.i, i32 noundef %6) #7
  %7 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %endpoint, align 4
  %rx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #7
  %9 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pkt_queue, align 4
  %cmp.i.not.i88 = icmp eq ptr %10, %pkt_queue
  br i1 %cmp.i.not.i88, label %get_queue_depth.exit.list_splice_tail_init.exit_crit_edge, label %if.then.i

get_queue_depth.exit.list_splice_tail_init.exit_crit_edge: ; preds = %get_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %get_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rx_bufq = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 3
  %prev.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %pkt_queue, i32 0, i32 1
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %12, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rx_bufq, ptr %14, align 4
  store ptr %14, ptr %prev.i, align 4
  %18 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %pkt_queue, ptr %pkt_queue, align 4
  store ptr %pkt_queue, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %get_queue_depth.exit.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_splice_tail_init.exit, %if.then7, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_splice_tail_init.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then7 ], [ -22, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath6kl_htc_pipe_credit_setup(ptr nocapture noundef readnone %target, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_pipe_tx_complete(ptr nocapture noundef readonly %ar, ptr noundef readonly %skb) #1 align 64 {
entry:
  %container.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %0 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc_target, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [9 x %struct.htc_endpoint], ptr %1, i32 0, i32 %idxprom
  %tx_lock.i = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #7
  %tx_lookup_queue.i = getelementptr [9 x %struct.htc_endpoint], ptr %1, i32 0, i32 %idxprom, i32 15, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %packet.0.in.i = phi ptr [ %tx_lookup_queue.i, %entry ], [ %packet.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %packet.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %packet.0.i = load ptr, ptr %packet.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %packet.0.i, %tx_lookup_queue.i
  br i1 %cmp.not.i, label %htc_lookup_tx_packet.exit.thread, label %for.body.i

htc_lookup_tx_packet.exit.thread:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #7
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %skb8.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0.i, i32 0, i32 11
  %7 = ptrtoint ptr %skb8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb8.i, align 4
  %cmp9.i = icmp eq ptr %8, %skb
  br i1 %cmp9.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %skb8.i.le = getelementptr inbounds %struct.htc_packet, ptr %packet.0.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.0.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.htc_lookup_tx_packet.exit_crit_edge

if.then.i.htc_lookup_tx_packet.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_lookup_tx_packet.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %packet.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %packet.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %packet.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %htc_lookup_tx_packet.exit

htc_lookup_tx_packet.exit:                        ; preds = %if.end.i.i.i, %if.then.i.htc_lookup_tx_packet.exit_crit_edge
  %15 = ptrtoint ptr %packet.0.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %packet.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #7
  %cmp = icmp eq ptr %packet.0.i, null
  br i1 %cmp, label %htc_lookup_tx_packet.exit.if.then_crit_edge, label %if.else

htc_lookup_tx_packet.exit.if.then_crit_edge:      ; preds = %htc_lookup_tx_packet.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %htc_lookup_tx_packet.exit.if.then_crit_edge, %htc_lookup_tx_packet.exit.thread
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.47) #7
  br label %if.end

if.else:                                          ; preds = %htc_lookup_tx_packet.exit
  %status = getelementptr inbounds %struct.htc_packet, ptr %packet.0.i, i32 0, i32 7
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %status, align 4
  %endpoint1.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0.i, i32 0, i32 6
  %18 = ptrtoint ptr %endpoint1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endpoint1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %container.i) #7
  %20 = getelementptr inbounds %struct.list_head, ptr %container.i, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0.i, i32 0, i32 8, i32 0, i32 2
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i.i, align 4
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %if.else.restore_tx_packet.exit.i_crit_edge, label %if.then.i.i

if.else.restore_tx_packet.exit.i_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_tx_packet.exit.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %skb8.i.le to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb8.i.le, align 4
  %call.i.i = tail call ptr @skb_pull(ptr noundef %25, i32 noundef 6) #7
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags.i.i, align 4
  %28 = and i8 %27, -5
  store i8 %28, ptr %flags.i.i, align 4
  br label %restore_tx_packet.exit.i

restore_tx_packet.exit.i:                         ; preds = %if.then.i.i, %if.else.restore_tx_packet.exit.i_crit_edge
  %29 = ptrtoint ptr %container.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %container.i, ptr %container.i, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %container.i, ptr %20, align 4
  %call.i.i.i12 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %packet.0.i, ptr noundef nonnull %container.i, ptr noundef nonnull %container.i) #7
  br i1 %call.i.i.i12, label %if.end.i.i.i13, label %restore_tx_packet.exit.i.send_packet_completion.exit_crit_edge

restore_tx_packet.exit.i.send_packet_completion.exit_crit_edge: ; preds = %restore_tx_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_packet_completion.exit

if.end.i.i.i13:                                   ; preds = %restore_tx_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %packet.0.i, ptr %20, align 4
  %32 = ptrtoint ptr %packet.0.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %container.i, ptr %packet.0.i, align 4
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %container.i, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %container.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %packet.0.i, ptr %container.i, align 4
  br label %send_packet_completion.exit

send_packet_completion.exit:                      ; preds = %if.end.i.i.i13, %restore_tx_packet.exit.i.send_packet_completion.exit_crit_edge
  %arrayidx.i = getelementptr [9 x %struct.htc_endpoint], ptr %1, i32 0, i32 %19
  call fastcc void @do_send_completion(ptr noundef %arrayidx.i, ptr noundef nonnull %container.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %container.i) #7
  br label %if.end

if.end:                                           ; preds = %send_packet_completion.exit, %if.then
  %tx_credit_flow_enabled = getelementptr [9 x %struct.htc_endpoint], ptr %1, i32 0, i32 %idxprom, i32 15, i32 3
  %35 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @htc_try_send(ptr noundef %1, ptr noundef %arrayidx, ptr noundef null)
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_pipe_rx_complete(ptr nocapture noundef readonly %ar, ptr noundef %skb, i8 noundef zeroext %pipeid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %0 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc_target, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b180 = load i1, ptr @ath6kl_htc_pipe_rx_complete.__already_done, align 1
  br i1 %.b180, label %land.rhs.if.then38_crit_edge, label %if.then, !prof !160

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath6kl_htc_pipe_rx_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 963, i32 noundef 9, ptr noundef null) #7
  br label %if.then38

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.48) #7
  br label %free_skb

if.end39:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %cmp = icmp ugt i8 %7, 8
  br i1 %cmp, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.49, i32 noundef %conv) #7
  br label %free_skb

if.end44:                                         ; preds = %if.end39
  %arrayidx = getelementptr [9 x %struct.htc_endpoint], ptr %1, i32 0, i32 %conv
  %payld_len = getelementptr inbounds %struct.anon.137, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %payld_len to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %payld_len, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv47 = zext i16 %10 to i32
  %add = add nuw nsw i32 %conv47, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp48 = icmp ult i32 %5, %add
  br i1 %cmp48, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef %5, i32 noundef %add) #7
  br label %free_skb

if.end53:                                         ; preds = %if.end44
  %flags = getelementptr inbounds %struct.anon.137, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 1
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool55.not = icmp eq i8 %13, 0
  br i1 %tobool55.not, label %if.end53.if.end81_crit_edge, label %if.then56

if.end53.if.end81_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then56:                                        ; preds = %if.end53
  %ctrl = getelementptr inbounds %struct.htc_frame_hdr, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl, align 1
  %conv58 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp59 = icmp ult i8 %15, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %conv58, i32 %conv47)
  %cmp63 = icmp ugt i32 %conv58, %conv47
  %or.cond = select i1 %cmp59, i1 true, i1 %cmp63
  br i1 %or.cond, label %if.then65, label %while.body.lr.ph.i

if.then65:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.51, i32 noundef %conv47, i32 noundef %conv58) #7
  br label %free_skb

while.body.lr.ph.i:                               ; preds = %if.then56
  %add.ptr = getelementptr i8, ptr %3, i32 6
  %add.ptr71 = getelementptr i8, ptr %add.ptr, i32 %conv47
  %idx.neg = sub nsw i32 0, %conv58
  %add.ptr73 = getelementptr i8, ptr %add.ptr71, i32 %idx.neg
  %tx_lock.i.i = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buffer.addr.09.i = phi ptr [ %add.ptr73, %while.body.lr.ph.i ], [ %add.ptr61.i, %sw.epilog.i.while.body.i_crit_edge ]
  %len.addr.08.i = phi i32 [ %conv58, %while.body.lr.ph.i ], [ %sub64.i, %sw.epilog.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.08.i)
  %cmp1.i = icmp eq i32 %len.addr.08.i, 1
  br i1 %cmp1.i, label %while.body.i.free_skb_crit_edge, label %if.end.i

while.body.i.free_skb_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end.i:                                         ; preds = %while.body.i
  %sub.i = add nsw i32 %len.addr.08.i, -2
  %add.ptr.i = getelementptr i8, ptr %buffer.addr.09.i, i32 2
  %len2.i = getelementptr inbounds %struct.htc_record_hdr, ptr %buffer.addr.09.i, i32 0, i32 1
  %16 = ptrtoint ptr %len2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len2.i, align 1
  %conv.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp3.i = icmp ult i32 %sub.i, %conv.i
  br i1 %cmp3.i, label %if.then5.i, label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.le = zext i8 %17 to i32
  %18 = ptrtoint ptr %buffer.addr.09.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buffer.addr.09.i, align 1
  %conv8.i = zext i8 %19 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.53, i32 noundef %conv.i.le, i32 noundef %conv8.i, i32 noundef %sub.i) #7
  br label %free_skb

if.end9.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %buffer.addr.09.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buffer.addr.09.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cond.i = icmp eq i8 %21, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp14.i = icmp ult i8 %17, 2
  br i1 %cmp14.i, label %land.end.i, label %if.end52.i

land.end.i:                                       ; preds = %sw.bb.i
  %.b2.i = load i1, ptr @htc_process_trailer.__already_done, align 1
  br i1 %.b2.i, label %land.end.i.free_skb_crit_edge, label %if.then22.i, !prof !160

land.end.i.free_skb_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.then22.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @htc_process_trailer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 885, i32 noundef 9, ptr noundef null) #7
  br label %free_skb

if.end52.i:                                       ; preds = %sw.bb.i
  %div1.i = lshr i32 %conv.i, 1
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i.i) #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end50.i.i.for.body.i.i_crit_edge, %if.end52.i
  %rpt.addr.06.i.i = phi ptr [ %incdec.ptr.i.i, %if.end50.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i, %if.end52.i ]
  %total_credits.05.i.i = phi i32 [ %add53.i.i, %if.end50.i.i.for.body.i.i_crit_edge ], [ 0, %if.end52.i ]
  %i.04.i.i = phi i32 [ %inc.i.i, %if.end50.i.i.for.body.i.i_crit_edge ], [ 0, %if.end52.i ]
  %22 = ptrtoint ptr %rpt.addr.06.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rpt.addr.06.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %23)
  %cmp1.i.i = icmp ugt i8 %23, 8
  br i1 %cmp1.i.i, label %land.end.i.i, label %if.end38.i.i

land.end.i.i:                                     ; preds = %for.body.i.i
  %.b1.i.i = load i1, ptr @htc_process_credit_report.__already_done, align 1
  br i1 %.b1.i.i, label %land.end.i.i.htc_process_credit_report.exit.i_crit_edge, label %if.then8.i.i, !prof !160

land.end.i.i.htc_process_credit_report.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_process_credit_report.exit.i

if.then8.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @htc_process_credit_report.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 667, i32 noundef 9, ptr noundef null) #7
  br label %htc_process_credit_report.exit.i

if.end38.i.i:                                     ; preds = %for.body.i.i
  %conv.i.i = zext i8 %23 to i32
  %arrayidx.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %1, i32 0, i32 %conv.i.i
  %credits.i.i = getelementptr inbounds %struct.htc_credit_report, ptr %rpt.addr.06.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %credits.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %credits.i.i, align 1
  %conv40.i.i = zext i8 %25 to i32
  %credits41.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %1, i32 0, i32 %conv.i.i, i32 4, i32 7
  %26 = ptrtoint ptr %credits41.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %credits41.i.i, align 4
  %add.i.i = add i32 %27, %conv40.i.i
  store i32 %add.i.i, ptr %credits41.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool44.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end38.i.i.if.end50.i.i_crit_edge, label %land.lhs.true.i.i

if.end38.i.i.if.end50.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i.i

land.lhs.true.i.i:                                ; preds = %if.end38.i.i
  %txq.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %1, i32 0, i32 %conv.i.i, i32 2
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %land.lhs.true.i.i
  %tmp_list.0.in.i.i.i = phi ptr [ %txq.i.i, %land.lhs.true.i.i ], [ %tmp_list.0.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %depth.0.i.i.i = phi i32 [ 0, %land.lhs.true.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %28 = ptrtoint ptr %tmp_list.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp_list.0.i.i.i = load ptr, ptr %tmp_list.0.in.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %tmp_list.0.i.i.i, %txq.i.i
  %inc.i.i.i = add i32 %depth.0.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %get_queue_depth.exit.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i

get_queue_depth.exit.i.i:                         ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth.0.i.i.i)
  %tobool45.not.i.i = icmp eq i32 %depth.0.i.i.i, 0
  br i1 %tobool45.not.i.i, label %get_queue_depth.exit.i.i.if.end50.i.i_crit_edge, label %if.then46.i.i

get_queue_depth.exit.i.i.if.end50.i.i_crit_edge:  ; preds = %get_queue_depth.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i.i

if.then46.i.i:                                    ; preds = %get_queue_depth.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i.i) #7
  tail call fastcc void @htc_try_send(ptr noundef nonnull %1, ptr noundef %arrayidx.i.i, ptr noundef null) #7
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i.i) #7
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.then46.i.i, %get_queue_depth.exit.i.i.if.end50.i.i_crit_edge, %if.end38.i.i.if.end50.i.i_crit_edge
  %29 = ptrtoint ptr %credits.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %credits.i.i, align 1
  %conv52.i.i = zext i8 %30 to i32
  %add53.i.i = add i32 %total_credits.05.i.i, %conv52.i.i
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.htc_credit_report, ptr %rpt.addr.06.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div1.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end50.i.i.for.body.i.i_crit_edge

if.end50.i.i.for.body.i.i_crit_edge:              ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.55, i32 noundef %add53.i.i) #7
  br label %htc_process_credit_report.exit.i

htc_process_credit_report.exit.i:                 ; preds = %for.end.i.i, %if.then8.i.i, %land.end.i.i.htc_process_credit_report.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i.i) #7
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv11.i = zext i8 %21 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.54, i32 noundef %conv11.i, i32 noundef %conv.i) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %htc_process_credit_report.exit.i
  %31 = ptrtoint ptr %len2.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %len2.i, align 1
  %conv60.i = zext i8 %32 to i32
  %add.ptr61.i = getelementptr i8, ptr %add.ptr.i, i32 %conv60.i
  %sub64.i = sub i32 %sub.i, %conv60.i
  %cmp.i = icmp sgt i32 %sub64.i, 0
  br i1 %cmp.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.if.end81_crit_edge

sw.epilog.i.if.end81_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end81:                                         ; preds = %sw.epilog.i.if.end81_crit_edge, %if.end53.if.end81_crit_edge
  %trailerlen.0 = phi i32 [ 0, %if.end53.if.end81_crit_edge ], [ %conv58, %sw.epilog.i.if.end81_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %trailerlen.0, i32 %conv47)
  %cmp83.not = icmp ult i32 %trailerlen.0, %conv47
  br i1 %cmp83.not, label %if.end86, label %if.end81.free_skb_crit_edge

if.end81.free_skb_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end86:                                         ; preds = %if.end81
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp89 = icmp eq i8 %34, 0
  br i1 %cmp89, label %if.then91, label %if.end107

if.then91:                                        ; preds = %if.end86
  %htc_flags = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %htc_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %htc_flags, align 4
  %and92 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.52) #7
  br label %free_skb

if.end95:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 6) #7
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %rx_lock = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #7
  %ctrl_response_valid = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 26, i32 3
  %41 = ptrtoint ptr %ctrl_response_valid to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %ctrl_response_valid, align 4
  %42 = tail call i32 @llvm.smin.i32(i32 %40, i32 256)
  %ctrl_response_len = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 26, i32 2
  %43 = ptrtoint ptr %ctrl_response_len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ctrl_response_len, align 4
  %ctrl_response_buf = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 26, i32 1
  %44 = call ptr @memcpy(ptr %ctrl_response_buf, ptr %38, i32 %42)
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #7
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %free_skb

if.end107:                                        ; preds = %if.end86
  %rx_lock.i = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #7
  %pipe.i = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 26
  %45 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pipe.i, align 4
  %cmp.i182 = icmp eq ptr %46, null
  br i1 %cmp.i182, label %alloc_htc_packet_container.exit.thread, label %if.end112

alloc_htc_packet_container.exit.thread:           ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #7
  br label %free_skb

if.end112:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %pipe.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #7
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %46, align 4
  %status113 = getelementptr inbounds %struct.htc_packet, ptr %46, i32 0, i32 7
  %51 = ptrtoint ptr %status113 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %status113, align 4
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %3, align 1
  %conv115 = zext i8 %53 to i32
  %endpoint116 = getelementptr inbounds %struct.htc_packet, ptr %46, i32 0, i32 6
  %54 = ptrtoint ptr %endpoint116 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv115, ptr %endpoint116, align 4
  %pkt_cntxt = getelementptr inbounds %struct.htc_packet, ptr %46, i32 0, i32 1
  %55 = ptrtoint ptr %pkt_cntxt to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %skb, ptr %pkt_cntxt, align 4
  %call117 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 0) #7
  %add.ptr118 = getelementptr i8, ptr %call117, i32 6
  %buf = getelementptr inbounds %struct.htc_packet, ptr %46, i32 0, i32 3
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr118, ptr %buf, align 4
  %sub119 = add i32 %5, -6
  %sub120 = sub i32 %sub119, %trailerlen.0
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %46, i32 0, i32 5
  %57 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub120, ptr %act_len, align 4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef 0) #7
  tail call fastcc void @recv_packet_completion(ptr noundef %arrayidx, ptr noundef nonnull %46)
  tail call fastcc void @free_htc_packet_container(ptr noundef nonnull %1, ptr noundef nonnull %46)
  br label %free_skb

free_skb:                                         ; preds = %if.end112, %alloc_htc_packet_container.exit.thread, %if.end95, %if.then94, %if.end81.free_skb_crit_edge, %if.then22.i, %land.end.i.free_skb_crit_edge, %if.then5.i, %while.body.i.free_skb_crit_edge, %if.then65, %if.then50, %if.then41, %if.then38
  %status.1 = phi i32 [ -22, %if.then38 ], [ -22, %if.then41 ], [ -22, %if.then50 ], [ -22, %if.then65 ], [ 0, %if.end81.free_skb_crit_edge ], [ -22, %if.then94 ], [ 0, %if.end95 ], [ 0, %if.end112 ], [ -12, %alloc_htc_packet_container.exit.thread ], [ -22, %if.then22.i ], [ -22, %land.end.i.free_skb_crit_edge ], [ -22, %if.then5.i ], [ -22, %while.body.i.free_skb_crit_edge ]
  %skb.addr.0 = phi ptr [ %skb, %if.then38 ], [ %skb, %if.then41 ], [ %skb, %if.then50 ], [ %skb, %if.then65 ], [ %skb, %if.end81.free_skb_crit_edge ], [ %skb, %if.then94 ], [ null, %if.end95 ], [ null, %if.end112 ], [ %skb, %alloc_htc_packet_container.exit.thread ], [ %skb, %if.then22.i ], [ %skb, %land.end.i.free_skb_crit_edge ], [ %skb, %if.then5.i ], [ %skb, %while.body.i.free_skb_crit_edge ]
  tail call void @consume_skb(ptr noundef %skb.addr.0) #7
  ret i32 %status.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_htc_packet_container(ptr noundef %target, ptr noundef %packet) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #7
  %pipe = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 26
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %packet, ptr %pipe, align 4
  %3 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %packet, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %packet, align 4
  %5 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %packet, ptr %pipe, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htc_txctrl_complete(ptr nocapture noundef readnone %target, ptr noundef %packet) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1.i.i = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 11
  %0 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1.i.i, align 4
  tail call void @consume_skb(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %packet) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htc_rxctrl_complete(ptr nocapture noundef readnone %context, ptr nocapture noundef readonly %packet) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 11
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %endpoint = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 6
  %2 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %endpoint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %5)
  %cmp2 = icmp ne i32 %5, -125
  %cmp4.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htc_try_send(ptr noundef %target, ptr noundef %ep, ptr noundef %txq) unnamed_addr #1 align 64 {
entry:
  %container.i.i = alloca %struct.list_head, align 4
  %send_queue = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %send_queue) #7
  %0 = ptrtoint ptr %send_queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %send_queue, align 4, !annotation !161
  %1 = getelementptr inbounds %struct.list_head, ptr %send_queue, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !161
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %ar1 = getelementptr inbounds %struct.ath6kl_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar1, align 4
  %cmp = icmp eq ptr %txq, null
  br i1 %cmp, label %cond.end.thread, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.htc_try_send, ptr noundef null, i32 noundef 0) #7
  %7 = ptrtoint ptr %send_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %send_queue, ptr %send_queue, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %send_queue, ptr %1, align 4
  br label %if.end101

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %tmp_list.0.in.i = phi ptr [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %txq, %entry.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %entry.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %txq
  %inc.i = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %if.then, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then:                                          ; preds = %for.cond.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.htc_try_send, ptr noundef nonnull %txq, i32 noundef %depth.0.i) #7
  %10 = ptrtoint ptr %send_queue to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %send_queue, ptr %send_queue, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %send_queue, ptr %1, align 4
  %12 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %txq, align 4
  %cmp.i.not = icmp eq ptr %13, %txq
  br i1 %cmp.i.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %tx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #7
  %txq5 = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 2
  br label %for.cond.i8

for.cond.i8:                                      ; preds = %for.cond.i8.for.cond.i8_crit_edge, %if.end
  %tmp_list.0.in.i3 = phi ptr [ %txq5, %if.end ], [ %tmp_list.0.i5, %for.cond.i8.for.cond.i8_crit_edge ]
  %depth.0.i4 = phi i32 [ 0, %if.end ], [ %inc.i7, %for.cond.i8.for.cond.i8_crit_edge ]
  %14 = ptrtoint ptr %tmp_list.0.in.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp_list.0.i5 = load ptr, ptr %tmp_list.0.in.i3, align 4
  %cmp.i.not.i6 = icmp eq ptr %tmp_list.0.i5, %txq5
  %inc.i7 = add i32 %depth.0.i4, 1
  br i1 %cmp.i.not.i6, label %get_queue_depth.exit9, label %for.cond.i8.for.cond.i8_crit_edge

for.cond.i8.for.cond.i8_crit_edge:                ; preds = %for.cond.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i8

get_queue_depth.exit9:                            ; preds = %for.cond.i8
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #7
  %max_txq_depth = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 6
  %15 = ptrtoint ptr %max_txq_depth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_txq_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0.i4, i32 %16)
  %cmp8.not = icmp slt i32 %depth.0.i4, %16
  br i1 %cmp8.not, label %get_queue_depth.exit9.for.cond.i22_crit_edge, label %get_queue_depth.exit9.for.cond.i15_crit_edge

get_queue_depth.exit9.for.cond.i15_crit_edge:     ; preds = %get_queue_depth.exit9
  br label %for.cond.i15

get_queue_depth.exit9.for.cond.i22_crit_edge:     ; preds = %get_queue_depth.exit9
  br label %for.cond.i22

for.cond.i15:                                     ; preds = %for.cond.i15.for.cond.i15_crit_edge, %get_queue_depth.exit9.for.cond.i15_crit_edge
  %tmp_list.0.in.i10 = phi ptr [ %tmp_list.0.i12, %for.cond.i15.for.cond.i15_crit_edge ], [ %txq, %get_queue_depth.exit9.for.cond.i15_crit_edge ]
  %depth.0.i11 = phi i32 [ %inc.i14, %for.cond.i15.for.cond.i15_crit_edge ], [ 0, %get_queue_depth.exit9.for.cond.i15_crit_edge ]
  %17 = ptrtoint ptr %tmp_list.0.in.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp_list.0.i12 = load ptr, ptr %tmp_list.0.in.i10, align 4
  %cmp.i.not.i13 = icmp eq ptr %tmp_list.0.i12, %txq
  %inc.i14 = add i32 %depth.0.i11, 1
  br i1 %cmp.i.not.i13, label %for.cond.i15.if.end13_crit_edge, label %for.cond.i15.for.cond.i15_crit_edge

for.cond.i15.for.cond.i15_crit_edge:              ; preds = %for.cond.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i15

for.cond.i15.if.end13_crit_edge:                  ; preds = %for.cond.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

for.cond.i22:                                     ; preds = %for.cond.i22.for.cond.i22_crit_edge, %get_queue_depth.exit9.for.cond.i22_crit_edge
  %tmp_list.0.in.i17 = phi ptr [ %tmp_list.0.i19, %for.cond.i22.for.cond.i22_crit_edge ], [ %txq, %get_queue_depth.exit9.for.cond.i22_crit_edge ]
  %depth.0.i18 = phi i32 [ %inc.i21, %for.cond.i22.for.cond.i22_crit_edge ], [ 0, %get_queue_depth.exit9.for.cond.i22_crit_edge ]
  %18 = ptrtoint ptr %tmp_list.0.in.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp_list.0.i19 = load ptr, ptr %tmp_list.0.in.i17, align 4
  %cmp.i.not.i20 = icmp eq ptr %tmp_list.0.i19, %txq
  %inc.i21 = add i32 %depth.0.i18, 1
  br i1 %cmp.i.not.i20, label %get_queue_depth.exit23, label %for.cond.i22.for.cond.i22_crit_edge

for.cond.i22.for.cond.i22_crit_edge:              ; preds = %for.cond.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i22

get_queue_depth.exit23:                           ; preds = %for.cond.i22
  call void @__sanitizer_cov_trace_pc() #9
  %add = sub i32 %depth.0.i4, %16
  %sub = add i32 %add, %depth.0.i18
  br label %if.end13

if.end13:                                         ; preds = %get_queue_depth.exit23, %for.cond.i15.if.end13_crit_edge
  %overflow.0 = phi i32 [ %sub, %get_queue_depth.exit23 ], [ %depth.0.i11, %for.cond.i15.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overflow.0)
  %cmp14 = icmp sgt i32 %overflow.0, 0
  br i1 %cmp14, label %lor.lhs.false, label %if.end13.if.then20_crit_edge

if.end13.if.then20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end13
  %19 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ep, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.htc_try_send, i32 noundef %20, i32 noundef %overflow.0, i32 noundef %depth.0.i4, i32 noundef %16) #7
  %tx_full = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %tx_full to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_full, align 4
  %cmp19 = icmp eq ptr %22, null
  br i1 %cmp19, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.for.cond.i31_crit_edge

lor.lhs.false.for.cond.i31_crit_edge:             ; preds = %lor.lhs.false
  br label %for.cond.i31

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end13.if.then20_crit_edge
  %23 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %txq, align 4
  %cmp.i.not.i24 = icmp eq ptr %24, %txq
  br i1 %cmp.i.not.i24, label %if.then20.if.end101_crit_edge, label %if.then.i

if.then20.if.end101_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %txq, i32 0, i32 1
  %27 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %send_queue, ptr %28, align 4
  store ptr %28, ptr %1, align 4
  %32 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %txq, ptr %txq, align 4
  store ptr %txq, ptr %prev2.i.i, align 4
  br label %if.end101

for.cond.i31:                                     ; preds = %for.cond.i31.for.cond.i31_crit_edge, %lor.lhs.false.for.cond.i31_crit_edge
  %tmp_list.0.in.i26 = phi ptr [ %tmp_list.0.i28, %for.cond.i31.for.cond.i31_crit_edge ], [ %txq, %lor.lhs.false.for.cond.i31_crit_edge ]
  %depth.0.i27 = phi i32 [ %inc.i30, %for.cond.i31.for.cond.i31_crit_edge ], [ 0, %lor.lhs.false.for.cond.i31_crit_edge ]
  %33 = ptrtoint ptr %tmp_list.0.in.i26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %tmp_list.0.i28 = load ptr, ptr %tmp_list.0.in.i26, align 4
  %cmp.i.not.i29 = icmp eq ptr %tmp_list.0.i28, %txq
  %inc.i30 = add i32 %depth.0.i27, 1
  br i1 %cmp.i.not.i29, label %get_queue_depth.exit32, label %for.cond.i31.for.cond.i31_crit_edge

for.cond.i31.for.cond.i31_crit_edge:              ; preds = %for.cond.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i31

get_queue_depth.exit32:                           ; preds = %for.cond.i31
  %sub23 = sub i32 %depth.0.i27, %overflow.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23)
  %cmp24 = icmp slt i32 %sub23, 0
  br i1 %cmp24, label %land.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %get_queue_depth.exit32
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0.i27, i32 %overflow.0)
  %cmp62139.not = icmp eq i32 %depth.0.i27, %overflow.0
  br i1 %cmp62139.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.end:                                         ; preds = %get_queue_depth.exit32
  %.b2 = load i1, ptr @htc_try_send.__already_done, align 1
  br i1 %.b2, label %land.end.cleanup_crit_edge, label %if.then31, !prof !160

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then31:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @htc_try_send.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 362, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0140 = phi i32 [ %inc, %list_move_tail.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %34 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %txq, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %35, ptr noundef %43, ptr noundef nonnull %send_queue) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %35, ptr %1, align 4
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %send_queue, ptr %35, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %35, ptr %43, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0140, 1
  %exitcond.not = icmp eq i32 %inc, %sub23
  br i1 %exitcond.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %48 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %txq, align 4
  %cmp75.not142 = icmp eq ptr %49, %txq
  br i1 %cmp75.not142, label %for.end.for.end95_crit_edge, label %for.body78.lr.ph

for.end.for.end95_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end95

for.body78.lr.ph:                                 ; preds = %for.end
  %target81 = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 10
  %tx_dropped = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 13, i32 4
  br label %for.body78

for.body78:                                       ; preds = %for.inc89.for.body78_crit_edge, %for.body78.lr.ph
  %packet.0143 = phi ptr [ %49, %for.body78.lr.ph ], [ %tmp_pkt.0145, %for.inc89.for.body78_crit_edge ]
  %50 = ptrtoint ptr %packet.0143 to i32
  call void @__asan_load4_noabort(i32 %50)
  %tmp_pkt.0145 = load ptr, ptr %packet.0143, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.htc_try_send, ptr noundef %packet.0143) #7
  %51 = ptrtoint ptr %tx_full to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_full, align 4
  %53 = ptrtoint ptr %target81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %target81, align 4
  %call82 = call i32 %52(ptr noundef %54, ptr noundef %packet.0143) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call82)
  %cmp83 = icmp eq i32 %call82, 1
  br i1 %cmp83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_dropped, align 4
  %add85 = add i32 %56, 1
  store i32 %add85, ptr %tx_dropped, align 4
  br label %for.inc89

if.else86:                                        ; preds = %for.body78
  %call.i.i33 = call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.0143) #7
  br i1 %call.i.i33, label %if.end.i.i36, label %if.else86.__list_del_entry.exit.i39_crit_edge

if.else86.__list_del_entry.exit.i39_crit_edge:    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i39

if.end.i.i36:                                     ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i34 = getelementptr inbounds %struct.list_head, ptr %packet.0143, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i34, align 4
  %59 = ptrtoint ptr %packet.0143 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %packet.0143, align 4
  %prev1.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i35, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %__list_del_entry.exit.i39

__list_del_entry.exit.i39:                        ; preds = %if.end.i.i36, %if.else86.__list_del_entry.exit.i39_crit_edge
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %call.i.i.i38 = call zeroext i1 @__list_add_valid(ptr noundef %packet.0143, ptr noundef %64, ptr noundef nonnull %send_queue) #7
  br i1 %call.i.i.i38, label %if.end.i.i.i41, label %__list_del_entry.exit.i39.for.inc89_crit_edge

__list_del_entry.exit.i39.for.inc89_crit_edge:    ; preds = %__list_del_entry.exit.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc89

if.end.i.i.i41:                                   ; preds = %__list_del_entry.exit.i39
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %packet.0143, ptr %1, align 4
  %66 = ptrtoint ptr %packet.0143 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %send_queue, ptr %packet.0143, align 4
  %prev3.i.i.i40 = getelementptr inbounds %struct.list_head, ptr %packet.0143, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i.i40, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %packet.0143, ptr %64, align 4
  br label %for.inc89

for.inc89:                                        ; preds = %if.end.i.i.i41, %__list_del_entry.exit.i39.for.inc89_crit_edge, %if.then84
  %cmp75.not = icmp eq ptr %tmp_pkt.0145, %txq
  br i1 %cmp75.not, label %for.inc89.for.end95_crit_edge, label %for.inc89.for.body78_crit_edge

for.inc89.for.body78_crit_edge:                   ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body78

for.inc89.for.end95_crit_edge:                    ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end95

for.end95:                                        ; preds = %for.inc89.for.end95_crit_edge, %for.end.for.end95_crit_edge
  %69 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %send_queue, align 4
  %cmp.i43.not = icmp eq ptr %70, %send_queue
  br i1 %cmp.i43.not, label %for.end95.cleanup_crit_edge, label %for.end95.if.end101_crit_edge

for.end95.if.end101_crit_edge:                    ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

for.end95.cleanup_crit_edge:                      ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end101:                                        ; preds = %for.end95.if.end101_crit_edge, %if.then.i, %if.then20.if.end101_crit_edge, %cond.end.thread
  %pipe = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 15
  %tx_credit_flow_enabled = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 15, i32 3
  %71 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool102.not = icmp eq i8 %72, 0
  br i1 %tobool102.not, label %if.then103, label %if.end101.if.end107_crit_edge

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %pipe to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pipe, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.32) #7
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %6, i32 0, i32 5
  %75 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hif_ops.i, align 4
  %pipe_get_free_queue_number.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %76, i32 0, i32 21
  %77 = ptrtoint ptr %pipe_get_free_queue_number.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pipe_get_free_queue_number.i, align 4
  %call.i = call zeroext i16 %78(ptr noundef %6, i8 noundef zeroext %74) #7
  %conv = zext i16 %call.i to i32
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.end101.if.end107_crit_edge
  %tx_resources.0 = phi i32 [ %conv, %if.then103 ], [ 0, %if.end101.if.end107_crit_edge ]
  %tx_lock108 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock108) #7
  %79 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %send_queue, align 4
  %cmp.i45.not = icmp eq ptr %80, %send_queue
  br i1 %cmp.i45.not, label %if.end107.if.end167_crit_edge, label %if.then111

if.end107.if.end167_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then111:                                       ; preds = %if.end107
  %81 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %send_queue, align 4
  %cmp.i.not.i47 = icmp eq ptr %82, %send_queue
  br i1 %cmp.i.not.i47, label %if.then111.list_splice_tail_init.exit52_crit_edge, label %if.then.i51

if.then111.list_splice_tail_init.exit52_crit_edge: ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit52

if.then.i51:                                      ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  %txq112 = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 2
  %prev.i48 = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i48, align 4
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %prev3.i.i50 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %87 = ptrtoint ptr %prev3.i.i50 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i50, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %82, ptr %84, align 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %txq112, ptr %86, align 4
  store ptr %86, ptr %prev.i48, align 4
  %90 = ptrtoint ptr %send_queue to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %send_queue, ptr %send_queue, align 4
  store ptr %send_queue, ptr %1, align 4
  br label %list_splice_tail_init.exit52

list_splice_tail_init.exit52:                     ; preds = %if.then.i51, %if.then111.list_splice_tail_init.exit52_crit_edge
  %91 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %send_queue, align 4
  %cmp.i53.not = icmp eq ptr %92, %send_queue
  br i1 %cmp.i53.not, label %if.end166, label %land.end123

land.end123:                                      ; preds = %list_splice_tail_init.exit52
  %.b2811 = load i1, ptr @htc_try_send.__already_done.31, align 1
  br i1 %.b2811, label %land.end123.if.end157_crit_edge, label %if.then130, !prof !160

land.end123.if.end157_crit_edge:                  ; preds = %land.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then130:                                       ; preds = %land.end123
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @htc_try_send.__already_done.31, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 423, i32 noundef 9, ptr noundef null) #7
  br label %if.end157

if.end157:                                        ; preds = %if.then130, %land.end123.if.end157_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock108) #7
  br label %cleanup

if.end166:                                        ; preds = %list_splice_tail_init.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %send_queue to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %send_queue, ptr %send_queue, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %send_queue, ptr %1, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.end107.if.end167_crit_edge
  %tx_proc_cnt = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 8
  %95 = ptrtoint ptr %tx_proc_cnt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_proc_cnt, align 4
  %inc168 = add i32 %96, 1
  store i32 %inc168, ptr %tx_proc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc168)
  %cmp170 = icmp sgt i32 %inc168, 1
  br i1 %cmp170, label %if.then172, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end167
  %txq176 = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 2
  %tgt_cred_sz.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 6
  %credits.i = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 4, i32 7
  %cred_cosumd.i = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 13, i32 12
  %cred_per_msg.i = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 4, i32 11
  %ep_st.i = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 13
  %seqno.i = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 11
  %tx_lookup_queue.i = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 15, i32 2
  %prev.i3.i = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 15, i32 2, i32 1
  %tx_issued.i = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 13, i32 1
  %97 = getelementptr inbounds %struct.list_head, ptr %container.i.i, i32 0, i32 1
  %hif_ops.i121 = getelementptr inbounds %struct.ath6kl, ptr %6, i32 0, i32 5
  br label %while.cond

if.then172:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %tx_proc_cnt to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %96, ptr %tx_proc_cnt, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock108) #7
  br label %cleanup

while.cond:                                       ; preds = %if.end203, %while.cond.preheader
  %tx_resources.1 = phi i32 [ %tx_resources.2, %if.end203 ], [ %tx_resources.0, %while.cond.preheader ]
  br label %for.cond.i61

for.cond.i61:                                     ; preds = %for.cond.i61.for.cond.i61_crit_edge, %while.cond
  %tmp_list.0.in.i56 = phi ptr [ %txq176, %while.cond ], [ %tmp_list.0.i58, %for.cond.i61.for.cond.i61_crit_edge ]
  %depth.0.i57 = phi i32 [ 0, %while.cond ], [ %inc.i60, %for.cond.i61.for.cond.i61_crit_edge ]
  %99 = ptrtoint ptr %tmp_list.0.in.i56 to i32
  call void @__asan_load4_noabort(i32 %99)
  %tmp_list.0.i58 = load ptr, ptr %tmp_list.0.in.i56, align 4
  %cmp.i.not.i59 = icmp eq ptr %tmp_list.0.i58, %txq176
  %inc.i60 = add i32 %depth.0.i57, 1
  br i1 %cmp.i.not.i59, label %get_queue_depth.exit62, label %for.cond.i61.for.cond.i61_crit_edge

for.cond.i61.for.cond.i61_crit_edge:              ; preds = %for.cond.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i61

get_queue_depth.exit62:                           ; preds = %for.cond.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth.0.i57)
  %cmp178 = icmp eq i32 %depth.0.i57, 0
  br i1 %cmp178, label %get_queue_depth.exit62.while.end_crit_edge, label %if.end181

get_queue_depth.exit62.while.end_crit_edge:       ; preds = %get_queue_depth.exit62
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end181:                                        ; preds = %get_queue_depth.exit62
  %100 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool184.not = icmp eq i8 %101, 0
  br i1 %tobool184.not, label %if.else186, label %if.then185

if.then185:                                       ; preds = %if.end181
  %102 = ptrtoint ptr %txq176 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %txq176, align 4
  %cmp.i.not77.i = icmp eq ptr %103, %txq176
  br i1 %cmp.i.not77.i, label %if.then185.for.cond.i94.preheader_crit_edge, label %if.then185.for.cond.i.preheader.i_crit_edge

if.then185.for.cond.i.preheader.i_crit_edge:      ; preds = %if.then185
  br label %for.cond.i.preheader.i

if.then185.for.cond.i94.preheader_crit_edge:      ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i94.preheader

for.cond.i.preheader.i:                           ; preds = %list_add_tail.exit.i.for.cond.i.preheader.i_crit_edge, %if.then185.for.cond.i.preheader.i_crit_edge
  %104 = phi ptr [ %147, %list_add_tail.exit.i.for.cond.i.preheader.i_crit_edge ], [ %103, %if.then185.for.cond.i.preheader.i_crit_edge ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.cond.i.preheader.i
  %tmp_list.0.in.i.i = phi ptr [ %tmp_list.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %txq176, %for.cond.i.preheader.i ]
  %depth.0.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ 0, %for.cond.i.preheader.i ]
  %105 = ptrtoint ptr %tmp_list.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %tmp_list.0.i.i = load ptr, ptr %tmp_list.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp_list.0.i.i, %txq176
  %inc.i.i = add i32 %depth.0.i.i, 1
  br i1 %cmp.i.not.i.i, label %get_queue_depth.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

get_queue_depth.exit.i:                           ; preds = %for.cond.i.i
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.get_htc_packet_credit_based, ptr noundef %104, i32 noundef %depth.0.i.i) #7
  %act_len.i = getelementptr inbounds %struct.htc_packet, ptr %104, i32 0, i32 5
  %106 = ptrtoint ptr %act_len.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %act_len.i, align 4
  %add.i = add i32 %107, 6
  %108 = ptrtoint ptr %tgt_cred_sz.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tgt_cred_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %109)
  %cmp.not.i = icmp ugt i32 %add.i, %109
  br i1 %cmp.not.i, label %if.else.i, label %get_queue_depth.exit.i.if.end10.i_crit_edge

get_queue_depth.exit.i.if.end10.i_crit_edge:      ; preds = %get_queue_depth.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.else.i:                                        ; preds = %get_queue_depth.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.frozen = freeze i32 %add.i
  %.frozen = freeze i32 %109
  %div.i = udiv i32 %add.i.frozen, %.frozen
  %110 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %add.i.frozen, %110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool7.not.i = icmp ne i32 %rem.i.decomposed, 0
  %inc.i63 = zext i1 %tobool7.not.i to i32
  %spec.select.i = add i32 %div.i, %inc.i63
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %get_queue_depth.exit.i.if.end10.i_crit_edge
  %credits_required.0.i = phi i32 [ 1, %get_queue_depth.exit.i.if.end10.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %111 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %credits.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.get_htc_packet_credit_based, i32 noundef %credits_required.0.i, i32 noundef %112) #7
  %113 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp11.i = icmp eq i32 %114, 0
  br i1 %cmp11.i, label %if.end10.i.if.end31.i_crit_edge, label %if.else13.i

if.end10.i.if.end31.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.else13.i:                                      ; preds = %if.end10.i
  %115 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %credits.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %credits_required.0.i)
  %cmp16.i = icmp slt i32 %116, %credits_required.0.i
  br i1 %cmp16.i, label %if.else13.i.for.cond.i94.preheader_crit_edge, label %if.end18.i

if.else13.i.for.cond.i94.preheader_crit_edge:     ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i94.preheader

if.end18.i:                                       ; preds = %if.else13.i
  %sub.i = sub i32 %116, %credits_required.0.i
  %117 = ptrtoint ptr %credits.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %sub.i, ptr %credits.i, align 4
  %118 = ptrtoint ptr %cred_cosumd.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cred_cosumd.i, align 4
  %add21.i = add i32 %119, %credits_required.0.i
  store i32 %add21.i, ptr %cred_cosumd.i, align 4
  %120 = ptrtoint ptr %cred_per_msg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cred_per_msg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %121)
  %cmp25.i = icmp slt i32 %sub.i, %121
  br i1 %cmp25.i, label %if.then26.i, label %if.end18.i.if.end31.i_crit_edge

if.end18.i.if.end31.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then26.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %ep_st.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ep_st.i, align 4
  %add29.i = add i32 %123, 1
  store i32 %add29.i, ptr %ep_st.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.get_htc_packet_credit_based) #7
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i, %if.end18.i.if.end31.i_crit_edge, %if.end10.i.if.end31.i_crit_edge
  %send_flags.0.i = phi i8 [ 1, %if.then26.i ], [ 0, %if.end18.i.if.end31.i_crit_edge ], [ 0, %if.end10.i.if.end31.i_crit_edge ]
  %credits_required.1.i = phi i32 [ %credits_required.0.i, %if.then26.i ], [ %credits_required.0.i, %if.end18.i.if.end31.i_crit_edge ], [ 0, %if.end10.i.if.end31.i_crit_edge ]
  %124 = ptrtoint ptr %txq176 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %txq176, align 4
  %call.i.i.i64 = call zeroext i1 @__list_del_entry_valid(ptr noundef %125) #7
  br i1 %call.i.i.i64, label %if.end.i.i.i65, label %if.end31.i.list_del.exit.i_crit_edge

if.end31.i.list_del.exit.i_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i65:                                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i.i.i, align 4
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %125, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev1.i.i.i.i, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %129, ptr %127, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i65, %if.end31.i.list_del.exit.i_crit_edge
  %132 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr inttoptr (i32 256 to ptr), ptr %125, align 4
  %prev.i.i66 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %133 = ptrtoint ptr %prev.i.i66 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i66, align 4
  %cred_used.i = getelementptr inbounds %struct.htc_packet, ptr %125, i32 0, i32 8, i32 0, i32 1
  %134 = ptrtoint ptr %cred_used.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %credits_required.1.i, ptr %cred_used.i, align 4
  %flags.i = getelementptr inbounds %struct.htc_packet, ptr %125, i32 0, i32 8, i32 0, i32 2
  %135 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %send_flags.0.i, ptr %flags.i, align 4
  %136 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %seqno.i, align 4
  %conv38.i = zext i8 %137 to i32
  %seqno40.i = getelementptr inbounds %struct.htc_packet, ptr %125, i32 0, i32 8, i32 0, i32 3
  %138 = ptrtoint ptr %seqno40.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv38.i, ptr %seqno40.i, align 4
  %139 = load i8, ptr %seqno.i, align 4
  %inc42.i = add i8 %139, 1
  store i8 %inc42.i, ptr %seqno.i, align 4
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %call.i.i75.i = call zeroext i1 @__list_add_valid(ptr noundef %125, ptr noundef %141, ptr noundef nonnull %send_queue) #7
  br i1 %call.i.i75.i, label %if.end.i.i76.i, label %list_del.exit.i.list_add_tail.exit.i_crit_edge

list_del.exit.i.list_add_tail.exit.i_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i76.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %125, ptr %1, align 4
  %143 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %send_queue, ptr %125, align 4
  %144 = ptrtoint ptr %prev.i.i66 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %prev.i.i66, align 4
  %145 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %125, ptr %141, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i76.i, %list_del.exit.i.list_add_tail.exit.i_crit_edge
  %146 = ptrtoint ptr %txq176 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile ptr, ptr %txq176, align 4
  %cmp.i.not.i67 = icmp eq ptr %147, %txq176
  br i1 %cmp.i.not.i67, label %list_add_tail.exit.i.for.cond.i94.preheader_crit_edge, label %list_add_tail.exit.i.for.cond.i.preheader.i_crit_edge

list_add_tail.exit.i.for.cond.i.preheader.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader.i

list_add_tail.exit.i.for.cond.i94.preheader_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i94.preheader

if.else186:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_resources.1)
  %tobool.not4.i = icmp eq i32 %tx_resources.1, 0
  br i1 %tobool.not4.i, label %if.else186.for.cond.i94.preheader_crit_edge, label %if.else186.while.body.i_crit_edge

if.else186.while.body.i_crit_edge:                ; preds = %if.else186
  br label %while.body.i

if.else186.for.cond.i94.preheader_crit_edge:      ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i94.preheader

while.body.i:                                     ; preds = %list_add_tail.exit.i88.while.body.i_crit_edge, %if.else186.while.body.i_crit_edge
  %resources.addr.05.i = phi i32 [ %dec.i, %list_add_tail.exit.i88.while.body.i_crit_edge ], [ %tx_resources.1, %if.else186.while.body.i_crit_edge ]
  %148 = ptrtoint ptr %txq176 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile ptr, ptr %txq176, align 4
  %cmp.i.not.i70 = icmp eq ptr %149, %txq176
  br i1 %cmp.i.not.i70, label %while.body.i.for.cond.i94.preheader_crit_edge, label %if.end.i

while.body.i.for.cond.i94.preheader_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i94.preheader

if.end.i:                                         ; preds = %while.body.i
  %call.i.i.i71 = call zeroext i1 @__list_del_entry_valid(ptr noundef %149) #7
  br i1 %call.i.i.i71, label %if.end.i.i.i74, label %if.end.i.list_del.exit.i76_crit_edge

if.end.i.list_del.exit.i76_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i76

if.end.i.i.i74:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i72 = getelementptr inbounds %struct.list_head, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %prev.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %prev.i.i.i72, align 4
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %149, align 4
  %prev1.i.i.i.i73 = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %prev1.i.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %151, ptr %prev1.i.i.i.i73, align 4
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %153, ptr %151, align 4
  br label %list_del.exit.i76

list_del.exit.i76:                                ; preds = %if.end.i.i.i74, %if.end.i.list_del.exit.i76_crit_edge
  %156 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr inttoptr (i32 256 to ptr), ptr %149, align 4
  %prev.i.i75 = getelementptr inbounds %struct.list_head, ptr %149, i32 0, i32 1
  %157 = ptrtoint ptr %prev.i.i75 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i75, align 4
  br label %for.cond.i.i82

for.cond.i.i82:                                   ; preds = %for.cond.i.i82.for.cond.i.i82_crit_edge, %list_del.exit.i76
  %tmp_list.0.in.i.i77 = phi ptr [ %txq176, %list_del.exit.i76 ], [ %tmp_list.0.i.i79, %for.cond.i.i82.for.cond.i.i82_crit_edge ]
  %depth.0.i.i78 = phi i32 [ 0, %list_del.exit.i76 ], [ %inc.i.i81, %for.cond.i.i82.for.cond.i.i82_crit_edge ]
  %158 = ptrtoint ptr %tmp_list.0.in.i.i77 to i32
  call void @__asan_load4_noabort(i32 %158)
  %tmp_list.0.i.i79 = load ptr, ptr %tmp_list.0.in.i.i77, align 4
  %cmp.i.not.i.i80 = icmp eq ptr %tmp_list.0.i.i79, %txq176
  %inc.i.i81 = add i32 %depth.0.i.i78, 1
  br i1 %cmp.i.not.i.i80, label %get_queue_depth.exit.i87, label %for.cond.i.i82.for.cond.i.i82_crit_edge

for.cond.i.i82.for.cond.i.i82_crit_edge:          ; preds = %for.cond.i.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i82

get_queue_depth.exit.i87:                         ; preds = %for.cond.i.i82
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.get_htc_packet, ptr noundef %149, i32 noundef %depth.0.i.i78) #7
  %159 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %seqno.i, align 4
  %conv.i83 = zext i8 %160 to i32
  %seqno5.i = getelementptr inbounds %struct.htc_packet, ptr %149, i32 0, i32 8, i32 0, i32 3
  %161 = ptrtoint ptr %seqno5.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %conv.i83, ptr %seqno5.i, align 4
  %flags.i84 = getelementptr inbounds %struct.htc_packet, ptr %149, i32 0, i32 8, i32 0, i32 2
  %162 = ptrtoint ptr %flags.i84 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %flags.i84, align 4
  %cred_used.i85 = getelementptr inbounds %struct.htc_packet, ptr %149, i32 0, i32 8, i32 0, i32 1
  %163 = ptrtoint ptr %cred_used.i85 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %cred_used.i85, align 4
  %164 = load i8, ptr %seqno.i, align 4
  %inc.i86 = add i8 %164, 1
  store i8 %inc.i86, ptr %seqno.i, align 4
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 4
  %call.i.i2.i = call zeroext i1 @__list_add_valid(ptr noundef %149, ptr noundef %166, ptr noundef nonnull %send_queue) #7
  br i1 %call.i.i2.i, label %if.end.i.i3.i, label %get_queue_depth.exit.i87.list_add_tail.exit.i88_crit_edge

get_queue_depth.exit.i87.list_add_tail.exit.i88_crit_edge: ; preds = %get_queue_depth.exit.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i88

if.end.i.i3.i:                                    ; preds = %get_queue_depth.exit.i87
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %149, ptr %1, align 4
  %168 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %send_queue, ptr %149, align 4
  %169 = ptrtoint ptr %prev.i.i75 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %166, ptr %prev.i.i75, align 4
  %170 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %149, ptr %166, align 4
  br label %list_add_tail.exit.i88

list_add_tail.exit.i88:                           ; preds = %if.end.i.i3.i, %get_queue_depth.exit.i87.list_add_tail.exit.i88_crit_edge
  %dec.i = add i32 %resources.addr.05.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %list_add_tail.exit.i88.for.cond.i94.preheader_crit_edge, label %list_add_tail.exit.i88.while.body.i_crit_edge

list_add_tail.exit.i88.while.body.i_crit_edge:    ; preds = %list_add_tail.exit.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

list_add_tail.exit.i88.for.cond.i94.preheader_crit_edge: ; preds = %list_add_tail.exit.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i94.preheader

for.cond.i94.preheader:                           ; preds = %list_add_tail.exit.i88.for.cond.i94.preheader_crit_edge, %while.body.i.for.cond.i94.preheader_crit_edge, %if.else186.for.cond.i94.preheader_crit_edge, %list_add_tail.exit.i.for.cond.i94.preheader_crit_edge, %if.else13.i.for.cond.i94.preheader_crit_edge, %if.then185.for.cond.i94.preheader_crit_edge
  br label %for.cond.i94

for.cond.i94:                                     ; preds = %for.cond.i94.for.cond.i94_crit_edge, %for.cond.i94.preheader
  %tmp_list.0.in.i89 = phi ptr [ %tmp_list.0.i91, %for.cond.i94.for.cond.i94_crit_edge ], [ %send_queue, %for.cond.i94.preheader ]
  %depth.0.i90 = phi i32 [ %inc.i93, %for.cond.i94.for.cond.i94_crit_edge ], [ 0, %for.cond.i94.preheader ]
  %171 = ptrtoint ptr %tmp_list.0.in.i89 to i32
  call void @__asan_load4_noabort(i32 %171)
  %tmp_list.0.i91 = load ptr, ptr %tmp_list.0.in.i89, align 4
  %cmp.i.not.i92 = icmp eq ptr %tmp_list.0.i91, %send_queue
  %inc.i93 = add i32 %depth.0.i90, 1
  br i1 %cmp.i.not.i92, label %get_queue_depth.exit95, label %for.cond.i94.for.cond.i94_crit_edge

for.cond.i94.for.cond.i94_crit_edge:              ; preds = %for.cond.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i94

get_queue_depth.exit95:                           ; preds = %for.cond.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth.0.i90)
  %cmp189 = icmp eq i32 %depth.0.i90, 0
  br i1 %cmp189, label %get_queue_depth.exit95.while.end_crit_edge, label %if.end192

get_queue_depth.exit95.while.end_crit_edge:       ; preds = %get_queue_depth.exit95
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end192:                                        ; preds = %get_queue_depth.exit95
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock108) #7
  br label %for.cond.i.i101

for.cond.i.i101:                                  ; preds = %for.cond.i.i101.for.cond.i.i101_crit_edge, %if.end192
  %tmp_list.0.in.i.i96 = phi ptr [ %send_queue, %if.end192 ], [ %tmp_list.0.i.i98, %for.cond.i.i101.for.cond.i.i101_crit_edge ]
  %depth.0.i.i97 = phi i32 [ 0, %if.end192 ], [ %inc.i.i100, %for.cond.i.i101.for.cond.i.i101_crit_edge ]
  %172 = ptrtoint ptr %tmp_list.0.in.i.i96 to i32
  call void @__asan_load4_noabort(i32 %172)
  %tmp_list.0.i.i98 = load ptr, ptr %tmp_list.0.in.i.i96, align 4
  %cmp.i.not.i.i99 = icmp eq ptr %tmp_list.0.i.i98, %send_queue
  %inc.i.i100 = add i32 %depth.0.i.i97, 1
  br i1 %cmp.i.not.i.i99, label %get_queue_depth.exit.i102, label %for.cond.i.i101.for.cond.i.i101_crit_edge

for.cond.i.i101.for.cond.i.i101_crit_edge:        ; preds = %for.cond.i.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i101

get_queue_depth.exit.i102:                        ; preds = %for.cond.i.i101
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.htc_issue_packets, ptr noundef nonnull %send_queue, i32 noundef %depth.0.i.i97) #7
  br label %while.cond.i

while.cond.i:                                     ; preds = %list_add_tail.exit.i117.while.cond.i_crit_edge, %get_queue_depth.exit.i102
  %173 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile ptr, ptr %send_queue, align 4
  %cmp.i.not.i103 = icmp eq ptr %174, %send_queue
  br i1 %cmp.i.not.i103, label %while.cond.i.htc_issue_packets.exit_crit_edge, label %while.body.i105

while.cond.i.htc_issue_packets.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_issue_packets.exit

while.body.i105:                                  ; preds = %while.cond.i
  %call.i.i.i104 = call zeroext i1 @__list_del_entry_valid(ptr noundef %174) #7
  br i1 %call.i.i.i104, label %if.end.i.i.i108, label %while.body.i105.list_del.exit.i110_crit_edge

while.body.i105.list_del.exit.i110_crit_edge:     ; preds = %while.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i110

if.end.i.i.i108:                                  ; preds = %while.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i106 = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %prev.i.i.i106, align 4
  %177 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %174, align 4
  %prev1.i.i.i.i107 = getelementptr inbounds %struct.list_head, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %prev1.i.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %176, ptr %prev1.i.i.i.i107, align 4
  %180 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %178, ptr %176, align 4
  br label %list_del.exit.i110

list_del.exit.i110:                               ; preds = %if.end.i.i.i108, %while.body.i105.list_del.exit.i110_crit_edge
  %181 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr inttoptr (i32 256 to ptr), ptr %174, align 4
  %prev.i.i109 = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  %182 = ptrtoint ptr %prev.i.i109 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i109, align 4
  %skb2.i = getelementptr inbounds %struct.htc_packet, ptr %174, i32 0, i32 11
  %183 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %skb2.i, align 4
  %tobool3.not.i = icmp eq ptr %184, null
  br i1 %tobool3.not.i, label %land.end.i, label %if.end40.i

land.end.i:                                       ; preds = %list_del.exit.i110
  %.b1.i = load i1, ptr @htc_issue_packets.__already_done, align 1
  br i1 %.b1.i, label %land.end.i.while.cond127.preheader.i_crit_edge, label %land.end.i.while.cond127.preheader.sink.split.i_crit_edge, !prof !160

land.end.i.while.cond127.preheader.sink.split.i_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond127.preheader.sink.split.i

land.end.i.while.cond127.preheader.i_crit_edge:   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond127.preheader.i

if.end40.i:                                       ; preds = %list_del.exit.i110
  %act_len.i111 = getelementptr inbounds %struct.htc_packet, ptr %174, i32 0, i32 5
  %185 = ptrtoint ptr %act_len.i111 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %act_len.i111, align 4
  %call41.i = call ptr @skb_push(ptr noundef nonnull %184, i32 noundef 6) #7
  %tobool42.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool42.not.i, label %land.end51.i, label %if.end93.i

land.end51.i:                                     ; preds = %if.end40.i
  %.b1912.i = load i1, ptr @htc_issue_packets.__already_done.38, align 1
  br i1 %.b1912.i, label %land.end51.i.while.cond127.preheader.i_crit_edge, label %land.end51.i.while.cond127.preheader.sink.split.i_crit_edge, !prof !160

land.end51.i.while.cond127.preheader.sink.split.i_crit_edge: ; preds = %land.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond127.preheader.sink.split.i

land.end51.i.while.cond127.preheader.i_crit_edge: ; preds = %land.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond127.preheader.i

if.end93.i:                                       ; preds = %if.end40.i
  %conv.i112 = trunc i32 %186 to i16
  %flags.i113 = getelementptr inbounds %struct.htc_packet, ptr %174, i32 0, i32 8, i32 0, i32 2
  %187 = ptrtoint ptr %flags.i113 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %flags.i113, align 4
  %189 = or i8 %188, 4
  store i8 %189, ptr %flags.i113, align 4
  %payld_len.i = getelementptr inbounds %struct.anon.137, ptr %call41.i, i32 0, i32 2
  %190 = ptrtoint ptr %payld_len.i to i32
  call void @__asan_storeN_noabort(i32 %190, i32 2)
  store i16 %conv.i112, ptr %payld_len.i, align 1
  %191 = load i8, ptr %flags.i113, align 4
  %flags101.i = getelementptr inbounds %struct.anon.137, ptr %call41.i, i32 0, i32 1
  %192 = ptrtoint ptr %flags101.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %flags101.i, align 1
  %endpoint.i = getelementptr inbounds %struct.htc_packet, ptr %174, i32 0, i32 6
  %193 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %endpoint.i, align 4
  %conv102.i = trunc i32 %194 to i8
  %195 = ptrtoint ptr %call41.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv102.i, ptr %call41.i, align 1
  %ctrl.i = getelementptr inbounds %struct.htc_frame_hdr, ptr %call41.i, i32 0, i32 1
  %196 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %ctrl.i, align 1
  %seqno.i114 = getelementptr inbounds %struct.htc_packet, ptr %174, i32 0, i32 8, i32 0, i32 3
  %197 = ptrtoint ptr %seqno.i114 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %seqno.i114, align 4
  %conv104.i = trunc i32 %198 to i8
  %arrayidx106.i = getelementptr %struct.htc_frame_hdr, ptr %call41.i, i32 0, i32 1, i32 1
  %199 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv104.i, ptr %arrayidx106.i, align 1
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock108) #7
  %200 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i3.i, align 4
  %call.i.i4.i = call zeroext i1 @__list_add_valid(ptr noundef %174, ptr noundef %201, ptr noundef %tx_lookup_queue.i) #7
  br i1 %call.i.i4.i, label %if.end.i.i5.i, label %if.end93.i.list_add_tail.exit.i117_crit_edge

if.end93.i.list_add_tail.exit.i117_crit_edge:     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i117

if.end.i.i5.i:                                    ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  %202 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %174, ptr %prev.i3.i, align 4
  %203 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %tx_lookup_queue.i, ptr %174, align 4
  %204 = ptrtoint ptr %prev.i.i109 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev.i.i109, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %174, ptr %201, align 4
  br label %list_add_tail.exit.i117

list_add_tail.exit.i117:                          ; preds = %if.end.i.i5.i, %if.end93.i.list_add_tail.exit.i117_crit_edge
  %206 = ptrtoint ptr %tx_issued.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %tx_issued.i, align 4
  %add.i115 = add i32 %207, 1
  store i32 %add.i115, ptr %tx_issued.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock108) #7
  %208 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %209, i32 0, i32 4
  %210 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ar.i, align 4
  %212 = ptrtoint ptr %pipe to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %pipe, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.41) #7
  %hif_ops.i.i = getelementptr inbounds %struct.ath6kl, ptr %211, i32 0, i32 5
  %214 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hif_ops.i.i, align 4
  %pipe_send.i.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %215, i32 0, i32 18
  %216 = ptrtoint ptr %pipe_send.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pipe_send.i.i, align 4
  %call.i.i116 = call i32 %217(ptr noundef %211, i8 noundef zeroext %213, ptr noundef null, ptr noundef nonnull %184) #7
  %218 = zext i32 %call.i.i116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call.i.i116, label %if.then115.i [
    i32 0, label %list_add_tail.exit.i117.while.cond.i_crit_edge
    i32 -12, label %list_add_tail.exit.i117.if.end116.i_crit_edge
  ]

list_add_tail.exit.i117.if.end116.i_crit_edge:    ; preds = %list_add_tail.exit.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116.i

list_add_tail.exit.i117.while.cond.i_crit_edge:   ; preds = %list_add_tail.exit.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

if.then115.i:                                     ; preds = %list_add_tail.exit.i117
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.htc_issue_packets, i32 noundef %call.i.i116) #7
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then115.i, %list_add_tail.exit.i117.if.end116.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock108) #7
  %call.i.i6.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %174) #7
  br i1 %call.i.i6.i, label %if.end.i.i9.i, label %if.end116.i.list_del.exit11.i_crit_edge

if.end116.i.list_del.exit11.i_crit_edge:          ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit11.i

if.end.i.i9.i:                                    ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  %219 = ptrtoint ptr %prev.i.i109 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %prev.i.i109, align 4
  %221 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %174, align 4
  %prev1.i.i.i8.i = getelementptr inbounds %struct.list_head, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %prev1.i.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %220, ptr %prev1.i.i.i8.i, align 4
  %224 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %222, ptr %220, align 4
  br label %list_del.exit11.i

list_del.exit11.i:                                ; preds = %if.end.i.i9.i, %if.end116.i.list_del.exit11.i_crit_edge
  %225 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr inttoptr (i32 256 to ptr), ptr %174, align 4
  %226 = ptrtoint ptr %prev.i.i109 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i109, align 4
  %cred_used.i118 = getelementptr inbounds %struct.htc_packet, ptr %174, i32 0, i32 8, i32 0, i32 1
  %227 = ptrtoint ptr %cred_used.i118 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %cred_used.i118, align 4
  %229 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %credits.i, align 4
  %add120.i = add i32 %230, %228
  store i32 %add120.i, ptr %credits.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock108) #7
  %231 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %send_queue, align 4
  %call.i.i12.i = call zeroext i1 @__list_add_valid(ptr noundef %174, ptr noundef nonnull %send_queue, ptr noundef %232) #7
  br i1 %call.i.i12.i, label %if.end.i.i14.i, label %list_del.exit11.i.while.end.i_crit_edge

list_del.exit11.i.while.end.i_crit_edge:          ; preds = %list_del.exit11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end.i.i14.i:                                   ; preds = %list_del.exit11.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i120 = getelementptr inbounds %struct.list_head, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %prev1.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %174, ptr %prev1.i.i.i120, align 4
  %234 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %232, ptr %174, align 4
  %235 = ptrtoint ptr %prev.i.i109 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %send_queue, ptr %prev.i.i109, align 4
  %236 = ptrtoint ptr %send_queue to i32
  call void @__asan_store4_noabort(i32 %236)
  store volatile ptr %174, ptr %send_queue, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.i14.i, %list_del.exit11.i.while.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116)
  %cmp124.not.i = icmp eq i32 %call.i.i116, 0
  br i1 %cmp124.not.i, label %while.end.i.htc_issue_packets.exit_crit_edge, label %while.end.i.while.cond127.preheader.i_crit_edge

while.end.i.while.cond127.preheader.i_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond127.preheader.i

while.end.i.htc_issue_packets.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_issue_packets.exit

while.cond127.preheader.sink.split.i:             ; preds = %land.end51.i.while.cond127.preheader.sink.split.i_crit_edge, %land.end.i.while.cond127.preheader.sink.split.i_crit_edge
  %htc_issue_packets.__already_done.38.sink.i = phi ptr [ @htc_issue_packets.__already_done, %land.end.i.while.cond127.preheader.sink.split.i_crit_edge ], [ @htc_issue_packets.__already_done.38, %land.end51.i.while.cond127.preheader.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 223, %land.end.i.while.cond127.preheader.sink.split.i_crit_edge ], [ 233, %land.end51.i.while.cond127.preheader.sink.split.i_crit_edge ]
  %237 = ptrtoint ptr %htc_issue_packets.__already_done.38.sink.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i1 true, ptr %htc_issue_packets.__already_done.38.sink.i, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #7
  br label %while.cond127.preheader.i

while.cond127.preheader.i:                        ; preds = %while.cond127.preheader.sink.split.i, %while.end.i.while.cond127.preheader.i_crit_edge, %land.end51.i.while.cond127.preheader.i_crit_edge, %land.end.i.while.cond127.preheader.i_crit_edge
  %status.155.i = phi i32 [ %call.i.i116, %while.end.i.while.cond127.preheader.i_crit_edge ], [ -22, %land.end.i.while.cond127.preheader.i_crit_edge ], [ -22, %land.end51.i.while.cond127.preheader.i_crit_edge ], [ -22, %while.cond127.preheader.sink.split.i ]
  %238 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile ptr, ptr %send_queue, align 4
  %cmp.i15.not40.i = icmp eq ptr %239, %send_queue
  br i1 %cmp.i15.not40.i, label %while.cond127.preheader.i.htc_issue_packets.exit_crit_edge, label %while.body132.lr.ph.i

while.cond127.preheader.i.htc_issue_packets.exit_crit_edge: ; preds = %while.cond127.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_issue_packets.exit

while.body132.lr.ph.i:                            ; preds = %while.cond127.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %status.155.i)
  %cmp133.not.i = icmp eq i32 %status.155.i, -12
  br label %while.body132.i

while.body132.i:                                  ; preds = %send_packet_completion.exit.i.while.body132.i_crit_edge, %while.body132.lr.ph.i
  %packet.241.i = phi ptr [ %174, %while.body132.lr.ph.i ], [ %241, %send_packet_completion.exit.i.while.body132.i_crit_edge ]
  br i1 %cmp133.not.i, label %while.body132.i.if.end136.i_crit_edge, label %if.then135.i

while.body132.i.if.end136.i_crit_edge:            ; preds = %while.body132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i

if.then135.i:                                     ; preds = %while.body132.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.htc_issue_packets, ptr noundef %packet.241.i, i32 noundef %status.155.i) #7
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then135.i, %while.body132.i.if.end136.i_crit_edge
  %240 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %send_queue, align 4
  %call.i.i17.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %241) #7
  br i1 %call.i.i17.i, label %if.end.i.i20.i, label %if.end136.i.list_del.exit22.i_crit_edge

if.end136.i.list_del.exit22.i_crit_edge:          ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit22.i

if.end.i.i20.i:                                   ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i18.i = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %prev.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %prev.i.i18.i, align 4
  %244 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %241, align 4
  %prev1.i.i.i19.i = getelementptr inbounds %struct.list_head, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %prev1.i.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %243, ptr %prev1.i.i.i19.i, align 4
  %247 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %247)
  store volatile ptr %245, ptr %243, align 4
  br label %list_del.exit22.i

list_del.exit22.i:                                ; preds = %if.end.i.i20.i, %if.end136.i.list_del.exit22.i_crit_edge
  %248 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr inttoptr (i32 256 to ptr), ptr %241, align 4
  %prev.i21.i = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  %249 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i21.i, align 4
  %status142.i = getelementptr inbounds %struct.htc_packet, ptr %241, i32 0, i32 7
  %250 = ptrtoint ptr %status142.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %status.155.i, ptr %status142.i, align 4
  %endpoint1.i.i = getelementptr inbounds %struct.htc_packet, ptr %241, i32 0, i32 6
  %251 = ptrtoint ptr %endpoint1.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %endpoint1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %container.i.i) #7
  %flags.i.i.i = getelementptr inbounds %struct.htc_packet, ptr %241, i32 0, i32 8, i32 0, i32 2
  %253 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %flags.i.i.i, align 4
  %255 = and i8 %254, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool.not.i.i.i = icmp eq i8 %255, 0
  br i1 %tobool.not.i.i.i, label %list_del.exit22.i.restore_tx_packet.exit.i.i_crit_edge, label %if.then.i.i.i

list_del.exit22.i.restore_tx_packet.exit.i.i_crit_edge: ; preds = %list_del.exit22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_tx_packet.exit.i.i

if.then.i.i.i:                                    ; preds = %list_del.exit22.i
  call void @__sanitizer_cov_trace_pc() #9
  %skb.i.i.i = getelementptr inbounds %struct.htc_packet, ptr %241, i32 0, i32 11
  %256 = ptrtoint ptr %skb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %skb.i.i.i, align 4
  %call.i.i23.i = call ptr @skb_pull(ptr noundef %257, i32 noundef 6) #7
  %258 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %flags.i.i.i, align 4
  %260 = and i8 %259, -5
  store i8 %260, ptr %flags.i.i.i, align 4
  br label %restore_tx_packet.exit.i.i

restore_tx_packet.exit.i.i:                       ; preds = %if.then.i.i.i, %list_del.exit22.i.restore_tx_packet.exit.i.i_crit_edge
  %261 = ptrtoint ptr %container.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store volatile ptr %container.i.i, ptr %container.i.i, align 4
  %262 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %container.i.i, ptr %97, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %241, ptr noundef nonnull %container.i.i, ptr noundef nonnull %container.i.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %restore_tx_packet.exit.i.i.send_packet_completion.exit.i_crit_edge

restore_tx_packet.exit.i.i.send_packet_completion.exit.i_crit_edge: ; preds = %restore_tx_packet.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_packet_completion.exit.i

if.end.i.i.i.i:                                   ; preds = %restore_tx_packet.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %263 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %241, ptr %97, align 4
  %264 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %container.i.i, ptr %241, align 4
  %265 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %container.i.i, ptr %prev.i21.i, align 4
  %266 = ptrtoint ptr %container.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store volatile ptr %241, ptr %container.i.i, align 4
  br label %send_packet_completion.exit.i

send_packet_completion.exit.i:                    ; preds = %if.end.i.i.i.i, %restore_tx_packet.exit.i.i.send_packet_completion.exit.i_crit_edge
  %arrayidx.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %252
  call fastcc void @do_send_completion(ptr noundef %arrayidx.i.i, ptr noundef nonnull %container.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %container.i.i) #7
  %267 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile ptr, ptr %send_queue, align 4
  %cmp.i15.not.i = icmp eq ptr %268, %send_queue
  br i1 %cmp.i15.not.i, label %send_packet_completion.exit.i.htc_issue_packets.exit_crit_edge, label %send_packet_completion.exit.i.while.body132.i_crit_edge

send_packet_completion.exit.i.while.body132.i_crit_edge: ; preds = %send_packet_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body132.i

send_packet_completion.exit.i.htc_issue_packets.exit_crit_edge: ; preds = %send_packet_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %htc_issue_packets.exit

htc_issue_packets.exit:                           ; preds = %send_packet_completion.exit.i.htc_issue_packets.exit_crit_edge, %while.cond127.preheader.i.htc_issue_packets.exit_crit_edge, %while.end.i.htc_issue_packets.exit_crit_edge, %while.cond.i.htc_issue_packets.exit_crit_edge
  %269 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool197.not = icmp eq i8 %270, 0
  br i1 %tobool197.not, label %if.then198, label %htc_issue_packets.exit.if.end203_crit_edge

htc_issue_packets.exit.if.end203_crit_edge:       ; preds = %htc_issue_packets.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

if.then198:                                       ; preds = %htc_issue_packets.exit
  call void @__sanitizer_cov_trace_pc() #9
  %271 = ptrtoint ptr %pipe to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %pipe, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.32) #7
  %273 = ptrtoint ptr %hif_ops.i121 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %hif_ops.i121, align 4
  %pipe_get_free_queue_number.i122 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %274, i32 0, i32 21
  %275 = ptrtoint ptr %pipe_get_free_queue_number.i122 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %pipe_get_free_queue_number.i122, align 4
  %call.i123 = call zeroext i16 %276(ptr noundef %6, i8 noundef zeroext %272) #7
  %conv202 = zext i16 %call.i123 to i32
  br label %if.end203

if.end203:                                        ; preds = %if.then198, %htc_issue_packets.exit.if.end203_crit_edge
  %tx_resources.2 = phi i32 [ %tx_resources.1, %htc_issue_packets.exit.if.end203_crit_edge ], [ %conv202, %if.then198 ]
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock108) #7
  br label %while.cond

while.end:                                        ; preds = %get_queue_depth.exit95.while.end_crit_edge, %get_queue_depth.exit62.while.end_crit_edge
  %277 = ptrtoint ptr %tx_proc_cnt to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 0, ptr %tx_proc_cnt, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock108) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then172, %if.end157, %for.end95.cleanup_crit_edge, %if.then31, %land.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %send_queue) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_send_completion(ptr nocapture noundef readonly %ep, ptr noundef %queue_to_indicate) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue_to_indicate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue_to_indicate, align 4
  %cmp.i.not = icmp eq ptr %1, %queue_to_indicate
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ep_cb = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 5
  %tx_comp_multi = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %tx_comp_multi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_comp_multi, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %do.body.preheader, label %if.then1

do.body.preheader:                                ; preds = %if.end
  %target7 = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 10
  br label %do.body

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then1
  %tmp_list.0.in.i = phi ptr [ %queue_to_indicate, %if.then1 ], [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ 0, %if.then1 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %queue_to_indicate
  %inc.i = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %get_queue_depth.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.do_send_completion, i32 noundef %5, i32 noundef %depth.0.i) #7
  %7 = ptrtoint ptr %tx_comp_multi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_comp_multi, align 4
  %target = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 10
  %9 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %target, align 4
  tail call void %8(ptr noundef %10, ptr noundef %queue_to_indicate) #7
  %11 = ptrtoint ptr %queue_to_indicate to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue_to_indicate, ptr %queue_to_indicate, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queue_to_indicate, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue_to_indicate, ptr %prev.i, align 4
  br label %cleanup

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %do.body.preheader
  %13 = ptrtoint ptr %queue_to_indicate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue_to_indicate, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.body.list_del.exit_crit_edge

do.body.list_del.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body.list_del.exit_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i24 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i24, align 4
  %23 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ep, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.do_send_completion, i32 noundef %24, ptr noundef %14) #7
  %25 = ptrtoint ptr %ep_cb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep_cb, align 4
  %27 = ptrtoint ptr %target7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %target7, align 4
  tail call void %26(ptr noundef %28, ptr noundef %14) #7
  %29 = ptrtoint ptr %queue_to_indicate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %queue_to_indicate, align 4
  %cmp.i25.not = icmp eq ptr %30, %queue_to_indicate
  br i1 %cmp.i25.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.do.body_crit_edge

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %get_queue_depth.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htc_flush_tx_endpoint(ptr noundef %target, ptr noundef readonly %ep) unnamed_addr #1 align 64 {
entry:
  %container.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #7
  %txq = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 2
  %0 = getelementptr inbounds %struct.list_head, ptr %container.i, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %entry
  %tmp_list.0.in.i = phi ptr [ %txq, %entry ], [ %tmp_list.0.in.i.be, %for.cond.i.backedge ]
  %depth.0.i = phi i32 [ 0, %entry ], [ %depth.0.i.be, %for.cond.i.backedge ]
  %1 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %txq
  %inc.i = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %get_queue_depth.exit, label %for.cond.i.for.cond.i.backedge_crit_edge

for.cond.i.for.cond.i.backedge_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %send_packet_completion.exit, %for.cond.i.for.cond.i.backedge_crit_edge
  %tmp_list.0.in.i.be = phi ptr [ %tmp_list.0.i, %for.cond.i.for.cond.i.backedge_crit_edge ], [ %txq, %send_packet_completion.exit ]
  %depth.0.i.be = phi i32 [ %inc.i, %for.cond.i.for.cond.i.backedge_crit_edge ], [ 0, %send_packet_completion.exit ]
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth.0.i)
  %tobool.not = icmp eq i32 %depth.0.i, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %get_queue_depth.exit
  %2 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txq, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %status = getelementptr inbounds %struct.htc_packet, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %status, align 4
  %endpoint1.i = getelementptr inbounds %struct.htc_packet, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %endpoint1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %endpoint1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %container.i) #7
  %flags.i.i = getelementptr inbounds %struct.htc_packet, ptr %3, i32 0, i32 8, i32 0, i32 2
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags.i.i, align 4
  %17 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %list_del.exit.restore_tx_packet.exit.i_crit_edge, label %if.then.i.i

list_del.exit.restore_tx_packet.exit.i_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_tx_packet.exit.i

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %skb.i.i = getelementptr inbounds %struct.htc_packet, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb.i.i, align 4
  %call.i.i1 = call ptr @skb_pull(ptr noundef %19, i32 noundef 6) #7
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags.i.i, align 4
  %22 = and i8 %21, -5
  store i8 %22, ptr %flags.i.i, align 4
  br label %restore_tx_packet.exit.i

restore_tx_packet.exit.i:                         ; preds = %if.then.i.i, %list_del.exit.restore_tx_packet.exit.i_crit_edge
  %23 = ptrtoint ptr %container.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %container.i, ptr %container.i, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %container.i, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef nonnull %container.i, ptr noundef nonnull %container.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %restore_tx_packet.exit.i.send_packet_completion.exit_crit_edge

restore_tx_packet.exit.i.send_packet_completion.exit_crit_edge: ; preds = %restore_tx_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_packet_completion.exit

if.end.i.i.i:                                     ; preds = %restore_tx_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %3, ptr %0, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %container.i, ptr %3, align 4
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %container.i, ptr %prev.i, align 4
  %28 = ptrtoint ptr %container.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %3, ptr %container.i, align 4
  br label %send_packet_completion.exit

send_packet_completion.exit:                      ; preds = %if.end.i.i.i, %restore_tx_packet.exit.i.send_packet_completion.exit_crit_edge
  %arrayidx.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %14
  call fastcc void @do_send_completion(ptr noundef %arrayidx.i, ptr noundef nonnull %container.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %container.i) #7
  br label %for.cond.i.backedge

while.end:                                        ; preds = %get_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @recv_packet_completion(ptr nocapture noundef readonly %ep, ptr noundef %packet) unnamed_addr #1 align 64 {
entry:
  %container = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %container) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %container, i32 0, i32 1
  %1 = ptrtoint ptr %container to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %container, ptr %container, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %container, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %packet, ptr noundef nonnull %container, ptr noundef nonnull %container) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %packet, ptr %0, align 4
  %4 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %container, ptr %packet, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %packet, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %container, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %container to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %packet, ptr %container, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %7 = ptrtoint ptr %container to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %container, align 4
  %cmp.i.not.i = icmp eq ptr %8, %container
  br i1 %cmp.i.not.i, label %list_add_tail.exit.do_recv_completion.exit_crit_edge, label %while.cond.preheader.i

list_add_tail.exit.do_recv_completion.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_recv_completion.exit

while.cond.preheader.i:                           ; preds = %list_add_tail.exit
  %9 = ptrtoint ptr %container to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %container, align 4
  %cmp.i7.not9.i = icmp eq ptr %10, %container
  br i1 %cmp.i7.not9.i, label %while.cond.preheader.i.do_recv_completion.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.do_recv_completion.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_recv_completion.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %rx.i = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 5, i32 1
  %target.i = getelementptr inbounds %struct.htc_endpoint, ptr %ep, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %11 = phi ptr [ %10, %while.body.lr.ph.i ], [ %25, %list_del.exit.i.while.body.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx.i, align 4
  %22 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %target.i, align 4
  call void %21(ptr noundef %23, ptr noundef %11) #7
  %24 = ptrtoint ptr %container to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %container, align 4
  %cmp.i7.not.i = icmp eq ptr %25, %container
  br i1 %cmp.i7.not.i, label %list_del.exit.i.do_recv_completion.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

list_del.exit.i.do_recv_completion.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_recv_completion.exit

do_recv_completion.exit:                          ; preds = %list_del.exit.i.do_recv_completion.exit_crit_edge, %while.cond.preheader.i.do_recv_completion.exit_crit_edge, %list_add_tail.exit.do_recv_completion.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %container) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @ath6kl_htc_pipe_ops, !1, !"ath6kl_htc_pipe_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1704, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1415, i32 14}
!4 = !{ptr @ath6kl_htc_pipe_create.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1420, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ath6kl_htc_pipe_create.__key.2, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1421, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ath6kl_htc_pipe_create.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1422, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1435, i32 14}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 165, i32 29}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1568, i32 15}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1576, i32 15}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1582, i32 6}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1153, i32 15}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 568, i32 7}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 569, i32 7}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 641, i32 9}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1489, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1500, i32 29}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1236, i32 3}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1258, i32 4}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1269, i32 4}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1315, i32 4}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1321, i32 7}
!46 = !{ptr @__func__.ath6kl_htc_pipe_conn_service, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1322, i32 7}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1329, i32 8}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1343, i32 3}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1348, i32 3}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1356, i32 3}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1387, i32 6}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1394, i32 7}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1211, i32 7}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1545, i32 6}
!64 = !{ptr @__func__.ath6kl_htc_pipe_tx, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1546, i32 6}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 793, i32 3}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 311, i32 29}
!70 = !{ptr @__func__.htc_try_send, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 312, i32 6}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 347, i32 8}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 362, i32 5}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 385, i32 9}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 423, i32 4}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 182, i32 29}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 113, i32 7}
!84 = !{ptr @__func__.get_htc_packet_credit_based, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 114, i32 7}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 129, i32 30}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 153, i32 9}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 190, i32 7}
!92 = !{ptr @__func__.get_htc_packet, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 191, i32 7}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 214, i32 6}
!96 = !{ptr @__func__.htc_issue_packets, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 214, i32 36}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 223, i32 4}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 233, i32 4}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 265, i32 9}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 285, i32 9}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 157, i32 29}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 49, i32 7}
!110 = !{ptr @__func__.do_send_completion, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 50, i32 7}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 70, i32 8}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1116, i32 7}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1614, i32 3}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1687, i32 8}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1635, i32 3}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1639, i32 29}
!124 = !{ptr @__func__.ath6kl_htc_pipe_add_rxbuf_multiple, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1640, i32 6}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 760, i32 14}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 963, i32 6}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 964, i32 14}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 977, i32 7}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 988, i32 7}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1002, i32 8}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 1031, i32 8}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 873, i32 8}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 885, i32 5}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 896, i32 8}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 667, i32 4}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath6kl/htc_pipe.c", i32 684, i32 6}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i8 0, i8 2}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{!"auto-init"}
