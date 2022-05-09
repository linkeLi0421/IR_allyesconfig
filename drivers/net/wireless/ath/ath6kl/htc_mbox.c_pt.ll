; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/htc_mbox.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/htc_mbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath6kl_htc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.86 }
%struct.atomic_t = type { i32 }
%union.anon.86 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.6 }
%union.anon.6 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.htc_target = type { [9 x %struct.htc_endpoint], %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], %struct.anon.129 }
%struct.htc_endpoint = type { i32, i16, %struct.list_head, %struct.list_head, %struct.htc_endpoint_credit_dist, %struct.htc_ep_callbacks, i32, i32, i32, i32, ptr, i8, i32, %struct.htc_endpoint_stats, i16, %struct.anon.125 }
%struct.htc_endpoint_credit_dist = type { %struct.list_head, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.htc_endpoint_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.125 = type { i8, i8, %struct.list_head, i8 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.129 = type { ptr, [256 x i8], i32, i8, [9 x %struct.htc_pipe_txcredit_alloc] }
%struct.htc_pipe_txcredit_alloc = type { i16, i8 }
%struct.anon.137 = type { i8, i8, i16 }
%struct.ath6kl_device = type { %struct.spinlock, %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_enable_reg, ptr, ptr }
%struct.ath6kl_irq_proc_registers = type { i8, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i32] }
%struct.ath6kl_irq_enable_reg = type { i8, i8, i8, i8 }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.126, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.127 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.126 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.127 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.128, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.128 = type { i32 }
%struct.ath6kl_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hif_scatter_req = type { %struct.list_head, i32, i32, i32, i8, ptr, i32, i32, ptr, ptr, ptr, i32, [0 x %struct.hif_scatter_item] }
%struct.hif_scatter_item = type { ptr, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.htc_frame_hdr = type <{ %union.anon.134, [2 x i8] }>
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { %union.anon.136 }
%union.anon.136 = type { i32 }
%struct.htc_record_hdr = type { i8, i8 }
%struct.htc_credit_report = type { i8, i8 }
%struct.htc_service_connect_req = type { i16, i16, %struct.htc_ep_callbacks, i32, i32, i32 }
%struct.htc_service_connect_resp = type { i8, i8, i32, i32, i8 }
%struct.htc_ready_msg = type { i16, i16, i16, i8, i8 }
%struct.htc_ready_ext_msg = type { %struct.htc_ready_msg, i8, i8 }
%struct.htc_conn_service_msg = type { i16, i16, i16, i8, i8 }
%struct.htc_conn_service_resp = type { i16, i16, i8, i8, i16, i8, i8 }
%struct.htc_frame_look_ahead = type { %union.anon.138 }
%union.anon.138 = type { i32 }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MsgPend, invalid endpoint in look-ahead: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get pending recv messages: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"host is going to stop blocking receiver for htc_stop\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"host has no rx buffers blocking receiver to prevent overrun\0A\00", [35 x i8] zeroinitializer }, align 32
@ath6kl_htc_mbox_ops = internal constant { %struct.ath6kl_htc_ops, [36 x i8] } { %struct.ath6kl_htc_ops { ptr @ath6kl_htc_mbox_create, ptr @ath6kl_htc_mbox_wait_target, ptr @ath6kl_htc_mbox_start, ptr @ath6kl_htc_mbox_conn_service, ptr @ath6kl_htc_mbox_tx, ptr @ath6kl_htc_mbox_stop, ptr @ath6kl_htc_mbox_cleanup, ptr @ath6kl_htc_mbox_flush_txep, ptr @ath6kl_htc_mbox_flush_rx_buf, ptr @ath6kl_htc_mbox_activity_changed, ptr @ath6kl_htc_mbox_get_rxbuf_num, ptr @ath6kl_htc_mbox_add_rxbuf_multiple, ptr @ath6kl_htc_mbox_credit_setup, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid ep in look-ahead: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"invalid ep in look-ahead: %d should be : %d (index:%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"payload len %d exceeds max htc : %d !\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ep %d is not connected !\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"htc rx bundle pkts %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Rx buffer requested with invalid length htc_hdr:eid %d, flags 0x%x, len %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): partial bundle detected num:%d , %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.ath6kl_htc_rx_bundle = private unnamed_addr constant [21 x i8] c"ath6kl_htc_rx_bundle\00", align 1
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"htc rx bundle depth %d pkts %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/ath/ath6kl/htc_mbox.c\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"not enough receive space for packet - padlen %d recvlen %d bufferlen %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"htc rx 0x%p hdr 0x%x len %d mbox 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"hif %s sync addr 0x%x buf 0x%p len %d request 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@__tracepoint_ath6kl_htc_rx = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath6kl/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_ath6kl_htc_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"refreshed hdr payload len (%d) in bundled recv is invalid (hdr: 0x%X)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"refreshed hdr ep (%d) does not match expected ep (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(): lk_ahd mismatch! (pPkt:0x%p flags:0x%X)\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.ath6kl_htc_rx_process_hdr = private unnamed_addr constant [26 x i8] c"ath6kl_htc_rx_process_hdr\00", align 1
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"htc rx expected lk_ahd\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"htc rx current header\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s(): invalid hdr (payload len should be :%d, CB[0] is:%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"htc rx bad packet\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"htc rx trailer len %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid record len: %d (id:%d) buf has: %d bytes left\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"htc rx bad trailer\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"htc rx lk_ahd found pre_valid 0x%x post_valid 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"htc rx next look ahead\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"htc rx bundle lk_ahd\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unhandled record: id:%d len:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"credit report ep %d credits %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"credit reduce ep %d limit %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"htc creds ep %d credits %d pkts %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"htc tx busy\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"htc tx got packet 0x%p queue depth %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"credit check need %d got %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"credit not found for ep %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"credit we need credits asap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"credit deposit ep %d credits %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"htc tx complete seqno %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"req failed (status:%d, ep:%d, len:%d creds:%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"htc tx ctxt 0x%p dist 0x%p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"htc tx complete ep %d pkts %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"htc tx no more scatter resources\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"htc tx pkts to scatter: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"htc tx scatter bytes %d entries %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"htc tx bundle sent %d pkts\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"htc tx adding (%d) pkt 0x%p seqno %d len %d remaining %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"htc tx scat complete len %d entries %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"send scatter req failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__tracepoint_ath6kl_htc_tx = external dso_local global %struct.tracepoint, align 4
@trace_ath6kl_htc_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"htc tx issue len %d seqno %d padded_len %d mbox 0x%X %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"hif write async addr 0x%x buf 0x%p len %d request 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"htc rx complete ep %d packet 0x%p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"htc rx add multiple ep id %d cnt %d len %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"htc rx blocked on ep %d, unblocking\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@ath6kl_htc_mbox_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&target->htc_lock\00", [46 x i8] zeroinitializer }, align 32
@ath6kl_htc_mbox_create.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&target->rx_lock\00", [47 x i8] zeroinitializer }, align 32
@ath6kl_htc_mbox_create.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&target->tx_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"htc target ready credits %d size %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"htc using protocol %s (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c">= 2.1\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"htc rx wait ctrl look_ahead 0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"htc_wait_for_ctrl_msg, ath6kl_htc_rx_process_hdr failed (status = %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"htc bundling allowed msg_per_bndl_max %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"htc max_rx_bndl_sz %d max_tx_bndl_sz %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"credit size: %d is not block aligned! Disabling send bundling\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"htc_ctrl_rx, got message with len:%zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"htc rx unexpected endpoint 0 message\00", [59 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"credit init total %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"credit ep %d svc_id %d credits %d per_msg %d norm %d min %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"htc connect service target 0x%p service id 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"target failed service 0x%X connect request (status:%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@ath6kl_htc_mbox_conn_service.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"htc tx ep id %d buf 0x%p len %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"htc tx overflow ep %d depth %d max %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"htc tx flushing pkt 0x%p len %d  ep %d tag 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"htc rx flush pkt 0x%p  len %d  ep %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"htc tx activity ctxt 0x%p dist 0x%p\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967171]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 256]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 256]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 16, i64 256, i64 259, i64 260]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2171, i32 15 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2226, i32 15 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2237, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2247, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"ath6kl_htc_mbox_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2912, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1485, i32 15 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1492, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1499, i32 15 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1507, i32 15 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1530, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1382, i32 15 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1935, i32 15 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1942, i32 6 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1983, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1311, i32 14 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1317, i32 6 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 28, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 29, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 29, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath6kl/trace.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 194, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 108, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1834, i32 15 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1846, i32 15 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1854, i32 14 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1856, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1857, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1858, i32 35 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1867, i32 15 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1894, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1760, i32 29 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1778, i32 15 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1797, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1703, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1710, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1729, i32 36 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1742, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1613, i32 7 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 172, i32 32 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1022, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 874, i32 30 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 617, i32 7 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 554, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 570, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 592, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 44, i32 32 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 457, i32 29 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 418, i32 13 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 428, i32 29 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 445, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 785, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 815, i32 30 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 835, i32 7 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 852, i32 29 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 727, i32 7 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 478, i32 6 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 482, i32 14 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 522, i32 6 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 525, i32 13 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 525, i32 22 }
@___asan_gen_.275 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ath/ath6kl/hif-ops.h\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 40, i32 6 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1904, i32 7 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2336, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2362, i32 8 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2848, i32 14 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2859, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2860, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2861, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2686, i32 6 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2700, i32 30 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2701, i32 49 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2701, i32 57 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2270, i32 6 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2301, i32 14 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2621, i32 6 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2630, i32 30 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2641, i32 15 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1580, i32 14 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1584, i32 5 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 59, i32 32 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 135, i32 7 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2436, i32 6 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2488, i32 15 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1128, i32 6 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 984, i32 7 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1179, i32 7 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2397, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private constant [46 x i8] c"../drivers/net/wireless/ath/ath6kl/htc_mbox.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1236, i32 7 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ath6kl_htc_mbox_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @ath6kl_htc_mbox_create.__key, ptr @.str.64, ptr @ath6kl_htc_mbox_create.__key.65, ptr @.str.66, ptr @ath6kl_htc_mbox_create.__key.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_htc_mbox_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_htc_mbox_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_htc_mbox_create.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_htc_mbox_create.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_htc_rxmsg_pending_handler(ptr noundef %target, i32 noundef %msg_look_ahead, ptr nocapture noundef writeonly %num_pkts) local_unnamed_addr #0 align 64 {
entry:
  %queue.i.i = alloca %struct.list_head, align 4
  %queue.i.i149.i = alloca %struct.list_head, align 4
  %queue.i.i.i94 = alloca %struct.list_head, align 4
  %tmp_rxq.i = alloca %struct.list_head, align 4
  %queue.i.i.i = alloca %struct.list_head, align 4
  %rx_pktq = alloca %struct.list_head, align 4
  %comp_pktq = alloca %struct.list_head, align 4
  %look_aheads = alloca [8 x i32], align 4
  %num_look_ahead = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_pktq) #9
  %0 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rx_pktq, align 4, !annotation !200
  %1 = getelementptr inbounds %struct.list_head, ptr %rx_pktq, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %comp_pktq) #9
  %3 = getelementptr inbounds %struct.list_head, ptr %comp_pktq, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %look_aheads) #9
  %4 = getelementptr inbounds i8, ptr %look_aheads, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_look_ahead) #9
  %6 = ptrtoint ptr %num_look_ahead to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %num_look_ahead, align 4
  %7 = ptrtoint ptr %comp_pktq to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %comp_pktq, ptr %comp_pktq, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %comp_pktq, ptr %3, align 4
  %9 = ptrtoint ptr %num_pkts to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_pkts, align 4
  %10 = ptrtoint ptr %look_aheads to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %msg_look_ahead, ptr %look_aheads, align 4
  %11 = lshr i32 %msg_look_ahead, 24
  %12 = trunc i32 %11 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp301 = icmp ugt i8 %12, 8
  br i1 %cmp301, label %entry.while.end.thread_crit_edge, label %if.end.lr.ph

entry.while.end.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.thread

if.end.lr.ph:                                     ; preds = %entry
  %rx_lock.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  %msg_per_bndl_max.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 15
  %block_mask.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 21
  %dev.i.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %htc_flags.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 11
  %rx_st_flags.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 12
  %ep_waiting.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 13
  %chk_irq_status_cnt = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 24
  %13 = getelementptr inbounds %struct.list_head, ptr %tmp_rxq.i, i32 0, i32 1
  %rx_bndl_enable.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 17
  %max_rx_bndl_sz.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 18
  %14 = getelementptr inbounds %struct.list_head, ptr %queue.i.i.i94, i32 0, i32 1
  %15 = getelementptr inbounds %struct.list_head, ptr %queue.i.i149.i, i32 0, i32 1
  br label %if.end

while.end.thread:                                 ; preds = %if.end22.while.end.thread_crit_edge, %entry.while.end.thread_crit_edge
  %.lcssa298 = phi i8 [ %12, %entry.while.end.thread_crit_edge ], [ %389, %if.end22.while.end.thread_crit_edge ]
  %n_fetched.0.lcssa = phi i32 [ 0, %entry.while.end.thread_crit_edge ], [ %add, %if.end22.while.end.thread_crit_edge ]
  %conv.le = zext i8 %.lcssa298 to i32
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str, i32 noundef %conv.le) #9
  br label %if.then28

if.end:                                           ; preds = %if.end22.if.end_crit_edge, %if.end.lr.ph
  %conv305.in = phi i8 [ %12, %if.end.lr.ph ], [ %389, %if.end22.if.end_crit_edge ]
  %n_fetched.0302 = phi i32 [ 0, %if.end.lr.ph ], [ %add, %if.end22.if.end_crit_edge ]
  %conv305 = zext i8 %conv305.in to i32
  %arrayidx3307 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305
  %16 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %rx_pktq, ptr %rx_pktq, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rx_pktq, ptr %1, align 4
  %18 = ptrtoint ptr %comp_pktq to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %comp_pktq, ptr %comp_pktq, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %comp_pktq, ptr %3, align 4
  %20 = ptrtoint ptr %num_look_ahead to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_look_ahead, align 4
  call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp173.i = icmp sgt i32 %21, 0
  br i1 %cmp173.i, label %for.body.lr.ph.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

for.body.lr.ph.i:                                 ; preds = %if.end
  %svc_id.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 1
  %rx_bundle_from_hdr.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 13, i32 18
  %ep_cb.sroa.5.0.ep_cb8.sroa_idx.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 5, i32 2
  %ep_cb.sroa.9.0.ep_cb8.sroa_idx.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 5, i32 4
  %ep_cb.sroa.13.0.ep_cb8.sroa_idx.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 5, i32 6
  %rx_bufq.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 3
  %target30.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 10
  %rx_alloc_thresh_hit.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 13, i32 19
  %rxalloc_thresh_byte.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 13, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0174.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc48.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %look_aheads, i32 %i.0174.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %23)
  %cmp1.i = icmp ugt i8 %23, 8
  %conv.le171.i = zext i8 %23 to i32
  br i1 %cmp1.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.le171.i.le = zext i8 %23 to i32
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.4, i32 noundef %conv.le171.i.le) #9
  br label %if.then51.i

if.end.i:                                         ; preds = %for.body.i
  %24 = ptrtoint ptr %arrayidx3307 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx3307, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.le171.i)
  %cmp8.not.i = icmp eq i32 %25, %conv.le171.i
  br i1 %cmp8.not.i, label %if.end14.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.le449 = zext i8 %23 to i32
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.5, i32 noundef %conv.i.le449, i32 noundef %25, i32 noundef %i.0174.i) #9
  br label %if.then51.i

if.end14.i:                                       ; preds = %if.end.i
  %payld_len.i = getelementptr inbounds %struct.anon.137, ptr %arrayidx.i, i32 0, i32 2
  %26 = ptrtoint ptr %payld_len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %payld_len.i, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 4090, i16 %28)
  %cmp16.i = icmp ugt i16 %28, 4090
  br i1 %cmp16.i, label %if.then18.i, label %if.end21.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv20.i = zext i16 %27 to i32
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.6, i32 noundef %conv20.i, i32 noundef 4090) #9
  br label %if.then51.i

if.end21.i:                                       ; preds = %if.end14.i
  %29 = ptrtoint ptr %svc_id.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %svc_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp23.i = icmp eq i16 %30, 0
  br i1 %cmp23.i, label %if.then25.i, label %if.end28.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.le = zext i8 %23 to i32
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.7, i32 noundef %conv.i.le) #9
  br label %if.then51.i

if.end28.i:                                       ; preds = %if.end21.i
  %flags.i = getelementptr inbounds %struct.anon.137, ptr %arrayidx.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %32)
  %tobool.not.i = icmp ult i8 %32, 16
  br i1 %tobool.not.i, label %if.end28.i.if.end38.i_crit_edge, label %if.then30.i

if.end28.i.if.end38.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.then30.i:                                      ; preds = %if.end28.i
  %33 = lshr i8 %32, 4
  %narrow.i = add nuw nsw i8 %33, 1
  %inc.i = zext i8 %narrow.i to i32
  %34 = ptrtoint ptr %msg_per_bndl_max.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_per_bndl_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %inc.i)
  %cmp34.i = icmp slt i32 %35, %inc.i
  br i1 %cmp34.i, label %if.then30.i.if.then51.i_crit_edge, label %if.end37.i

if.then30.i.if.then51.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51.i

if.end37.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %rx_bundle_from_hdr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_bundle_from_hdr.i, align 4
  %add.i = add i32 %37, 1
  store i32 %add.i, ptr %rx_bundle_from_hdr.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %inc.i) #9
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end37.i, %if.end28.i.if.end38.i_crit_edge
  %n_msg.0.i = phi i32 [ %inc.i, %if.end37.i ], [ 1, %if.end28.i.if.end38.i_crit_edge ]
  %38 = ptrtoint ptr %payld_len.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %payld_len.i, align 2
  %40 = call i16 @llvm.bswap.i16(i16 %39) #9
  %conv.i.i = zext i16 %40 to i32
  %41 = ptrtoint ptr %block_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %block_mask.i.i, align 4
  %add.i.i = add i32 %42, 6
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %neg.i.i = xor i32 %42, -1
  %and.i.i = and i32 %add1.i.i, %neg.i.i
  %43 = ptrtoint ptr %arrayidx3307 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx3307, align 4
  %45 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i.i, align 4
  %ar.i.i.i = getelementptr inbounds %struct.ath6kl_device, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %ar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ar.i.i.i, align 4
  %ctrl_ep.i.i.i = getelementptr inbounds %struct.ath6kl, ptr %48, i32 0, i32 42
  %49 = ptrtoint ptr %ctrl_ep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctrl_ep.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %44)
  %cmp.i.i.i = icmp eq i32 %50, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1665, i32 %and.i.i)
  %cmp1.i.i.i = icmp slt i32 %and.i.i, 1665
  call void @__sanitizer_cov_trace_const_cmp4(i32 3997, i32 %and.i.i)
  %cmp2.i.i.i = icmp ult i32 %and.i.i, 3997
  %cond.in.i.i.i = select i1 %cmp.i.i.i, i1 %cmp1.i.i.i, i1 %cmp2.i.i.i
  br i1 %cond.in.i.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i.le = getelementptr inbounds %struct.anon.137, ptr %arrayidx.i, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i, align 4
  %conv4.i.i = zext i8 %52 to i32
  %53 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flags.i.le, align 1
  %conv5.i.i = zext i8 %54 to i32
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.9, i32 noundef %conv4.i.i, i32 noundef %conv5.i.i, i32 noundef %conv.i.i) #9
  br label %if.then51.i

if.end.i.i:                                       ; preds = %if.end38.i
  %55 = ptrtoint ptr %ep_cb.sroa.5.0.ep_cb8.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %ep_cb.sroa.5.0.copyload.i.i = load ptr, ptr %ep_cb.sroa.5.0.ep_cb8.sroa_idx.i.i, align 4
  %56 = ptrtoint ptr %ep_cb.sroa.9.0.ep_cb8.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %ep_cb.sroa.9.0.copyload.i.i = load ptr, ptr %ep_cb.sroa.9.0.ep_cb8.sroa_idx.i.i, align 4
  %57 = ptrtoint ptr %ep_cb.sroa.13.0.ep_cb8.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %ep_cb.sroa.13.0.copyload.i.i = load i32, ptr %ep_cb.sroa.13.0.ep_cb8.sroa_idx.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %ep_cb.sroa.9.0.copyload.i.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %ep_cb.sroa.13.0.copyload.i.i)
  %cmp10.i.i = icmp sgt i32 %and.i.i, %ep_cb.sroa.13.0.copyload.i.i
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp10.i.i, i1 false
  %tobool26.not.i.i = icmp eq ptr %ep_cb.sroa.5.0.copyload.i.i, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end69.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %j.0147.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %if.end69.i.i.for.body.i.i_crit_edge ]
  br i1 %or.cond.i.i, label %if.end42.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %58 = ptrtoint ptr %rx_bufq.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %rx_bufq.i.i, align 4
  %cmp.i122.i.i = icmp ne ptr %59, %rx_bufq.i.i
  %or.cond121.i.i = select i1 %cmp.i122.i.i, i1 true, i1 %tobool26.not.i.i
  br i1 %or.cond121.i.i, label %if.else.i.i.if.end34.i.i_crit_edge, label %if.then27.i.i

if.else.i.i.if.end34.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

if.then27.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #9
  %60 = ptrtoint ptr %target30.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %target30.i.i, align 4
  %62 = ptrtoint ptr %arrayidx3307 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx3307, align 4
  call void %ep_cb.sroa.5.0.copyload.i.i(ptr noundef %61, i32 noundef %63) #9
  call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #9
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then27.i.i, %if.else.i.i.if.end34.i.i_crit_edge
  %64 = ptrtoint ptr %rx_bufq.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %rx_bufq.i.i, align 4
  %cmp.i123.not.i.i = icmp eq ptr %65, %rx_bufq.i.i
  br i1 %cmp.i123.not.i.i, label %if.end34.i.i.if.then42.i_crit_edge, label %if.else39.i.i

if.end34.i.i.if.then42.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i

if.else39.i.i:                                    ; preds = %if.end34.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %65) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else39.i.i.if.end42.thread131.i.i_crit_edge

if.else39.i.i.if.end42.thread131.i.i_crit_edge:   ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.thread131.i.i

if.end.i.i.i.i:                                   ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i.i, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %65, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %if.end42.thread131.i.i

if.end42.i.i:                                     ; preds = %for.body.i.i
  %72 = ptrtoint ptr %rx_alloc_thresh_hit.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_alloc_thresh_hit.i.i, align 4
  %add13.i.i = add i32 %73, 1
  store i32 %add13.i.i, ptr %rx_alloc_thresh_hit.i.i, align 4
  %74 = ptrtoint ptr %payld_len.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %payld_len.i, align 2
  %76 = call i16 @llvm.bswap.i16(i16 %75) #9
  %conv15.i.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %rxalloc_thresh_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rxalloc_thresh_byte.i.i, align 4
  %add17.i.i = add i32 %78, %conv15.i.i
  store i32 %add17.i.i, ptr %rxalloc_thresh_byte.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #9
  %79 = ptrtoint ptr %target30.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %target30.i.i, align 4
  %81 = ptrtoint ptr %arrayidx3307 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx3307, align 4
  %call21.i.i = call ptr %ep_cb.sroa.9.0.copyload.i.i(ptr noundef %80, i32 noundef %82, i32 noundef %and.i.i) #9
  call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #9
  %tobool43.not.i.i = icmp eq ptr %call21.i.i, null
  br i1 %tobool43.not.i.i, label %if.end42.i.i.if.then42.i_crit_edge, label %if.then50.i.i

if.end42.i.i.if.then42.i_crit_edge:               ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i

if.end42.thread131.i.i:                           ; preds = %if.end.i.i.i.i, %if.else39.i.i.if.end42.thread131.i.i_crit_edge
  %83 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 256 to ptr), ptr %65, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %tobool43.not134.i.i = icmp eq ptr %65, null
  br i1 %tobool43.not134.i.i, label %if.end42.thread131.i.i.if.then42.i_crit_edge, label %if.end46.thread.i.i

if.end42.thread131.i.i.if.then42.i_crit_edge:     ; preds = %if.end42.thread131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i

if.end46.thread.i.i:                              ; preds = %if.end42.thread131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_flags140.i.i = getelementptr inbounds %struct.htc_packet, ptr %65, i32 0, i32 8, i32 0, i32 1
  %85 = ptrtoint ptr %rx_flags140.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %rx_flags140.i.i, align 4
  %indicat_flags141.i.i = getelementptr inbounds %struct.htc_packet, ptr %65, i32 0, i32 8, i32 0, i32 2
  %86 = ptrtoint ptr %indicat_flags141.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %indicat_flags141.i.i, align 4
  %status48142.i.i = getelementptr inbounds %struct.htc_packet, ptr %65, i32 0, i32 7
  %87 = ptrtoint ptr %status48142.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %status48142.i.i, align 4
  br label %if.end54.i.i

if.then50.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_flags.i.i = getelementptr inbounds %struct.htc_packet, ptr %call21.i.i, i32 0, i32 8, i32 0, i32 1
  %indicat_flags.i.i = getelementptr inbounds %struct.htc_packet, ptr %call21.i.i, i32 0, i32 8, i32 0, i32 2
  %88 = ptrtoint ptr %indicat_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %indicat_flags.i.i, align 4
  %status48.i.i = getelementptr inbounds %struct.htc_packet, ptr %call21.i.i, i32 0, i32 7
  %89 = ptrtoint ptr %status48.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %status48.i.i, align 4
  %90 = ptrtoint ptr %rx_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 8, ptr %rx_flags.i.i, align 4
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then50.i.i, %if.end46.thread.i.i
  %rx_flags145.i.i = phi ptr [ %rx_flags140.i.i, %if.end46.thread.i.i ], [ %rx_flags.i.i, %if.then50.i.i ]
  %packet.0136143.i.i = phi ptr [ %65, %if.end46.thread.i.i ], [ %call21.i.i, %if.then50.i.i ]
  %info144.i.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0136143.i.i, i32 0, i32 8
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %call.i.i126.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %packet.0136143.i.i, ptr noundef %92, ptr noundef nonnull %rx_pktq) #9
  br i1 %call.i.i126.i.i, label %if.end.i.i127.i.i, label %if.end54.i.i.list_add_tail.exit.i.i_crit_edge

if.end54.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i

if.end.i.i127.i.i:                                ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %packet.0136143.i.i, ptr %1, align 4
  %94 = ptrtoint ptr %packet.0136143.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %rx_pktq, ptr %packet.0136143.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %packet.0136143.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev3.i.i.i.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %packet.0136143.i.i, ptr %92, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i127.i.i, %if.end54.i.i.list_add_tail.exit.i.i_crit_edge
  %97 = ptrtoint ptr %htc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %htc_flags.i.i, align 4
  %and56.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool57.not.i.i = icmp eq i32 %and56.i.i, 0
  br i1 %tobool57.not.i.i, label %if.end59.i.i, label %list_add_tail.exit.i.i.if.then51.i_crit_edge

list_add_tail.exit.i.i.if.then51.i_crit_edge:     ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51.i

if.end59.i.i:                                     ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0147.i.i)
  %tobool60.not.i.i = icmp eq i32 %j.0147.i.i, 0
  br i1 %tobool60.not.i.i, label %if.else66.i.i, label %if.then61.i.i

if.then61.i.i:                                    ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %rx_flags145.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_flags145.i.i, align 4
  %or64.i.i = or i32 %100, 2
  store i32 %or64.i.i, ptr %rx_flags145.i.i, align 4
  br label %if.end69.i.i

if.else66.i.i:                                    ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i, align 4
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.else66.i.i, %if.then61.i.i
  %storemerge.i.i = phi i32 [ %102, %if.else66.i.i ], [ -1, %if.then61.i.i ]
  %103 = ptrtoint ptr %info144.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %storemerge.i.i, ptr %info144.i.i, align 4
  %104 = ptrtoint ptr %payld_len.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %payld_len.i, align 2
  %106 = call i16 @llvm.bswap.i16(i16 %105) #9
  %conv71.i.i = zext i16 %106 to i32
  %add72.i.i = add nuw nsw i32 %conv71.i.i, 6
  %act_len.i.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0136143.i.i, i32 0, i32 5
  %107 = ptrtoint ptr %act_len.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add72.i.i, ptr %act_len.i.i, align 4
  %inc.i.i = add nuw nsw i32 %j.0147.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %n_msg.0.i
  br i1 %exitcond.not.i.i, label %for.inc.i, label %if.end69.i.i.for.body.i.i_crit_edge

if.end69.i.i.for.body.i.i_crit_edge:              ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.then42.i:                                      ; preds = %if.end42.thread131.i.i.if.then42.i_crit_edge, %if.end42.i.i.if.then42.i_crit_edge, %if.end34.i.i.if.then42.i_crit_edge
  %108 = ptrtoint ptr %rx_st_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_st_flags.i.i, align 4
  %or.i.i = or i32 %109, 1
  store i32 %or.i.i, ptr %rx_st_flags.i.i, align 4
  %110 = ptrtoint ptr %arrayidx3307 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx3307, align 4
  %112 = ptrtoint ptr %ep_waiting.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %ep_waiting.i.i, align 4
  br label %if.end6

for.inc.i:                                        ; preds = %if.end69.i.i
  %inc48.i = add nuw nsw i32 %i.0174.i, 1
  %exitcond.not.i = icmp eq i32 %inc48.i, %21
  br i1 %exitcond.not.i, label %for.inc.i.if.end6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then51.i:                                      ; preds = %list_add_tail.exit.i.i.if.then51.i_crit_edge, %if.then.i.i, %if.then30.i.if.then51.i_crit_edge, %if.then25.i, %if.then18.i, %if.then10.i, %if.then.i
  %status.1.ph.i = phi i32 [ -12, %if.then25.i ], [ -12, %if.then18.i ], [ -12, %if.then10.i ], [ -12, %if.then.i ], [ -22, %if.then.i.i ], [ -125, %list_add_tail.exit.i.i.if.then51.i_crit_edge ], [ -12, %if.then30.i.if.then51.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #9
  %113 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rx_pktq, align 4
  %cmp58.not175.i = icmp eq ptr %114, %rx_pktq
  br i1 %cmp58.not175.i, label %if.then51.i.while.end_crit_edge, label %for.body60.lr.ph.i

if.then51.i.while.end_crit_edge:                  ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.body60.lr.ph.i:                               ; preds = %if.then51.i
  %115 = getelementptr inbounds %struct.list_head, ptr %queue.i.i.i, i32 0, i32 1
  br label %for.body60.i

for.body60.i:                                     ; preds = %htc_reclaim_rxbuf.exit.i.for.body60.i_crit_edge, %for.body60.lr.ph.i
  %packet.0176.i = phi ptr [ %114, %for.body60.lr.ph.i ], [ %tmp_pkt.0.i, %htc_reclaim_rxbuf.exit.i.for.body60.i_crit_edge ]
  %116 = ptrtoint ptr %packet.0176.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %tmp_pkt.0.i = load ptr, ptr %packet.0176.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.0176.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body60.i.list_del.exit.i_crit_edge

for.body60.i.list_del.exit.i_crit_edge:           ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i114.i = getelementptr inbounds %struct.list_head, ptr %packet.0176.i, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i114.i, align 4
  %119 = ptrtoint ptr %packet.0176.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %packet.0176.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev1.i.i.i.i, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %120, ptr %118, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body60.i.list_del.exit.i_crit_edge
  %123 = ptrtoint ptr %packet.0176.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.0176.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %packet.0176.i, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %endpoint63.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0176.i, i32 0, i32 6
  %125 = ptrtoint ptr %endpoint63.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %endpoint63.i, align 4
  %rx_flags.i115.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0176.i, i32 0, i32 8, i32 0, i32 1
  %127 = ptrtoint ptr %rx_flags.i115.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_flags.i115.i, align 4
  %and.i116.i = and i32 %128, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116.i)
  %tobool.not.i117.i = icmp eq i32 %and.i116.i, 0
  %buf_start.i8.i.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0176.i, i32 0, i32 2
  %129 = ptrtoint ptr %buf_start.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %buf_start.i8.i.i, align 4
  %buf.i9.i.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0176.i, i32 0, i32 3
  %131 = ptrtoint ptr %buf.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %buf.i9.i.i, align 4
  %act_len.i10.i.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0176.i, i32 0, i32 5
  %132 = ptrtoint ptr %act_len.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %act_len.i10.i.i, align 4
  br i1 %tobool.not.i117.i, label %if.else.i119.i, label %if.then.i118.i

if.then.i118.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %status.i.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0176.i, i32 0, i32 7
  %133 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -125, ptr %status.i.i, align 4
  %rx.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %126, i32 5, i32 1
  %134 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rx.i.i, align 4
  %target1.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %126, i32 10
  %136 = ptrtoint ptr %target1.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %target1.i.i, align 4
  call void %135(ptr noundef %137, ptr noundef %packet.0176.i) #9
  br label %htc_reclaim_rxbuf.exit.i

if.else.i119.i:                                   ; preds = %list_del.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %queue.i.i.i) #9
  %138 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %queue.i.i.i, ptr %queue.i.i.i, align 4
  %139 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %queue.i.i.i, ptr %115, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %packet.0176.i, ptr noundef nonnull %queue.i.i.i, ptr noundef nonnull %queue.i.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i119.i.htc_add_rxbuf.exit.i.i_crit_edge

if.else.i119.i.htc_add_rxbuf.exit.i.i_crit_edge:  ; preds = %if.else.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_add_rxbuf.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %packet.0176.i, ptr %115, align 4
  %141 = ptrtoint ptr %packet.0176.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %queue.i.i.i, ptr %packet.0176.i, align 4
  %142 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %queue.i.i.i, ptr %prev.i.i, align 4
  %143 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %packet.0176.i, ptr %queue.i.i.i, align 4
  br label %htc_add_rxbuf.exit.i.i

htc_add_rxbuf.exit.i.i:                           ; preds = %if.end.i.i.i.i.i, %if.else.i119.i.htc_add_rxbuf.exit.i.i_crit_edge
  %call.i.i120.i = call i32 @ath6kl_htc_mbox_add_rxbuf_multiple(ptr noundef %target, ptr noundef nonnull %queue.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %queue.i.i.i) #9
  br label %htc_reclaim_rxbuf.exit.i

htc_reclaim_rxbuf.exit.i:                         ; preds = %htc_add_rxbuf.exit.i.i, %if.then.i118.i
  %cmp58.not.i = icmp eq ptr %tmp_pkt.0.i, %rx_pktq
  br i1 %cmp58.not.i, label %htc_reclaim_rxbuf.exit.i.while.end_crit_edge, label %htc_reclaim_rxbuf.exit.i.for.body60.i_crit_edge

htc_reclaim_rxbuf.exit.i.for.body60.i_crit_edge:  ; preds = %htc_reclaim_rxbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60.i

htc_reclaim_rxbuf.exit.i.while.end_crit_edge:     ; preds = %htc_reclaim_rxbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end6:                                          ; preds = %for.inc.i.if.end6_crit_edge, %if.then42.i, %if.end.if.end6_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end6
  %tmp_list.0.in.i = phi ptr [ %rx_pktq, %if.end6 ], [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ 0, %if.end6 ], [ %inc.i86, %for.cond.i.for.cond.i_crit_edge ]
  %144 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %rx_pktq
  %inc.i86 = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %get_queue_depth.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %depth.0.i)
  %cmp8 = icmp sgt i32 %depth.0.i, 1
  br i1 %cmp8, label %if.then10, label %get_queue_depth.exit.for.cond.i92.preheader_crit_edge

get_queue_depth.exit.for.cond.i92.preheader_crit_edge: ; preds = %get_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i92.preheader

if.then10:                                        ; preds = %get_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %chk_irq_status_cnt to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %chk_irq_status_cnt, align 4
  br label %for.cond.i92.preheader

for.cond.i92.preheader:                           ; preds = %if.then10, %get_queue_depth.exit.for.cond.i92.preheader_crit_edge
  br label %for.cond.i92

for.cond.i92:                                     ; preds = %for.cond.i92.for.cond.i92_crit_edge, %for.cond.i92.preheader
  %tmp_list.0.in.i87 = phi ptr [ %tmp_list.0.i89, %for.cond.i92.for.cond.i92_crit_edge ], [ %rx_pktq, %for.cond.i92.preheader ]
  %depth.0.i88 = phi i32 [ %inc.i91, %for.cond.i92.for.cond.i92_crit_edge ], [ 0, %for.cond.i92.preheader ]
  %146 = ptrtoint ptr %tmp_list.0.in.i87 to i32
  call void @__asan_load4_noabort(i32 %146)
  %tmp_list.0.i89 = load ptr, ptr %tmp_list.0.in.i87, align 4
  %cmp.i.not.i90 = icmp eq ptr %tmp_list.0.i89, %rx_pktq
  %inc.i91 = add i32 %depth.0.i88, 1
  br i1 %cmp.i.not.i90, label %get_queue_depth.exit93, label %for.cond.i92.for.cond.i92_crit_edge

for.cond.i92.for.cond.i92_crit_edge:              ; preds = %for.cond.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i92

get_queue_depth.exit93:                           ; preds = %for.cond.i92
  %add = add i32 %depth.0.i88, %n_fetched.0302
  %147 = ptrtoint ptr %num_look_ahead to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %num_look_ahead, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_rxq.i) #9
  %148 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile ptr, ptr %rx_pktq, align 4
  %cmp.i.not184.i = icmp eq ptr %149, %rx_pktq
  br i1 %cmp.i.not184.i, label %get_queue_depth.exit93.ath6kl_htc_rx_fetch.exit.thread_crit_edge, label %get_queue_depth.exit93.while.body.i_crit_edge

get_queue_depth.exit93.while.body.i_crit_edge:    ; preds = %get_queue_depth.exit93
  br label %while.body.i

get_queue_depth.exit93.ath6kl_htc_rx_fetch.exit.thread_crit_edge: ; preds = %get_queue_depth.exit93
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_rx_fetch.exit.thread

while.body.i:                                     ; preds = %if.end22.i.while.body.i_crit_edge, %get_queue_depth.exit93.while.body.i_crit_edge
  %part_bundle.0.off0185.i = phi i1 [ %part_bundle.2.off0175.i, %if.end22.i.while.body.i_crit_edge ], [ false, %get_queue_depth.exit93.while.body.i_crit_edge ]
  %150 = ptrtoint ptr %tmp_rxq.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %tmp_rxq.i, ptr %tmp_rxq.i, align 4
  %151 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %tmp_rxq.i, ptr %13, align 4
  %152 = ptrtoint ptr %rx_bndl_enable.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rx_bndl_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool1.not.i = icmp eq i32 %153, 0
  br i1 %tobool1.not.i, label %while.body.i.if.then13.i_crit_edge, label %while.body.i.for.cond.i.i_crit_edge

while.body.i.for.cond.i.i_crit_edge:              ; preds = %while.body.i
  br label %for.cond.i.i

while.body.i.if.then13.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %while.body.i.for.cond.i.i_crit_edge
  %tmp_list.0.in.i.i = phi ptr [ %tmp_list.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %rx_pktq, %while.body.i.for.cond.i.i_crit_edge ]
  %depth.0.i.i = phi i32 [ %inc.i.i96, %for.cond.i.i.for.cond.i.i_crit_edge ], [ 0, %while.body.i.for.cond.i.i_crit_edge ]
  %154 = ptrtoint ptr %tmp_list.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %tmp_list.0.i.i = load ptr, ptr %tmp_list.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp_list.0.i.i, %rx_pktq
  %inc.i.i96 = add i32 %depth.0.i.i, 1
  br i1 %cmp.i.not.i.i, label %get_queue_depth.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

get_queue_depth.exit.i:                           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %depth.0.i.i)
  %cmp.i = icmp sgt i32 %depth.0.i.i, 1
  br i1 %cmp.i, label %if.then.i97, label %get_queue_depth.exit.i.if.then13.i_crit_edge

get_queue_depth.exit.i.if.then13.i_crit_edge:     ; preds = %get_queue_depth.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then.i97:                                      ; preds = %get_queue_depth.exit.i
  %155 = ptrtoint ptr %max_rx_bndl_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %max_rx_bndl_sz.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %if.then.i97
  %tmp_list.0.in.i.i.i = phi ptr [ %rx_pktq, %if.then.i97 ], [ %tmp_list.0.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %depth.0.i.i.i = phi i32 [ 0, %if.then.i97 ], [ %inc.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %157 = ptrtoint ptr %tmp_list.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %tmp_list.0.i.i.i = load ptr, ptr %tmp_list.0.in.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %tmp_list.0.i.i.i, %rx_pktq
  %inc.i.i.i = add i32 %depth.0.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %get_queue_depth.exit.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

get_queue_depth.exit.i.i:                         ; preds = %for.cond.i.i.i
  %158 = ptrtoint ptr %msg_per_bndl_max.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %msg_per_bndl_max.i, align 4
  br label %for.cond.i127.i.i

for.cond.i127.i.i:                                ; preds = %for.cond.i127.i.i.for.cond.i127.i.i_crit_edge, %get_queue_depth.exit.i.i
  %tmp_list.0.in.i122.i.i = phi ptr [ %rx_pktq, %get_queue_depth.exit.i.i ], [ %tmp_list.0.i124.i.i, %for.cond.i127.i.i.for.cond.i127.i.i_crit_edge ]
  %depth.0.i123.i.i = phi i32 [ 0, %get_queue_depth.exit.i.i ], [ %inc.i126.i.i, %for.cond.i127.i.i.for.cond.i127.i.i_crit_edge ]
  %160 = ptrtoint ptr %tmp_list.0.in.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %tmp_list.0.i124.i.i = load ptr, ptr %tmp_list.0.in.i122.i.i, align 4
  %cmp.i.not.i125.i.i = icmp eq ptr %tmp_list.0.i124.i.i, %rx_pktq
  %inc.i126.i.i = add i32 %depth.0.i123.i.i, 1
  br i1 %cmp.i.not.i125.i.i, label %get_queue_depth.exit128.i.i, label %for.cond.i127.i.i.for.cond.i127.i.i_crit_edge

for.cond.i127.i.i.for.cond.i127.i.i_crit_edge:    ; preds = %for.cond.i127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i127.i.i

get_queue_depth.exit128.i.i:                      ; preds = %for.cond.i127.i.i
  %161 = call i32 @llvm.smin.i32(i32 %depth.0.i.i.i, i32 %159) #9
  %sub.i.i = sub i32 %depth.0.i123.i.i, %161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp2.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp2.i.i, label %get_queue_depth.exit128.i.i.for.cond.i134.i.i_crit_edge, label %get_queue_depth.exit128.i.i.if.end.i.i98_crit_edge

get_queue_depth.exit128.i.i.if.end.i.i98_crit_edge: ; preds = %get_queue_depth.exit128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i98

get_queue_depth.exit128.i.i.for.cond.i134.i.i_crit_edge: ; preds = %get_queue_depth.exit128.i.i
  br label %for.cond.i134.i.i

for.cond.i134.i.i:                                ; preds = %for.cond.i134.i.i.for.cond.i134.i.i_crit_edge, %get_queue_depth.exit128.i.i.for.cond.i134.i.i_crit_edge
  %tmp_list.0.in.i129.i.i = phi ptr [ %tmp_list.0.i131.i.i, %for.cond.i134.i.i.for.cond.i134.i.i_crit_edge ], [ %rx_pktq, %get_queue_depth.exit128.i.i.for.cond.i134.i.i_crit_edge ]
  %depth.0.i130.i.i = phi i32 [ %inc.i133.i.i, %for.cond.i134.i.i.for.cond.i134.i.i_crit_edge ], [ 0, %get_queue_depth.exit128.i.i.for.cond.i134.i.i_crit_edge ]
  %162 = ptrtoint ptr %tmp_list.0.in.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %tmp_list.0.i131.i.i = load ptr, ptr %tmp_list.0.in.i129.i.i, align 4
  %cmp.i.not.i132.i.i = icmp eq ptr %tmp_list.0.i131.i.i, %rx_pktq
  %inc.i133.i.i = add i32 %depth.0.i130.i.i, 1
  br i1 %cmp.i.not.i132.i.i, label %get_queue_depth.exit135.i.i, label %for.cond.i134.i.i.for.cond.i134.i.i_crit_edge

for.cond.i134.i.i.for.cond.i134.i.i_crit_edge:    ; preds = %for.cond.i134.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i134.i.i

get_queue_depth.exit135.i.i:                      ; preds = %for.cond.i134.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.ath6kl_htc_rx_bundle, i32 noundef %depth.0.i130.i.i, i32 noundef %161) #9
  br label %if.end.i.i98

if.end.i.i98:                                     ; preds = %get_queue_depth.exit135.i.i, %get_queue_depth.exit128.i.i.if.end.i.i98_crit_edge
  %part_bundle.addr.0.off0.i.i = phi i1 [ true, %get_queue_depth.exit135.i.i ], [ %part_bundle.0.off0185.i, %get_queue_depth.exit128.i.i.if.end.i.i98_crit_edge ]
  br label %for.cond.i141.i.i

for.cond.i141.i.i:                                ; preds = %for.cond.i141.i.i.for.cond.i141.i.i_crit_edge, %if.end.i.i98
  %tmp_list.0.in.i136.i.i = phi ptr [ %rx_pktq, %if.end.i.i98 ], [ %tmp_list.0.i138.i.i, %for.cond.i141.i.i.for.cond.i141.i.i_crit_edge ]
  %depth.0.i137.i.i = phi i32 [ 0, %if.end.i.i98 ], [ %inc.i140.i.i, %for.cond.i141.i.i.for.cond.i141.i.i_crit_edge ]
  %163 = ptrtoint ptr %tmp_list.0.in.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %tmp_list.0.i138.i.i = load ptr, ptr %tmp_list.0.in.i136.i.i, align 4
  %cmp.i.not.i139.i.i = icmp eq ptr %tmp_list.0.i138.i.i, %rx_pktq
  %inc.i140.i.i = add i32 %depth.0.i137.i.i, 1
  br i1 %cmp.i.not.i139.i.i, label %get_queue_depth.exit142.i.i, label %for.cond.i141.i.i.for.cond.i141.i.i_crit_edge

for.cond.i141.i.i.for.cond.i141.i.i_crit_edge:    ; preds = %for.cond.i141.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i141.i.i

get_queue_depth.exit142.i.i:                      ; preds = %for.cond.i141.i.i
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %depth.0.i137.i.i, i32 noundef %161) #9
  %164 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev.i.i.i, align 4
  %ar.i.i = getelementptr inbounds %struct.ath6kl_device, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %ar.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ar.i.i, align 4
  %hif_ops.i.i.i = getelementptr inbounds %struct.ath6kl, ptr %167, i32 0, i32 5
  %168 = ptrtoint ptr %hif_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hif_ops.i.i.i, align 4
  %scatter_req_get.i.i.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %scatter_req_get.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %scatter_req_get.i.i.i, align 4
  %call.i.i.i99 = call ptr %171(ptr noundef %167) #9
  %cmp6.i.i = icmp eq ptr %call.i.i.i99, null
  br i1 %cmp6.i.i, label %get_queue_depth.exit142.i.i.if.end.i116_crit_edge, label %for.cond.preheader.i.i

get_queue_depth.exit142.i.i.if.end.i116_crit_edge: ; preds = %get_queue_depth.exit142.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i116

for.cond.preheader.i.i:                           ; preds = %get_queue_depth.exit142.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp9158.i.i = icmp sgt i32 %161, 0
  br i1 %cmp9158.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %sub18.i.i = add nsw i32 %161, -1
  br label %for.body.i.i101

for.body.i.i101:                                  ; preds = %for.inc.i.i.for.body.i.i101_crit_edge, %for.body.lr.ph.i.i
  %rem_space.0161.i.i = phi i32 [ %156, %for.body.lr.ph.i.i ], [ %sub12.i.i, %for.inc.i.i.for.body.i.i101_crit_edge ]
  %len.0160.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add60.i.i, %for.inc.i.i.for.body.i.i101_crit_edge ]
  %i.0159.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i109.i, %for.inc.i.i.for.body.i.i101_crit_edge ]
  %172 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rx_pktq, align 4
  %call.i.i.i.i100 = call zeroext i1 @__list_del_entry_valid(ptr noundef %173) #9
  br i1 %call.i.i.i.i100, label %if.end.i.i.i.i104, label %for.body.i.i101.list_del.exit.i.i_crit_edge

for.body.i.i101.list_del.exit.i.i_crit_edge:      ; preds = %for.body.i.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i.i104:                                ; preds = %for.body.i.i101
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i102 = getelementptr inbounds %struct.list_head, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %prev.i.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %prev.i.i.i.i102, align 4
  %176 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %173, align 4
  %prev1.i.i.i.i.i103 = getelementptr inbounds %struct.list_head, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %prev1.i.i.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %175, ptr %prev1.i.i.i.i.i103, align 4
  %179 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %177, ptr %175, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i104, %for.body.i.i101.list_del.exit.i.i_crit_edge
  %180 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr inttoptr (i32 256 to ptr), ptr %173, align 4
  %prev.i.i.i105 = getelementptr inbounds %struct.list_head, ptr %173, i32 0, i32 1
  %181 = ptrtoint ptr %prev.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i105, align 4
  %act_len.i.i106 = getelementptr inbounds %struct.htc_packet, ptr %173, i32 0, i32 5
  %182 = ptrtoint ptr %act_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %act_len.i.i106, align 4
  %184 = ptrtoint ptr %block_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %block_mask.i.i, align 4
  %add.i.i107 = add i32 %185, %183
  %neg.i.i108 = xor i32 %185, -1
  %and.i.i109 = and i32 %add.i.i107, %neg.i.i108
  %sub12.i.i = sub i32 %rem_space.0161.i.i, %and.i.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12.i.i)
  %cmp13.i.i = icmp slt i32 %sub12.i.i, 0
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.end16.i.i

if.then14.i.i:                                    ; preds = %list_del.exit.i.i
  %186 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rx_pktq, align 4
  %call.i.i143.i.i = call zeroext i1 @__list_add_valid(ptr noundef %173, ptr noundef nonnull %rx_pktq, ptr noundef %187) #9
  br i1 %call.i.i143.i.i, label %if.end.i.i144.i.i, label %if.then14.i.i.for.end.i.i_crit_edge

if.then14.i.i.for.end.i.i_crit_edge:              ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end.i.i144.i.i:                                ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %prev1.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %173, ptr %prev1.i.i.i.i110, align 4
  %189 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %187, ptr %173, align 4
  %190 = ptrtoint ptr %prev.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %rx_pktq, ptr %prev.i.i.i105, align 4
  %191 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %173, ptr %rx_pktq, align 4
  br label %for.end.i.i

if.end16.i.i:                                     ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0159.i.i, i32 %sub18.i.i)
  %cmp19.i.i = icmp slt i32 %i.0159.i.i, %sub18.i.i
  %or.cond.i.i111 = select i1 %part_bundle.addr.0.off0.i.i, i1 true, i1 %cmp19.i.i
  br i1 %or.cond.i.i111, label %if.then20.i.i, label %if.end16.i.i.if.end21.i.i_crit_edge

if.end16.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i.i

if.then20.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_flags.i.i112 = getelementptr inbounds %struct.htc_packet, ptr %173, i32 0, i32 8, i32 0, i32 1
  %192 = ptrtoint ptr %rx_flags.i.i112 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rx_flags.i.i112, align 4
  %or.i.i113 = or i32 %193, 1
  store i32 %or.i.i113, ptr %rx_flags.i.i112, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then20.i.i, %if.end16.i.i.if.end21.i.i_crit_edge
  %buf.i.i = getelementptr inbounds %struct.htc_packet, ptr %173, i32 0, i32 3
  %194 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %buf.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.hif_scatter_req, ptr %call.i.i.i99, i32 0, i32 12, i32 %i.0159.i.i
  %196 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %195, ptr %arrayidx.i.i, align 4
  %len25.i.i = getelementptr %struct.hif_scatter_req, ptr %call.i.i.i99, i32 0, i32 12, i32 %i.0159.i.i, i32 1
  %197 = ptrtoint ptr %len25.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %and.i.i109, ptr %len25.i.i, align 4
  %rx_flags27.i.i = getelementptr inbounds %struct.htc_packet, ptr %173, i32 0, i32 8, i32 0, i32 1
  %198 = ptrtoint ptr %rx_flags27.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %rx_flags27.i.i, align 4
  %or28.i.i = or i32 %199, 4
  store i32 %or28.i.i, ptr %rx_flags27.i.i, align 4
  %200 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %13, align 4
  %call.i.i146.i.i = call zeroext i1 @__list_add_valid(ptr noundef %173, ptr noundef %201, ptr noundef nonnull %tmp_rxq.i) #9
  br i1 %call.i.i146.i.i, label %if.end.i.i148.i.i, label %if.end21.i.i.list_add_tail.exit.i.i114_crit_edge

if.end21.i.i.list_add_tail.exit.i.i114_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i114

if.end.i.i148.i.i:                                ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %202 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %173, ptr %13, align 4
  %203 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %tmp_rxq.i, ptr %173, align 4
  %204 = ptrtoint ptr %prev.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev.i.i.i105, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %173, ptr %201, align 4
  br label %list_add_tail.exit.i.i114

list_add_tail.exit.i.i114:                        ; preds = %if.end.i.i148.i.i, %if.end21.i.i.list_add_tail.exit.i.i114_crit_edge
  %206 = ptrtoint ptr %len25.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %len25.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool33.not.i.i = icmp eq i32 %207, 0
  br i1 %tobool33.not.i.i, label %do.end.i.i, label %list_add_tail.exit.i.i114.for.inc.i.i_crit_edge, !prof !201

list_add_tail.exit.i.i114.for.inc.i.i_crit_edge:  ; preds = %list_add_tail.exit.i.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %list_add_tail.exit.i.i114
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1983, i32 noundef 9, ptr noundef null) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %list_add_tail.exit.i.i114.for.inc.i.i_crit_edge
  %208 = ptrtoint ptr %len25.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %len25.i.i, align 4
  %add60.i.i = add i32 %209, %len.0160.i.i
  %inc.i109.i = add nuw nsw i32 %i.0159.i.i, 1
  %exitcond.not.i.i115 = icmp eq i32 %inc.i109.i, %161
  br i1 %exitcond.not.i.i115, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i101_crit_edge

for.inc.i.i.for.body.i.i101_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i101

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.i144.i.i, %if.then14.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %i.0157.i.i = phi i32 [ %i.0159.i.i, %if.end.i.i144.i.i ], [ %i.0159.i.i, %if.then14.i.i.for.end.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %161, %for.inc.i.i.for.end.i.i_crit_edge ]
  %len.0155.i.i = phi i32 [ %len.0160.i.i, %if.end.i.i144.i.i ], [ %len.0160.i.i, %if.then14.i.i.for.end.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %add60.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %len61.i.i = getelementptr inbounds %struct.hif_scatter_req, ptr %call.i.i.i99, i32 0, i32 3
  %210 = ptrtoint ptr %len61.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %len.0155.i.i, ptr %len61.i.i, align 4
  %scat_entries.i.i = getelementptr inbounds %struct.hif_scatter_req, ptr %call.i.i.i99, i32 0, i32 7
  %211 = ptrtoint ptr %scat_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %i.0157.i.i, ptr %scat_entries.i.i, align 4
  %212 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev.i.i.i, align 4
  %call63.i.i = call i32 @ath6kl_hif_submit_scat_req(ptr noundef %213, ptr noundef nonnull %call.i.i.i99, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %tobool64.not.i.i = icmp eq i32 %call63.i.i, 0
  %214 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev.i.i.i, align 4
  %ar68.i.i = getelementptr inbounds %struct.ath6kl_device, ptr %215, i32 0, i32 4
  %216 = ptrtoint ptr %ar68.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ar68.i.i, align 4
  %hif_ops.i149.i.i = getelementptr inbounds %struct.ath6kl, ptr %217, i32 0, i32 5
  %218 = ptrtoint ptr %hif_ops.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hif_ops.i149.i.i, align 4
  %scatter_req_add.i.i.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %219, i32 0, i32 5
  %220 = ptrtoint ptr %scatter_req_add.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %scatter_req_add.i.i.i, align 4
  call void %221(ptr noundef %217, ptr noundef nonnull %call.i.i.i99) #9
  br i1 %tobool64.not.i.i, label %for.end.i.i.if.end.i116_crit_edge, label %for.end.i.i.fail_rx.i_crit_edge

for.end.i.i.fail_rx.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_rx.i

for.end.i.i.if.end.i116_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i116

if.end.i116:                                      ; preds = %for.end.i.i.if.end.i116_crit_edge, %get_queue_depth.exit142.i.i.if.end.i116_crit_edge
  %fetched_pkts.1171.i = phi i32 [ %i.0157.i.i, %for.end.i.i.if.end.i116_crit_edge ], [ 0, %get_queue_depth.exit142.i.i.if.end.i116_crit_edge ]
  %222 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile ptr, ptr %rx_pktq, align 4
  %cmp.i110.i = icmp ne ptr %223, %rx_pktq
  %spec.select.i = select i1 %cmp.i110.i, i1 true, i1 %part_bundle.0.off0185.i
  %224 = ptrtoint ptr %tmp_rxq.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load volatile ptr, ptr %tmp_rxq.i, align 4
  %cmp.i.not.i112.i = icmp eq ptr %225, %tmp_rxq.i
  br i1 %cmp.i.not.i112.i, label %if.end.i116.if.end11.i_crit_edge, label %if.then.i.i117

if.end.i116.if.end11.i_crit_edge:                 ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then.i.i117:                                   ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #11
  %226 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %3, align 4
  %228 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %13, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %225, i32 0, i32 1
  %230 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %227, ptr %prev3.i.i.i, align 4
  %231 = ptrtoint ptr %227 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %225, ptr %227, align 4
  %232 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %comp_pktq, ptr %229, align 4
  store ptr %229, ptr %3, align 4
  %233 = ptrtoint ptr %tmp_rxq.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store volatile ptr %tmp_rxq.i, ptr %tmp_rxq.i, align 4
  store ptr %tmp_rxq.i, ptr %13, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then.i.i117, %if.end.i116.if.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fetched_pkts.1171.i)
  %tobool12.not.i = icmp eq i32 %fetched_pkts.1171.i, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.then13.i_crit_edge, label %if.end11.i.if.end22.i_crit_edge

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end11.i.if.then13.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i.if.then13.i_crit_edge, %get_queue_depth.exit.i.if.then13.i_crit_edge, %while.body.i.if.then13.i_crit_edge
  %part_bundle.2.off0176.i = phi i1 [ %spec.select.i, %if.end11.i.if.then13.i_crit_edge ], [ %part_bundle.0.off0185.i, %while.body.i.if.then13.i_crit_edge ], [ %part_bundle.0.off0185.i, %get_queue_depth.exit.i.if.then13.i_crit_edge ]
  %234 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %rx_pktq, align 4
  %completion.i = getelementptr inbounds %struct.htc_packet, ptr %235, i32 0, i32 9
  %236 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr null, ptr %completion.i, align 4
  %237 = load volatile ptr, ptr %rx_pktq, align 4
  %cmp.i.not.i115.i = icmp eq ptr %237, %rx_pktq
  br i1 %cmp.i.not.i115.i, label %if.then13.i.if.then16.i_crit_edge, label %list_is_singular.exit.i

if.then13.i.if.then16.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

list_is_singular.exit.i:                          ; preds = %if.then13.i
  %238 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %1, align 4
  %cmp.i117.not.i = icmp eq ptr %237, %239
  br i1 %cmp.i117.not.i, label %list_is_singular.exit.i.if.end17.i_crit_edge, label %list_is_singular.exit.i.if.then16.i_crit_edge

list_is_singular.exit.i.if.then16.i_crit_edge:    ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

list_is_singular.exit.i.if.end17.i_crit_edge:     ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then16.i:                                      ; preds = %list_is_singular.exit.i.if.then16.i_crit_edge, %if.then13.i.if.then16.i_crit_edge
  %rx_flags.i = getelementptr inbounds %struct.htc_packet, ptr %235, i32 0, i32 8, i32 0, i32 1
  %240 = ptrtoint ptr %rx_flags.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %rx_flags.i, align 4
  %or.i = or i32 %241, 1
  store i32 %or.i, ptr %rx_flags.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %list_is_singular.exit.i.if.end17.i_crit_edge
  %act_len.i = getelementptr inbounds %struct.htc_packet, ptr %235, i32 0, i32 5
  %242 = ptrtoint ptr %act_len.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %act_len.i, align 4
  %call18.i = call fastcc i32 @ath6kl_htc_rx_packet(ptr noundef %target, ptr noundef %235, i32 noundef %243) #9
  %call.i.i118.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %235) #9
  br i1 %call.i.i118.i, label %if.end.i.i.i118, label %if.end17.i.__list_del_entry.exit.i.i_crit_edge

if.end17.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i118:                                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i119.i = getelementptr inbounds %struct.list_head, ptr %235, i32 0, i32 1
  %244 = ptrtoint ptr %prev.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %prev.i.i119.i, align 4
  %246 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %235, align 4
  %prev1.i.i.i120.i = getelementptr inbounds %struct.list_head, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %prev1.i.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %245, ptr %prev1.i.i.i120.i, align 4
  %249 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %249)
  store volatile ptr %247, ptr %245, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i118, %if.end17.i.__list_del_entry.exit.i.i_crit_edge
  %250 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %13, align 4
  %call.i.i.i121.i = call zeroext i1 @__list_add_valid(ptr noundef %235, ptr noundef %251, ptr noundef nonnull %tmp_rxq.i) #9
  br i1 %call.i.i.i121.i, label %if.end.i.i.i122.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit.i

if.end.i.i.i122.i:                                ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %252 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %235, ptr %13, align 4
  %253 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %tmp_rxq.i, ptr %235, align 4
  %prev3.i.i.i.i119 = getelementptr inbounds %struct.list_head, ptr %235, i32 0, i32 1
  %254 = ptrtoint ptr %prev3.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %251, ptr %prev3.i.i.i.i119, align 4
  %255 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %255)
  store volatile ptr %235, ptr %251, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i122.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i120, label %list_move_tail.exit.i.fail_rx.i_crit_edge

list_move_tail.exit.i.fail_rx.i_crit_edge:        ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_rx.i

if.end21.i120:                                    ; preds = %list_move_tail.exit.i
  %256 = ptrtoint ptr %tmp_rxq.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load volatile ptr, ptr %tmp_rxq.i, align 4
  %cmp.i.not.i124.i = icmp eq ptr %257, %tmp_rxq.i
  br i1 %cmp.i.not.i124.i, label %if.end21.i120.if.end22.i_crit_edge, label %if.then.i128.i

if.end21.i120.if.end22.i_crit_edge:               ; preds = %if.end21.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then.i128.i:                                   ; preds = %if.end21.i120
  call void @__sanitizer_cov_trace_pc() #11
  %258 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %3, align 4
  %260 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %13, align 4
  %prev3.i.i127.i = getelementptr inbounds %struct.list_head, ptr %257, i32 0, i32 1
  %262 = ptrtoint ptr %prev3.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %259, ptr %prev3.i.i127.i, align 4
  %263 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %257, ptr %259, align 4
  %264 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %comp_pktq, ptr %261, align 4
  store ptr %261, ptr %3, align 4
  %265 = ptrtoint ptr %tmp_rxq.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store volatile ptr %tmp_rxq.i, ptr %tmp_rxq.i, align 4
  store ptr %tmp_rxq.i, ptr %13, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then.i128.i, %if.end21.i120.if.end22.i_crit_edge, %if.end11.i.if.end22.i_crit_edge
  %part_bundle.2.off0175.i = phi i1 [ %spec.select.i, %if.end11.i.if.end22.i_crit_edge ], [ %part_bundle.2.off0176.i, %if.end21.i120.if.end22.i_crit_edge ], [ %part_bundle.2.off0176.i, %if.then.i128.i ]
  %266 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load volatile ptr, ptr %rx_pktq, align 4
  %cmp.i.not.i121 = icmp eq ptr %267, %rx_pktq
  br i1 %cmp.i.not.i121, label %if.end22.i.ath6kl_htc_rx_fetch.exit.thread_crit_edge, label %if.end22.i.while.body.i_crit_edge

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end22.i.ath6kl_htc_rx_fetch.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_rx_fetch.exit.thread

fail_rx.i:                                        ; preds = %list_move_tail.exit.i.fail_rx.i_crit_edge, %for.end.i.i.fail_rx.i_crit_edge
  %status.0.i = phi i32 [ %call63.i.i, %for.end.i.i.fail_rx.i_crit_edge ], [ %call18.i, %list_move_tail.exit.i.fail_rx.i_crit_edge ]
  %268 = ptrtoint ptr %rx_pktq to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %rx_pktq, align 4
  %cmp33.not186.i = icmp eq ptr %269, %rx_pktq
  br i1 %cmp33.not186.i, label %fail_rx.i.for.end.i_crit_edge, label %fail_rx.i.for.body.i124_crit_edge

fail_rx.i.for.body.i124_crit_edge:                ; preds = %fail_rx.i
  br label %for.body.i124

fail_rx.i.for.end.i_crit_edge:                    ; preds = %fail_rx.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i124:                                    ; preds = %htc_reclaim_rxbuf.exit.i137.for.body.i124_crit_edge, %fail_rx.i.for.body.i124_crit_edge
  %packet.0187.i = phi ptr [ %tmp_pkt.0.i123, %htc_reclaim_rxbuf.exit.i137.for.body.i124_crit_edge ], [ %269, %fail_rx.i.for.body.i124_crit_edge ]
  %270 = ptrtoint ptr %packet.0187.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %tmp_pkt.0.i123 = load ptr, ptr %packet.0187.i, align 4
  %call.i.i131.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.0187.i) #9
  br i1 %call.i.i131.i, label %if.end.i.i134.i, label %for.body.i124.list_del.exit.i129_crit_edge

for.body.i124.list_del.exit.i129_crit_edge:       ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i129

if.end.i.i134.i:                                  ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i132.i = getelementptr inbounds %struct.list_head, ptr %packet.0187.i, i32 0, i32 1
  %271 = ptrtoint ptr %prev.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %prev.i.i132.i, align 4
  %273 = ptrtoint ptr %packet.0187.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %packet.0187.i, align 4
  %prev1.i.i.i133.i = getelementptr inbounds %struct.list_head, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %prev1.i.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %272, ptr %prev1.i.i.i133.i, align 4
  %276 = ptrtoint ptr %272 to i32
  call void @__asan_store4_noabort(i32 %276)
  store volatile ptr %274, ptr %272, align 4
  br label %list_del.exit.i129

list_del.exit.i129:                               ; preds = %if.end.i.i134.i, %for.body.i124.list_del.exit.i129_crit_edge
  %277 = ptrtoint ptr %packet.0187.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.0187.i, align 4
  %prev.i135.i = getelementptr inbounds %struct.list_head, ptr %packet.0187.i, i32 0, i32 1
  %278 = ptrtoint ptr %prev.i135.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i135.i, align 4
  %endpoint36.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0187.i, i32 0, i32 6
  %279 = ptrtoint ptr %endpoint36.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %endpoint36.i, align 4
  %rx_flags.i137.i = getelementptr inbounds %struct.htc_packet, ptr %packet.0187.i, i32 0, i32 8, i32 0, i32 1
  %281 = ptrtoint ptr %rx_flags.i137.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %rx_flags.i137.i, align 4
  %and.i138.i = and i32 %282, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138.i)
  %tobool.not.i.i125 = icmp eq i32 %and.i138.i, 0
  %buf_start.i8.i.i126 = getelementptr inbounds %struct.htc_packet, ptr %packet.0187.i, i32 0, i32 2
  %283 = ptrtoint ptr %buf_start.i8.i.i126 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %buf_start.i8.i.i126, align 4
  %buf.i9.i.i127 = getelementptr inbounds %struct.htc_packet, ptr %packet.0187.i, i32 0, i32 3
  %285 = ptrtoint ptr %buf.i9.i.i127 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %284, ptr %buf.i9.i.i127, align 4
  %act_len.i10.i.i128 = getelementptr inbounds %struct.htc_packet, ptr %packet.0187.i, i32 0, i32 5
  %286 = ptrtoint ptr %act_len.i10.i.i128 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %act_len.i10.i.i128, align 4
  br i1 %tobool.not.i.i125, label %if.else.i.i134, label %if.then.i139.i

if.then.i139.i:                                   ; preds = %list_del.exit.i129
  call void @__sanitizer_cov_trace_pc() #11
  %status.i.i130 = getelementptr inbounds %struct.htc_packet, ptr %packet.0187.i, i32 0, i32 7
  %287 = ptrtoint ptr %status.i.i130 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 -125, ptr %status.i.i130, align 4
  %rx.i.i131 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %280, i32 5, i32 1
  %288 = ptrtoint ptr %rx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %rx.i.i131, align 4
  %target1.i.i132 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %280, i32 10
  %290 = ptrtoint ptr %target1.i.i132 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %target1.i.i132, align 4
  call void %289(ptr noundef %291, ptr noundef %packet.0187.i) #9
  br label %htc_reclaim_rxbuf.exit.i137

if.else.i.i134:                                   ; preds = %list_del.exit.i129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %queue.i.i.i94) #9
  %292 = ptrtoint ptr %queue.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %292)
  store volatile ptr %queue.i.i.i94, ptr %queue.i.i.i94, align 4
  %293 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %queue.i.i.i94, ptr %14, align 4
  %call.i.i.i.i.i133 = call zeroext i1 @__list_add_valid(ptr noundef %packet.0187.i, ptr noundef nonnull %queue.i.i.i94, ptr noundef nonnull %queue.i.i.i94) #9
  br i1 %call.i.i.i.i.i133, label %if.end.i.i.i.i.i135, label %if.else.i.i134.htc_add_rxbuf.exit.i.i136_crit_edge

if.else.i.i134.htc_add_rxbuf.exit.i.i136_crit_edge: ; preds = %if.else.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_add_rxbuf.exit.i.i136

if.end.i.i.i.i.i135:                              ; preds = %if.else.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  %294 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %packet.0187.i, ptr %14, align 4
  %295 = ptrtoint ptr %packet.0187.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %queue.i.i.i94, ptr %packet.0187.i, align 4
  %296 = ptrtoint ptr %prev.i135.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %queue.i.i.i94, ptr %prev.i135.i, align 4
  %297 = ptrtoint ptr %queue.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %297)
  store volatile ptr %packet.0187.i, ptr %queue.i.i.i94, align 4
  br label %htc_add_rxbuf.exit.i.i136

htc_add_rxbuf.exit.i.i136:                        ; preds = %if.end.i.i.i.i.i135, %if.else.i.i134.htc_add_rxbuf.exit.i.i136_crit_edge
  %call.i.i140.i = call i32 @ath6kl_htc_mbox_add_rxbuf_multiple(ptr noundef %target, ptr noundef nonnull %queue.i.i.i94) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %queue.i.i.i94) #9
  br label %htc_reclaim_rxbuf.exit.i137

htc_reclaim_rxbuf.exit.i137:                      ; preds = %htc_add_rxbuf.exit.i.i136, %if.then.i139.i
  %cmp33.not.i = icmp eq ptr %tmp_pkt.0.i123, %rx_pktq
  br i1 %cmp33.not.i, label %htc_reclaim_rxbuf.exit.i137.for.end.i_crit_edge, label %htc_reclaim_rxbuf.exit.i137.for.body.i124_crit_edge

htc_reclaim_rxbuf.exit.i137.for.body.i124_crit_edge: ; preds = %htc_reclaim_rxbuf.exit.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i124

htc_reclaim_rxbuf.exit.i137.for.end.i_crit_edge:  ; preds = %htc_reclaim_rxbuf.exit.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %htc_reclaim_rxbuf.exit.i137.for.end.i_crit_edge, %fail_rx.i.for.end.i_crit_edge
  %298 = ptrtoint ptr %tmp_rxq.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %tmp_rxq.i, align 4
  %cmp53.not188.i = icmp eq ptr %299, %tmp_rxq.i
  br i1 %cmp53.not188.i, label %for.end.i.ath6kl_htc_rx_fetch.exit_crit_edge, label %for.end.i.for.body55.i_crit_edge

for.end.i.for.body55.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body55.i

for.end.i.ath6kl_htc_rx_fetch.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_rx_fetch.exit

for.body55.i:                                     ; preds = %htc_reclaim_rxbuf.exit167.i.for.body55.i_crit_edge, %for.end.i.for.body55.i_crit_edge
  %packet.1189.i = phi ptr [ %tmp_pkt.1.i, %htc_reclaim_rxbuf.exit167.i.for.body55.i_crit_edge ], [ %299, %for.end.i.for.body55.i_crit_edge ]
  %300 = ptrtoint ptr %packet.1189.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %tmp_pkt.1.i = load ptr, ptr %packet.1189.i, align 4
  %call.i.i142.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.1189.i) #9
  br i1 %call.i.i142.i, label %if.end.i.i145.i, label %for.body55.i.list_del.exit148.i_crit_edge

for.body55.i.list_del.exit148.i_crit_edge:        ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit148.i

if.end.i.i145.i:                                  ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i143.i = getelementptr inbounds %struct.list_head, ptr %packet.1189.i, i32 0, i32 1
  %301 = ptrtoint ptr %prev.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %prev.i.i143.i, align 4
  %303 = ptrtoint ptr %packet.1189.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %packet.1189.i, align 4
  %prev1.i.i.i144.i = getelementptr inbounds %struct.list_head, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %prev1.i.i.i144.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %302, ptr %prev1.i.i.i144.i, align 4
  %306 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %306)
  store volatile ptr %304, ptr %302, align 4
  br label %list_del.exit148.i

list_del.exit148.i:                               ; preds = %if.end.i.i145.i, %for.body55.i.list_del.exit148.i_crit_edge
  %307 = ptrtoint ptr %packet.1189.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.1189.i, align 4
  %prev.i146.i = getelementptr inbounds %struct.list_head, ptr %packet.1189.i, i32 0, i32 1
  %308 = ptrtoint ptr %prev.i146.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i146.i, align 4
  %endpoint58.i = getelementptr inbounds %struct.htc_packet, ptr %packet.1189.i, i32 0, i32 6
  %309 = ptrtoint ptr %endpoint58.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %endpoint58.i, align 4
  %rx_flags.i150.i = getelementptr inbounds %struct.htc_packet, ptr %packet.1189.i, i32 0, i32 8, i32 0, i32 1
  %311 = ptrtoint ptr %rx_flags.i150.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %rx_flags.i150.i, align 4
  %and.i151.i = and i32 %312, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151.i)
  %tobool.not.i152.i = icmp eq i32 %and.i151.i, 0
  %buf_start.i8.i153.i = getelementptr inbounds %struct.htc_packet, ptr %packet.1189.i, i32 0, i32 2
  %313 = ptrtoint ptr %buf_start.i8.i153.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %buf_start.i8.i153.i, align 4
  %buf.i9.i154.i = getelementptr inbounds %struct.htc_packet, ptr %packet.1189.i, i32 0, i32 3
  %315 = ptrtoint ptr %buf.i9.i154.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %314, ptr %buf.i9.i154.i, align 4
  %act_len.i10.i155.i = getelementptr inbounds %struct.htc_packet, ptr %packet.1189.i, i32 0, i32 5
  %316 = ptrtoint ptr %act_len.i10.i155.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 0, ptr %act_len.i10.i155.i, align 4
  br i1 %tobool.not.i152.i, label %if.else.i161.i, label %if.then.i159.i

if.then.i159.i:                                   ; preds = %list_del.exit148.i
  call void @__sanitizer_cov_trace_pc() #11
  %status.i156.i = getelementptr inbounds %struct.htc_packet, ptr %packet.1189.i, i32 0, i32 7
  %317 = ptrtoint ptr %status.i156.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 -125, ptr %status.i156.i, align 4
  %rx.i157.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %310, i32 5, i32 1
  %318 = ptrtoint ptr %rx.i157.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %rx.i157.i, align 4
  %target1.i158.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %310, i32 10
  %320 = ptrtoint ptr %target1.i158.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %target1.i158.i, align 4
  call void %319(ptr noundef %321, ptr noundef %packet.1189.i) #9
  br label %htc_reclaim_rxbuf.exit167.i

if.else.i161.i:                                   ; preds = %list_del.exit148.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %queue.i.i149.i) #9
  %322 = ptrtoint ptr %queue.i.i149.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store volatile ptr %queue.i.i149.i, ptr %queue.i.i149.i, align 4
  %323 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %queue.i.i149.i, ptr %15, align 4
  %call.i.i.i.i160.i = call zeroext i1 @__list_add_valid(ptr noundef %packet.1189.i, ptr noundef nonnull %queue.i.i149.i, ptr noundef nonnull %queue.i.i149.i) #9
  br i1 %call.i.i.i.i160.i, label %if.end.i.i.i.i163.i, label %if.else.i161.i.htc_add_rxbuf.exit.i165.i_crit_edge

if.else.i161.i.htc_add_rxbuf.exit.i165.i_crit_edge: ; preds = %if.else.i161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_add_rxbuf.exit.i165.i

if.end.i.i.i.i163.i:                              ; preds = %if.else.i161.i
  call void @__sanitizer_cov_trace_pc() #11
  %324 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %packet.1189.i, ptr %15, align 4
  %325 = ptrtoint ptr %packet.1189.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %queue.i.i149.i, ptr %packet.1189.i, align 4
  %326 = ptrtoint ptr %prev.i146.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %queue.i.i149.i, ptr %prev.i146.i, align 4
  %327 = ptrtoint ptr %queue.i.i149.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store volatile ptr %packet.1189.i, ptr %queue.i.i149.i, align 4
  br label %htc_add_rxbuf.exit.i165.i

htc_add_rxbuf.exit.i165.i:                        ; preds = %if.end.i.i.i.i163.i, %if.else.i161.i.htc_add_rxbuf.exit.i165.i_crit_edge
  %call.i.i164.i = call i32 @ath6kl_htc_mbox_add_rxbuf_multiple(ptr noundef %target, ptr noundef nonnull %queue.i.i149.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %queue.i.i149.i) #9
  br label %htc_reclaim_rxbuf.exit167.i

htc_reclaim_rxbuf.exit167.i:                      ; preds = %htc_add_rxbuf.exit.i165.i, %if.then.i159.i
  %cmp53.not.i = icmp eq ptr %tmp_pkt.1.i, %tmp_rxq.i
  br i1 %cmp53.not.i, label %htc_reclaim_rxbuf.exit167.i.ath6kl_htc_rx_fetch.exit_crit_edge, label %htc_reclaim_rxbuf.exit167.i.for.body55.i_crit_edge

htc_reclaim_rxbuf.exit167.i.for.body55.i_crit_edge: ; preds = %htc_reclaim_rxbuf.exit167.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body55.i

htc_reclaim_rxbuf.exit167.i.ath6kl_htc_rx_fetch.exit_crit_edge: ; preds = %htc_reclaim_rxbuf.exit167.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_rx_fetch.exit

ath6kl_htc_rx_fetch.exit.thread:                  ; preds = %if.end22.i.ath6kl_htc_rx_fetch.exit.thread_crit_edge, %get_queue_depth.exit93.ath6kl_htc_rx_fetch.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_rxq.i) #9
  br label %if.then15

ath6kl_htc_rx_fetch.exit:                         ; preds = %htc_reclaim_rxbuf.exit167.i.ath6kl_htc_rx_fetch.exit_crit_edge, %for.end.i.ath6kl_htc_rx_fetch.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_rxq.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool14.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool14.not, label %ath6kl_htc_rx_fetch.exit.if.then15_crit_edge, label %ath6kl_htc_rx_fetch.exit.if.end16_crit_edge

ath6kl_htc_rx_fetch.exit.if.end16_crit_edge:      ; preds = %ath6kl_htc_rx_fetch.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

ath6kl_htc_rx_fetch.exit.if.then15_crit_edge:     ; preds = %ath6kl_htc_rx_fetch.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %ath6kl_htc_rx_fetch.exit.if.then15_crit_edge, %ath6kl_htc_rx_fetch.exit.thread
  %ep_cb.sroa.5.0.ep_cb1.sroa_idx.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 5, i32 2
  %328 = ptrtoint ptr %ep_cb.sroa.5.0.ep_cb1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %ep_cb.sroa.5.0.copyload.i = load ptr, ptr %ep_cb.sroa.5.0.ep_cb1.sroa_idx.i, align 4
  %ep_cb.sroa.11.0.ep_cb1.sroa_idx.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 5, i32 7
  %329 = ptrtoint ptr %ep_cb.sroa.11.0.ep_cb1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %ep_cb.sroa.11.0.copyload.i = load i32, ptr %ep_cb.sroa.11.0.ep_cb1.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ep_cb.sroa.11.0.copyload.i)
  %cmp.i139 = icmp sgt i32 %ep_cb.sroa.11.0.copyload.i, 0
  br i1 %cmp.i139, label %if.then.i141, label %if.then15.if.end16_crit_edge

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then.i141:                                     ; preds = %if.then15
  %target.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 10
  %330 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %target.i, align 4
  %rx_lock.i140 = getelementptr inbounds %struct.htc_target, ptr %331, i32 0, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i140) #9
  %rx_bufq.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv305, i32 3
  br label %for.cond.i.i147

for.cond.i.i147:                                  ; preds = %for.cond.i.i147.for.cond.i.i147_crit_edge, %if.then.i141
  %tmp_list.0.in.i.i142 = phi ptr [ %rx_bufq.i, %if.then.i141 ], [ %tmp_list.0.i.i144, %for.cond.i.i147.for.cond.i.i147_crit_edge ]
  %depth.0.i.i143 = phi i32 [ 0, %if.then.i141 ], [ %inc.i.i146, %for.cond.i.i147.for.cond.i.i147_crit_edge ]
  %332 = ptrtoint ptr %tmp_list.0.in.i.i142 to i32
  call void @__asan_load4_noabort(i32 %332)
  %tmp_list.0.i.i144 = load ptr, ptr %tmp_list.0.in.i.i142, align 4
  %cmp.i.not.i.i145 = icmp eq ptr %tmp_list.0.i.i144, %rx_bufq.i
  %inc.i.i146 = add i32 %depth.0.i.i143, 1
  br i1 %cmp.i.not.i.i145, label %get_queue_depth.exit.i148, label %for.cond.i.i147.for.cond.i.i147_crit_edge

for.cond.i.i147.for.cond.i.i147_crit_edge:        ; preds = %for.cond.i.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i147

get_queue_depth.exit.i148:                        ; preds = %for.cond.i.i147
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0.i.i143, i32 %ep_cb.sroa.11.0.copyload.i)
  %cmp3.i = icmp slt i32 %depth.0.i.i143, %ep_cb.sroa.11.0.copyload.i
  %333 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %target.i, align 4
  %rx_lock6.i = getelementptr inbounds %struct.htc_target, ptr %334, i32 0, i32 8
  call void @_raw_spin_unlock_bh(ptr noundef %rx_lock6.i) #9
  br i1 %cmp3.i, label %if.then4.i, label %get_queue_depth.exit.i148.if.end16_crit_edge

get_queue_depth.exit.i148.if.end16_crit_edge:     ; preds = %get_queue_depth.exit.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then4.i:                                       ; preds = %get_queue_depth.exit.i148
  call void @__sanitizer_cov_trace_pc() #11
  %335 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %target.i, align 4
  %337 = ptrtoint ptr %arrayidx3307 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %arrayidx3307, align 4
  call void %ep_cb.sroa.5.0.copyload.i(ptr noundef %336, i32 noundef %338) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then4.i, %get_queue_depth.exit.i148.if.end16_crit_edge, %if.then15.if.end16_crit_edge, %ath6kl_htc_rx_fetch.exit.if.end16_crit_edge
  %339 = ptrtoint ptr %comp_pktq to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %comp_pktq, align 4
  %cmp.not62.i = icmp eq ptr %340, %comp_pktq
  br i1 %cmp.not62.i, label %if.end16.ath6kl_htc_rx_process_packets.exit_crit_edge, label %if.end16.for.body.i152_crit_edge

if.end16.for.body.i152_crit_edge:                 ; preds = %if.end16
  br label %for.body.i152

if.end16.ath6kl_htc_rx_process_packets.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_rx_process_packets.exit

for.body.i152:                                    ; preds = %if.end21.i172.for.body.i152_crit_edge, %if.end16.for.body.i152_crit_edge
  %packet.063.i = phi ptr [ %tmp_pkt.064.i, %if.end21.i172.for.body.i152_crit_edge ], [ %340, %if.end16.for.body.i152_crit_edge ]
  %341 = ptrtoint ptr %packet.063.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %tmp_pkt.064.i = load ptr, ptr %packet.063.i, align 4
  %endpoint6.i = getelementptr inbounds %struct.htc_packet, ptr %packet.063.i, i32 0, i32 6
  %342 = ptrtoint ptr %endpoint6.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %endpoint6.i, align 4
  %arrayidx.i149 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %343
  %status7.i = getelementptr inbounds %struct.htc_packet, ptr %packet.063.i, i32 0, i32 7
  %344 = ptrtoint ptr %status7.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %status7.i, align 4
  %buf.i = getelementptr inbounds %struct.htc_packet, ptr %packet.063.i, i32 0, i32 3
  %346 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %buf.i, align 4
  %act_len.i150 = getelementptr inbounds %struct.htc_packet, ptr %packet.063.i, i32 0, i32 5
  %348 = ptrtoint ptr %act_len.i150 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %act_len.i150, align 4
  call fastcc void @trace_ath6kl_htc_rx(i32 noundef %345, i32 noundef %343, ptr noundef %347, i32 noundef %349) #9
  %call.i = call fastcc i32 @ath6kl_htc_rx_process_hdr(ptr noundef %target, ptr noundef %packet.063.i, ptr noundef nonnull %look_aheads, ptr noundef nonnull %num_look_ahead) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i151 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i151, label %if.end.i154, label %for.body.i152.while.end_crit_edge

for.body.i152.while.end_crit_edge:                ; preds = %for.body.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.i154:                                      ; preds = %for.body.i152
  %call.i.i.i153 = call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.063.i) #9
  br i1 %call.i.i.i153, label %if.end.i.i.i157, label %if.end.i154.list_del.exit.i160_crit_edge

if.end.i154.list_del.exit.i160_crit_edge:         ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i160

if.end.i.i.i157:                                  ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i155 = getelementptr inbounds %struct.list_head, ptr %packet.063.i, i32 0, i32 1
  %350 = ptrtoint ptr %prev.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %prev.i.i.i155, align 4
  %352 = ptrtoint ptr %packet.063.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %packet.063.i, align 4
  %prev1.i.i.i.i156 = getelementptr inbounds %struct.list_head, ptr %353, i32 0, i32 1
  %354 = ptrtoint ptr %prev1.i.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %351, ptr %prev1.i.i.i.i156, align 4
  %355 = ptrtoint ptr %351 to i32
  call void @__asan_store4_noabort(i32 %355)
  store volatile ptr %353, ptr %351, align 4
  br label %list_del.exit.i160

list_del.exit.i160:                               ; preds = %if.end.i.i.i157, %if.end.i154.list_del.exit.i160_crit_edge
  %356 = ptrtoint ptr %packet.063.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.063.i, align 4
  %prev.i.i158 = getelementptr inbounds %struct.list_head, ptr %packet.063.i, i32 0, i32 1
  %357 = ptrtoint ptr %prev.i.i158 to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i158, align 4
  %358 = ptrtoint ptr %comp_pktq to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load volatile ptr, ptr %comp_pktq, align 4
  %cmp.i.not.i159 = icmp eq ptr %359, %comp_pktq
  br i1 %cmp.i.not.i159, label %if.then12.i, label %list_del.exit.i160.if.end17.sink.split.i_crit_edge

list_del.exit.i160.if.end17.sink.split.i_crit_edge: ; preds = %list_del.exit.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.sink.split.i

if.then12.i:                                      ; preds = %list_del.exit.i160
  %360 = ptrtoint ptr %num_look_ahead to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %num_look_ahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %cmp13.i = icmp sgt i32 %361, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i.thread.i

if.else.i.thread.i:                               ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_pkts.i57.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %343, i32 13, i32 14
  br label %ath6kl_htc_rx_update_stats.exit.sink.split.i

if.then14.i:                                      ; preds = %if.then12.i
  %362 = ptrtoint ptr %look_aheads to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %look_aheads, align 4
  %lk_ahd.addr.sroa.0.0.extract.shift.i.i = lshr i32 %363, 24
  %364 = ptrtoint ptr %endpoint6.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %endpoint6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lk_ahd.addr.sroa.0.0.extract.shift.i.i, i32 %365)
  %cmp.i54.i = icmp eq i32 %lk_ahd.addr.sroa.0.0.extract.shift.i.i, %365
  br i1 %cmp.i54.i, label %if.then.i.i163, label %if.then14.i.if.end17.i166_crit_edge

if.then14.i.if.end17.i166_crit_edge:              ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i166

if.then.i.i163:                                   ; preds = %if.then14.i
  %rx_bufq.i.i161 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %343, i32 3
  %366 = ptrtoint ptr %rx_bufq.i.i161 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load volatile ptr, ptr %rx_bufq.i.i161, align 4
  %cmp.i.not.i.i162 = icmp eq ptr %367, %rx_bufq.i.i161
  br i1 %cmp.i.not.i.i162, label %if.then.i.i163.if.end17.i166_crit_edge, label %if.then.i.i163.if.end17.sink.split.i_crit_edge

if.then.i.i163.if.end17.sink.split.i_crit_edge:   ; preds = %if.then.i.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.sink.split.i

if.then.i.i163.if.end17.i166_crit_edge:           ; preds = %if.then.i.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i166

if.end17.sink.split.i:                            ; preds = %if.then.i.i163.if.end17.sink.split.i_crit_edge, %list_del.exit.i160.if.end17.sink.split.i_crit_edge
  %indicat_flags.i = getelementptr inbounds %struct.htc_packet, ptr %packet.063.i, i32 0, i32 8, i32 0, i32 2
  %368 = ptrtoint ptr %indicat_flags.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %indicat_flags.i, align 4
  %or.i.i164 = or i32 %369, 1
  store i32 %or.i.i164, ptr %indicat_flags.i, align 4
  br label %if.end17.i166

if.end17.i166:                                    ; preds = %if.end17.sink.split.i, %if.then.i.i163.if.end17.i166_crit_edge, %if.then14.i.if.end17.i166_crit_edge
  %370 = ptrtoint ptr %num_look_ahead to i32
  call void @__asan_load4_noabort(i32 %370)
  %.pr.i = load i32, ptr %num_look_ahead, align 4
  %rx_pkts.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %343, i32 13, i32 14
  %371 = ptrtoint ptr %rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %rx_pkts.i.i, align 4
  %inc.i.i165 = add i32 %372, 1
  store i32 %inc.i.i165, ptr %rx_pkts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp.i55.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp.i55.i, label %if.then.i56.i, label %if.else.i.i167

if.then.i56.i:                                    ; preds = %if.end17.i166
  call void @__sanitizer_cov_trace_pc() #11
  %rx_lkahds.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %343, i32 13, i32 15
  br label %ath6kl_htc_rx_update_stats.exit.sink.split.i

if.else.i.i167:                                   ; preds = %if.end17.i166
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp3.i.i = icmp sgt i32 %.pr.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else.i.i167.ath6kl_htc_rx_update_stats.exit.i_crit_edge

if.else.i.i167.ath6kl_htc_rx_update_stats.exit.i_crit_edge: ; preds = %if.else.i.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_rx_update_stats.exit.i

if.then4.i.i:                                     ; preds = %if.else.i.i167
  call void @__sanitizer_cov_trace_pc() #11
  %rx_bundle_lkahd.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %343, i32 13, i32 17
  br label %ath6kl_htc_rx_update_stats.exit.sink.split.i

ath6kl_htc_rx_update_stats.exit.sink.split.i:     ; preds = %if.then4.i.i, %if.then.i56.i, %if.else.i.thread.i
  %rx_pkts.i57.sink67.i = phi ptr [ %rx_pkts.i57.i, %if.else.i.thread.i ], [ %rx_bundle_lkahd.i.i, %if.then4.i.i ], [ %rx_lkahds.i.i, %if.then.i56.i ]
  %373 = ptrtoint ptr %rx_pkts.i57.sink67.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %rx_pkts.i57.sink67.i, align 4
  %inc.i58.i = add i32 %374, 1
  store i32 %inc.i58.i, ptr %rx_pkts.i57.sink67.i, align 4
  br label %ath6kl_htc_rx_update_stats.exit.i

ath6kl_htc_rx_update_stats.exit.i:                ; preds = %ath6kl_htc_rx_update_stats.exit.sink.split.i, %if.else.i.i167.ath6kl_htc_rx_update_stats.exit.i_crit_edge
  %rx_flags.i168 = getelementptr inbounds %struct.htc_packet, ptr %packet.063.i, i32 0, i32 8, i32 0, i32 1
  %375 = ptrtoint ptr %rx_flags.i168 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %rx_flags.i168, align 4
  %and.i = and i32 %376, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i169 = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i169, label %ath6kl_htc_rx_update_stats.exit.i.if.end21.i172_crit_edge, label %if.then20.i

ath6kl_htc_rx_update_stats.exit.i.if.end21.i172_crit_edge: ; preds = %ath6kl_htc_rx_update_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i172

if.then20.i:                                      ; preds = %ath6kl_htc_rx_update_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_bundl.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %343, i32 13, i32 16
  %377 = ptrtoint ptr %rx_bundl.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %rx_bundl.i, align 4
  %add.i170 = add i32 %378, 1
  store i32 %add.i170, ptr %rx_bundl.i, align 4
  br label %if.end21.i172

if.end21.i172:                                    ; preds = %if.then20.i, %ath6kl_htc_rx_update_stats.exit.i.if.end21.i172_crit_edge
  %379 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx.i149, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.60, i32 noundef %380, ptr noundef %packet.063.i) #9
  %rx.i.i171 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %343, i32 5, i32 1
  %381 = ptrtoint ptr %rx.i.i171 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %rx.i.i171, align 4
  %target.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %343, i32 10
  %383 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %target.i.i, align 4
  call void %382(ptr noundef %384, ptr noundef %packet.063.i) #9
  %cmp.not.i = icmp eq ptr %tmp_pkt.064.i, %comp_pktq
  br i1 %cmp.not.i, label %if.end21.i172.ath6kl_htc_rx_process_packets.exit_crit_edge, label %if.end21.i172.for.body.i152_crit_edge

if.end21.i172.for.body.i152_crit_edge:            ; preds = %if.end21.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i152

if.end21.i172.ath6kl_htc_rx_process_packets.exit_crit_edge: ; preds = %if.end21.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_rx_process_packets.exit

ath6kl_htc_rx_process_packets.exit:               ; preds = %if.end21.i172.ath6kl_htc_rx_process_packets.exit_crit_edge, %if.end16.ath6kl_htc_rx_process_packets.exit_crit_edge
  %385 = ptrtoint ptr %num_look_ahead to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %num_look_ahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool19.not.not = icmp eq i32 %386, 0
  br i1 %tobool19.not.not, label %ath6kl_htc_rx_process_packets.exit.if.end50_crit_edge, label %if.end22

ath6kl_htc_rx_process_packets.exit.if.end50_crit_edge: ; preds = %ath6kl_htc_rx_process_packets.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end22:                                         ; preds = %ath6kl_htc_rx_process_packets.exit
  %387 = ptrtoint ptr %chk_irq_status_cnt to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 1, ptr %chk_irq_status_cnt, align 4
  %388 = ptrtoint ptr %look_aheads to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %look_aheads, align 4
  %cmp = icmp ugt i8 %389, 8
  br i1 %cmp, label %if.end22.while.end.thread_crit_edge, label %if.end22.if.end_crit_edge

if.end22.if.end_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end22.while.end.thread_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.thread

while.end:                                        ; preds = %for.body.i152.while.end_crit_edge, %htc_reclaim_rxbuf.exit.i.while.end_crit_edge, %if.then51.i.while.end_crit_edge
  %n_fetched.1 = phi i32 [ %n_fetched.0302, %if.then51.i.while.end_crit_edge ], [ %n_fetched.0302, %htc_reclaim_rxbuf.exit.i.while.end_crit_edge ], [ %add, %for.body.i152.while.end_crit_edge ]
  %status.0 = phi i32 [ %status.1.ph.i, %if.then51.i.while.end_crit_edge ], [ %status.1.ph.i, %htc_reclaim_rxbuf.exit.i.while.end_crit_edge ], [ %call.i, %for.body.i152.while.end_crit_edge ]
  %390 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %390, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status.0, label %while.end.if.then28_crit_edge [
    i32 0, label %while.end.if.end50_crit_edge
    i32 -125, label %while.end.if.end29_crit_edge
  ]

while.end.if.end29_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

while.end.if.end50_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

while.end.if.then28_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then28:                                        ; preds = %while.end.if.then28_crit_edge, %while.end.thread
  %status.0201 = phi i32 [ -12, %while.end.thread ], [ %status.0, %while.end.if.then28_crit_edge ]
  %n_fetched.1198 = phi i32 [ %n_fetched.0.lcssa, %while.end.thread ], [ %n_fetched.1, %while.end.if.then28_crit_edge ]
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.1, i32 noundef %status.0201) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %while.end.if.end29_crit_edge
  %status.0199 = phi i32 [ %status.0, %while.end.if.end29_crit_edge ], [ %status.0201, %if.then28 ]
  %n_fetched.1196 = phi i32 [ %n_fetched.1, %while.end.if.end29_crit_edge ], [ %n_fetched.1198, %if.then28 ]
  %391 = ptrtoint ptr %comp_pktq to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %comp_pktq, align 4
  %cmp35.not309 = icmp eq ptr %392, %comp_pktq
  br i1 %cmp35.not309, label %if.end29.for.end_crit_edge, label %for.body.lr.ph

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end29
  %393 = getelementptr inbounds %struct.list_head, ptr %queue.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %htc_reclaim_rxbuf.exit.for.body_crit_edge, %for.body.lr.ph
  %packets.0310 = phi ptr [ %392, %for.body.lr.ph ], [ %tmp_pkt.0, %htc_reclaim_rxbuf.exit.for.body_crit_edge ]
  %394 = ptrtoint ptr %packets.0310 to i32
  call void @__asan_load4_noabort(i32 %394)
  %tmp_pkt.0 = load ptr, ptr %packets.0310, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %packets.0310) #9
  br i1 %call.i.i, label %if.end.i.i175, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i175:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i174 = getelementptr inbounds %struct.list_head, ptr %packets.0310, i32 0, i32 1
  %395 = ptrtoint ptr %prev.i.i174 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %prev.i.i174, align 4
  %397 = ptrtoint ptr %packets.0310 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %packets.0310, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %398, i32 0, i32 1
  %399 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %396, ptr %prev1.i.i.i, align 4
  %400 = ptrtoint ptr %396 to i32
  call void @__asan_store4_noabort(i32 %400)
  store volatile ptr %398, ptr %396, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i175, %for.body.list_del.exit_crit_edge
  %401 = ptrtoint ptr %packets.0310 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr inttoptr (i32 256 to ptr), ptr %packets.0310, align 4
  %prev.i176 = getelementptr inbounds %struct.list_head, ptr %packets.0310, i32 0, i32 1
  %402 = ptrtoint ptr %prev.i176 to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i176, align 4
  %endpoint39 = getelementptr inbounds %struct.htc_packet, ptr %packets.0310, i32 0, i32 6
  %403 = ptrtoint ptr %endpoint39 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %endpoint39, align 4
  %rx_flags.i177 = getelementptr inbounds %struct.htc_packet, ptr %packets.0310, i32 0, i32 8, i32 0, i32 1
  %405 = ptrtoint ptr %rx_flags.i177 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %rx_flags.i177, align 4
  %and.i178 = and i32 %406, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i178)
  %tobool.not.i179 = icmp eq i32 %and.i178, 0
  %buf_start.i8.i = getelementptr inbounds %struct.htc_packet, ptr %packets.0310, i32 0, i32 2
  %407 = ptrtoint ptr %buf_start.i8.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %buf_start.i8.i, align 4
  %buf.i9.i = getelementptr inbounds %struct.htc_packet, ptr %packets.0310, i32 0, i32 3
  %409 = ptrtoint ptr %buf.i9.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %408, ptr %buf.i9.i, align 4
  %act_len.i10.i = getelementptr inbounds %struct.htc_packet, ptr %packets.0310, i32 0, i32 5
  %410 = ptrtoint ptr %act_len.i10.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 0, ptr %act_len.i10.i, align 4
  br i1 %tobool.not.i179, label %if.else.i, label %if.then.i180

if.then.i180:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %status.i = getelementptr inbounds %struct.htc_packet, ptr %packets.0310, i32 0, i32 7
  %411 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 -125, ptr %status.i, align 4
  %rx.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %404, i32 5, i32 1
  %412 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %rx.i, align 4
  %target1.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %404, i32 10
  %414 = ptrtoint ptr %target1.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %target1.i, align 4
  call void %413(ptr noundef %415, ptr noundef %packets.0310) #9
  br label %htc_reclaim_rxbuf.exit

if.else.i:                                        ; preds = %list_del.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %queue.i.i) #9
  %416 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store volatile ptr %queue.i.i, ptr %queue.i.i, align 4
  %417 = ptrtoint ptr %393 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %queue.i.i, ptr %393, align 4
  %call.i.i.i.i181 = call zeroext i1 @__list_add_valid(ptr noundef %packets.0310, ptr noundef nonnull %queue.i.i, ptr noundef nonnull %queue.i.i) #9
  br i1 %call.i.i.i.i181, label %if.end.i.i.i.i183, label %if.else.i.htc_add_rxbuf.exit.i_crit_edge

if.else.i.htc_add_rxbuf.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_add_rxbuf.exit.i

if.end.i.i.i.i183:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %418 = ptrtoint ptr %393 to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %packets.0310, ptr %393, align 4
  %419 = ptrtoint ptr %packets.0310 to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr %queue.i.i, ptr %packets.0310, align 4
  %420 = ptrtoint ptr %prev.i176 to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr %queue.i.i, ptr %prev.i176, align 4
  %421 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store volatile ptr %packets.0310, ptr %queue.i.i, align 4
  br label %htc_add_rxbuf.exit.i

htc_add_rxbuf.exit.i:                             ; preds = %if.end.i.i.i.i183, %if.else.i.htc_add_rxbuf.exit.i_crit_edge
  %call.i.i184 = call i32 @ath6kl_htc_mbox_add_rxbuf_multiple(ptr noundef %target, ptr noundef nonnull %queue.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %queue.i.i) #9
  br label %htc_reclaim_rxbuf.exit

htc_reclaim_rxbuf.exit:                           ; preds = %htc_add_rxbuf.exit.i, %if.then.i180
  %cmp35.not = icmp eq ptr %tmp_pkt.0, %comp_pktq
  br i1 %cmp35.not, label %htc_reclaim_rxbuf.exit.for.end_crit_edge, label %htc_reclaim_rxbuf.exit.for.body_crit_edge

htc_reclaim_rxbuf.exit.for.body_crit_edge:        ; preds = %htc_reclaim_rxbuf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

htc_reclaim_rxbuf.exit.for.end_crit_edge:         ; preds = %htc_reclaim_rxbuf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %htc_reclaim_rxbuf.exit.for.end_crit_edge, %if.end29.for.end_crit_edge
  %htc_flags = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 11
  %422 = ptrtoint ptr %htc_flags to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %htc_flags, align 4
  %and = and i32 %423, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %for.end.if.end50_crit_edge, label %if.then47

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.2) #9
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %424 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %dev, align 4
  %call48 = call i32 @ath6kl_hif_rx_control(ptr noundef %425, i1 noundef zeroext false) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %for.end.if.end50_crit_edge, %while.end.if.end50_crit_edge, %ath6kl_htc_rx_process_packets.exit.if.end50_crit_edge
  %status.0200 = phi i32 [ %status.0, %while.end.if.end50_crit_edge ], [ %status.0199, %for.end.if.end50_crit_edge ], [ %status.0199, %if.then47 ], [ 0, %ath6kl_htc_rx_process_packets.exit.if.end50_crit_edge ]
  %n_fetched.1197 = phi i32 [ %n_fetched.1, %while.end.if.end50_crit_edge ], [ %n_fetched.1196, %for.end.if.end50_crit_edge ], [ %n_fetched.1196, %if.then47 ], [ %add, %ath6kl_htc_rx_process_packets.exit.if.end50_crit_edge ]
  %rx_st_flags = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 12
  %426 = ptrtoint ptr %rx_st_flags to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %rx_st_flags, align 4
  %and51 = and i32 %427, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end56_crit_edge, label %if.then53

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.3) #9
  %dev54 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %428 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dev54, align 4
  %call55 = call i32 @ath6kl_hif_rx_control(ptr noundef %429, i1 noundef zeroext false) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50.if.end56_crit_edge
  %430 = ptrtoint ptr %num_pkts to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %n_fetched.1197, ptr %num_pkts, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_look_ahead) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %look_aheads) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %comp_pktq) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_pktq) #9
  ret i32 %status.0200
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_hif_rx_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ath6kl_htc_mbox_attach(ptr nocapture noundef writeonly %ar) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_ops = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 6
  %0 = ptrtoint ptr %htc_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ath6kl_htc_mbox_ops, ptr %htc_ops, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_htc_rx_packet(ptr nocapture noundef readonly %target, ptr noundef %packet, i32 noundef %rx_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %block_mask = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 21
  %0 = ptrtoint ptr %block_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_mask, align 4
  %add = add i32 %1, %rx_len
  %neg = xor i32 %1, -1
  %and = and i32 %add, %neg
  %buf_len = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 4
  %2 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %3)
  %cmp = icmp ugt i32 %and, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.13, i32 noundef %and, i32 noundef %rx_len, i32 noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %info = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 8
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info, align 4
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ar, align 4
  %mbox_info = getelementptr inbounds %struct.ath6kl, ptr %9, i32 0, i32 73
  %10 = ptrtoint ptr %mbox_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox_info, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef %packet, i32 noundef %7, i32 noundef %and, i32 noundef %11) #9
  %12 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ar, align 4
  %mbox_info6 = getelementptr inbounds %struct.ath6kl, ptr %13, i32 0, i32 73
  %14 = ptrtoint ptr %mbox_info6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mbox_info6, align 4
  %buf = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 3
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, i32 noundef %15, ptr noundef %17, i32 noundef %and, i32 noundef 401) #9
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %13, i32 0, i32 5
  %18 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hif_ops.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.i = tail call i32 %21(ptr noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %and, i32 noundef 401) #9
  %status8 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 7
  %22 = ptrtoint ptr %status8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i, ptr %status8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %call.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_hif_submit_scat_req(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath6kl_htc_rx(i32 noundef %status, i32 noundef %endpoint, ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_htc_rx, i32 0, i32 1), ptr blockaddress(@trace_ath6kl_htc_rx, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !204
  %call42 = tail call i32 @__traceiter_ath6kl_htc_rx(ptr noundef null, i32 noundef %status, i32 noundef %endpoint, ptr noundef %buf, i32 noundef %buf_len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  %13 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_htc_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_htc_rx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath6kl_htc_rx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ath6kl_htc_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 220, ptr noundef nonnull @.str.19) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !207
  %31 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_htc_rx_process_hdr(ptr noundef %target, ptr noundef %packet, ptr noundef %next_lkahds, ptr noundef writeonly %n_lkahds) unnamed_addr #0 align 64 {
entry:
  %lk_ahd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lk_ahd) #9
  %buf = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %cmp.not = icmp eq ptr %n_lkahds, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %n_lkahds to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %n_lkahds, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %payld_len = getelementptr inbounds %struct.anon.137, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %payld_len to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %payld_len, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = ptrtoint ptr %lk_ahd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %lk_ahd, align 4
  %info = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 8
  %rx_flags = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 8, i32 0, i32 1
  %11 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_flags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %if.then2

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then2:                                         ; preds = %if.end
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %info, align 4
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 6
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 5
  %14 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %act_len, align 4
  %buf_len = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 4
  %15 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp5 = icmp ugt i32 %add, %16
  br i1 %cmp5, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %9) #9
  %17 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %act_len, align 4
  %19 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_len, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %20)
  %22 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %act_len, align 4
  br label %if.then84

if.end15:                                         ; preds = %if.then2
  %endpoint = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 6
  %23 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %endpoint, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 1
  %conv16 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv16)
  %cmp17.not = icmp eq i32 %24, %conv16
  br i1 %cmp17.not, label %if.end15.if.end24_crit_edge, label %if.then19

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.22, i32 noundef %conv16, i32 noundef %24) #9
  br label %if.then84

if.end24:                                         ; preds = %if.end15.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %28)
  %cmp27.not = icmp eq i32 %9, %28
  br i1 %cmp27.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.ath6kl_htc_rx_process_hdr, ptr noundef %packet, i32 noundef %12) #9
  tail call void @ath6kl_dbg_dump(i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %info, i32 noundef 4) #9
  call void @ath6kl_dbg_dump(i32 noundef 32, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, ptr noundef nonnull %lk_ahd, i32 noundef 4) #9
  br label %if.then84

if.end34:                                         ; preds = %if.end24
  %flags = getelementptr inbounds %struct.anon.137, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 1
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool37.not = icmp eq i8 %31, 0
  br i1 %tobool37.not, label %if.end34.fail_rx_crit_edge, label %if.then38

if.end34.fail_rx_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_rx

if.then38:                                        ; preds = %if.end34
  %ctrl = getelementptr inbounds %struct.htc_frame_hdr, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp40 = icmp ult i8 %33, 2
  %34 = zext i8 %33 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %34)
  %cmp46 = icmp ult i16 %5, %34
  %or.cond = select i1 %cmp40, i1 true, i1 %cmp46
  %conv49 = zext i16 %5 to i32
  br i1 %or.cond, label %if.then48, label %while.body.lr.ph.i

if.then48:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %conv52 = zext i8 %33 to i32
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.ath6kl_htc_rx_process_hdr, i32 noundef %conv49, i32 noundef %conv52) #9
  br label %if.then84

while.body.lr.ph.i:                               ; preds = %if.then38
  %and56 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %spec.select = select i1 %tobool57.not, ptr %n_lkahds, ptr null
  %spec.select132 = select i1 %tobool57.not, ptr %next_lkahds, ptr null
  %add.ptr = getelementptr i8, ptr %7, i32 6
  %add.ptr62 = getelementptr i8, ptr %add.ptr, i32 %conv49
  %conv65 = zext i8 %33 to i32
  %idx.neg = sub nsw i32 0, %conv65
  %add.ptr66 = getelementptr i8, ptr %add.ptr62, i32 %idx.neg
  %endpoint70 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 6
  %35 = ptrtoint ptr %endpoint70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %endpoint70, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %conv65) #9
  tail call void @ath6kl_dbg_dump(i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef %add.ptr66, i32 noundef %conv65) #9
  %tobool99.not.i.i = icmp eq ptr %spec.select132, null
  %tx_lock.i.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp40.i.i.i = icmp eq i32 %36, 0
  %credit_info.i.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 4
  %cred_dist_list.i.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 1
  %arrayidx105.i.i.1 = getelementptr i32, ptr %spec.select132, i32 1
  %arrayidx105.i.i.2 = getelementptr i32, ptr %spec.select132, i32 2
  %arrayidx105.i.i.3 = getelementptr i32, ptr %spec.select132, i32 3
  %arrayidx105.i.i.4 = getelementptr i32, ptr %spec.select132, i32 4
  %arrayidx105.i.i.5 = getelementptr i32, ptr %spec.select132, i32 5
  %arrayidx105.i.i.6 = getelementptr i32, ptr %spec.select132, i32 6
  %arrayidx105.i.i.7 = getelementptr i32, ptr %spec.select132, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buf.addr.060.i = phi ptr [ %add.ptr66, %while.body.lr.ph.i ], [ %add.ptr14.i, %if.end11.i.while.body.i_crit_edge ]
  %len.addr.059.i = phi i32 [ %conv65, %while.body.lr.ph.i ], [ %sub17.i, %if.end11.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.059.i)
  %cmp1.i = icmp eq i32 %len.addr.059.i, 1
  br i1 %cmp1.i, label %while.body.i.htc_proc_trailer.exit_crit_edge, label %if.end.i

while.body.i.htc_proc_trailer.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_proc_trailer.exit

if.end.i:                                         ; preds = %while.body.i
  %sub.i = add nsw i32 %len.addr.059.i, -2
  %add.ptr.i = getelementptr i8, ptr %buf.addr.060.i, i32 2
  %len2.i = getelementptr inbounds %struct.htc_record_hdr, ptr %buf.addr.060.i, i32 0, i32 1
  %37 = ptrtoint ptr %len2.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %len2.i, align 1
  %conv.i = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp3.i = icmp ult i32 %sub.i, %conv.i
  br i1 %cmp3.i, label %if.then5.i, label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.le = zext i8 %38 to i32
  %39 = ptrtoint ptr %buf.addr.060.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %buf.addr.060.i, align 1
  %conv8.i = zext i8 %40 to i32
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.30, i32 noundef %conv.i.le, i32 noundef %conv8.i, i32 noundef %sub.i) #9
  br label %htc_proc_trailer.exit

if.end9.i:                                        ; preds = %if.end.i
  %41 = ptrtoint ptr %buf.addr.060.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buf.addr.060.i, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %42, label %sw.default.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb20.i.i
    i8 3, label %sw.bb64.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %tobool.not.i.i = icmp ult i8 %38, 2
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end19.i.i

do.end.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1684, i32 noundef 9, ptr noundef null) #9
  br label %htc_proc_trailer.exit

if.end19.i.i:                                     ; preds = %sw.bb.i.i
  %44 = lshr i8 %38, 1
  %div.i.i = zext i8 %44 to i32
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i.i.i) #9
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %get_queue_depth.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end19.i.i
  %rpt.addr.0128.i.i.i = phi ptr [ %add.ptr.i, %if.end19.i.i ], [ %incdec.ptr.i.i.i, %get_queue_depth.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %dist.0.off0127.i.i.i = phi i1 [ false, %if.end19.i.i ], [ %dist.1.off0.i.i.i, %get_queue_depth.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %i.0126.i.i.i = phi i32 [ 0, %if.end19.i.i ], [ %inc.i.i.i, %get_queue_depth.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %tot_credits.0125.i.i.i = phi i32 [ 0, %if.end19.i.i ], [ %add76.i.i.i, %get_queue_depth.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %45 = ptrtoint ptr %rpt.addr.0128.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rpt.addr.0128.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %46)
  %cmp1.i.i.i = icmp ugt i8 %46, 8
  br i1 %cmp1.i.i.i, label %do.end.i.i.i, label %if.end19.i.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1605, i32 noundef 9, ptr noundef null) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i.i.i) #9
  br label %if.end11.i

if.end19.i.i.i:                                   ; preds = %for.body.i.i.i
  %conv.i.i.i = zext i8 %46 to i32
  %credits.i.i.i = getelementptr inbounds %struct.htc_credit_report, ptr %rpt.addr.0128.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %credits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %credits.i.i.i, align 1
  %conv24.i.i.i = zext i8 %48 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.36, i32 noundef %conv.i.i.i, i32 noundef %conv24.i.i.i) #9
  %tx_cred_rpt.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 13, i32 5
  %49 = ptrtoint ptr %tx_cred_rpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_cred_rpt.i.i.i, align 4
  %add.i.i.i = add i32 %50, 1
  store i32 %add.i.i.i, ptr %tx_cred_rpt.i.i.i, align 4
  %51 = ptrtoint ptr %credits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %credits.i.i.i, align 1
  %conv26.i.i.i = zext i8 %52 to i32
  %cred_retnd.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 13, i32 13
  %53 = ptrtoint ptr %cred_retnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cred_retnd.i.i.i, align 4
  %add28.i.i.i = add i32 %54, %conv26.i.i.i
  store i32 %add28.i.i.i, ptr %cred_retnd.i.i.i, align 4
  %55 = ptrtoint ptr %rpt.addr.0128.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rpt.addr.0128.i.i.i, align 1
  %conv30.i.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv30.i.i.i)
  %cmp31.i.i.i = icmp eq i32 %36, %conv30.i.i.i
  %57 = ptrtoint ptr %credits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %credits.i.i.i, align 1
  %conv35.i.i.i = zext i8 %58 to i32
  br i1 %cmp31.i.i.i, label %if.then33.i.i.i, label %if.else.i.i.i

if.then33.i.i.i:                                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cred_from_rx.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 13, i32 9
  %59 = ptrtoint ptr %cred_from_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cred_from_rx.i.i.i, align 4
  %add37.i.i.i = add i32 %60, %conv35.i.i.i
  store i32 %add37.i.i.i, ptr %cred_from_rx.i.i.i, align 4
  %cred_rpt_from_rx.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 13, i32 6
  br label %if.end57.i.i.i

if.else.i.i.i:                                    ; preds = %if.end19.i.i.i
  br i1 %cmp40.i.i.i, label %if.then42.i.i.i, label %if.else49.i.i.i

if.then42.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cred_from_ep0.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 13, i32 11
  %61 = ptrtoint ptr %cred_from_ep0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cred_from_ep0.i.i.i, align 4
  %add46.i.i.i = add i32 %62, %conv35.i.i.i
  store i32 %add46.i.i.i, ptr %cred_from_ep0.i.i.i, align 4
  %cred_rpt_ep0.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 13, i32 8
  br label %if.end57.i.i.i

if.else49.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cred_from_other.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 13, i32 10
  %63 = ptrtoint ptr %cred_from_other.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cred_from_other.i.i.i, align 4
  %add53.i.i.i = add i32 %64, %conv35.i.i.i
  store i32 %add53.i.i.i, ptr %cred_from_other.i.i.i, align 4
  %cred_rpt_from_other.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 13, i32 7
  br label %if.end57.i.i.i

if.end57.i.i.i:                                   ; preds = %if.else49.i.i.i, %if.then42.i.i.i, %if.then33.i.i.i
  %cred_rpt_ep0.sink135.i.i.i = phi ptr [ %cred_rpt_ep0.i.i.i, %if.then42.i.i.i ], [ %cred_rpt_from_other.i.i.i, %if.else49.i.i.i ], [ %cred_rpt_from_rx.i.i.i, %if.then33.i.i.i ]
  %65 = ptrtoint ptr %cred_rpt_ep0.sink135.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cred_rpt_ep0.sink135.i.i.i, align 4
  %add48.i.i.i = add i32 %66, 1
  store i32 %add48.i.i.i, ptr %cred_rpt_ep0.sink135.i.i.i, align 4
  %67 = ptrtoint ptr %rpt.addr.0128.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rpt.addr.0128.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp60.i.i.i = icmp eq i8 %68, 0
  %69 = ptrtoint ptr %credits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %credits.i.i.i, align 1
  %conv64.i.i.i = zext i8 %70 to i32
  %cred_to_dist.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 4, i32 8
  %credits65.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 4, i32 7
  %cred_to_dist.sink136.i.i.i = select i1 %cmp60.i.i.i, ptr %credits65.i.i.i, ptr %cred_to_dist.i.i.i
  %71 = ptrtoint ptr %cred_to_dist.sink136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cred_to_dist.sink136.i.i.i, align 4
  %add71.i.i.i = add i32 %72, %conv64.i.i.i
  store i32 %add71.i.i.i, ptr %cred_to_dist.sink136.i.i.i, align 4
  %txq.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 2
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge, %if.end57.i.i.i
  %tmp_list.0.in.i.i.i.i = phi ptr [ %txq.i.i.i, %if.end57.i.i.i ], [ %tmp_list.0.i.i.i.i, %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %depth.0.i.i.i.i = phi i32 [ 0, %if.end57.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %73 = ptrtoint ptr %tmp_list.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %tmp_list.0.i.i.i.i = load ptr, ptr %tmp_list.0.in.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %tmp_list.0.i.i.i.i, %txq.i.i.i
  %inc.i.i.i.i = add i32 %depth.0.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i.i, label %get_queue_depth.exit.i.i.i, label %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i

get_queue_depth.exit.i.i.i:                       ; preds = %for.cond.i.i.i.i
  %not.cmp60.i.i.i = xor i1 %cmp60.i.i.i, true
  %dist.1.off0.i.i.i = select i1 %not.cmp60.i.i.i, i1 true, i1 %dist.0.off0127.i.i.i
  %txq_depth.i.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %conv.i.i.i, i32 4, i32 13
  %74 = ptrtoint ptr %txq_depth.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %depth.0.i.i.i.i, ptr %txq_depth.i.i.i, align 4
  %75 = ptrtoint ptr %credits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %credits.i.i.i, align 1
  %conv75.i.i.i = zext i8 %76 to i32
  %add76.i.i.i = add i32 %tot_credits.0125.i.i.i, %conv75.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0126.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct.htc_credit_report, ptr %rpt.addr.0128.i.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %div.i.i
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %get_queue_depth.exit.i.i.i.for.body.i.i.i_crit_edge

get_queue_depth.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %get_queue_depth.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %get_queue_depth.exit.i.i.i
  br i1 %dist.1.off0.i.i.i, label %if.then78.i.i.i, label %for.end.i.i.i.if.end79.i.i.i_crit_edge

for.end.i.i.i.if.end79.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i.i.i

if.then78.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %credit_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %credit_info.i.i.i, align 4
  tail call fastcc void @ath6kl_credit_distribute(ptr noundef %78, ptr noundef %cred_dist_list.i.i.i, i32 noundef 0) #9
  br label %if.end79.i.i.i

if.end79.i.i.i:                                   ; preds = %if.then78.i.i.i, %for.end.i.i.i.if.end79.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add76.i.i.i)
  %tobool81.not.i.i.i = icmp eq i32 %add76.i.i.i, 0
  br i1 %tobool81.not.i.i.i, label %if.end79.i.i.i.if.end11.i_crit_edge, label %if.then82.i.i.i

if.end79.i.i.i.if.end11.i_crit_edge:              ; preds = %if.end79.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then82.i.i.i:                                  ; preds = %if.end79.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @htc_chk_ep_txq(ptr noundef %target) #9
  br label %if.end11.i

sw.bb20.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %38)
  %79 = icmp ult i8 %38, 6
  br i1 %79, label %do.end38.i.i, label %if.end52.i.i

do.end38.i.i:                                     ; preds = %sw.bb20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1695, i32 noundef 9, ptr noundef null) #9
  br label %htc_proc_trailer.exit

if.end52.i.i:                                     ; preds = %sw.bb20.i.i
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr.i, align 1
  %conv53.i.i = zext i8 %81 to i32
  %post_valid.i.i = getelementptr i8, ptr %buf.addr.060.i, i32 7
  %82 = ptrtoint ptr %post_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %post_valid.i.i, align 1
  %conv54.i.i = zext i8 %83 to i32
  %and.i.i = xor i32 %conv54.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %conv53.i.i)
  %cmp.i.i = icmp ne i32 %and.i.i, %conv53.i.i
  %or.cond.i.i = or i1 %tobool99.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.end52.i.i.if.end11.i_crit_edge, label %if.then57.i.i

if.end52.i.i.if.end11.i_crit_edge:                ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then57.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.32, i32 noundef %conv53.i.i, i32 noundef %conv54.i.i) #9
  %lk_ahd62.i.i = getelementptr i8, ptr %buf.addr.060.i, i32 3
  %84 = ptrtoint ptr %lk_ahd62.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %lk_ahd62.i.i, align 1
  %86 = ptrtoint ptr %spec.select132 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %85, ptr %spec.select132, align 1
  tail call void @ath6kl_dbg_dump(i32 noundef 32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25, ptr noundef nonnull %spec.select132, i32 noundef 4) #9
  %87 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %spec.select, align 4
  br label %if.end11.i

sw.bb64.i.i:                                      ; preds = %if.end9.i
  %div67145.i.i = lshr i32 %conv.i, 2
  %88 = add i8 %38, -36
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %88)
  %89 = icmp ult i8 %88, -32
  br i1 %89, label %do.end84.i.i, label %if.end98.i.i

do.end84.i.i:                                     ; preds = %sw.bb64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1719, i32 noundef 9, ptr noundef null) #9
  br label %htc_proc_trailer.exit

if.end98.i.i:                                     ; preds = %sw.bb64.i.i
  br i1 %tobool99.not.i.i, label %if.end98.i.i.if.end11.i_crit_edge, label %for.body.preheader.i.i

if.end98.i.i.if.end11.i_crit_edge:                ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

for.body.preheader.i.i:                           ; preds = %if.end98.i.i
  tail call void @ath6kl_dbg_dump(i32 noundef 32, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, i32 noundef %conv.i) #9
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div67145.i.i, i32 1) #9
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %add.ptr.i, align 1
  %92 = ptrtoint ptr %spec.select132 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %spec.select132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %38)
  %exitcond.not.i.i = icmp ult i8 %38, 8
  br i1 %exitcond.not.i.i, label %for.body.preheader.i.i.for.end.i.i_crit_edge, label %for.body.i.i.1

for.body.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.1:                                   ; preds = %for.body.preheader.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.060.i, i32 6
  %93 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %incdec.ptr.i.i, align 1
  %95 = ptrtoint ptr %arrayidx105.i.i.1 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %94, ptr %arrayidx105.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax.i.i)
  %exitcond.not.i.i.1 = icmp eq i32 %umax.i.i, 2
  br i1 %exitcond.not.i.i.1, label %for.body.i.i.1.for.end.i.i_crit_edge, label %for.body.i.i.2

for.body.i.i.1.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %incdec.ptr.i.i.1 = getelementptr i8, ptr %buf.addr.060.i, i32 10
  %96 = ptrtoint ptr %incdec.ptr.i.i.1 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %incdec.ptr.i.i.1, align 1
  %98 = ptrtoint ptr %arrayidx105.i.i.2 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %97, ptr %arrayidx105.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umax.i.i)
  %exitcond.not.i.i.2 = icmp eq i32 %umax.i.i, 3
  br i1 %exitcond.not.i.i.2, label %for.body.i.i.2.for.end.i.i_crit_edge, label %for.body.i.i.3

for.body.i.i.2.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  %incdec.ptr.i.i.2 = getelementptr i8, ptr %buf.addr.060.i, i32 14
  %99 = ptrtoint ptr %incdec.ptr.i.i.2 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %incdec.ptr.i.i.2, align 1
  %101 = ptrtoint ptr %arrayidx105.i.i.3 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %100, ptr %arrayidx105.i.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umax.i.i)
  %exitcond.not.i.i.3 = icmp eq i32 %umax.i.i, 4
  br i1 %exitcond.not.i.i.3, label %for.body.i.i.3.for.end.i.i_crit_edge, label %for.body.i.i.4

for.body.i.i.3.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.4:                                   ; preds = %for.body.i.i.3
  %incdec.ptr.i.i.3 = getelementptr i8, ptr %buf.addr.060.i, i32 18
  %102 = ptrtoint ptr %incdec.ptr.i.i.3 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %incdec.ptr.i.i.3, align 1
  %104 = ptrtoint ptr %arrayidx105.i.i.4 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %103, ptr %arrayidx105.i.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %umax.i.i)
  %exitcond.not.i.i.4 = icmp eq i32 %umax.i.i, 5
  br i1 %exitcond.not.i.i.4, label %for.body.i.i.4.for.end.i.i_crit_edge, label %for.body.i.i.5

for.body.i.i.4.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.5:                                   ; preds = %for.body.i.i.4
  %incdec.ptr.i.i.4 = getelementptr i8, ptr %buf.addr.060.i, i32 22
  %105 = ptrtoint ptr %incdec.ptr.i.i.4 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %incdec.ptr.i.i.4, align 1
  %107 = ptrtoint ptr %arrayidx105.i.i.5 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %106, ptr %arrayidx105.i.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %umax.i.i)
  %exitcond.not.i.i.5 = icmp eq i32 %umax.i.i, 6
  br i1 %exitcond.not.i.i.5, label %for.body.i.i.5.for.end.i.i_crit_edge, label %for.body.i.i.6

for.body.i.i.5.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.6:                                   ; preds = %for.body.i.i.5
  %incdec.ptr.i.i.5 = getelementptr i8, ptr %buf.addr.060.i, i32 26
  %108 = ptrtoint ptr %incdec.ptr.i.i.5 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %incdec.ptr.i.i.5, align 1
  %110 = ptrtoint ptr %arrayidx105.i.i.6 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %109, ptr %arrayidx105.i.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %umax.i.i)
  %exitcond.not.i.i.6 = icmp eq i32 %umax.i.i, 7
  br i1 %exitcond.not.i.i.6, label %for.body.i.i.6.for.end.i.i_crit_edge, label %for.body.i.i.7

for.body.i.i.6.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.7:                                   ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i.i.6 = getelementptr i8, ptr %buf.addr.060.i, i32 30
  %111 = ptrtoint ptr %incdec.ptr.i.i.6 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %incdec.ptr.i.i.6, align 1
  %113 = ptrtoint ptr %arrayidx105.i.i.7 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %arrayidx105.i.i.7, align 1
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.7, %for.body.i.i.6.for.end.i.i_crit_edge, %for.body.i.i.5.for.end.i.i_crit_edge, %for.body.i.i.4.for.end.i.i_crit_edge, %for.body.i.i.3.for.end.i.i_crit_edge, %for.body.i.i.2.for.end.i.i_crit_edge, %for.body.i.i.1.for.end.i.i_crit_edge, %for.body.preheader.i.i.for.end.i.i_crit_edge
  %114 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %umax.i.i, ptr %spec.select, align 4
  br label %if.end11.i

sw.default.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %42 to i32
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.35, i32 noundef %conv.i.i, i32 noundef %conv.i) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %sw.default.i.i, %for.end.i.i, %if.end98.i.i.if.end11.i_crit_edge, %if.then57.i.i, %if.end52.i.i.if.end11.i_crit_edge, %if.then82.i.i.i, %if.end79.i.i.i.if.end11.i_crit_edge, %do.end.i.i.i
  %115 = ptrtoint ptr %len2.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %len2.i, align 1
  %conv13.i = zext i8 %116 to i32
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %conv13.i
  %sub17.i = sub i32 %sub.i, %conv13.i
  %cmp.i = icmp sgt i32 %sub17.i, 0
  br i1 %cmp.i, label %if.end11.i.while.body.i_crit_edge, label %if.end73

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

htc_proc_trailer.exit:                            ; preds = %do.end84.i.i, %do.end38.i.i, %do.end.i.i, %if.then5.i, %while.body.i.htc_proc_trailer.exit_crit_edge
  %status.1.ph.i = phi i32 [ -22, %do.end.i.i ], [ -22, %do.end38.i.i ], [ -22, %do.end84.i.i ], [ -12, %if.then5.i ], [ -12, %while.body.i.htc_proc_trailer.exit_crit_edge ]
  tail call void @ath6kl_dbg_dump(i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.25, ptr noundef %add.ptr66, i32 noundef %conv65) #9
  br label %if.then84

if.end73:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %ctrl, align 1
  %conv76 = zext i8 %118 to i32
  %act_len77 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 5
  %119 = ptrtoint ptr %act_len77 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %act_len77, align 4
  %sub = sub i32 %120, %conv76
  store i32 %sub, ptr %act_len77, align 4
  br label %fail_rx

fail_rx:                                          ; preds = %if.end73, %if.end34.fail_rx_crit_edge
  %121 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %buf, align 4
  %add.ptr80 = getelementptr i8, ptr %122, i32 6
  store ptr %add.ptr80, ptr %buf, align 4
  %act_len81 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 5
  %123 = ptrtoint ptr %act_len81 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %act_len81, align 4
  %sub82 = add i32 %124, -6
  store i32 %sub82, ptr %act_len81, align 4
  br label %if.end87

if.then84:                                        ; preds = %htc_proc_trailer.exit, %if.then48, %if.then29, %if.then19, %if.then7
  %status.1.ph = phi i32 [ %status.1.ph.i, %htc_proc_trailer.exit ], [ -12, %if.then48 ], [ -12, %if.then29 ], [ -12, %if.then19 ], [ -12, %if.then7 ]
  %125 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %buf, align 4
  %act_len86 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 5
  %127 = ptrtoint ptr %act_len86 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %act_len86, align 4
  call void @ath6kl_dbg_dump(i32 noundef 32, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, ptr noundef %126, i32 noundef %128) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %fail_rx
  %status.1138 = phi i32 [ %status.1.ph, %if.then84 ], [ 0, %fail_rx ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lk_ahd) #9
  ret i32 %status.1138
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath6kl_htc_rx(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg_dump(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_credit_distribute(ptr nocapture noundef %cred_info, ptr noundef readonly %ep_dist_list, i32 noundef %reason) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %reason, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %ep_dist_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %cur_list.067.i = load ptr, ptr %ep_dist_list, align 4
  %cmp.not68.i = icmp eq ptr %cur_list.067.i, %ep_dist_list
  br i1 %cmp.not68.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %cur_free_credits.i.i = getelementptr inbounds %struct.ath6kl_htc_credit_info, ptr %cred_info, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cur_list.069.i = phi ptr [ %cur_list.067.i, %for.body.lr.ph.i ], [ %cur_list.0.i, %for.inc.i.for.body.i_crit_edge ]
  %endpoint.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_list.069.i, i32 0, i32 2
  %2 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %endpoint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp eq i32 %3, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %cred_to_dist.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_list.069.i, i32 0, i32 8
  %4 = ptrtoint ptr %cred_to_dist.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cred_to_dist.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp sgt i32 %5, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.end.i
  %credits.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_list.069.i, i32 0, i32 7
  %6 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %credits.i, align 4
  %add.i = add i32 %7, %5
  store i32 %add.i, ptr %credits.i, align 4
  %8 = ptrtoint ptr %cred_to_dist.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cred_to_dist.i, align 4
  %cred_assngd.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_list.069.i, i32 0, i32 6
  %9 = ptrtoint ptr %cred_assngd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cred_assngd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %10)
  %cmp7.i = icmp sgt i32 %add.i, %10
  br i1 %cmp7.i, label %if.then8.i, label %if.then3.i.if.end10.i_crit_edge

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then3.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %10) #9
  %11 = ptrtoint ptr %cred_assngd.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cred_assngd.i, align 4
  %12 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %credits.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %10)
  %cmp.not.i.i = icmp sgt i32 %13, %10
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then8.i.if.end10.i_crit_edge

if.then8.i.if.end10.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %13, %10
  %14 = ptrtoint ptr %credits.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %credits.i, align 4
  %15 = ptrtoint ptr %cur_free_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_free_credits.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %16
  store i32 %add.i.i, ptr %cur_free_credits.i.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i.i, %if.then8.i.if.end10.i_crit_edge, %if.then3.i.if.end10.i_crit_edge
  %17 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %credits.i, align 4
  %cred_norm.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_list.069.i, i32 0, i32 4
  %19 = ptrtoint ptr %cred_norm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cred_norm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp12.i = icmp sgt i32 %18, %20
  br i1 %cmp12.i, label %if.then13.i, label %if.end10.i.if.end15.i_crit_edge

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  %21 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %endpoint.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %22, i32 noundef %20) #9
  %23 = ptrtoint ptr %cred_assngd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %cred_assngd.i, align 4
  %24 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %credits.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %20)
  %cmp.not.i52.i = icmp sgt i32 %25, %20
  br i1 %cmp.not.i52.i, label %if.end.i56.i, label %if.then13.i.if.end15.i_crit_edge

if.then13.i.if.end15.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end.i56.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i53.i = sub i32 %25, %20
  %26 = ptrtoint ptr %credits.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %20, ptr %credits.i, align 4
  %27 = ptrtoint ptr %cur_free_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_free_credits.i.i, align 4
  %add.i55.i = add i32 %sub.i53.i, %28
  store i32 %add.i55.i, ptr %cur_free_credits.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i56.i, %if.then13.i.if.end15.i_crit_edge, %if.end10.i.if.end15.i_crit_edge
  %dist_flags.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_list.069.i, i32 0, i32 3
  %29 = ptrtoint ptr %dist_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dist_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %tobool.not.i = icmp sgt i32 %30, -1
  br i1 %tobool.not.i, label %if.then16.i, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.end15.i
  %txq_depth.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_list.069.i, i32 0, i32 13
  %31 = ptrtoint ptr %txq_depth.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txq_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp17.i = icmp eq i32 %32, 0
  br i1 %cmp17.i, label %if.then18.i, label %if.then16.i.for.inc.i_crit_edge

if.then16.i.for.inc.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then18.i:                                      ; preds = %if.then16.i
  %33 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %endpoint.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %34, i32 noundef 0) #9
  %35 = ptrtoint ptr %cred_assngd.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cred_assngd.i, align 4
  %36 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %credits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i61.i = icmp sgt i32 %37, 0
  br i1 %cmp.not.i61.i, label %if.end.i64.i, label %if.then18.i.for.inc.i_crit_edge

if.then18.i.for.inc.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i64.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %credits.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %credits.i, align 4
  %39 = ptrtoint ptr %cur_free_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_free_credits.i.i, align 4
  %add.i63.i = add i32 %40, %37
  store i32 %add.i63.i, ptr %cur_free_credits.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i64.i, %if.then18.i.for.inc.i_crit_edge, %if.then16.i.for.inc.i_crit_edge, %if.end15.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %41 = ptrtoint ptr %cur_list.069.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %cur_list.0.i = load ptr, ptr %cur_list.069.i, align 4
  %cmp.not.i = icmp eq ptr %cur_list.0.i, %ep_dist_list
  br i1 %cmp.not.i, label %for.inc.i.sw.epilog_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %42 = ptrtoint ptr %ep_dist_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %curdist_list.047.i = load ptr, ptr %ep_dist_list, align 4
  %cmp.not48.i = icmp eq ptr %curdist_list.047.i, %ep_dist_list
  br i1 %cmp.not48.i, label %sw.bb1.sw.epilog_crit_edge, label %for.body.lr.ph.i59

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.lr.ph.i59:                               ; preds = %sw.bb1
  %cur_free_credits.i43.i = getelementptr inbounds %struct.ath6kl_htc_credit_info, ptr %cred_info, i32 0, i32 1
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.inc.i73.for.body.i62_crit_edge, %for.body.lr.ph.i59
  %curdist_list.049.i = phi ptr [ %curdist_list.047.i, %for.body.lr.ph.i59 ], [ %curdist_list.0.i, %for.inc.i73.for.body.i62_crit_edge ]
  %endpoint.i60 = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.049.i, i32 0, i32 2
  %43 = ptrtoint ptr %endpoint.i60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %endpoint.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp1.i61 = icmp eq i32 %44, 0
  br i1 %cmp1.i61, label %for.body.i62.for.inc.i73_crit_edge, label %if.end.i63

for.body.i62.for.inc.i73_crit_edge:               ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i73

if.end.i63:                                       ; preds = %for.body.i62
  %svc_id.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.049.i, i32 0, i32 1
  %45 = ptrtoint ptr %svc_id.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %svc_id.i, align 4
  %.off.i = add i16 %46, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %if.end9.i.thread, label %if.end9.i

if.end9.i.thread:                                 ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #11
  %dist_flags.i64 = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.049.i, i32 0, i32 3
  %47 = ptrtoint ptr %dist_flags.i64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dist_flags.i64, align 4
  %or.i = or i32 %48, -2147483648
  store i32 %or.i, ptr %dist_flags.i64, align 4
  br label %land.lhs.true.i

if.end9.i:                                        ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %46)
  %cmp12.not.i = icmp eq i16 %46, 256
  br i1 %cmp12.not.i, label %if.end9.i.for.inc.i73_crit_edge, label %if.end9.i.land.lhs.true.i_crit_edge

if.end9.i.land.lhs.true.i_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.end9.i.for.inc.i73_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i73

land.lhs.true.i:                                  ; preds = %if.end9.i.land.lhs.true.i_crit_edge, %if.end9.i.thread
  %dist_flags14.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.049.i, i32 0, i32 3
  %49 = ptrtoint ptr %dist_flags14.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dist_flags14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %tobool.not.i66 = icmp sgt i32 %50, -1
  br i1 %tobool.not.i66, label %if.then15.i, label %land.lhs.true.i.for.inc.i73_crit_edge

land.lhs.true.i.for.inc.i73_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i73

if.then15.i:                                      ; preds = %land.lhs.true.i
  %txq_depth.i67 = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.049.i, i32 0, i32 13
  %51 = ptrtoint ptr %txq_depth.i67 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %txq_depth.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp16.i = icmp eq i32 %52, 0
  br i1 %cmp16.i, label %if.then18.i69, label %if.else.i

if.then18.i69:                                    ; preds = %if.then15.i
  %53 = ptrtoint ptr %endpoint.i60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %endpoint.i60, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %54, i32 noundef 0) #9
  %cred_assngd.i.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.049.i, i32 0, i32 6
  %55 = ptrtoint ptr %cred_assngd.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %cred_assngd.i.i, align 4
  %credits1.i.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.049.i, i32 0, i32 7
  %56 = ptrtoint ptr %credits1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %credits1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.not.i.i68 = icmp sgt i32 %57, 0
  br i1 %cmp.not.i.i68, label %if.end.i.i70, label %if.then18.i69.for.inc.i73_crit_edge

if.then18.i69.for.inc.i73_crit_edge:              ; preds = %if.then18.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i73

if.end.i.i70:                                     ; preds = %if.then18.i69
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %credits1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %credits1.i.i, align 4
  %59 = ptrtoint ptr %cur_free_credits.i43.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cur_free_credits.i43.i, align 4
  br label %for.inc.sink.split.i

if.else.i:                                        ; preds = %if.then15.i
  %cred_min.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.049.i, i32 0, i32 5
  %61 = ptrtoint ptr %cred_min.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cred_min.i, align 4
  %63 = ptrtoint ptr %endpoint.i60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %endpoint.i60, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %64, i32 noundef %62) #9
  %cred_assngd.i40.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.049.i, i32 0, i32 6
  %65 = ptrtoint ptr %cred_assngd.i40.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %cred_assngd.i40.i, align 4
  %credits1.i41.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.049.i, i32 0, i32 7
  %66 = ptrtoint ptr %credits1.i41.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %credits1.i41.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %62)
  %cmp.not.i42.i = icmp sgt i32 %67, %62
  br i1 %cmp.not.i42.i, label %if.end.i45.i, label %if.else.i.for.inc.i73_crit_edge

if.else.i.for.inc.i73_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i73

if.end.i45.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i71 = sub i32 %67, %62
  %68 = ptrtoint ptr %credits1.i41.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %62, ptr %credits1.i41.i, align 4
  %69 = ptrtoint ptr %cur_free_credits.i43.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur_free_credits.i43.i, align 4
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.end.i45.i, %if.end.i.i70
  %.sink.i = phi i32 [ %70, %if.end.i45.i ], [ %57, %if.end.i.i70 ]
  %sub.i.sink.i = phi i32 [ %sub.i.i71, %if.end.i45.i ], [ %60, %if.end.i.i70 ]
  %add.i44.i = add i32 %sub.i.sink.i, %.sink.i
  %71 = ptrtoint ptr %cur_free_credits.i43.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add.i44.i, ptr %cur_free_credits.i43.i, align 4
  br label %for.inc.i73

for.inc.i73:                                      ; preds = %for.inc.sink.split.i, %if.else.i.for.inc.i73_crit_edge, %if.then18.i69.for.inc.i73_crit_edge, %land.lhs.true.i.for.inc.i73_crit_edge, %if.end9.i.for.inc.i73_crit_edge, %for.body.i62.for.inc.i73_crit_edge
  %72 = ptrtoint ptr %curdist_list.049.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %curdist_list.0.i = load ptr, ptr %curdist_list.049.i, align 4
  %cmp.not.i72 = icmp eq ptr %curdist_list.0.i, %ep_dist_list
  br i1 %cmp.not.i72, label %for.inc.i73.sw.epilog_crit_edge, label %for.inc.i73.for.body.i62_crit_edge

for.inc.i73.for.body.i62_crit_edge:               ; preds = %for.inc.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i62

for.inc.i73.sw.epilog_crit_edge:                  ; preds = %for.inc.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc.i73.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %cur_free_credits = getelementptr inbounds %struct.ath6kl_htc_credit_info, ptr %cred_info, i32 0, i32 1
  %73 = ptrtoint ptr %cur_free_credits to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cur_free_credits, align 4
  %75 = ptrtoint ptr %cred_info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cred_info, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp = icmp sgt i32 %74, %76
  br i1 %cmp, label %do.end, label %sw.epilog.if.end_crit_edge, !prof !201

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 344, i32 noundef 9, ptr noundef null) #9
  %77 = ptrtoint ptr %cur_free_credits to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %cur_free_credits, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.epilog.if.end_crit_edge
  %78 = phi i32 [ %.pr, %do.end ], [ %74, %sw.epilog.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp22 = icmp slt i32 %78, 0
  br i1 %cmp22, label %do.end38, label %if.end.if.end44_crit_edge, !prof !201

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 345, i32 noundef 9, ptr noundef null) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htc_chk_ep_txq(ptr noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cred_dist_list = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 1
  %0 = ptrtoint ptr %cred_dist_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %cred_dist.026 = load ptr, ptr %cred_dist_list, align 4
  %cmp.not27 = icmp eq ptr %cred_dist.026, %cred_dist_list
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %cred_dist.028 = phi ptr [ %cred_dist.026, %for.body.lr.ph ], [ %cred_dist.0, %if.end.for.body_crit_edge ]
  %htc_ep = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cred_dist.028, i32 0, i32 12
  %1 = ptrtoint ptr %htc_ep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %htc_ep, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  %txq = getelementptr inbounds %struct.htc_endpoint, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %txq, align 4
  %cmp.i.not = icmp eq ptr %4, %txq
  br i1 %cmp.i.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  %endpoint2 = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cred_dist.028, i32 0, i32 2
  %5 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %endpoint2, align 4
  %credits = getelementptr inbounds %struct.htc_endpoint, ptr %2, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %credits, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then
  %tmp_list.0.in.i = phi ptr [ %txq, %if.then ], [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %txq
  %inc.i = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %get_queue_depth.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.38, i32 noundef %6, i32 noundef %8, i32 noundef %depth.0.i) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  tail call fastcc void @ath6kl_htc_tx_from_queue(ptr noundef %target, ptr noundef %2)
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  br label %if.end

if.end:                                           ; preds = %get_queue_depth.exit, %for.body.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  %10 = ptrtoint ptr %cred_dist.028 to i32
  call void @__asan_load4_noabort(i32 %10)
  %cred_dist.0 = load ptr, ptr %cred_dist.028, align 4
  %cmp.not = icmp eq ptr %cred_dist.0, %cred_dist_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_htc_tx_from_queue(ptr noundef %target, ptr noundef %endpoint) unnamed_addr #0 align 64 {
entry:
  %txq = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %txq) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %txq, i32 0, i32 1
  %tx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  %tx_proc_cnt = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 8
  %1 = ptrtoint ptr %tx_proc_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_proc_cnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %tx_proc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp = icmp sgt i32 %inc, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tx_proc_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tx_proc_cnt, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %txq, ptr %txq, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %txq, ptr %0, align 4
  %svc_id = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 1
  %6 = ptrtoint ptr %svc_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %svc_id, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %7, label %if.then10 [
    i16 1, label %if.end.if.end11_crit_edge
    i16 256, label %if.end.if.end11_crit_edge211
  ]

if.end.if.end11_crit_edge211:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ar, align 4
  %13 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.ath6kl, ptr %12, i32 0, i32 40, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %phi.cast = zext i8 %16 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge, %if.end.if.end11_crit_edge211
  %ac.0 = phi i32 [ %phi.cast, %if.then10 ], [ 4, %if.end.if.end11_crit_edge ], [ 4, %if.end.if.end11_crit_edge211 ]
  %txq12 = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 2
  %17 = ptrtoint ptr %txq12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %txq12, align 4
  %cmp.i.not178 = icmp eq ptr %18, %txq12
  br i1 %cmp.i.not178, label %if.end11.while.end83_crit_edge, label %if.end14.lr.ph

if.end11.while.end83_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end83

if.end14.lr.ph:                                   ; preds = %if.end11
  %block_mask.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 21
  %tgt_cred_sz.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 6
  %cred_dist.i.i = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 4
  %credits.i.i = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 4, i32 7
  %seek_cred.i.i = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 4, i32 9
  %credit_info.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 4
  %ep_st.i.i = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 13
  %cred_cosumd.i.i = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 13, i32 12
  %cred_per_msg.i.i = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 4, i32 11
  %tx_issued.i = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 13, i32 1
  %seqno.i = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 11
  %tx_bndl_mask = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 16
  %shl = shl nuw i32 1, %ac.0
  %target1.i = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 10
  %conn_flags.i.i.i = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 12
  %tx_bundles = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 13, i32 3
  %tx_pkt_bundled = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 13, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ac.0)
  %cmp75 = icmp ult i32 %ac.0, 4
  %arrayidx80 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 25, i32 %ac.0
  br label %if.end14

if.end14:                                         ; preds = %if.end82.if.end14_crit_edge, %if.end14.lr.ph
  %19 = ptrtoint ptr %txq12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %txq12, align 4
  %cmp.i.not50.i = icmp eq ptr %20, %txq12
  br i1 %cmp.i.not50.i, label %if.end14.ath6kl_htc_tx_pkts_get.exit_crit_edge, label %if.end14.for.cond.i.preheader.i_crit_edge

if.end14.for.cond.i.preheader.i_crit_edge:        ; preds = %if.end14
  br label %for.cond.i.preheader.i

if.end14.ath6kl_htc_tx_pkts_get.exit_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_tx_pkts_get.exit

for.cond.i.preheader.i:                           ; preds = %list_move_tail.exit.i.for.cond.i.preheader.i_crit_edge, %if.end14.for.cond.i.preheader.i_crit_edge
  %21 = phi ptr [ %81, %list_move_tail.exit.i.for.cond.i.preheader.i_crit_edge ], [ %20, %if.end14.for.cond.i.preheader.i_crit_edge ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.cond.i.preheader.i
  %tmp_list.0.in.i.i = phi ptr [ %tmp_list.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %txq12, %for.cond.i.preheader.i ]
  %depth.0.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ 0, %for.cond.i.preheader.i ]
  %22 = ptrtoint ptr %tmp_list.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp_list.0.i.i = load ptr, ptr %tmp_list.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp_list.0.i.i, %txq12
  %inc.i.i = add i32 %depth.0.i.i, 1
  br i1 %cmp.i.not.i.i, label %get_queue_depth.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

get_queue_depth.exit.i:                           ; preds = %for.cond.i.i
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.40, ptr noundef %21, i32 noundef %depth.0.i.i) #9
  %act_len.i = getelementptr inbounds %struct.htc_packet, ptr %21, i32 0, i32 5
  %23 = ptrtoint ptr %act_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %act_len.i, align 4
  %add.i = add i32 %24, 6
  %25 = ptrtoint ptr %block_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %block_mask.i, align 4
  %add4.i = add i32 %add.i, %26
  %neg.i = xor i32 %26, -1
  %and.i = and i32 %add4.i, %neg.i
  %endpoint6.i = getelementptr inbounds %struct.htc_packet, ptr %21, i32 0, i32 6
  %27 = ptrtoint ptr %endpoint6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %endpoint6.i, align 4
  %29 = ptrtoint ptr %tgt_cred_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tgt_cred_sz.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %and.i)
  %cmp.i40.i = icmp ult i32 %30, %and.i
  br i1 %cmp.i40.i, label %cond.true.i.i, label %get_queue_depth.exit.i.cond.end.i.i_crit_edge

get_queue_depth.exit.i.cond.end.i.i_crit_edge:    ; preds = %get_queue_depth.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %get_queue_depth.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add i32 %and.i, -1
  %sub.i.i = add i32 %add.i.i, %30
  %div.i.i = udiv i32 %sub.i.i, %30
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %get_queue_depth.exit.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %div.i.i, %cond.true.i.i ], [ 1, %get_queue_depth.exit.i.cond.end.i.i_crit_edge ]
  %31 = ptrtoint ptr %credits.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %credits.i.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.41, i32 noundef %cond.i.i, i32 noundef %32) #9
  %33 = ptrtoint ptr %credits.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %credits.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %34)
  %cmp5.i.i = icmp sgt i32 %cond.i.i, %34
  br i1 %cmp5.i.i, label %if.then.i.i, label %cond.end.i.i.if.end20.i.i_crit_edge

cond.end.i.i.if.end20.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.then.i.i:                                      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp6.i.i = icmp eq i32 %28, 0
  br i1 %cmp6.i.i, label %if.then.i.i.ath6kl_htc_tx_pkts_get.exit_crit_edge, label %if.end.i.i

if.then.i.i.ath6kl_htc_tx_pkts_get.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_tx_pkts_get.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  %sub10.i.i = sub i32 %cond.i.i, %34
  %35 = ptrtoint ptr %seek_cred.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub10.i.i, ptr %seek_cred.i.i, align 4
  %36 = ptrtoint ptr %credit_info.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %credit_info.i.i, align 4
  call fastcc void @ath6kl_credit_seek(ptr noundef %37, ptr noundef %cred_dist.i.i) #9
  %38 = ptrtoint ptr %seek_cred.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %seek_cred.i.i, align 4
  %39 = ptrtoint ptr %credits.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %credits.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %cond.i.i)
  %cmp17.i.i = icmp slt i32 %40, %cond.i.i
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.end.i.i.if.end20.i.i_crit_edge

if.end.i.i.if.end20.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.42, i32 noundef %28) #9
  br label %ath6kl_htc_tx_pkts_get.exit

if.end20.i.i:                                     ; preds = %if.end.i.i.if.end20.i.i_crit_edge, %cond.end.i.i.if.end20.i.i_crit_edge
  %41 = ptrtoint ptr %credits.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %credits.i.i, align 4
  %sub23.i.i = sub i32 %42, %cond.i.i
  store i32 %sub23.i.i, ptr %credits.i.i, align 4
  %43 = ptrtoint ptr %cred_cosumd.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cred_cosumd.i.i, align 4
  %add24.i.i = add i32 %44, %cond.i.i
  store i32 %add24.i.i, ptr %cred_cosumd.i.i, align 4
  %45 = ptrtoint ptr %cred_per_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cred_per_msg.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %sub23.i.i)
  %cmp28.i.i = icmp sgt i32 %46, %sub23.i.i
  br i1 %cmp28.i.i, label %if.then29.i.i, label %if.end20.i.i.if.end10.i_crit_edge

if.end20.i.i.if.end10.i_crit_edge:                ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then29.i.i:                                    ; preds = %if.end20.i.i
  %sub34.i.i = sub i32 %46, %sub23.i.i
  %47 = ptrtoint ptr %seek_cred.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub34.i.i, ptr %seek_cred.i.i, align 4
  %48 = ptrtoint ptr %credit_info.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %credit_info.i.i, align 4
  call fastcc void @ath6kl_credit_seek(ptr noundef %49, ptr noundef %cred_dist.i.i) #9
  %50 = ptrtoint ptr %credits.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %credits.i.i, align 4
  %52 = ptrtoint ptr %cred_per_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cred_per_msg.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp43.i.i = icmp slt i32 %51, %53
  br i1 %cmp43.i.i, label %if.then44.i.i, label %if.then29.i.i.if.end10.i_crit_edge

if.then29.i.i.if.end10.i_crit_edge:               ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then44.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %ep_st.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ep_st.i.i, align 4
  %add47.i.i = add i32 %55, 1
  store i32 %add47.i.i, ptr %ep_st.i.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.43) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then44.i.i, %if.then29.i.i.if.end10.i_crit_edge, %if.end20.i.i.if.end10.i_crit_edge
  %flags.0.ph.i = phi i8 [ 0, %if.end20.i.i.if.end10.i_crit_edge ], [ 0, %if.then29.i.i.if.end10.i_crit_edge ], [ 1, %if.then44.i.i ]
  %56 = ptrtoint ptr %txq12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %txq12, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %57) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.i.__list_del_entry.exit.i.i_crit_edge

if.end10.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end10.i.__list_del_entry.exit.i.i_crit_edge
  %64 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %0, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %57, ptr noundef %65, ptr noundef nonnull %txq) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %57, ptr %0, align 4
  %67 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %txq, ptr %57, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %57, ptr %65, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %cred_used.i = getelementptr inbounds %struct.htc_packet, ptr %57, i32 0, i32 8, i32 0, i32 1
  %70 = ptrtoint ptr %cred_used.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond.i.i, ptr %cred_used.i, align 4
  %completion.i = getelementptr inbounds %struct.htc_packet, ptr %57, i32 0, i32 9
  %71 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @htc_tx_comp_handler, ptr %completion.i, align 4
  %context.i = getelementptr inbounds %struct.htc_packet, ptr %57, i32 0, i32 10
  %72 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %target, ptr %context.i, align 4
  %73 = ptrtoint ptr %tx_issued.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_issued.i, align 4
  %add16.i = add i32 %74, 1
  store i32 %add16.i, ptr %tx_issued.i, align 4
  %flags18.i = getelementptr inbounds %struct.htc_packet, ptr %57, i32 0, i32 8, i32 0, i32 2
  %75 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %flags.0.ph.i, ptr %flags18.i, align 4
  %76 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %seqno.i, align 4
  %conv.i135 = zext i8 %77 to i32
  %seqno20.i = getelementptr inbounds %struct.htc_packet, ptr %57, i32 0, i32 8, i32 0, i32 3
  %78 = ptrtoint ptr %seqno20.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv.i135, ptr %seqno20.i, align 4
  %79 = load i8, ptr %seqno.i, align 4
  %inc.i = add i8 %79, 1
  store i8 %inc.i, ptr %seqno.i, align 4
  %80 = ptrtoint ptr %txq12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %txq12, align 4
  %cmp.i.not.i = icmp eq ptr %81, %txq12
  br i1 %cmp.i.not.i, label %list_move_tail.exit.i.ath6kl_htc_tx_pkts_get.exit_crit_edge, label %list_move_tail.exit.i.for.cond.i.preheader.i_crit_edge

list_move_tail.exit.i.for.cond.i.preheader.i_crit_edge: ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader.i

list_move_tail.exit.i.ath6kl_htc_tx_pkts_get.exit_crit_edge: ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_tx_pkts_get.exit

ath6kl_htc_tx_pkts_get.exit:                      ; preds = %list_move_tail.exit.i.ath6kl_htc_tx_pkts_get.exit_crit_edge, %if.then18.i.i, %if.then.i.i.ath6kl_htc_tx_pkts_get.exit_crit_edge, %if.end14.ath6kl_htc_tx_pkts_get.exit_crit_edge
  %82 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %txq, align 4
  %cmp.i136.not = icmp eq ptr %83, %txq
  br i1 %cmp.i136.not, label %ath6kl_htc_tx_pkts_get.exit.while.end83_crit_edge, label %if.end18

ath6kl_htc_tx_pkts_get.exit.while.end83_crit_edge: ; preds = %ath6kl_htc_tx_pkts_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end83

if.end18:                                         ; preds = %ath6kl_htc_tx_pkts_get.exit
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  br label %while.cond20

while.cond20:                                     ; preds = %while.cond20.backedge, %if.end18
  %n_pkts_bundle.0 = phi i32 [ 0, %if.end18 ], [ %n_pkts_bundle.2, %while.cond20.backedge ]
  %bundle_sent.0 = phi i32 [ 0, %if.end18 ], [ %bundle_sent.2, %while.cond20.backedge ]
  %84 = ptrtoint ptr %tx_bndl_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_bndl_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool22.not = icmp eq i32 %85, 0
  br i1 %tobool22.not, label %while.cond20.if.end34_crit_edge, label %while.cond20.for.cond.i_crit_edge

while.cond20.for.cond.i_crit_edge:                ; preds = %while.cond20
  br label %for.cond.i

while.cond20.if.end34_crit_edge:                  ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %while.cond20.for.cond.i_crit_edge
  %tmp_list.0.in.i = phi ptr [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %txq, %while.cond20.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ %inc.i139, %for.cond.i.for.cond.i_crit_edge ], [ 0, %while.cond20.for.cond.i_crit_edge ]
  %86 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i138 = icmp eq ptr %tmp_list.0.i, %txq
  %inc.i139 = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i138, label %get_queue_depth.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %depth.0.i)
  %cmp25 = icmp slt i32 %depth.0.i, 2
  %and = and i32 %85, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %or.cond179 = select i1 %cmp25, i1 true, i1 %tobool30.not
  br i1 %or.cond179, label %get_queue_depth.exit.if.end34_crit_edge, label %if.then31

get_queue_depth.exit.if.end34_crit_edge:          ; preds = %get_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %get_queue_depth.exit
  %87 = ptrtoint ptr %target1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %target1.i, align 4
  %89 = ptrtoint ptr %svc_id to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %svc_id, align 4
  %91 = zext i16 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %90, label %if.end.i [
    i16 1, label %if.then31.if.end.thread.i_crit_edge
    i16 256, label %if.then31.if.end.thread.i_crit_edge212
  ]

if.then31.if.end.thread.i_crit_edge212:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i

if.then31.if.end.thread.i_crit_edge:              ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i

if.end.i:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %88, i32 0, i32 10
  %92 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ar.i, align 4
  %96 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %endpoint, align 4
  %arrayidx.i = getelementptr %struct.ath6kl, ptr %95, i32 0, i32 40, i32 %97
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i, align 1
  %phi.cast.i = zext i8 %99 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %99)
  %cmp19.i = icmp ugt i8 %99, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp23.not.i = icmp eq i8 %99, 1
  %or.cond.i = or i1 %cmp19.i, %cmp23.not.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp27.i = icmp eq i8 %99, 0
  %notmask.i = shl nsw i32 -1, %phi.cast.i
  %sub.i = xor i32 %notmask.i, -1
  %spec.select.i = select i1 %cmp27.i, i32 2, i32 %sub.i
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end.i, %if.then31.if.end.thread.i_crit_edge, %if.then31.if.end.thread.i_crit_edge212
  %or.cond133.i = phi i1 [ %or.cond.i, %if.end.i ], [ true, %if.then31.if.end.thread.i_crit_edge ], [ true, %if.then31.if.end.thread.i_crit_edge212 ]
  %100 = phi i32 [ %spec.select.i, %if.end.i ], [ 15, %if.then31.if.end.thread.i_crit_edge ], [ 15, %if.then31.if.end.thread.i_crit_edge212 ]
  %msg_per_bndl_max131.i = getelementptr inbounds %struct.htc_target, ptr %88, i32 0, i32 15
  %dev13132.i = getelementptr inbounds %struct.htc_target, ptr %88, i32 0, i32 10
  %tx_bndl_mask36.i = getelementptr inbounds %struct.htc_target, ptr %88, i32 0, i32 16
  %neg.i140 = xor i32 %100, -1
  %max_tx_bndl_sz.i.i = getelementptr inbounds %struct.htc_target, ptr %88, i32 0, i32 19
  %block_mask.i.i = getelementptr inbounds %struct.htc_target, ptr %88, i32 0, i32 21
  %tgt_cred_sz.i.i141 = getelementptr inbounds %struct.htc_target, ptr %88, i32 0, i32 6
  br label %while.cond.i

while.cond.i:                                     ; preds = %for.end.i.while.cond.i_crit_edge, %if.end.thread.i
  %n_sent_bundle.0.i = phi i32 [ 0, %if.end.thread.i ], [ %inc.i160, %for.end.i.while.cond.i_crit_edge ]
  %tot_pkts_bundle.0.i = phi i32 [ 0, %if.end.thread.i ], [ %add.i161, %for.end.i.while.cond.i_crit_edge ]
  br label %for.cond.i.i147

for.cond.i.i147:                                  ; preds = %for.cond.i.i147.for.cond.i.i147_crit_edge, %while.cond.i
  %tmp_list.0.in.i.i142 = phi ptr [ %txq, %while.cond.i ], [ %tmp_list.0.i.i144, %for.cond.i.i147.for.cond.i.i147_crit_edge ]
  %depth.0.i.i143 = phi i32 [ 0, %while.cond.i ], [ %inc.i.i146, %for.cond.i.i147.for.cond.i.i147_crit_edge ]
  %101 = ptrtoint ptr %tmp_list.0.in.i.i142 to i32
  call void @__asan_load4_noabort(i32 %101)
  %tmp_list.0.i.i144 = load ptr, ptr %tmp_list.0.in.i.i142, align 4
  %cmp.i.not.i.i145 = icmp eq ptr %tmp_list.0.i.i144, %txq
  %inc.i.i146 = add i32 %depth.0.i.i143, 1
  br i1 %cmp.i.not.i.i145, label %get_queue_depth.exit.i148, label %for.cond.i.i147.for.cond.i.i147_crit_edge

for.cond.i.i147.for.cond.i.i147_crit_edge:        ; preds = %for.cond.i.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i147

get_queue_depth.exit.i148:                        ; preds = %for.cond.i.i147
  %102 = ptrtoint ptr %msg_per_bndl_max131.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %msg_per_bndl_max131.i, align 4
  %104 = call i32 @llvm.smin.i32(i32 %depth.0.i.i143, i32 %103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %104)
  %cmp9.i = icmp slt i32 %104, 2
  br i1 %cmp9.i, label %get_queue_depth.exit.i148.ath6kl_htc_tx_bundle.exit_crit_edge, label %if.end12.i

get_queue_depth.exit.i148.ath6kl_htc_tx_bundle.exit_crit_edge: ; preds = %get_queue_depth.exit.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_tx_bundle.exit

if.end12.i:                                       ; preds = %get_queue_depth.exit.i148
  %105 = ptrtoint ptr %dev13132.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev13132.i, align 4
  %ar14.i = getelementptr inbounds %struct.ath6kl_device, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %ar14.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ar14.i, align 4
  %hif_ops.i.i = getelementptr inbounds %struct.ath6kl, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hif_ops.i.i, align 4
  %scatter_req_get.i.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %scatter_req_get.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %scatter_req_get.i.i, align 4
  %call.i.i = call ptr %112(ptr noundef %108) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.49) #9
  br label %ath6kl_htc_tx_bundle.exit

if.end17.i:                                       ; preds = %if.end12.i
  br i1 %or.cond133.i, label %if.end17.i.for.body.lr.ph.i.i_crit_edge, label %if.then25.i

if.end17.i.for.body.lr.ph.i.i_crit_edge:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i.i

if.then25.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %scat_q_depth.i = getelementptr inbounds %struct.hif_scatter_req, ptr %call.i.i, i32 0, i32 11
  %113 = ptrtoint ptr %scat_q_depth.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %scat_q_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %114)
  %cmp32.i = icmp ult i32 %114, 4
  %115 = ptrtoint ptr %tx_bndl_mask36.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_bndl_mask36.i, align 4
  %or.i = or i32 %116, %100
  %and.i149 = and i32 %116, %neg.i140
  %or.sink.i = select i1 %cmp32.i, i32 %and.i149, i32 %or.i
  store i32 %or.sink.i, ptr %tx_bndl_mask36.i, align 4
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then25.i, %if.end17.i.for.body.lr.ph.i.i_crit_edge
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef %104) #9
  %len.i = getelementptr inbounds %struct.hif_scatter_req, ptr %call.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %len.i, align 4
  %scat_entries.i = getelementptr inbounds %struct.hif_scatter_req, ptr %call.i.i, i32 0, i32 7
  %118 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %scat_entries.i, align 4
  %119 = ptrtoint ptr %max_tx_bndl_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max_tx_bndl_sz.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %ath6kl_htc_tx_buf_align.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %rem_scat.0114.i.i = phi i32 [ %120, %for.body.lr.ph.i.i ], [ %sub.i.i154, %ath6kl_htc_tx_buf_align.exit.i.i.for.body.i.i_crit_edge ]
  %i.0113.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc28.i.i, %ath6kl_htc_tx_buf_align.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.hif_scatter_req, ptr %call.i.i, i32 0, i32 12, i32 %i.0113.i.i
  %packet1.i.i = getelementptr %struct.hif_scatter_req, ptr %call.i.i, i32 0, i32 12, i32 %i.0113.i.i, i32 2
  %121 = ptrtoint ptr %packet1.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %packet1.i.i, align 4
  %122 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %txq, align 4
  %cmp.i.not.i104.i = icmp eq ptr %123, %txq
  br i1 %cmp.i.not.i104.i, label %for.body.i.i.for.end.i.i_crit_edge, label %if.end.i.i151

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end.i.i151:                                    ; preds = %for.body.i.i
  %act_len.i.i = getelementptr inbounds %struct.htc_packet, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %act_len.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %act_len.i.i, align 4
  %add.i.i150 = add i32 %125, 6
  %126 = ptrtoint ptr %block_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %block_mask.i.i, align 4
  %add2.i.i = add i32 %add.i.i150, %127
  %neg.i.i = xor i32 %127, -1
  %and.i.i = and i32 %add2.i.i, %neg.i.i
  %128 = ptrtoint ptr %tgt_cred_sz.i.i141 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tgt_cred_sz.i.i141, align 4
  %rem.i.i.i = urem i32 %and.i.i, %129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i151.lor.lhs.false.i.i_crit_edge, label %if.end.i.i.i152

if.end.i.i151.lor.lhs.false.i.i_crit_edge:        ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

if.end.i.i.i152:                                  ; preds = %if.end.i.i151
  %130 = ptrtoint ptr %conn_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %conn_flags.i.i.i, align 4
  %and.i.i.i = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i152.for.end.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i152.for.end.i.i_crit_edge:            ; preds = %if.end.i.i.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i152
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %and.i.i)
  %cmp.i97.i.i = icmp ugt i32 %129, %and.i.i
  %sub.i.i.i = sub i32 %129, %and.i.i
  %cond.i.i.i = select i1 %cmp.i97.i.i, i32 %sub.i.i.i, i32 %rem.i.i.i
  %132 = add i32 %cond.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %132)
  %133 = icmp ult i32 %132, 255
  br i1 %133, label %if.then6.i.i.i, label %if.end3.i.i.i.for.end.i.i_crit_edge

if.end3.i.i.i.for.end.i.i_crit_edge:              ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.then6.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i = add i32 %cond.i.i.i, %and.i.i
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then6.i.i.i, %if.end.i.i151.lor.lhs.false.i.i_crit_edge
  %len.0.i.i = phi i32 [ %and.i.i, %if.end.i.i151.lor.lhs.false.i.i_crit_edge ], [ %add.i.i.i, %if.then6.i.i.i ]
  %retval.0.i.i.i = phi i32 [ 0, %if.end.i.i151.lor.lhs.false.i.i_crit_edge ], [ %cond.i.i.i, %if.then6.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rem_scat.0114.i.i, i32 %len.0.i.i)
  %cmp6.i.i153 = icmp slt i32 %rem_scat.0114.i.i, %len.0.i.i
  br i1 %cmp6.i.i153, label %lor.lhs.false.i.i.for.end.i.i_crit_edge, label %if.end8.i.i

lor.lhs.false.i.i.for.end.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end8.i.i:                                      ; preds = %lor.lhs.false.i.i
  %sub.i.i154 = sub i32 %rem_scat.0114.i.i, %len.0.i.i
  %call.i.i.i.i155 = call zeroext i1 @__list_del_entry_valid(ptr noundef %123) #9
  br i1 %call.i.i.i.i155, label %if.end.i.i.i.i156, label %if.end8.i.i.list_del.exit.i.i_crit_edge

if.end8.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i.i156:                                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i.i.i, align 4
  %136 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %123, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev1.i.i.i.i.i, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %135, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i156, %if.end8.i.i.list_del.exit.i.i_crit_edge
  %140 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 256 to ptr), ptr %123, align 4
  %prev.i.i.i157 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i.i.i157 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i157, align 4
  %142 = ptrtoint ptr %packet1.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %123, ptr %packet1.i.i, align 4
  %flags12.i.i = getelementptr inbounds %struct.htc_packet, ptr %123, i32 0, i32 8, i32 0, i32 2
  %143 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %flags12.i.i, align 4
  %145 = or i8 %144, 2
  %seqno.i.i = getelementptr inbounds %struct.htc_packet, ptr %123, i32 0, i32 8, i32 0, i32 3
  %146 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %seqno.i.i, align 4
  %buf.i.i.i = getelementptr inbounds %struct.htc_packet, ptr %123, i32 0, i32 3
  %148 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %buf.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %149, i32 -6
  store ptr %add.ptr.i.i.i, ptr %buf.i.i.i, align 4
  %payld_len.i.i.i = getelementptr i8, ptr %149, i32 -4
  %150 = ptrtoint ptr %act_len.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %act_len.i.i, align 4
  %conv.i98.i.i = trunc i32 %151 to i16
  %152 = ptrtoint ptr %payld_len.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 2)
  store i16 %conv.i98.i.i, ptr %payld_len.i.i.i, align 1
  %flags2.i.i.i = getelementptr i8, ptr %149, i32 -5
  %153 = ptrtoint ptr %flags2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %145, ptr %flags2.i.i.i, align 1
  %endpoint.i.i.i = getelementptr inbounds %struct.htc_packet, ptr %123, i32 0, i32 6
  %154 = ptrtoint ptr %endpoint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %endpoint.i.i.i, align 4
  %conv3.i.i.i = trunc i32 %155 to i8
  %156 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv3.i.i.i, ptr %add.ptr.i.i.i, align 1
  %conv4.i.i.i = trunc i32 %retval.0.i.i.i to i8
  %ctrl.i.i.i = getelementptr i8, ptr %149, i32 -2
  %157 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv4.i.i.i, ptr %ctrl.i.i.i, align 1
  %conv5.i.i.i = trunc i32 %147 to i8
  %arrayidx7.i.i.i = getelementptr i8, ptr %149, i32 -1
  %158 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv5.i.i.i, ptr %arrayidx7.i.i.i, align 1
  %159 = load ptr, ptr %buf.i.i.i, align 4
  %160 = ptrtoint ptr %159 to i32
  %and.i99.i.i = and i32 %160, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99.i.i)
  %cmp.i100.i.i = icmp eq i32 %and.i99.i.i, 0
  br i1 %cmp.i100.i.i, label %list_del.exit.i.i.ath6kl_htc_tx_buf_align.exit.i.i_crit_edge, label %if.then.i.i.i

list_del.exit.i.i.ath6kl_htc_tx_buf_align.exit.i.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_tx_buf_align.exit.i.i

if.then.i.i.i:                                    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %act_len.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %act_len.i.i, align 4
  %add16.i.i = add i32 %162, 6
  %add.ptr.i101.i.i = getelementptr i8, ptr %159, i32 -4
  %163 = ptrtoint ptr %add.ptr.i101.i.i to i32
  %add.i102.i.i = add i32 %163, 3
  %and1.i.i.i = and i32 %add.i102.i.i, -4
  %164 = inttoptr i32 %and1.i.i.i to ptr
  %165 = call ptr @memmove(ptr %164, ptr %159, i32 %add16.i.i)
  %166 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %164, ptr %buf.i.i.i, align 4
  br label %ath6kl_htc_tx_buf_align.exit.i.i

ath6kl_htc_tx_buf_align.exit.i.i:                 ; preds = %if.then.i.i.i, %list_del.exit.i.i.ath6kl_htc_tx_buf_align.exit.i.i_crit_edge
  %167 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %buf.i.i.i, align 4
  %169 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %168, ptr %arrayidx.i.i, align 4
  %len23.i.i = getelementptr %struct.hif_scatter_req, ptr %call.i.i, i32 0, i32 12, i32 %i.0113.i.i, i32 1
  %170 = ptrtoint ptr %len23.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %len.0.i.i, ptr %len23.i.i, align 4
  %171 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %len.i, align 4
  %add25.i.i = add i32 %172, %len.0.i.i
  store i32 %add25.i.i, ptr %len.i, align 4
  %173 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %scat_entries.i, align 4
  %inc.i105.i = add i32 %174, 1
  store i32 %inc.i105.i, ptr %scat_entries.i, align 4
  %175 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %seqno.i.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.53, i32 noundef %i.0113.i.i, ptr noundef %123, i32 noundef %176, i32 noundef %len.0.i.i, i32 noundef %sub.i.i154) #9
  %inc28.i.i = add nuw nsw i32 %i.0113.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc28.i.i, %104
  br i1 %exitcond.not.i.i, label %ath6kl_htc_tx_buf_align.exit.i.i.for.end.i.i_crit_edge, label %ath6kl_htc_tx_buf_align.exit.i.i.for.body.i.i_crit_edge

ath6kl_htc_tx_buf_align.exit.i.i.for.body.i.i_crit_edge: ; preds = %ath6kl_htc_tx_buf_align.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

ath6kl_htc_tx_buf_align.exit.i.i.for.end.i.i_crit_edge: ; preds = %ath6kl_htc_tx_buf_align.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %ath6kl_htc_tx_buf_align.exit.i.i.for.end.i.i_crit_edge, %lor.lhs.false.i.i.for.end.i.i_crit_edge, %if.end3.i.i.i.for.end.i.i_crit_edge, %if.end.i.i.i152.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %tobool59.not.i = phi i1 [ true, %ath6kl_htc_tx_buf_align.exit.i.i.for.end.i.i_crit_edge ], [ false, %lor.lhs.false.i.i.for.end.i.i_crit_edge ], [ false, %if.end3.i.i.i.for.end.i.i_crit_edge ], [ false, %if.end.i.i.i152.for.end.i.i_crit_edge ], [ true, %for.body.i.i.for.end.i.i_crit_edge ]
  %177 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %scat_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %178)
  %cmp30.i.i = icmp slt i32 %178, 2
  br i1 %cmp30.i.i, label %for.cond35.preheader.i.i, label %if.end45.i

for.cond35.preheader.i.i:                         ; preds = %for.end.i.i
  %i.1119.i.i = add i32 %178, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1119.i.i)
  %cmp36120.i.i = icmp sgt i32 %i.1119.i.i, -1
  br i1 %cmp36120.i.i, label %for.cond35.preheader.i.i.for.body38.i.i_crit_edge, label %for.cond35.preheader.i.i.if.then42.i_crit_edge

for.cond35.preheader.i.i.if.then42.i_crit_edge:   ; preds = %for.cond35.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i

for.cond35.preheader.i.i.for.body38.i.i_crit_edge: ; preds = %for.cond35.preheader.i.i
  br label %for.body38.i.i

for.body38.i.i:                                   ; preds = %for.inc48.i.i.for.body38.i.i_crit_edge, %for.cond35.preheader.i.i.for.body38.i.i_crit_edge
  %i.1121.i.i = phi i32 [ %i.1.i.i, %for.inc48.i.i.for.body38.i.i_crit_edge ], [ %i.1119.i.i, %for.cond35.preheader.i.i.for.body38.i.i_crit_edge ]
  %packet41.i.i = getelementptr %struct.hif_scatter_req, ptr %call.i.i, i32 0, i32 12, i32 %i.1121.i.i, i32 2
  %179 = ptrtoint ptr %packet41.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %packet41.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %180, null
  br i1 %tobool42.not.i.i, label %for.body38.i.i.for.inc48.i.i_crit_edge, label %if.then43.i.i

for.body38.i.i.for.inc48.i.i_crit_edge:           ; preds = %for.body38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc48.i.i

if.then43.i.i:                                    ; preds = %for.body38.i.i
  %buf44.i.i = getelementptr inbounds %struct.htc_packet, ptr %180, i32 0, i32 3
  %181 = ptrtoint ptr %buf44.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %buf44.i.i, align 4
  %add.ptr45.i.i = getelementptr i8, ptr %182, i32 6
  store ptr %add.ptr45.i.i, ptr %buf44.i.i, align 4
  %183 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %txq, align 4
  %call.i.i104.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %180, ptr noundef nonnull %txq, ptr noundef %184) #9
  br i1 %call.i.i104.i.i, label %if.end.i.i105.i.i, label %if.then43.i.i.for.inc48.i.i_crit_edge

if.then43.i.i.for.inc48.i.i_crit_edge:            ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc48.i.i

if.end.i.i105.i.i:                                ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i.i158 = getelementptr inbounds %struct.list_head, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %prev1.i.i.i.i158 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %180, ptr %prev1.i.i.i.i158, align 4
  %186 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %184, ptr %180, align 4
  %prev3.i.i.i.i159 = getelementptr inbounds %struct.list_head, ptr %180, i32 0, i32 1
  %187 = ptrtoint ptr %prev3.i.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %txq, ptr %prev3.i.i.i.i159, align 4
  %188 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr %180, ptr %txq, align 4
  br label %for.inc48.i.i

for.inc48.i.i:                                    ; preds = %if.end.i.i105.i.i, %if.then43.i.i.for.inc48.i.i_crit_edge, %for.body38.i.i.for.inc48.i.i_crit_edge
  %i.1.i.i = add i32 %i.1121.i.i, -1
  %cmp36.i.i = icmp sgt i32 %i.1.i.i, -1
  br i1 %cmp36.i.i, label %for.inc48.i.i.for.body38.i.i_crit_edge, label %for.inc48.i.i.if.then42.i_crit_edge

for.inc48.i.i.if.then42.i_crit_edge:              ; preds = %for.inc48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i

for.inc48.i.i.for.body38.i.i_crit_edge:           ; preds = %for.inc48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body38.i.i

if.then42.i:                                      ; preds = %for.inc48.i.i.if.then42.i_crit_edge, %for.cond35.preheader.i.i.if.then42.i_crit_edge
  %189 = ptrtoint ptr %dev13132.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev13132.i, align 4
  %ar44.i = getelementptr inbounds %struct.ath6kl_device, ptr %190, i32 0, i32 4
  %191 = ptrtoint ptr %ar44.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ar44.i, align 4
  %hif_ops.i106.i = getelementptr inbounds %struct.ath6kl, ptr %192, i32 0, i32 5
  %193 = ptrtoint ptr %hif_ops.i106.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %hif_ops.i106.i, align 4
  %scatter_req_add.i.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %194, i32 0, i32 5
  %195 = ptrtoint ptr %scatter_req_add.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %scatter_req_add.i.i, align 4
  call void %196(ptr noundef %192, ptr noundef nonnull %call.i.i) #9
  br label %ath6kl_htc_tx_bundle.exit

if.end45.i:                                       ; preds = %for.end.i.i
  %complete.i = getelementptr inbounds %struct.hif_scatter_req, ptr %call.i.i, i32 0, i32 5
  %197 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @htc_async_tx_scat_complete, ptr %complete.i, align 4
  %inc.i160 = add i32 %n_sent_bundle.0.i, 1
  %add.i161 = add i32 %178, %tot_pkts_bundle.0.i
  %198 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %len.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.51, i32 noundef %199, i32 noundef %178) #9
  %200 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %scat_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp50115.i = icmp sgt i32 %201, 0
  br i1 %cmp50115.i, label %if.end45.i.for.body.i_crit_edge, label %if.end45.i.for.end.i_crit_edge

if.end45.i.for.end.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end45.i.for.body.i_crit_edge:                  ; preds = %if.end45.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end45.i.for.body.i_crit_edge
  %i.0116.i = phi i32 [ %inc56.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end45.i.for.body.i_crit_edge ]
  %packet53.i = getelementptr %struct.hif_scatter_req, ptr %call.i.i, i32 0, i32 12, i32 %i.0116.i, i32 2
  %202 = ptrtoint ptr %packet53.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %packet53.i, align 4
  %status54.i = getelementptr inbounds %struct.htc_packet, ptr %203, i32 0, i32 7
  %204 = ptrtoint ptr %status54.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %status54.i, align 4
  %endpoint55.i = getelementptr inbounds %struct.htc_packet, ptr %203, i32 0, i32 6
  %206 = ptrtoint ptr %endpoint55.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %endpoint55.i, align 4
  %buf.i = getelementptr inbounds %struct.htc_packet, ptr %203, i32 0, i32 3
  %208 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %buf.i, align 4
  %act_len.i162 = getelementptr inbounds %struct.htc_packet, ptr %203, i32 0, i32 5
  %210 = ptrtoint ptr %act_len.i162 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %act_len.i162, align 4
  call fastcc void @trace_ath6kl_htc_tx(i32 noundef %205, i32 noundef %207, ptr noundef %209, i32 noundef %211) #9
  %inc56.i = add nuw nsw i32 %i.0116.i, 1
  %212 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %scat_entries.i, align 4
  %cmp50.i = icmp slt i32 %inc56.i, %213
  br i1 %cmp50.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end45.i.for.end.i_crit_edge
  %214 = ptrtoint ptr %dev13132.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev13132.i, align 4
  %call58.i = call i32 @ath6kl_hif_submit_scat_req(ptr noundef %215, ptr noundef nonnull %call.i.i, i1 noundef zeroext false) #9
  br i1 %tobool59.not.i, label %for.end.i.while.cond.i_crit_edge, label %for.end.i.ath6kl_htc_tx_bundle.exit_crit_edge

for.end.i.ath6kl_htc_tx_bundle.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_tx_bundle.exit

for.end.i.while.cond.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

ath6kl_htc_tx_bundle.exit:                        ; preds = %for.end.i.ath6kl_htc_tx_bundle.exit_crit_edge, %if.then42.i, %if.then16.i, %get_queue_depth.exit.i148.ath6kl_htc_tx_bundle.exit_crit_edge
  %n_sent_bundle.1.i = phi i32 [ %n_sent_bundle.0.i, %if.then42.i ], [ %n_sent_bundle.0.i, %if.then16.i ], [ %n_sent_bundle.0.i, %get_queue_depth.exit.i148.ath6kl_htc_tx_bundle.exit_crit_edge ], [ %inc.i160, %for.end.i.ath6kl_htc_tx_bundle.exit_crit_edge ]
  %tot_pkts_bundle.1.i = phi i32 [ %tot_pkts_bundle.0.i, %if.then42.i ], [ %tot_pkts_bundle.0.i, %if.then16.i ], [ %tot_pkts_bundle.0.i, %get_queue_depth.exit.i148.ath6kl_htc_tx_bundle.exit_crit_edge ], [ %add.i161, %for.end.i.ath6kl_htc_tx_bundle.exit_crit_edge ]
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.52, i32 noundef %n_sent_bundle.1.i) #9
  %add = add i32 %n_sent_bundle.1.i, %bundle_sent.0
  %add32 = add i32 %tot_pkts_bundle.1.i, %n_pkts_bundle.0
  br label %if.end34

if.end34:                                         ; preds = %ath6kl_htc_tx_bundle.exit, %get_queue_depth.exit.if.end34_crit_edge, %while.cond20.if.end34_crit_edge
  %n_pkts_bundle.2 = phi i32 [ %n_pkts_bundle.0, %get_queue_depth.exit.if.end34_crit_edge ], [ %n_pkts_bundle.0, %while.cond20.if.end34_crit_edge ], [ %add32, %ath6kl_htc_tx_bundle.exit ]
  %bundle_sent.2 = phi i32 [ %bundle_sent.0, %get_queue_depth.exit.if.end34_crit_edge ], [ %bundle_sent.0, %while.cond20.if.end34_crit_edge ], [ %add, %ath6kl_htc_tx_bundle.exit ]
  %216 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile ptr, ptr %txq, align 4
  %cmp.i163.not = icmp eq ptr %217, %txq
  br i1 %cmp.i163.not, label %while.end, label %if.end38

if.end38:                                         ; preds = %if.end34
  %call.i.i165 = call zeroext i1 @__list_del_entry_valid(ptr noundef %217) #9
  br i1 %call.i.i165, label %if.end.i.i166, label %if.end38.list_del.exit_crit_edge

if.end38.list_del.exit_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i166:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %prev.i.i, align 4
  %220 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %217, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %219, ptr %prev1.i.i.i, align 4
  %223 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %221, ptr %219, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i166, %if.end38.list_del.exit_crit_edge
  %224 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr inttoptr (i32 256 to ptr), ptr %217, align 4
  %prev.i167 = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  %225 = ptrtoint ptr %prev.i167 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i167, align 4
  %flags = getelementptr inbounds %struct.htc_packet, ptr %217, i32 0, i32 8, i32 0, i32 2
  %226 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %flags, align 4
  %seqno = getelementptr inbounds %struct.htc_packet, ptr %217, i32 0, i32 8, i32 0, i32 3
  %228 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %seqno, align 4
  %buf.i168 = getelementptr inbounds %struct.htc_packet, ptr %217, i32 0, i32 3
  %230 = ptrtoint ptr %buf.i168 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %buf.i168, align 4
  %add.ptr.i = getelementptr i8, ptr %231, i32 -6
  store ptr %add.ptr.i, ptr %buf.i168, align 4
  %payld_len.i = getelementptr i8, ptr %231, i32 -4
  %act_len.i169 = getelementptr inbounds %struct.htc_packet, ptr %217, i32 0, i32 5
  %232 = ptrtoint ptr %act_len.i169 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %act_len.i169, align 4
  %conv.i170 = trunc i32 %233 to i16
  %234 = ptrtoint ptr %payld_len.i to i32
  call void @__asan_storeN_noabort(i32 %234, i32 2)
  store i16 %conv.i170, ptr %payld_len.i, align 1
  %flags2.i = getelementptr i8, ptr %231, i32 -5
  %235 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %227, ptr %flags2.i, align 1
  %endpoint.i = getelementptr inbounds %struct.htc_packet, ptr %217, i32 0, i32 6
  %236 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %endpoint.i, align 4
  %conv3.i = trunc i32 %237 to i8
  %238 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv3.i, ptr %add.ptr.i, align 1
  %ctrl.i = getelementptr i8, ptr %231, i32 -2
  %239 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %ctrl.i, align 1
  %conv5.i = trunc i32 %229 to i8
  %arrayidx7.i = getelementptr i8, ptr %231, i32 -1
  %240 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv5.i, ptr %arrayidx7.i, align 1
  %call40 = call fastcc i32 @ath6kl_htc_tx_issue(ptr noundef %target, ptr noundef %217)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %list_del.exit.while.cond20.backedge_crit_edge, label %if.then42

list_del.exit.while.cond20.backedge_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond20.backedge

if.then42:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %status43 = getelementptr inbounds %struct.htc_packet, ptr %217, i32 0, i32 7
  %241 = ptrtoint ptr %status43 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %call40, ptr %status43, align 4
  %completion = getelementptr inbounds %struct.htc_packet, ptr %217, i32 0, i32 9
  %242 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %completion, align 4
  %context = getelementptr inbounds %struct.htc_packet, ptr %217, i32 0, i32 10
  %244 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %context, align 4
  call void %243(ptr noundef %245, ptr noundef %217) #9
  br label %while.cond20.backedge

while.cond20.backedge:                            ; preds = %if.then42, %list_del.exit.while.cond20.backedge_crit_edge
  br label %while.cond20

while.end:                                        ; preds = %if.end34
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  %246 = ptrtoint ptr %tx_bundles to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %tx_bundles, align 4
  %add46 = add i32 %247, %bundle_sent.2
  store i32 %add46, ptr %tx_bundles, align 4
  %248 = ptrtoint ptr %tx_pkt_bundled to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %tx_pkt_bundled, align 4
  %add48 = add i32 %249, %n_pkts_bundle.2
  store i32 %add48, ptr %tx_pkt_bundled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bundle_sent.2)
  %tobool49.not = icmp eq i32 %bundle_sent.2, 0
  br i1 %tobool49.not, label %if.then50, label %if.else

if.then50:                                        ; preds = %while.end
  %250 = ptrtoint ptr %tx_bndl_mask to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %tx_bndl_mask, align 4
  %and54 = and i32 %251, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %or.cond = select i1 %tobool55.not, i1 %cmp75, i1 false
  br i1 %or.cond, label %if.then60, label %if.then50.if.end82_crit_edge

if.then50.if.end82_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then60:                                        ; preds = %if.then50
  %252 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx80, align 4
  %inc62 = add i32 %253, 1
  store i32 %inc62, ptr %arrayidx80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1499, i32 %inc62)
  %cmp63 = icmp ugt i32 %inc62, 1499
  br i1 %cmp63, label %if.then65, label %if.then60.if.end82_crit_edge

if.then60.if.end82_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then65:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %254 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 0, ptr %arrayidx80, align 4
  %or = or i32 %251, %shl
  %255 = ptrtoint ptr %tx_bndl_mask to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %or, ptr %tx_bndl_mask, align 4
  br label %if.end82

if.else:                                          ; preds = %while.end
  br i1 %cmp75, label %if.then77, label %if.else.if.end82_crit_edge

if.else.if.end82_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then77:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %256 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 0, ptr %arrayidx80, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.else.if.end82_crit_edge, %if.then65, %if.then60.if.end82_crit_edge, %if.then50.if.end82_crit_edge
  %257 = ptrtoint ptr %txq12 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile ptr, ptr %txq12, align 4
  %cmp.i.not = icmp eq ptr %258, %txq12
  br i1 %cmp.i.not, label %if.end82.while.end83_crit_edge, label %if.end82.if.end14_crit_edge

if.end82.if.end14_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end82.while.end83_crit_edge:                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end83

while.end83:                                      ; preds = %if.end82.while.end83_crit_edge, %ath6kl_htc_tx_pkts_get.exit.while.end83_crit_edge, %if.end11.while.end83_crit_edge
  %259 = ptrtoint ptr %tx_proc_cnt to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %tx_proc_cnt, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end83, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %txq) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_htc_tx_issue(ptr nocapture noundef readonly %target, ptr noundef %packet) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 9
  %0 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %completion, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @.str.57, ptr @.str.58
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 5
  %2 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %act_len, align 4
  %add = add i32 %3, 6
  %block_mask = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 21
  %4 = ptrtoint ptr %block_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_mask, align 4
  %add1 = add i32 %add, %5
  %neg = xor i32 %5, -1
  %and = and i32 %add1, %neg
  %seqno = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 8, i32 0, i32 3
  %6 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seqno, align 4
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar, align 4
  %mbox_info = getelementptr inbounds %struct.ath6kl, ptr %11, i32 0, i32 73
  %12 = ptrtoint ptr %mbox_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbox_info, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.56, i32 noundef %add, i32 noundef %7, i32 noundef %and, i32 noundef %13, ptr noundef nonnull %spec.select) #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %ar7 = getelementptr inbounds %struct.ath6kl_device, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ar7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ar7, align 4
  %mbox_info10 = getelementptr inbounds %struct.ath6kl, ptr %17, i32 0, i32 73
  %18 = ptrtoint ptr %mbox_info10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbox_info10, align 4
  %buf = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 3
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  br i1 %tobool.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %19, ptr noundef %21, i32 noundef %and, i32 noundef 658) #9
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hif_ops.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i = tail call i32 %25(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %and, i32 noundef 658) #9
  %status12 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 7
  %26 = ptrtoint ptr %status12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i, ptr %status12, align 4
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 6
  store ptr %add.ptr, ptr %buf, align 4
  br label %if.end22

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.59, i32 noundef %19, ptr noundef %21, i32 noundef %and, i32 noundef 674) #9
  %hif_ops.i46 = getelementptr inbounds %struct.ath6kl, ptr %17, i32 0, i32 5
  %29 = ptrtoint ptr %hif_ops.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hif_ops.i46, align 4
  %write_async.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_async.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_async.i, align 4
  %call.i47 = tail call i32 %32(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %and, i32 noundef 674, ptr noundef %packet) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then5
  %status.0 = phi i32 [ %call.i, %if.then5 ], [ %call.i47, %if.else ]
  %endpoint = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 6
  %33 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %endpoint, align 4
  %buf23 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 3
  %35 = ptrtoint ptr %buf23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf23, align 4
  tail call fastcc void @trace_ath6kl_htc_tx(i32 noundef %status.0, i32 noundef %34, ptr noundef %36, i32 noundef %add)
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htc_tx_comp_handler(ptr noundef %target, ptr noundef %packet) #0 align 64 {
entry:
  %container = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoint2 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 6
  %0 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %endpoint2, align 4
  %arrayidx = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %container) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %container, i32 0, i32 1
  %seqno = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 8, i32 0, i32 3
  %3 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seqno, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %4) #9
  tail call fastcc void @htc_tx_comp_update(ptr noundef %target, ptr noundef %arrayidx, ptr noundef %packet)
  %5 = ptrtoint ptr %container to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %container, ptr %container, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %container, ptr %2, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %packet, ptr noundef nonnull %container, ptr noundef nonnull %container) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %packet, ptr %2, align 4
  %8 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %container, ptr %packet, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %packet, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %container, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %container to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %packet, ptr %container, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %11 = ptrtoint ptr %container to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %container, align 4
  %cmp.i.not.i = icmp eq ptr %12, %container
  br i1 %cmp.i.not.i, label %list_add_tail.exit.htc_tx_complete.exit_crit_edge, label %if.end.i

list_add_tail.exit.htc_tx_complete.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_tx_complete.exit

if.end.i:                                         ; preds = %list_add_tail.exit
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end.i
  %tmp_list.0.in.i.i = phi ptr [ %container, %if.end.i ], [ %tmp_list.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %depth.0.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %15 = ptrtoint ptr %tmp_list.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp_list.0.i.i = load ptr, ptr %tmp_list.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp_list.0.i.i, %container
  %inc.i.i = add i32 %depth.0.i.i, 1
  br i1 %cmp.i.not.i.i, label %get_queue_depth.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

get_queue_depth.exit.i:                           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %14, i32 noundef %depth.0.i.i) #9
  %target.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %1, i32 10
  %16 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %target.i, align 4
  call void @ath6kl_tx_complete(ptr noundef %17, ptr noundef nonnull %container) #9
  br label %htc_tx_complete.exit

htc_tx_complete.exit:                             ; preds = %get_queue_depth.exit.i, %list_add_tail.exit.htc_tx_complete.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %container) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_credit_seek(ptr noundef %cred_info, ptr noundef %ep_dist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %svc_id = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %ep_dist, i32 0, i32 1
  %0 = ptrtoint ptr %svc_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %svc_id, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %1, label %entry.if.end15_crit_edge [
    i16 256, label %entry.if.end66_crit_edge
    i16 259, label %entry.if.then10_crit_edge
    i16 260, label %entry.if.then10_crit_edge119
  ]

entry.if.then10_crit_edge119:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %entry.if.then10_crit_edge, %entry.if.then10_crit_edge119
  %cred_assngd = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %ep_dist, i32 0, i32 6
  %3 = ptrtoint ptr %cred_assngd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cred_assngd, align 4
  %cred_norm = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %ep_dist, i32 0, i32 4
  %5 = ptrtoint ptr %cred_norm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cred_norm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp11.not = icmp slt i32 %4, %6
  br i1 %cmp11.not, label %if.then10.if.end15_crit_edge, label %if.then10.if.end66_crit_edge

if.then10.if.end66_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %entry.if.end15_crit_edge
  %cur_free_credits = getelementptr inbounds %struct.ath6kl_htc_credit_info, ptr %cred_info, i32 0, i32 1
  %7 = ptrtoint ptr %cur_free_credits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_free_credits, align 4
  %seek_cred = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %ep_dist, i32 0, i32 9
  %9 = ptrtoint ptr %seek_cred to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seek_cred, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp16 = icmp slt i32 %8, %10
  br i1 %cmp16, label %if.end22, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end22:                                         ; preds = %if.end15
  %lowestpri_ep_dist = getelementptr inbounds %struct.ath6kl_htc_credit_info, ptr %cred_info, i32 0, i32 2
  %prev = getelementptr inbounds %struct.ath6kl_htc_credit_info, ptr %cred_info, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %11)
  %curdist_list.0113 = load ptr, ptr %prev, align 4
  %cmp25.not114 = icmp eq ptr %curdist_list.0113, %lowestpri_ep_dist
  %cmp27115 = icmp eq ptr %curdist_list.0113, %ep_dist
  %or.cond116 = or i1 %cmp25.not114, %cmp27115
  br i1 %or.cond116, label %if.end22.for.end_crit_edge, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  br label %if.end30

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %if.end46
  %prev53 = getelementptr inbounds %struct.list_head, ptr %curdist_list.0117, i32 0, i32 1
  %12 = ptrtoint ptr %prev53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %curdist_list.0 = load ptr, ptr %prev53, align 4
  %cmp25.not = icmp eq ptr %curdist_list.0, %lowestpri_ep_dist
  %cmp27 = icmp eq ptr %curdist_list.0, %ep_dist
  %or.cond = or i1 %cmp25.not, %cmp27
  br i1 %or.cond, label %for.cond.for.end_crit_edge, label %for.cond.if.end30_crit_edge

for.cond.if.end30_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end30:                                         ; preds = %for.cond.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %curdist_list.0117 = phi ptr [ %curdist_list.0, %for.cond.if.end30_crit_edge ], [ %curdist_list.0113, %if.end22.if.end30_crit_edge ]
  %13 = ptrtoint ptr %seek_cred to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seek_cred, align 4
  %15 = ptrtoint ptr %cur_free_credits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_free_credits, align 4
  %sub.neg = sub i32 %16, %14
  %cred_assngd33 = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.0117, i32 0, i32 6
  %17 = ptrtoint ptr %cred_assngd33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cred_assngd33, align 4
  %sub34 = add i32 %sub.neg, %18
  %cred_min = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.0117, i32 0, i32 5
  %19 = ptrtoint ptr %cred_min to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cred_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub34, i32 %20)
  %cmp35.not = icmp slt i32 %sub34, %20
  br i1 %cmp35.not, label %if.end30.if.end46_crit_edge, label %if.then37

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then37:                                        ; preds = %if.end30
  %endpoint.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.0117, i32 0, i32 2
  %21 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %endpoint.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %22, i32 noundef %sub34) #9
  %23 = ptrtoint ptr %cred_assngd33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub34, ptr %cred_assngd33, align 4
  %credits1.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.0117, i32 0, i32 7
  %24 = ptrtoint ptr %credits1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %credits1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %sub34)
  %cmp.not.i = icmp sgt i32 %25, %sub34
  br i1 %cmp.not.i, label %if.end.i, label %if.then37.ath6kl_credit_reduce.exit_crit_edge

if.then37.ath6kl_credit_reduce.exit_crit_edge:    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_credit_reduce.exit

if.end.i:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i32 %25, %sub34
  %26 = ptrtoint ptr %credits1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub34, ptr %credits1.i, align 4
  %27 = ptrtoint ptr %cur_free_credits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_free_credits, align 4
  %add.i = add i32 %sub.i, %28
  store i32 %add.i, ptr %cur_free_credits, align 4
  br label %ath6kl_credit_reduce.exit

ath6kl_credit_reduce.exit:                        ; preds = %if.end.i, %if.then37.ath6kl_credit_reduce.exit_crit_edge
  %29 = ptrtoint ptr %cur_free_credits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_free_credits, align 4
  %31 = ptrtoint ptr %seek_cred to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seek_cred, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp42.not = icmp slt i32 %30, %32
  br i1 %cmp42.not, label %ath6kl_credit_reduce.exit.if.end46_crit_edge, label %ath6kl_credit_reduce.exit.for.end_crit_edge

ath6kl_credit_reduce.exit.for.end_crit_edge:      ; preds = %ath6kl_credit_reduce.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ath6kl_credit_reduce.exit.if.end46_crit_edge:     ; preds = %ath6kl_credit_reduce.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end46:                                         ; preds = %ath6kl_credit_reduce.exit.if.end46_crit_edge, %if.end30.if.end46_crit_edge
  %endpoint = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %curdist_list.0117, i32 0, i32 2
  %33 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %endpoint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp47 = icmp eq i32 %34, 0
  br i1 %cmp47, label %if.end46.for.end_crit_edge, label %for.cond

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end46.for.end_crit_edge, %ath6kl_credit_reduce.exit.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end22.for.end_crit_edge
  %35 = ptrtoint ptr %cur_free_credits to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur_free_credits, align 4
  %37 = ptrtoint ptr %seek_cred to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %seek_cred, align 4
  %39 = tail call i32 @llvm.smin.i32(i32 %36, i32 %38)
  br label %out

out:                                              ; preds = %for.end, %if.end15.out_crit_edge
  %credits.0 = phi i32 [ %10, %if.end15.out_crit_edge ], [ %39, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %credits.0)
  %tobool.not = icmp eq i32 %credits.0, 0
  br i1 %tobool.not, label %out.if.end66_crit_edge, label %if.then65

out.if.end66_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then65:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %endpoint.i105 = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %ep_dist, i32 0, i32 2
  %40 = ptrtoint ptr %endpoint.i105 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %endpoint.i105, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef %41, i32 noundef %credits.0) #9
  %credits1.i106 = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %ep_dist, i32 0, i32 7
  %42 = ptrtoint ptr %credits1.i106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %credits1.i106, align 4
  %add.i107 = add i32 %43, %credits.0
  store i32 %add.i107, ptr %credits1.i106, align 4
  %cred_assngd.i108 = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %ep_dist, i32 0, i32 6
  %44 = ptrtoint ptr %cred_assngd.i108 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cred_assngd.i108, align 4
  %add2.i = add i32 %45, %credits.0
  store i32 %add2.i, ptr %cred_assngd.i108, align 4
  %46 = ptrtoint ptr %cur_free_credits to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cur_free_credits, align 4
  %sub.i110 = sub i32 %47, %credits.0
  store i32 %sub.i110, ptr %cur_free_credits, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %out.if.end66_crit_edge, %if.then10.if.end66_crit_edge, %entry.if.end66_crit_edge
  %seek_cred67 = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %ep_dist, i32 0, i32 9
  %48 = ptrtoint ptr %seek_cred67 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %seek_cred67, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htc_tx_comp_update(ptr noundef %target, ptr noundef %endpoint, ptr nocapture noundef %packet) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 9
  %0 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %completion, align 4
  %buf = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 3
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 6
  store ptr %add.ptr, ptr %buf, align 4
  %status = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 7
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %endpoint2 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 6
  %5 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %endpoint2, align 4
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 5
  %7 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %act_len, align 4
  %cred_used = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 8, i32 0, i32 1
  %9 = ptrtoint ptr %cred_used to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cred_used, align 4
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.46, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #9
  %tx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  %11 = ptrtoint ptr %cred_used to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cred_used, align 4
  %cred_to_dist = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %cred_to_dist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cred_to_dist, align 4
  %add = add i32 %14, %12
  store i32 %add, ptr %cred_to_dist, align 4
  %txq = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end
  %tmp_list.0.in.i = phi ptr [ %txq, %if.end ], [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %txq
  %inc.i = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %get_queue_depth.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %txq_depth = getelementptr inbounds %struct.htc_endpoint, ptr %endpoint, i32 0, i32 4, i32 13
  %16 = ptrtoint ptr %txq_depth to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %depth.0.i, ptr %txq_depth, align 4
  %credit_info = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 4
  %17 = ptrtoint ptr %credit_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %credit_info, align 4
  %cred_dist_list = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.47, ptr noundef %18, ptr noundef %cred_dist_list) #9
  %19 = ptrtoint ptr %credit_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %credit_info, align 4
  tail call fastcc void @ath6kl_credit_distribute(ptr noundef %20, ptr noundef %cred_dist_list, i32 noundef 0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  br label %return

return:                                           ; preds = %get_queue_depth.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_tx_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htc_async_tx_scat_complete(ptr noundef %target, ptr noundef %scat_req) #0 align 64 {
entry:
  %tx_compq = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_compq) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %tx_compq, i32 0, i32 1
  %1 = ptrtoint ptr %tx_compq to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %tx_compq, ptr %tx_compq, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx_compq, ptr %0, align 4
  %len = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 3
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %scat_entries = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 7
  %5 = ptrtoint ptr %scat_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scat_entries, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.54, i32 noundef %4, i32 noundef %6) #9
  %status = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 6
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.55, i32 noundef %8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %packet2 = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 1, i32 1
  %9 = ptrtoint ptr %packet2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %packet2, align 4
  %endpoint4 = getelementptr inbounds %struct.htc_packet, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %endpoint4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %endpoint4, align 4
  %arrayidx5 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %12
  %13 = ptrtoint ptr %scat_entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scat_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp55 = icmp sgt i32 %14, 0
  br i1 %cmp55, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %packet9 = getelementptr %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 12, i32 %i.056, i32 2
  %15 = ptrtoint ptr %packet9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %packet9, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %do.end, label %if.end29

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 491, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end29:                                         ; preds = %for.body
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %status31 = getelementptr inbounds %struct.htc_packet, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %status31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %status31, align 4
  call fastcc void @htc_tx_comp_update(ptr noundef %target, ptr noundef %arrayidx5, ptr noundef nonnull %16)
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %16, ptr noundef %21, ptr noundef nonnull %tx_compq) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_add_tail.exit_crit_edge

if.end29.list_add_tail.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %0, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx_compq, ptr %16, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %16, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end29.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %26 = ptrtoint ptr %scat_entries to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scat_entries, align 4
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ar, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hif_ops.i, align 4
  %scatter_req_add.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %scatter_req_add.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scatter_req_add.i, align 4
  call void %35(ptr noundef %31, ptr noundef %scat_req) #9
  %36 = ptrtoint ptr %tx_compq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %tx_compq, align 4
  %cmp.i.not.i = icmp eq ptr %37, %tx_compq
  br i1 %cmp.i.not.i, label %for.end.cleanup_crit_edge, label %if.end.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  %38 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx5, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end.i
  %tmp_list.0.in.i.i = phi ptr [ %tx_compq, %if.end.i ], [ %tmp_list.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %depth.0.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %40 = ptrtoint ptr %tmp_list.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %tmp_list.0.i.i = load ptr, ptr %tmp_list.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp_list.0.i.i, %tx_compq
  %inc.i.i = add i32 %depth.0.i.i, 1
  br i1 %cmp.i.not.i.i, label %get_queue_depth.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

get_queue_depth.exit.i:                           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %39, i32 noundef %depth.0.i.i) #9
  %target.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %12, i32 10
  %41 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %target.i, align 4
  call void @ath6kl_tx_complete(ptr noundef %42, ptr noundef nonnull %tx_compq) #9
  br label %cleanup

cleanup:                                          ; preds = %get_queue_depth.exit.i, %for.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_compq) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath6kl_htc_tx(i32 noundef %status, i32 noundef %endpoint, ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_htc_tx, i32 0, i32 1), ptr blockaddress(@trace_ath6kl_htc_tx, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !208
  %call42 = tail call i32 @__traceiter_ath6kl_htc_tx(ptr noundef null, i32 noundef %status, i32 noundef %endpoint, ptr noundef %buf, i32 noundef %buf_len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !209
  %13 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_htc_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_htc_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath6kl_htc_tx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ath6kl_htc_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 248, ptr noundef nonnull @.str.19) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !207
  %31 = tail call i32 @llvm.read_register.i32(metadata !190) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath6kl_htc_tx(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_mbox_add_rxbuf_multiple(ptr noundef %target, ptr noundef %pkt_queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pkt_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %pkt_queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint1 = getelementptr inbounds %struct.htc_packet, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %endpoint1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %endpoint1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp sgt i32 %3, 8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.for.cond.i_crit_edge

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  %buf_len = getelementptr inbounds %struct.htc_packet, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf_len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.61, i32 noundef %3, i32 noundef %depth.0.i, i32 noundef %6) #9
  %7 = ptrtoint ptr %endpoint1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %endpoint1, align 4
  %arrayidx = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8
  %htc_flags = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 11
  %9 = ptrtoint ptr %htc_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %htc_flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end27, label %if.then9

if.then9:                                         ; preds = %get_queue_depth.exit
  %11 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pkt_queue, align 4
  %cmp19.not81 = icmp eq ptr %12, %pkt_queue
  br i1 %cmp19.not81, label %if.then9.cleanup_crit_edge, label %for.body.lr.ph

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then9
  %rx.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 5, i32 1
  %target.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 10
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %packet.082 = phi ptr [ %12, %for.body.lr.ph ], [ %tmp_pkt.0, %list_del.exit.for.body_crit_edge ]
  %13 = ptrtoint ptr %packet.082 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp_pkt.0 = load ptr, ptr %packet.082, align 4
  %status20 = getelementptr inbounds %struct.htc_packet, ptr %packet.082, i32 0, i32 7
  %14 = ptrtoint ptr %status20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -125, ptr %status20, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.082) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %packet.082, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %packet.082 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %packet.082, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %21 = ptrtoint ptr %packet.082 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.082, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %packet.082, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.60, i32 noundef %24, ptr noundef %packet.082) #9
  %25 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx.i, align 4
  %27 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %target.i, align 4
  tail call void %26(ptr noundef %28, ptr noundef %packet.082) #9
  %cmp19.not = icmp eq ptr %tmp_pkt.0, %pkt_queue
  br i1 %cmp19.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %get_queue_depth.exit
  %rx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #9
  %29 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %pkt_queue, align 4
  %cmp.i.not.i79 = icmp eq ptr %30, %pkt_queue
  br i1 %cmp.i.not.i79, label %if.end27.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end27.list_splice_tail_init.exit_crit_edge:    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %rx_bufq = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 3
  %prev.i80 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 3, i32 1
  %31 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i80, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %pkt_queue, i32 0, i32 1
  %33 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %30, ptr %32, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %rx_bufq, ptr %34, align 4
  store ptr %34, ptr %prev.i80, align 4
  %38 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %pkt_queue, ptr %pkt_queue, align 4
  store ptr %pkt_queue, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end27.list_splice_tail_init.exit_crit_edge
  %rx_st_flags = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 12
  %39 = ptrtoint ptr %rx_st_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_st_flags, align 4
  %and28 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %list_splice_tail_init.exit.if.end39_crit_edge, label %if.then30

list_splice_tail_init.exit.if.end39_crit_edge:    ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then30:                                        ; preds = %list_splice_tail_init.exit
  %ep_waiting = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 13
  %41 = ptrtoint ptr %ep_waiting to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ep_waiting, align 4
  %43 = ptrtoint ptr %endpoint1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %endpoint1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp32 = icmp eq i32 %42, %44
  br i1 %cmp32, label %if.then33, label %if.then30.if.end39_crit_edge

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then33:                                        ; preds = %if.then30
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.62, i32 noundef %42) #9
  %45 = ptrtoint ptr %rx_st_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_st_flags, align 4
  %and36 = and i32 %46, -2
  store i32 %and36, ptr %rx_st_flags, align 4
  %47 = ptrtoint ptr %ep_waiting to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 9, ptr %ep_waiting, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #9
  %48 = ptrtoint ptr %htc_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %htc_flags, align 4
  %and43 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then45, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.then30.if.end39_crit_edge, %list_splice_tail_init.exit.if.end39_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #9
  br label %cleanup

if.then45:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %call46 = tail call i32 @ath6kl_hif_rx_control(ptr noundef %51, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end39, %if.then33.cleanup_crit_edge, %list_del.exit.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end39 ], [ 0, %if.then45 ], [ 0, %if.then33.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %list_del.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ath6kl_htc_mbox_create(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2780) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.63) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 80) #12
  %dev = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i46, ptr %dev, align 8
  %tobool3.not = icmp eq ptr %call7.i.i46, null
  br i1 %tobool3.not, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.63) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %htc_lock = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %htc_lock, ptr noundef nonnull @.str.64, ptr noundef nonnull @ath6kl_htc_mbox_create.__key, i16 noundef signext 3) #9
  %rx_lock = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.66, ptr noundef nonnull @ath6kl_htc_mbox_create.__key.65, i16 noundef signext 3) #9
  %tx_lock = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.68, ptr noundef nonnull @ath6kl_htc_mbox_create.__key.67, i16 noundef signext 3) #9
  %free_ctrl_txbuf = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %free_ctrl_txbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %free_ctrl_txbuf, ptr %free_ctrl_txbuf, align 8
  %prev.i = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free_ctrl_txbuf, ptr %prev.i, align 4
  %free_ctrl_rxbuf = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %free_ctrl_rxbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %free_ctrl_rxbuf, ptr %free_ctrl_rxbuf, align 8
  %prev.i47 = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %free_ctrl_rxbuf, ptr %prev.i47, align 4
  %cred_dist_list = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cred_dist_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %cred_dist_list, ptr %cred_dist_list, align 8
  %prev.i48 = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cred_dist_list, ptr %prev.i48, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %ar16 = getelementptr inbounds %struct.ath6kl_device, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ar16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ar, ptr %ar16, align 4
  %12 = load ptr, ptr %dev, align 8
  %htc_cnxt = getelementptr inbounds %struct.ath6kl_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %htc_cnxt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %htc_cnxt, align 4
  %ep_waiting = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 13
  %14 = ptrtoint ptr %ep_waiting to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %ep_waiting, align 4
  %15 = load ptr, ptr %dev, align 8
  %call19 = tail call i32 @ath6kl_hif_setup(ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.body.err_htc_cleanup_crit_edge

do.body.err_htc_cleanup_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_htc_cleanup

if.end22:                                         ; preds = %do.body
  %call23 = tail call fastcc i32 @ath6kl_htc_reset(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end22.err_htc_cleanup_crit_edge

if.end22.err_htc_cleanup_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_htc_cleanup

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_htc_cleanup:                                  ; preds = %if.end22.err_htc_cleanup_crit_edge, %do.body.err_htc_cleanup_crit_edge
  tail call void @ath6kl_htc_mbox_cleanup(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %err_htc_cleanup, %if.end22.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi ptr [ null, %err_htc_cleanup ], [ null, %if.then4 ], [ null, %if.then ], [ %call7.i.i, %if.end22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_mbox_wait_target(ptr noundef %target) #0 align 64 {
entry:
  %connect = alloca %struct.htc_service_connect_req, align 4
  %resp = alloca %struct.htc_service_connect_resp, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %connect) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #9
  %call = tail call fastcc ptr @htc_wait_for_ctrl_msg(ptr noundef %target)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.htc_packet, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %cmp.not = icmp eq i16 %3, 256
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then47_crit_edge

if.end.if.then47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

lor.lhs.false:                                    ; preds = %if.end
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp2 = icmp ult i32 %5, 8
  br i1 %cmp2, label %lor.lhs.false.if.then47_crit_edge, label %if.end5

lor.lhs.false.if.then47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

if.end5:                                          ; preds = %lor.lhs.false
  %cred_cnt = getelementptr inbounds %struct.htc_ready_msg, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cred_cnt to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %cred_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool7.not = icmp eq i16 %7, 0
  br i1 %tobool7.not, label %if.end5.if.then47_crit_edge, label %lor.lhs.false8

if.end5.if.then47_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

lor.lhs.false8:                                   ; preds = %if.end5
  %cred_sz = getelementptr inbounds %struct.htc_ready_msg, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %cred_sz to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %cred_sz, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool10.not = icmp eq i16 %9, 0
  br i1 %tobool10.not, label %lor.lhs.false8.if.then47_crit_edge, label %if.end12

lor.lhs.false8.if.then47_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

if.end12:                                         ; preds = %lor.lhs.false8
  %10 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv15 = zext i16 %10 to i32
  %tgt_creds = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 5
  %11 = ptrtoint ptr %tgt_creds to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv15, ptr %tgt_creds, align 4
  %12 = ptrtoint ptr %cred_sz to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %cred_sz, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv18 = zext i16 %14 to i32
  %tgt_cred_sz = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 6
  %15 = ptrtoint ptr %tgt_cred_sz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv18, ptr %tgt_cred_sz, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.69, i32 noundef %conv15, i32 noundef %conv18) #9
  %16 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cmp22 = icmp ugt i32 %17, 9
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %htc_ver = getelementptr inbounds %struct.htc_ready_ext_msg, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %htc_ver to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %htc_ver, align 1
  %htc_tgt_ver = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 14
  %20 = ptrtoint ptr %htc_tgt_ver to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %htc_tgt_ver, align 4
  %msg_per_htc_bndl = getelementptr inbounds %struct.htc_ready_ext_msg, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %msg_per_htc_bndl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %msg_per_htc_bndl, align 1
  %conv25 = zext i8 %22 to i32
  br label %if.end28

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %htc_tgt_ver26 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 14
  %23 = ptrtoint ptr %htc_tgt_ver26 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %htc_tgt_ver26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then24
  %.sink = phi i32 [ %conv25, %if.then24 ], [ 0, %if.else ]
  %24 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 15
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %24, align 4
  %htc_tgt_ver29 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 14
  %26 = ptrtoint ptr %htc_tgt_ver29 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %htc_tgt_ver29, align 4
  %conv30 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp31 = icmp eq i8 %27, 0
  %cond = select i1 %cmp31, ptr @.str.71, ptr @.str.72
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.70, ptr noundef nonnull %cond, i32 noundef %conv30) #9
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp36 = icmp sgt i32 %29, 0
  br i1 %cmp36, label %if.then38, label %if.end28.if.end39_crit_edge

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %if.end28
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 8) #9
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %24, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ar.i, align 4
  %hif_ops.i.i = getelementptr inbounds %struct.ath6kl, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hif_ops.i.i, align 4
  %enable_scatter.i.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %enable_scatter.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enable_scatter.i.i, align 4
  %call.i.i = tail call i32 %39(ptr noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then38.if.end33.sink.split.i_crit_edge

if.then38.if.end33.sink.split.i_crit_edge:        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.sink.split.i

if.end.i:                                         ; preds = %if.then38
  %max_scat_entries.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 22
  %40 = ptrtoint ptr %max_scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_scat_entries.i, align 4
  %42 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %24, align 4
  %44 = tail call i32 @llvm.smin.i32(i32 %41, i32 %43) #9
  %45 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %24, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.75, i32 noundef %44) #9
  %max_xfer_szper_scatreq.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 23
  %46 = ptrtoint ptr %max_xfer_szper_scatreq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_xfer_szper_scatreq.i, align 4
  %max_rx_bndl_sz.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 18
  %48 = ptrtoint ptr %max_rx_bndl_sz.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %max_rx_bndl_sz.i, align 4
  %49 = tail call i32 @llvm.smin.i32(i32 %47, i32 12288) #9
  %max_tx_bndl_sz.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 19
  %50 = ptrtoint ptr %max_tx_bndl_sz.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %max_tx_bndl_sz.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.76, i32 noundef %47, i32 noundef %49) #9
  %51 = ptrtoint ptr %max_tx_bndl_sz.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_tx_bndl_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool22.not.i = icmp eq i32 %52, 0
  br i1 %tobool22.not.i, label %if.end.i.if.end24.i_crit_edge, label %if.then23.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_bndl_mask.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 16
  %53 = ptrtoint ptr %tx_bndl_mask.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 15, ptr %tx_bndl_mask.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end.i.if.end24.i_crit_edge
  %54 = ptrtoint ptr %max_rx_bndl_sz.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_rx_bndl_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool26.not.i = icmp eq i32 %55, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end28.i_crit_edge, label %if.then27.i

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_bndl_enable.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 17
  %56 = ptrtoint ptr %rx_bndl_enable.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %rx_bndl_enable.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end28.i_crit_edge
  %57 = ptrtoint ptr %tgt_cred_sz to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tgt_cred_sz, align 4
  %block_sz.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 20
  %59 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %block_sz.i, align 4
  %rem.i = urem i32 %58, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp29.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp29.not.i, label %if.end28.i.if.end39_crit_edge, label %if.then30.i

if.end28.i.if.end39_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.77, i32 noundef %58) #9
  %tx_bndl_mask32.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 16
  br label %if.end33.sink.split.i

if.end33.sink.split.i:                            ; preds = %if.then30.i, %if.then38.if.end33.sink.split.i_crit_edge
  %msg_per_bndl_max.sink.i = phi ptr [ %tx_bndl_mask32.i, %if.then30.i ], [ %24, %if.then38.if.end33.sink.split.i_crit_edge ]
  %61 = ptrtoint ptr %msg_per_bndl_max.sink.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %msg_per_bndl_max.sink.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end33.sink.split.i, %if.end28.i.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %62 = call ptr @memset(ptr %connect, i32 0, i32 48)
  %63 = call ptr @memset(ptr %resp, i32 0, i32 16)
  %rx = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @htc_ctrl_rx, ptr %rx, align 4
  %tx_full = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2, i32 3
  %65 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %tx_full, align 4
  %max_txq_depth = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 3
  %66 = ptrtoint ptr %max_txq_depth to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8, ptr %max_txq_depth, align 4
  %67 = ptrtoint ptr %connect to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %connect, align 4
  %call42 = call i32 @ath6kl_htc_mbox_conn_service(ptr noundef %target, ptr noundef nonnull %connect, ptr noundef nonnull %resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end39.if.then47_crit_edge, label %if.then44

if.end39.if.then47_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ar, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hif_ops.i, align 4
  %cleanup_scatter.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %cleanup_scatter.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cleanup_scatter.i, align 4
  tail call void %75(ptr noundef %71) #9
  br label %if.then47

if.then47:                                        ; preds = %if.then44, %if.end39.if.then47_crit_edge, %lor.lhs.false8.if.then47_crit_edge, %if.end5.if.then47_crit_edge, %lor.lhs.false.if.then47_crit_edge, %if.end.if.then47_crit_edge
  %status.0 = phi i32 [ %call42, %if.then44 ], [ 0, %if.end39.if.then47_crit_edge ], [ -12, %lor.lhs.false.if.then47_crit_edge ], [ -12, %if.end.if.then47_crit_edge ], [ -12, %lor.lhs.false8.if.then47_crit_edge ], [ -12, %if.end5.if.then47_crit_edge ]
  %buf_start.i = getelementptr inbounds %struct.htc_packet, ptr %call, i32 0, i32 2
  %76 = ptrtoint ptr %buf_start.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buf_start.i, align 4
  %78 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %buf, align 4
  %act_len.i = getelementptr inbounds %struct.htc_packet, ptr %call, i32 0, i32 5
  %79 = ptrtoint ptr %act_len.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %act_len.i, align 4
  %htc_lock.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %htc_lock.i) #9
  %free_ctrl_rxbuf.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %81, ptr noundef %free_ctrl_rxbuf.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then47.reclaim_rx_ctrl_buf.exit_crit_edge

if.then47.reclaim_rx_ctrl_buf.exit_crit_edge:     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %reclaim_rx_ctrl_buf.exit

if.end.i.i.i:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call, ptr %prev.i.i, align 4
  %83 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %free_ctrl_rxbuf.i, ptr %call, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev3.i.i.i, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %call, ptr %81, align 4
  br label %reclaim_rx_ctrl_buf.exit

reclaim_rx_ctrl_buf.exit:                         ; preds = %if.end.i.i.i, %if.then47.reclaim_rx_ctrl_buf.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %reclaim_rx_ctrl_buf.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %reclaim_rx_ctrl_buf.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %connect) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_mbox_start(ptr noundef %target) #0 align 64 {
entry:
  %queue.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %irq_proc_reg = getelementptr inbounds %struct.ath6kl_device, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %irq_proc_reg, i32 0, i32 24)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @ath6kl_hif_disable_intrs(ptr noundef %3) #9
  %htc_flags = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 11
  %4 = ptrtoint ptr %htc_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %htc_flags, align 4
  %rx_st_flags = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 12
  %5 = ptrtoint ptr %rx_st_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rx_st_flags, align 4
  %free_ctrl_rxbuf.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %htc_lock.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 7
  %6 = getelementptr inbounds %struct.list_head, ptr %queue.i, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %htc_add_rxbuf.exit.while.cond_crit_edge, %entry
  call void @_raw_spin_lock_bh(ptr noundef %htc_lock.i) #9
  %7 = ptrtoint ptr %free_ctrl_rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %free_ctrl_rxbuf.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %free_ctrl_rxbuf.i
  br i1 %cmp.i.not.i, label %htc_get_control_buf.exit.thread, label %if.end.i

htc_get_control_buf.exit.thread:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i) #9
  br label %while.end

if.end.i:                                         ; preds = %while.cond
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.htc_get_control_buf.exit_crit_edge

if.end.i.htc_get_control_buf.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_get_control_buf.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %htc_get_control_buf.exit

htc_get_control_buf.exit:                         ; preds = %if.end.i.i.i, %if.end.i.htc_get_control_buf.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i) #9
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %htc_get_control_buf.exit.while.end_crit_edge, label %while.body

htc_get_control_buf.exit.while.end_crit_edge:     ; preds = %htc_get_control_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %htc_get_control_buf.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %queue.i) #9
  %17 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %queue.i, ptr %6, align 4
  %call.i.i.i31 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %8, ptr noundef nonnull %queue.i, ptr noundef nonnull %queue.i) #9
  br i1 %call.i.i.i31, label %if.end.i.i.i32, label %while.body.htc_add_rxbuf.exit_crit_edge

while.body.htc_add_rxbuf.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_add_rxbuf.exit

if.end.i.i.i32:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %8, ptr %6, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %queue.i, ptr %8, align 4
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %8, ptr %queue.i, align 4
  br label %htc_add_rxbuf.exit

htc_add_rxbuf.exit:                               ; preds = %if.end.i.i.i32, %while.body.htc_add_rxbuf.exit_crit_edge
  %call.i = call i32 @ath6kl_htc_mbox_add_rxbuf_multiple(ptr noundef %target, ptr noundef nonnull %queue.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %queue.i) #9
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %htc_add_rxbuf.exit.while.cond_crit_edge, label %htc_add_rxbuf.exit.cleanup_crit_edge

htc_add_rxbuf.exit.cleanup_crit_edge:             ; preds = %htc_add_rxbuf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

htc_add_rxbuf.exit.while.cond_crit_edge:          ; preds = %htc_add_rxbuf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %htc_get_control_buf.exit.while.end_crit_edge, %htc_get_control_buf.exit.thread
  %credit_info = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 4
  %23 = ptrtoint ptr %credit_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %credit_info, align 4
  %cred_dist_list = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 1
  %tgt_creds = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 5
  %25 = ptrtoint ptr %tgt_creds to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tgt_creds, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.80, i32 noundef %26) #9
  %cur_free_credits.i = getelementptr inbounds %struct.ath6kl_htc_credit_info, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %cur_free_credits.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cur_free_credits.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %24, align 4
  %29 = ptrtoint ptr %cred_dist_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %cur_ep_dist.0153.i = load ptr, ptr %cred_dist_list, align 4
  %cmp.not154.i = icmp eq ptr %cur_ep_dist.0153.i, %cred_dist_list
  br i1 %cmp.not154.i, label %while.end.for.end.i_crit_edge, label %for.body.lr.ph.i

while.end.for.end.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp2.i = icmp sgt i32 %26, 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cur_ep_dist.0155.i = phi ptr [ %cur_ep_dist.0153.i, %for.body.lr.ph.i ], [ %cur_ep_dist.0.i, %for.inc.i.for.body.i_crit_edge ]
  %endpoint.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 2
  %30 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %endpoint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1.i = icmp eq i32 %31, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i33

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i33:                                       ; preds = %for.body.i
  %cred_per_msg.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 11
  %32 = ptrtoint ptr %cred_per_msg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cred_per_msg.i, align 4
  %cred_min.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 5
  %34 = ptrtoint ptr %cred_min.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %cred_min.i, align 4
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i33.if.end13.i_crit_edge

if.end.i33.if.end13.i_crit_edge:                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.end.i33
  %svc_id.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 1
  %35 = ptrtoint ptr %svc_id.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %svc_id.i, align 4
  %.off.i = add i16 %36, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %if.then10.i, label %if.then3.i.if.end13.i_crit_edge

if.then3.i.if.end13.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef %31, i32 noundef %33) #9
  %credits1.i.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 7
  %37 = ptrtoint ptr %credits1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %credits1.i.i, align 4
  %add.i.i = add i32 %38, %33
  store i32 %add.i.i, ptr %credits1.i.i, align 4
  %cred_assngd.i.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 6
  %39 = ptrtoint ptr %cred_assngd.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cred_assngd.i.i, align 4
  %add2.i.i = add i32 %40, %33
  store i32 %add2.i.i, ptr %cred_assngd.i.i, align 4
  %41 = ptrtoint ptr %cur_free_credits.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_free_credits.i, align 4
  %sub.i.i = sub i32 %42, %33
  store i32 %sub.i.i, ptr %cur_free_credits.i, align 4
  %dist_flags.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 3
  %43 = ptrtoint ptr %dist_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dist_flags.i, align 4
  %or.i = or i32 %44, -2147483648
  store i32 %or.i, ptr %dist_flags.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.then3.i.if.end13.i_crit_edge, %if.end.i33.if.end13.i_crit_edge
  %svc_id14.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 1
  %45 = ptrtoint ptr %svc_id14.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %svc_id14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %46)
  %cmp16.i = icmp eq i16 %46, 256
  br i1 %cmp16.i, label %if.then18.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %cred_min.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cred_min.i, align 4
  %49 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %endpoint.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef %50, i32 noundef %48) #9
  %credits1.i147.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 7
  %51 = ptrtoint ptr %credits1.i147.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %credits1.i147.i, align 4
  %add.i148.i = add i32 %52, %48
  store i32 %add.i148.i, ptr %credits1.i147.i, align 4
  %cred_assngd.i149.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 6
  %53 = ptrtoint ptr %cred_assngd.i149.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cred_assngd.i149.i, align 4
  %add2.i150.i = add i32 %54, %48
  store i32 %add2.i150.i, ptr %cred_assngd.i149.i, align 4
  %55 = ptrtoint ptr %cur_free_credits.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cur_free_credits.i, align 4
  %sub.i152.i = sub i32 %56, %48
  store i32 %sub.i152.i, ptr %cur_free_credits.i, align 4
  %dist_flags20.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.0155.i, i32 0, i32 3
  %57 = ptrtoint ptr %dist_flags20.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dist_flags20.i, align 4
  %or21.i = or i32 %58, -2147483648
  store i32 %or21.i, ptr %dist_flags20.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then18.i, %if.end13.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %59 = ptrtoint ptr %cur_ep_dist.0155.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %cur_ep_dist.0.i = load ptr, ptr %cur_ep_dist.0155.i, align 4
  %cmp.not.i = icmp eq ptr %cur_ep_dist.0.i, %cred_dist_list
  br i1 %cmp.not.i, label %for.endthread-pre-split.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.endthread-pre-split.i:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %cur_free_credits.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr.i = load i32, ptr %cur_free_credits.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %while.end.for.end.i_crit_edge
  %61 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %26, %while.end.for.end.i_crit_edge ]
  %lowestpri_ep_dist.i = getelementptr inbounds %struct.ath6kl_htc_credit_info, ptr %24, i32 0, i32 2
  %62 = ptrtoint ptr %cred_dist_list to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %cred_dist_list, align 4
  %64 = ptrtoint ptr %lowestpri_ep_dist.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 %63, ptr %lowestpri_ep_dist.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp30.i = icmp slt i32 %61, 1
  br i1 %cmp30.i, label %do.end.i, label %for.end.i.if.end46.i_crit_edge, !prof !201

for.end.i.if.end46.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 109, i32 noundef 9, ptr noundef null) #9
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end.i, %for.end.i.if.end46.i_crit_edge
  %65 = ptrtoint ptr %cred_dist_list to i32
  call void @__asan_load4_noabort(i32 %65)
  %cur_ep_dist.1156.i = load ptr, ptr %cred_dist_list, align 4
  %cmp60.not157.i = icmp eq ptr %cur_ep_dist.1156.i, %cred_dist_list
  br i1 %cmp60.not157.i, label %if.end46.i.ath6kl_credit_init.exit_crit_edge, label %if.end46.i.for.body64.i_crit_edge

if.end46.i.for.body64.i_crit_edge:                ; preds = %if.end46.i
  br label %for.body64.i

if.end46.i.ath6kl_credit_init.exit_crit_edge:     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_credit_init.exit

for.body64.i:                                     ; preds = %for.inc92.i.for.body64.i_crit_edge, %if.end46.i.for.body64.i_crit_edge
  %cur_ep_dist.1158.i = phi ptr [ %cur_ep_dist.1.i, %for.inc92.i.for.body64.i_crit_edge ], [ %cur_ep_dist.1156.i, %if.end46.i.for.body64.i_crit_edge ]
  %endpoint65.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.1158.i, i32 0, i32 2
  %66 = ptrtoint ptr %endpoint65.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %endpoint65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp66.i = icmp eq i32 %67, 0
  br i1 %cmp66.i, label %for.body64.i.for.inc92.i_crit_edge, label %if.end69.i

for.body64.i.for.inc92.i_crit_edge:               ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc92.i

if.end69.i:                                       ; preds = %for.body64.i
  %svc_id70.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.1158.i, i32 0, i32 1
  %68 = ptrtoint ptr %svc_id70.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %svc_id70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %69)
  %cmp72.i = icmp eq i16 %69, 256
  br i1 %cmp72.i, label %if.then74.i, label %if.else.i

if.then74.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  %cred_per_msg75.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.1158.i, i32 0, i32 11
  %70 = ptrtoint ptr %cred_per_msg75.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cred_per_msg75.i, align 4
  br label %if.end85.i

if.else.i:                                        ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %cur_free_credits.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cur_free_credits.i, align 4
  %cred_per_msg77.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.1158.i, i32 0, i32 11
  %74 = ptrtoint ptr %cred_per_msg77.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cred_per_msg77.i, align 4
  %76 = srem i32 %73, %75
  %mul.i = sub i32 %73, %76
  %mul79.i = mul i32 %mul.i, 3
  %shr.i = ashr i32 %mul79.i, 2
  %77 = call i32 @llvm.smax.i32(i32 %shr.i, i32 %75) #9
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.else.i, %if.then74.i
  %.sink.i = phi i32 [ %71, %if.then74.i ], [ %77, %if.else.i ]
  %78 = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.1158.i, i32 0, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink.i, ptr %78, align 4
  %conv88.i = zext i16 %69 to i32
  %credits.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.1158.i, i32 0, i32 7
  %80 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %credits.i, align 4
  %cred_per_msg89.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.1158.i, i32 0, i32 11
  %82 = ptrtoint ptr %cred_per_msg89.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cred_per_msg89.i, align 4
  %cred_min91.i = getelementptr inbounds %struct.htc_endpoint_credit_dist, ptr %cur_ep_dist.1158.i, i32 0, i32 5
  %84 = ptrtoint ptr %cred_min91.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cred_min91.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1, ptr noundef nonnull @.str.81, i32 noundef %67, i32 noundef %conv88.i, i32 noundef %81, i32 noundef %83, i32 noundef %.sink.i, i32 noundef %85) #9
  br label %for.inc92.i

for.inc92.i:                                      ; preds = %if.end85.i, %for.body64.i.for.inc92.i_crit_edge
  %86 = ptrtoint ptr %cur_ep_dist.1158.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %cur_ep_dist.1.i = load ptr, ptr %cur_ep_dist.1158.i, align 4
  %cmp60.not.i = icmp eq ptr %cur_ep_dist.1.i, %cred_dist_list
  br i1 %cmp60.not.i, label %for.inc92.i.ath6kl_credit_init.exit_crit_edge, label %for.inc92.i.for.body64.i_crit_edge

for.inc92.i.for.body64.i_crit_edge:               ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body64.i

for.inc92.i.ath6kl_credit_init.exit_crit_edge:    ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_credit_init.exit

ath6kl_credit_init.exit:                          ; preds = %for.inc92.i.ath6kl_credit_init.exit_crit_edge, %if.end46.i.ath6kl_credit_init.exit_crit_edge
  call void @dump_cred_dist_stats(ptr noundef %target) #9
  %free_ctrl_txbuf.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %htc_lock.i) #9
  %87 = ptrtoint ptr %free_ctrl_txbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %free_ctrl_txbuf.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %88, %free_ctrl_txbuf.i.i
  br i1 %cmp.i.not.i.i, label %htc_setup_tx_complete.exit.thread44, label %if.end.i.i

htc_setup_tx_complete.exit.thread44:              ; preds = %ath6kl_credit_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i) #9
  br label %cleanup

if.end.i.i:                                       ; preds = %ath6kl_credit_init.exit
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %88) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.htc_get_control_buf.exit.i_crit_edge

if.end.i.i.htc_get_control_buf.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_get_control_buf.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i.i, align 4
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %htc_get_control_buf.exit.i

htc_get_control_buf.exit.i:                       ; preds = %if.end.i.i.i.i, %if.end.i.i.htc_get_control_buf.exit.i_crit_edge
  %95 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %88, align 4
  %prev.i.i.i34 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i34, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i) #9
  %buf_start.i.i = getelementptr inbounds %struct.htc_packet, ptr %88, i32 0, i32 2
  %97 = ptrtoint ptr %buf_start.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %buf_start.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %98, i32 6
  %buf.i.i = getelementptr inbounds %struct.htc_packet, ptr %88, i32 0, i32 3
  %99 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr6.i.i, ptr %buf.i.i, align 4
  %tobool.not.i = icmp eq ptr %88, null
  br i1 %tobool.not.i, label %htc_get_control_buf.exit.i.cleanup_crit_edge, label %if.end.i36

htc_get_control_buf.exit.i.cleanup_crit_edge:     ; preds = %htc_get_control_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i36:                                       ; preds = %htc_get_control_buf.exit.i
  %htc_tgt_ver.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 14
  %100 = ptrtoint ptr %htc_tgt_ver.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %htc_tgt_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp.not.i35 = icmp eq i8 %101, 0
  br i1 %cmp.not.i35, label %if.else.i37, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i36
  %102 = getelementptr i8, ptr %98, i32 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 0, ptr %102, align 1
  %104 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 1280, ptr %add.ptr6.i.i, align 1
  %msg_per_bndl_max.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 15
  %105 = ptrtoint ptr %msg_per_bndl_max.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %msg_per_bndl_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp3.i = icmp sgt i32 %106, 0
  br i1 %cmp3.i, label %if.then5.i, label %if.then2.i.if.end8.i_crit_edge

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv7.i = trunc i32 %106 to i8
  %msg_per_rxbndl.i = getelementptr i8, ptr %98, i32 12
  %107 = ptrtoint ptr %msg_per_rxbndl.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv7.i, ptr %msg_per_rxbndl.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.then2.i.if.end8.i_crit_edge
  %flags.0.i = phi i32 [ 1, %if.then5.i ], [ 0, %if.then2.i.if.end8.i_crit_edge ]
  %108 = ptrtoint ptr %102 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %flags.0.i, ptr %102, align 1
  br label %if.end12.i

if.else.i37:                                      ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 1024, ptr %add.ptr6.i.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i37, %if.end8.i
  %.sink.i38 = phi i32 [ 2, %if.else.i37 ], [ 10, %if.end8.i ]
  %pkt_cntxt.i34.i = getelementptr inbounds %struct.htc_packet, ptr %88, i32 0, i32 1
  %110 = ptrtoint ptr %pkt_cntxt.i34.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %pkt_cntxt.i34.i, align 4
  %act_len.i36.i = getelementptr inbounds %struct.htc_packet, ptr %88, i32 0, i32 5
  %111 = ptrtoint ptr %act_len.i36.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %.sink.i38, ptr %act_len.i36.i, align 4
  %endpoint.i37.i = getelementptr inbounds %struct.htc_packet, ptr %88, i32 0, i32 6
  %112 = ptrtoint ptr %endpoint.i37.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %endpoint.i37.i, align 4
  %info.i38.i = getelementptr inbounds %struct.htc_packet, ptr %88, i32 0, i32 8
  %113 = ptrtoint ptr %info.i38.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 1, ptr %info.i38.i, align 4
  %completion.i = getelementptr inbounds %struct.htc_packet, ptr %88, i32 0, i32 9
  %114 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %completion.i, align 4
  %115 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %98, ptr %buf.i.i, align 4
  %payld_len.i.i = getelementptr i8, ptr %98, i32 2
  %conv.i.i = trunc i32 %.sink.i38 to i16
  %116 = ptrtoint ptr %payld_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 %conv.i.i, ptr %payld_len.i.i, align 1
  %flags2.i.i = getelementptr i8, ptr %98, i32 1
  %117 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %flags2.i.i, align 1
  %118 = load i32, ptr %endpoint.i37.i, align 4
  %conv3.i.i = trunc i32 %118 to i8
  %119 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv3.i.i, ptr %98, align 1
  %ctrl.i.i = getelementptr i8, ptr %98, i32 4
  %120 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %ctrl.i.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %98, i32 5
  %121 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx7.i.i, align 1
  %call13.i = call fastcc i32 @ath6kl_htc_tx_issue(ptr noundef %target, ptr noundef nonnull %88) #9
  call void @_raw_spin_lock_bh(ptr noundef %htc_lock.i) #9
  %prev.i.i44.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2, i32 1
  %122 = ptrtoint ptr %prev.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %prev.i.i44.i, align 4
  %call.i.i.i45.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %88, ptr noundef %123, ptr noundef %free_ctrl_txbuf.i.i) #9
  br i1 %call.i.i.i45.i, label %if.end.i.i.i46.i, label %if.end12.i.htc_setup_tx_complete.exit_crit_edge

if.end12.i.htc_setup_tx_complete.exit_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_setup_tx_complete.exit

if.end.i.i.i46.i:                                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %prev.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %88, ptr %prev.i.i44.i, align 4
  %125 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %free_ctrl_txbuf.i.i, ptr %88, align 4
  %126 = ptrtoint ptr %prev.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %123, ptr %prev.i.i.i34, align 4
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %88, ptr %123, align 4
  br label %htc_setup_tx_complete.exit

htc_setup_tx_complete.exit:                       ; preds = %if.end.i.i.i46.i, %if.end12.i.htc_setup_tx_complete.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool5.not = icmp eq i32 %call13.i, 0
  br i1 %tobool5.not, label %if.end7, label %htc_setup_tx_complete.exit.cleanup_crit_edge

htc_setup_tx_complete.exit.cleanup_crit_edge:     ; preds = %htc_setup_tx_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %htc_setup_tx_complete.exit
  %128 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev, align 4
  %call9 = call i32 @ath6kl_hif_unmask_intrs(ptr noundef %129) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @ath6kl_htc_mbox_stop(ptr noundef %target)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end7.cleanup_crit_edge, %htc_setup_tx_complete.exit.cleanup_crit_edge, %htc_get_control_buf.exit.i.cleanup_crit_edge, %htc_setup_tx_complete.exit.thread44, %htc_add_rxbuf.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13.i, %htc_setup_tx_complete.exit.cleanup_crit_edge ], [ %call9, %if.then11 ], [ 0, %if.end7.cleanup_crit_edge ], [ -12, %htc_setup_tx_complete.exit.thread44 ], [ -12, %htc_get_control_buf.exit.i.cleanup_crit_edge ], [ %call.i, %htc_add_rxbuf.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_mbox_conn_service(ptr noundef %target, ptr nocapture noundef readonly %conn_req, ptr nocapture noundef writeonly %conn_resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %conn_req, align 4
  %conv = zext i16 %1 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.82, ptr noundef %target, i32 noundef %conv) #9
  %2 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %conn_req, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %entry.lor.lhs.false44_crit_edge, label %if.else

entry.lor.lhs.false44_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false44

if.else:                                          ; preds = %entry
  %free_ctrl_txbuf.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %htc_lock.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %htc_lock.i) #9
  %4 = ptrtoint ptr %free_ctrl_txbuf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %free_ctrl_txbuf.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %free_ctrl_txbuf.i
  br i1 %cmp.i.not.i, label %if.else.cleanup.sink.split_crit_edge, label %if.end.i

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.else
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.htc_get_control_buf.exit_crit_edge

if.end.i.htc_get_control_buf.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_get_control_buf.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
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
  br label %htc_get_control_buf.exit

htc_get_control_buf.exit:                         ; preds = %if.end.i.i.i, %if.end.i.htc_get_control_buf.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i) #9
  %buf_start.i = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %buf_start.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf_start.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %15, i32 6
  %buf.i = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr6.i, ptr %buf.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %htc_get_control_buf.exit.cleanup_crit_edge, label %if.end

htc_get_control_buf.exit.cleanup_crit_edge:       ; preds = %htc_get_control_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %htc_get_control_buf.exit
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 144115188075855872, ptr %18, align 1
  %20 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %conn_req, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %svc_id7 = getelementptr inbounds %struct.htc_conn_service_msg, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %svc_id7 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %svc_id7, align 1
  %conn_flags = getelementptr inbounds %struct.htc_service_connect_req, ptr %conn_req, i32 0, i32 1
  %24 = ptrtoint ptr %conn_flags to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %conn_flags, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conn_flags8 = getelementptr inbounds %struct.htc_conn_service_msg, ptr %18, i32 0, i32 2
  %27 = ptrtoint ptr %conn_flags8 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %conn_flags8, align 1
  %pkt_cntxt.i = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %pkt_cntxt.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pkt_cntxt.i, align 4
  %act_len.i = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 5
  %29 = ptrtoint ptr %act_len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %act_len.i, align 4
  %endpoint.i = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 6
  %30 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %endpoint.i, align 4
  %info.i = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 8
  %31 = ptrtoint ptr %info.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %info.i, align 4
  %completion = getelementptr inbounds %struct.htc_packet, ptr %5, i32 0, i32 9
  %32 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %completion, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 -6
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %buf.i, align 4
  %payld_len.i = getelementptr i8, ptr %18, i32 -4
  %34 = ptrtoint ptr %payld_len.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 8, ptr %payld_len.i, align 1
  %flags2.i = getelementptr i8, ptr %18, i32 -5
  %35 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %flags2.i, align 1
  %36 = load i32, ptr %endpoint.i, align 4
  %conv3.i = trunc i32 %36 to i8
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv3.i, ptr %add.ptr.i, align 1
  %ctrl.i = getelementptr i8, ptr %18, i32 -2
  %38 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %ctrl.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %18, i32 -1
  %39 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx7.i, align 1
  %call10 = tail call fastcc i32 @ath6kl_htc_tx_issue(ptr noundef %target, ptr noundef nonnull %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.if.then136_crit_edge

if.end.if.then136_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then136

if.end13:                                         ; preds = %if.end
  %call14 = tail call fastcc ptr @htc_wait_for_ctrl_msg(ptr noundef %target)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.if.then136_crit_edge, label %if.end17

if.end13.if.then136_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then136

if.end17:                                         ; preds = %if.end13
  %buf18 = getelementptr inbounds %struct.htc_packet, ptr %call14, i32 0, i32 3
  %40 = ptrtoint ptr %buf18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf18, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %41, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %43)
  %cmp21.not = icmp eq i16 %43, 768
  br i1 %cmp21.not, label %lor.lhs.false, label %if.end17.if.then136_crit_edge

if.end17.if.then136_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then136

lor.lhs.false:                                    ; preds = %if.end17
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %call14, i32 0, i32 5
  %44 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %45)
  %cmp23 = icmp ult i32 %45, 10
  br i1 %cmp23, label %lor.lhs.false.if.then136_crit_edge, label %if.end26

lor.lhs.false.if.then136_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then136

if.end26:                                         ; preds = %lor.lhs.false
  %status27 = getelementptr inbounds %struct.htc_conn_service_resp, ptr %41, i32 0, i32 2
  %46 = ptrtoint ptr %status27 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %status27, align 1
  %resp_code = getelementptr inbounds %struct.htc_service_connect_resp, ptr %conn_resp, i32 0, i32 4
  %48 = ptrtoint ptr %resp_code to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %resp_code, align 4
  %49 = load i8, ptr %status27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp30.not = icmp eq i8 %49, 0
  br i1 %cmp30.not, label %if.end37, label %if.then32

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %conv29 = zext i8 %49 to i32
  %svc_id33 = getelementptr inbounds %struct.htc_conn_service_resp, ptr %41, i32 0, i32 1
  %50 = ptrtoint ptr %svc_id33 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %svc_id33, align 1
  %conv34 = zext i16 %51 to i32
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.83, i32 noundef %conv34, i32 noundef %conv29) #9
  br label %if.then136

if.end37:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %eid = getelementptr inbounds %struct.htc_conn_service_resp, ptr %41, i32 0, i32 3
  %52 = ptrtoint ptr %eid to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %eid, align 1
  %conv38 = zext i8 %53 to i32
  %max_msg_sz39 = getelementptr inbounds %struct.htc_conn_service_resp, ptr %41, i32 0, i32 4
  %54 = ptrtoint ptr %max_msg_sz39 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %max_msg_sz39, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %conv40 = zext i16 %56 to i32
  br label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.end37, %entry.lor.lhs.false44_crit_edge
  %tx_pkt.0 = phi ptr [ %5, %if.end37 ], [ null, %entry.lor.lhs.false44_crit_edge ]
  %assigned_ep.0 = phi i32 [ %conv38, %if.end37 ], [ 0, %entry.lor.lhs.false44_crit_edge ]
  %max_msg_sz.0 = phi i32 [ %conv40, %if.end37 ], [ 256, %entry.lor.lhs.false44_crit_edge ]
  %rx_pkt.0 = phi ptr [ %call14, %if.end37 ], [ null, %entry.lor.lhs.false44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %assigned_ep.0)
  %cmp45 = icmp ugt i32 %assigned_ep.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_msg_sz.0)
  %tobool47.not = icmp eq i32 %max_msg_sz.0, 0
  %spec.select = select i1 %cmp45, i1 true, i1 %tobool47.not
  br i1 %spec.select, label %land.rhs, label %if.end89

land.rhs:                                         ; preds = %lor.lhs.false44
  %.b224 = load i1, ptr @ath6kl_htc_mbox_conn_service.__already_done, align 1
  br i1 %.b224, label %land.rhs.fail_tx_crit_edge, label %if.then57, !prof !203

land.rhs.fail_tx_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_tx

if.then57:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ath6kl_htc_mbox_conn_service.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2499, i32 noundef 9, ptr noundef null) #9
  br label %fail_tx

if.end89:                                         ; preds = %lor.lhs.false44
  %arrayidx = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %assigned_ep.0, ptr %arrayidx, align 4
  %svc_id92 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 1
  %58 = ptrtoint ptr %svc_id92 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %svc_id92, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool93.not = icmp eq i16 %59, 0
  br i1 %tobool93.not, label %if.end95, label %if.end89.fail_tx_crit_edge

if.end89.fail_tx_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_tx

if.end95:                                         ; preds = %if.end89
  %endpoint96 = getelementptr inbounds %struct.htc_service_connect_resp, ptr %conn_resp, i32 0, i32 2
  %60 = ptrtoint ptr %endpoint96 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %assigned_ep.0, ptr %endpoint96, align 4
  %len_max = getelementptr inbounds %struct.htc_service_connect_resp, ptr %conn_resp, i32 0, i32 3
  %61 = ptrtoint ptr %len_max to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %max_msg_sz.0, ptr %len_max, align 4
  %62 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %conn_req, align 4
  %64 = ptrtoint ptr %svc_id92 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %svc_id92, align 4
  %max_txq_depth = getelementptr inbounds %struct.htc_service_connect_req, ptr %conn_req, i32 0, i32 3
  %65 = ptrtoint ptr %max_txq_depth to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_txq_depth, align 4
  %max_txq_depth99 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 6
  %67 = ptrtoint ptr %max_txq_depth99 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %max_txq_depth99, align 4
  %len_max100 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 7
  %68 = ptrtoint ptr %len_max100 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %max_msg_sz.0, ptr %len_max100, align 4
  %ep_cb = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 5
  %ep_cb101 = getelementptr inbounds %struct.htc_service_connect_req, ptr %conn_req, i32 0, i32 2
  %69 = call ptr @memcpy(ptr %ep_cb, ptr %ep_cb101, i32 32)
  %70 = load i16, ptr %conn_req, align 4
  %svc_id103 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 4, i32 1
  %71 = ptrtoint ptr %svc_id103 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %svc_id103, align 4
  %htc_ep = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 4, i32 12
  %72 = ptrtoint ptr %htc_ep to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx, ptr %htc_ep, align 4
  %endpoint106 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 4, i32 2
  %73 = ptrtoint ptr %endpoint106 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %assigned_ep.0, ptr %endpoint106, align 4
  %tgt_cred_sz = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 6
  %74 = ptrtoint ptr %tgt_cred_sz to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tgt_cred_sz, align 4
  %cred_sz = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 4, i32 10
  %76 = ptrtoint ptr %cred_sz to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %cred_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 258, i16 %63)
  %cond = icmp eq i16 %63, 258
  %spec.select254 = select i1 %cond, i16 60, i16 18
  %77 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 14
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %spec.select254, ptr %77, align 4
  %max_rxmsg_sz = getelementptr inbounds %struct.htc_service_connect_req, ptr %conn_req, i32 0, i32 5
  %79 = ptrtoint ptr %max_rxmsg_sz to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_rxmsg_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool111.not = icmp eq i32 %80, 0
  br i1 %tobool111.not, label %if.end95.if.end126_crit_edge, label %if.then112

if.end95.if.end126_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then112:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %max_msg_sz.0)
  %cmp114 = icmp ugt i32 %80, %max_msg_sz.0
  br i1 %cmp114, label %if.then112.fail_tx_crit_edge, label %if.then112.if.end126_crit_edge

if.then112.if.end126_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then112.fail_tx_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_tx

if.end126:                                        ; preds = %if.then112.if.end126_crit_edge, %if.end95.if.end126_crit_edge
  %max_msg_sz.0.sink = phi i32 [ %80, %if.then112.if.end126_crit_edge ], [ %max_msg_sz.0, %if.end95.if.end126_crit_edge ]
  %div123 = udiv i32 %max_msg_sz.0.sink, %75
  %cred_per_msg125 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 4, i32 11
  %81 = ptrtoint ptr %cred_per_msg125 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div123, ptr %cred_per_msg125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %max_msg_sz.0.sink)
  %tobool129.not = icmp ugt i32 %75, %max_msg_sz.0.sink
  br i1 %tobool129.not, label %if.then130, label %if.end126.if.end133_crit_edge

if.end126.if.end133_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %cred_per_msg128 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 4, i32 11
  %82 = ptrtoint ptr %cred_per_msg128 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %cred_per_msg128, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.end126.if.end133_crit_edge
  %flags = getelementptr inbounds %struct.htc_service_connect_req, ptr %conn_req, i32 0, i32 4
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 4
  %conn_flags134 = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %assigned_ep.0, i32 12
  %85 = ptrtoint ptr %conn_flags134 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %conn_flags134, align 4
  br label %fail_tx

fail_tx:                                          ; preds = %if.end133, %if.then112.fail_tx_crit_edge, %if.end89.fail_tx_crit_edge, %if.then57, %land.rhs.fail_tx_crit_edge
  %status.1 = phi i32 [ 0, %if.end133 ], [ -12, %if.then57 ], [ -12, %if.end89.fail_tx_crit_edge ], [ -12, %if.then112.fail_tx_crit_edge ], [ -12, %land.rhs.fail_tx_crit_edge ]
  %tobool135.not = icmp eq ptr %tx_pkt.0, null
  br i1 %tobool135.not, label %fail_tx.if.end137_crit_edge, label %fail_tx.if.then136_crit_edge

fail_tx.if.then136_crit_edge:                     ; preds = %fail_tx
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then136

fail_tx.if.end137_crit_edge:                      ; preds = %fail_tx
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.then136:                                       ; preds = %fail_tx.if.then136_crit_edge, %if.then32, %lor.lhs.false.if.then136_crit_edge, %if.end17.if.then136_crit_edge, %if.end13.if.then136_crit_edge, %if.end.if.then136_crit_edge
  %rx_pkt.1252 = phi ptr [ %rx_pkt.0, %fail_tx.if.then136_crit_edge ], [ %call14, %if.end17.if.then136_crit_edge ], [ %call14, %lor.lhs.false.if.then136_crit_edge ], [ null, %if.end13.if.then136_crit_edge ], [ %call14, %if.then32 ], [ null, %if.end.if.then136_crit_edge ]
  %status.1250 = phi i32 [ %status.1, %fail_tx.if.then136_crit_edge ], [ -12, %if.end17.if.then136_crit_edge ], [ -12, %lor.lhs.false.if.then136_crit_edge ], [ -12, %if.end13.if.then136_crit_edge ], [ -12, %if.then32 ], [ %call10, %if.end.if.then136_crit_edge ]
  %tx_pkt.1249 = phi ptr [ %tx_pkt.0, %fail_tx.if.then136_crit_edge ], [ %5, %if.end17.if.then136_crit_edge ], [ %5, %lor.lhs.false.if.then136_crit_edge ], [ %5, %if.end13.if.then136_crit_edge ], [ %5, %if.then32 ], [ %5, %if.end.if.then136_crit_edge ]
  %htc_lock.i229 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %htc_lock.i229) #9
  %free_ctrl_txbuf.i230 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %prev.i.i231 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2, i32 1
  %86 = ptrtoint ptr %prev.i.i231 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i231, align 4
  %call.i.i.i232 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %tx_pkt.1249, ptr noundef %87, ptr noundef %free_ctrl_txbuf.i230) #9
  br i1 %call.i.i.i232, label %if.end.i.i.i233, label %if.then136.htc_reclaim_txctrl_buf.exit_crit_edge

if.then136.htc_reclaim_txctrl_buf.exit_crit_edge: ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_reclaim_txctrl_buf.exit

if.end.i.i.i233:                                  ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %prev.i.i231 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %tx_pkt.1249, ptr %prev.i.i231, align 4
  %89 = ptrtoint ptr %tx_pkt.1249 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %free_ctrl_txbuf.i230, ptr %tx_pkt.1249, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %tx_pkt.1249, i32 0, i32 1
  %90 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev3.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %tx_pkt.1249, ptr %87, align 4
  br label %htc_reclaim_txctrl_buf.exit

htc_reclaim_txctrl_buf.exit:                      ; preds = %if.end.i.i.i233, %if.then136.htc_reclaim_txctrl_buf.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i229) #9
  br label %if.end137

if.end137:                                        ; preds = %htc_reclaim_txctrl_buf.exit, %fail_tx.if.end137_crit_edge
  %rx_pkt.1253 = phi ptr [ %rx_pkt.1252, %htc_reclaim_txctrl_buf.exit ], [ %rx_pkt.0, %fail_tx.if.end137_crit_edge ]
  %status.1251 = phi i32 [ %status.1250, %htc_reclaim_txctrl_buf.exit ], [ %status.1, %fail_tx.if.end137_crit_edge ]
  %tobool138.not = icmp eq ptr %rx_pkt.1253, null
  br i1 %tobool138.not, label %if.end137.cleanup_crit_edge, label %if.then139

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then139:                                       ; preds = %if.end137
  %buf_start.i234 = getelementptr inbounds %struct.htc_packet, ptr %rx_pkt.1253, i32 0, i32 2
  %92 = ptrtoint ptr %buf_start.i234 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buf_start.i234, align 4
  %buf.i235 = getelementptr inbounds %struct.htc_packet, ptr %rx_pkt.1253, i32 0, i32 3
  %94 = ptrtoint ptr %buf.i235 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %buf.i235, align 4
  %act_len.i236 = getelementptr inbounds %struct.htc_packet, ptr %rx_pkt.1253, i32 0, i32 5
  %95 = ptrtoint ptr %act_len.i236 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %act_len.i236, align 4
  %htc_lock.i237 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %htc_lock.i237) #9
  %free_ctrl_rxbuf.i238 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %prev.i.i239 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %prev.i.i239 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i239, align 4
  %call.i.i.i240 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %rx_pkt.1253, ptr noundef %97, ptr noundef %free_ctrl_rxbuf.i238) #9
  br i1 %call.i.i.i240, label %if.end.i.i.i242, label %if.then139.cleanup.sink.split_crit_edge

if.then139.cleanup.sink.split_crit_edge:          ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i.i.i242:                                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %prev.i.i239 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %rx_pkt.1253, ptr %prev.i.i239, align 4
  %99 = ptrtoint ptr %rx_pkt.1253 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %free_ctrl_rxbuf.i238, ptr %rx_pkt.1253, align 4
  %prev3.i.i.i241 = getelementptr inbounds %struct.list_head, ptr %rx_pkt.1253, i32 0, i32 1
  %100 = ptrtoint ptr %prev3.i.i.i241 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev3.i.i.i241, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %rx_pkt.1253, ptr %97, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i.i242, %if.then139.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge
  %htc_lock.i.sink = phi ptr [ %htc_lock.i, %if.else.cleanup.sink.split_crit_edge ], [ %htc_lock.i237, %if.then139.cleanup.sink.split_crit_edge ], [ %htc_lock.i237, %if.end.i.i.i242 ]
  %retval.0.ph = phi i32 [ -12, %if.else.cleanup.sink.split_crit_edge ], [ %status.1251, %if.then139.cleanup.sink.split_crit_edge ], [ %status.1251, %if.end.i.i.i242 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end137.cleanup_crit_edge, %htc_get_control_buf.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %htc_get_control_buf.exit.cleanup_crit_edge ], [ %status.1251, %if.end137.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_mbox_tx(ptr noundef %target, ptr noundef %packet) #0 align 64 {
entry:
  %queue = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %queue) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %endpoint1 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 6
  %1 = ptrtoint ptr %endpoint1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %endpoint1, align 4
  %buf = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 3
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 5
  %5 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %act_len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.84, i32 noundef %2, ptr noundef %4, i32 noundef %6) #9
  %7 = ptrtoint ptr %endpoint1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %endpoint1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp = icmp sgt i32 %8, 8
  br i1 %cmp, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1132, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end18:                                         ; preds = %entry
  %ep_cb.sroa.6.0.ep_cb1.sroa_idx.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 5, i32 3
  %9 = ptrtoint ptr %ep_cb.sroa.6.0.ep_cb1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %ep_cb.sroa.6.0.copyload.i = load ptr, ptr %ep_cb.sroa.6.0.ep_cb1.sroa_idx.i, align 4
  %tx_lock.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #9
  %txq.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end18
  %tmp_list.0.in.i.i = phi ptr [ %txq.i, %if.end18 ], [ %tmp_list.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %depth.0.i.i = phi i32 [ 0, %if.end18 ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %10 = ptrtoint ptr %tmp_list.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp_list.0.i.i = load ptr, ptr %tmp_list.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp_list.0.i.i, %txq.i
  %inc.i.i = add i32 %depth.0.i.i, 1
  br i1 %cmp.i.not.i.i, label %get_queue_depth.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

get_queue_depth.exit.i:                           ; preds = %for.cond.i.i
  %arrayidx = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #9
  %max_txq_depth.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 6
  %11 = ptrtoint ptr %max_txq_depth.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_txq_depth.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0.i.i, i32 %12)
  %cmp.not.i = icmp slt i32 %depth.0.i.i, %12
  br i1 %cmp.not.i, label %get_queue_depth.exit.i.if.end15.i_crit_edge, label %if.then3.i

get_queue_depth.exit.i.if.end15.i_crit_edge:      ; preds = %get_queue_depth.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then3.i:                                       ; preds = %get_queue_depth.exit.i
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.85, i32 noundef %14, i32 noundef %depth.0.i.i, i32 noundef %12) #9
  %tobool7.not.i = icmp eq ptr %ep_cb.sroa.6.0.copyload.i, null
  br i1 %tobool7.not.i, label %if.then3.i.if.end15.i_crit_edge, label %if.then8.i

if.then3.i.if.end15.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then8.i:                                       ; preds = %if.then3.i
  %target10.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 10
  %15 = ptrtoint ptr %target10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %target10.i, align 4
  %call11.i = tail call i32 %ep_cb.sroa.6.0.copyload.i(ptr noundef %16, ptr noundef %packet) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i)
  %cmp12.i = icmp eq i32 %call11.i, 1
  br i1 %cmp12.i, label %if.then21, label %if.then8.i.if.end15.i_crit_edge

if.then8.i.if.end15.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then8.i.if.end15.i_crit_edge, %if.then3.i.if.end15.i_crit_edge, %get_queue_depth.exit.i.if.end15.i_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #9
  %prev.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %packet, ptr noundef %18, ptr noundef %txq.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end15.i.ath6kl_htc_tx_try.exit.thread_crit_edge

if.end15.i.ath6kl_htc_tx_try.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_tx_try.exit.thread

if.end.i.i.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %packet, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %txq.i, ptr %packet, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %packet, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %packet, ptr %18, align 4
  br label %ath6kl_htc_tx_try.exit.thread

ath6kl_htc_tx_try.exit.thread:                    ; preds = %if.end.i.i.i, %if.end15.i.ath6kl_htc_tx_try.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #9
  tail call fastcc void @ath6kl_htc_tx_from_queue(ptr noundef %target, ptr noundef %arrayidx) #9
  br label %cleanup

if.then21:                                        ; preds = %if.then8.i
  %tx_dropped.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %8, i32 13, i32 4
  %23 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_dropped.i, align 4
  %add.i = add i32 %24, 1
  store i32 %add.i, ptr %tx_dropped.i, align 4
  %htc_flags = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 11
  %25 = ptrtoint ptr %htc_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %htc_flags, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool22.not, i32 -28, i32 -125
  %status = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 7
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond, ptr %status, align 4
  %28 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %queue, ptr %queue, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %queue, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %packet, ptr noundef nonnull %queue, ptr noundef nonnull %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.list_add.exit_crit_edge

if.then21.list_add.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %packet, ptr %0, align 4
  %31 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %queue, ptr %packet, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %packet, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %queue, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %packet, ptr %queue, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then21.list_add.exit_crit_edge
  %34 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %35, %queue
  br i1 %cmp.i.not.i, label %list_add.exit.cleanup_crit_edge, label %if.end.i

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %list_add.exit
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  br label %for.cond.i.i41

for.cond.i.i41:                                   ; preds = %for.cond.i.i41.for.cond.i.i41_crit_edge, %if.end.i
  %tmp_list.0.in.i.i36 = phi ptr [ %queue, %if.end.i ], [ %tmp_list.0.i.i38, %for.cond.i.i41.for.cond.i.i41_crit_edge ]
  %depth.0.i.i37 = phi i32 [ 0, %if.end.i ], [ %inc.i.i40, %for.cond.i.i41.for.cond.i.i41_crit_edge ]
  %38 = ptrtoint ptr %tmp_list.0.in.i.i36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp_list.0.i.i38 = load ptr, ptr %tmp_list.0.in.i.i36, align 4
  %cmp.i.not.i.i39 = icmp eq ptr %tmp_list.0.i.i38, %queue
  %inc.i.i40 = add i32 %depth.0.i.i37, 1
  br i1 %cmp.i.not.i.i39, label %get_queue_depth.exit.i42, label %for.cond.i.i41.for.cond.i.i41_crit_edge

for.cond.i.i41.for.cond.i.i41_crit_edge:          ; preds = %for.cond.i.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i41

get_queue_depth.exit.i42:                         ; preds = %for.cond.i.i41
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %37, i32 noundef %depth.0.i.i37) #9
  %39 = ptrtoint ptr %target10.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %target10.i, align 4
  call void @ath6kl_tx_complete(ptr noundef %40, ptr noundef nonnull %queue) #9
  br label %cleanup

cleanup:                                          ; preds = %get_queue_depth.exit.i42, %list_add.exit.cleanup_crit_edge, %ath6kl_htc_tx_try.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %ath6kl_htc_tx_try.exit.thread ], [ 0, %list_add.exit.cleanup_crit_edge ], [ 0, %get_queue_depth.exit.i42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %queue) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_htc_mbox_stop(ptr noundef %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %htc_lock) #9
  %htc_flags = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 11
  %0 = ptrtoint ptr %htc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %htc_flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %htc_flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %htc_lock) #9
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @ath6kl_hif_mask_intrs(ptr noundef %3) #9
  tail call void @dump_cred_dist_stats(ptr noundef %target) #9
  %svc_id.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %svc_id.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %svc_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp2.i = icmp eq i16 %5, 0
  br i1 %cmp2.i, label %entry.for.inc.i_crit_edge, label %if.end.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath6kl_htc_mbox_flush_txep(ptr noundef %target, i32 noundef 0, i16 noundef zeroext 0) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %entry.for.inc.i_crit_edge
  %svc_id.1.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %svc_id.1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %svc_id.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp2.1.i = icmp eq i16 %7, 0
  br i1 %cmp2.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath6kl_htc_mbox_flush_txep(ptr noundef %target, i32 noundef 1, i16 noundef zeroext 0) #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %svc_id.2.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %svc_id.2.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %svc_id.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp2.2.i = icmp eq i16 %9, 0
  br i1 %cmp2.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath6kl_htc_mbox_flush_txep(ptr noundef %target, i32 noundef 2, i16 noundef zeroext 0) #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %svc_id.3.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %svc_id.3.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %svc_id.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp2.3.i = icmp eq i16 %11, 0
  br i1 %cmp2.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath6kl_htc_mbox_flush_txep(ptr noundef %target, i32 noundef 3, i16 noundef zeroext 0) #9
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %svc_id.4.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %svc_id.4.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %svc_id.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp2.4.i = icmp eq i16 %13, 0
  br i1 %cmp2.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.end.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i

if.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath6kl_htc_mbox_flush_txep(ptr noundef %target, i32 noundef 4, i16 noundef zeroext 0) #9
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.end.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %svc_id.5.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %svc_id.5.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %svc_id.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp2.5.i = icmp eq i16 %15, 0
  br i1 %cmp2.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.end.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.i

if.end.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath6kl_htc_mbox_flush_txep(ptr noundef %target, i32 noundef 5, i16 noundef zeroext 0) #9
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.end.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %svc_id.6.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %svc_id.6.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %svc_id.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp2.6.i = icmp eq i16 %17, 0
  br i1 %cmp2.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.end.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6.i

if.end.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath6kl_htc_mbox_flush_txep(ptr noundef %target, i32 noundef 6, i16 noundef zeroext 0) #9
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.end.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %svc_id.7.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %svc_id.7.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %svc_id.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp2.7.i = icmp eq i16 %19, 0
  br i1 %cmp2.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.end.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7.i

if.end.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath6kl_htc_mbox_flush_txep(ptr noundef %target, i32 noundef 7, i16 noundef zeroext 0) #9
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.end.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %svc_id.8.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %svc_id.8.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %svc_id.8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp2.8.i = icmp eq i16 %21, 0
  br i1 %cmp2.8.i, label %for.inc.7.i.ath6kl_htc_flush_txep_all.exit_crit_edge, label %if.end.8.i

for.inc.7.i.ath6kl_htc_flush_txep_all.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_flush_txep_all.exit

if.end.8.i:                                       ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath6kl_htc_mbox_flush_txep(ptr noundef %target, i32 noundef 8, i16 noundef zeroext 0) #9
  br label %ath6kl_htc_flush_txep_all.exit

ath6kl_htc_flush_txep_all.exit:                   ; preds = %if.end.8.i, %for.inc.7.i.ath6kl_htc_flush_txep_all.exit_crit_edge
  tail call void @ath6kl_htc_mbox_flush_rx_buf(ptr noundef %target)
  %call2 = tail call fastcc i32 @ath6kl_htc_reset(ptr noundef %target)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_htc_mbox_cleanup(ptr noundef %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hif_ops.i, align 4
  %cleanup_scatter.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %cleanup_scatter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cleanup_scatter.i, align 4
  tail call void %7(ptr noundef %3) #9
  %free_ctrl_txbuf = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %8 = ptrtoint ptr %free_ctrl_txbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_ctrl_txbuf, align 4
  %cmp.not62 = icmp eq ptr %9, %free_ctrl_txbuf
  br i1 %cmp.not62, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %packet.063 = phi ptr [ %tmp_packet.0, %list_del.exit.for.body_crit_edge ], [ %9, %entry.for.body_crit_edge ]
  %10 = ptrtoint ptr %packet.063 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp_packet.0 = load ptr, ptr %packet.063, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.063) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %packet.063, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %packet.063 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %packet.063, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %packet.063 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.063, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %packet.063, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %buf_start = getelementptr inbounds %struct.htc_packet, ptr %packet.063, i32 0, i32 2
  %19 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf_start, align 4
  tail call void @kfree(ptr noundef %20) #9
  tail call void @kfree(ptr noundef %packet.063) #9
  %cmp.not = icmp eq ptr %tmp_packet.0, %free_ctrl_txbuf
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %free_ctrl_rxbuf = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %21 = ptrtoint ptr %free_ctrl_rxbuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %free_ctrl_rxbuf, align 4
  %cmp25.not65 = icmp eq ptr %22, %free_ctrl_rxbuf
  br i1 %cmp25.not65, label %for.end.for.end36_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.for.end36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end36

for.body27:                                       ; preds = %list_del.exit61.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %packet.166 = phi ptr [ %tmp_packet.1, %list_del.exit61.for.body27_crit_edge ], [ %22, %for.end.for.body27_crit_edge ]
  %23 = ptrtoint ptr %packet.166 to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp_packet.1 = load ptr, ptr %packet.166, align 4
  %call.i.i56 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.166) #9
  br i1 %call.i.i56, label %if.end.i.i59, label %for.body27.list_del.exit61_crit_edge

for.body27.list_del.exit61_crit_edge:             ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit61

if.end.i.i59:                                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i57 = getelementptr inbounds %struct.list_head, ptr %packet.166, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i57, align 4
  %26 = ptrtoint ptr %packet.166 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %packet.166, align 4
  %prev1.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i58, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit61

list_del.exit61:                                  ; preds = %if.end.i.i59, %for.body27.list_del.exit61_crit_edge
  %30 = ptrtoint ptr %packet.166 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.166, align 4
  %prev.i60 = getelementptr inbounds %struct.list_head, ptr %packet.166, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i60, align 4
  %buf_start29 = getelementptr inbounds %struct.htc_packet, ptr %packet.166, i32 0, i32 2
  %32 = ptrtoint ptr %buf_start29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf_start29, align 4
  tail call void @kfree(ptr noundef %33) #9
  tail call void @kfree(ptr noundef %packet.166) #9
  %cmp25.not = icmp eq ptr %tmp_packet.1, %free_ctrl_rxbuf
  br i1 %cmp25.not, label %list_del.exit61.for.end36_crit_edge, label %list_del.exit61.for.body27_crit_edge

list_del.exit61.for.body27_crit_edge:             ; preds = %list_del.exit61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27

list_del.exit61.for.end36_crit_edge:              ; preds = %list_del.exit61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end36

for.end36:                                        ; preds = %list_del.exit61.for.end36_crit_edge, %for.end.for.end36_crit_edge
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void @kfree(ptr noundef %35) #9
  tail call void @kfree(ptr noundef %target) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_htc_mbox_flush_txep(ptr noundef %target, i32 noundef %eid, i16 noundef zeroext %tag) #0 align 64 {
entry:
  %discard_q = alloca %struct.list_head, align 4
  %container = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %discard_q) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %discard_q, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %container) #9
  %1 = ptrtoint ptr %container to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %container, align 4, !annotation !200
  %2 = getelementptr inbounds %struct.list_head, ptr %container, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !200
  %arrayidx = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %eid
  %svc_id = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %eid, i32 1
  %4 = ptrtoint ptr %svc_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %svc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1158, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end18:                                         ; preds = %entry
  %6 = ptrtoint ptr %discard_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %discard_q, ptr %discard_q, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %discard_q, ptr %0, align 4
  %tx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  %txq = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %eid, i32 2
  %8 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %txq, align 4
  %cmp.not110 = icmp eq ptr %9, %txq
  br i1 %cmp.not110, label %if.end18.for.end_crit_edge, label %for.body.lr.ph

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tag)
  %cmp28 = icmp eq i16 %tag, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %packet.0111 = phi ptr [ %9, %for.body.lr.ph ], [ %tmp_pkt.0113, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %packet.0111 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp_pkt.0113 = load ptr, ptr %packet.0111, align 4
  br i1 %cmp28, label %for.body.if.then35_crit_edge, label %lor.lhs.false

for.body.if.then35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

lor.lhs.false:                                    ; preds = %for.body
  %info = getelementptr inbounds %struct.htc_packet, ptr %packet.0111, i32 0, i32 8
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %info, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %tag)
  %cmp33 = icmp eq i16 %12, %tag
  br i1 %cmp33, label %lor.lhs.false.if.then35_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %for.body.if.then35_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.0111) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then35.__list_del_entry.exit.i_crit_edge

if.then35.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %packet.0111, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %packet.0111 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %packet.0111, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then35.__list_del_entry.exit.i_crit_edge
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %packet.0111, ptr noundef %20, ptr noundef nonnull %discard_q) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %packet.0111, ptr %0, align 4
  %22 = ptrtoint ptr %packet.0111 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %discard_q, ptr %packet.0111, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %packet.0111, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %packet.0111, ptr %20, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp_pkt.0113, %txq
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end18.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  %25 = ptrtoint ptr %discard_q to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %discard_q, align 4
  %cmp55.not114 = icmp eq ptr %26, %discard_q
  br i1 %cmp55.not114, label %for.end.cleanup_crit_edge, label %for.body59.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body59.lr.ph:                                 ; preds = %for.end
  %target.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %eid, i32 10
  br label %for.body59

for.body59:                                       ; preds = %htc_tx_complete.exit.for.body59_crit_edge, %for.body59.lr.ph
  %packet.1115 = phi ptr [ %26, %for.body59.lr.ph ], [ %tmp_pkt.1, %htc_tx_complete.exit.for.body59_crit_edge ]
  %27 = ptrtoint ptr %packet.1115 to i32
  call void @__asan_load4_noabort(i32 %27)
  %tmp_pkt.1 = load ptr, ptr %packet.1115, align 4
  %status = getelementptr inbounds %struct.htc_packet, ptr %packet.1115, i32 0, i32 7
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -125, ptr %status, align 4
  %call.i.i99 = call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.1115) #9
  br i1 %call.i.i99, label %if.end.i.i102, label %for.body59.list_del.exit_crit_edge

for.body59.list_del.exit_crit_edge:               ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i102:                                    ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i100 = getelementptr inbounds %struct.list_head, ptr %packet.1115, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i100, align 4
  %31 = ptrtoint ptr %packet.1115 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %packet.1115, align 4
  %prev1.i.i.i101 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i101, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i102, %for.body59.list_del.exit_crit_edge
  %35 = ptrtoint ptr %packet.1115 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.1115, align 4
  %prev.i103 = getelementptr inbounds %struct.list_head, ptr %packet.1115, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i103, align 4
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %packet.1115, i32 0, i32 5
  %37 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %act_len, align 4
  %endpoint61 = getelementptr inbounds %struct.htc_packet, ptr %packet.1115, i32 0, i32 6
  %39 = ptrtoint ptr %endpoint61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %endpoint61, align 4
  %info62 = getelementptr inbounds %struct.htc_packet, ptr %packet.1115, i32 0, i32 8
  %41 = ptrtoint ptr %info62 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %info62, align 4
  %conv64 = zext i16 %42 to i32
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.86, ptr noundef %packet.1115, i32 noundef %38, i32 noundef %40, i32 noundef %conv64) #9
  %43 = ptrtoint ptr %container to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %container, ptr %container, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %container, ptr %2, align 4
  %call.i.i107 = call zeroext i1 @__list_add_valid(ptr noundef %packet.1115, ptr noundef nonnull %container, ptr noundef nonnull %container) #9
  br i1 %call.i.i107, label %if.end.i.i108, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i108:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %packet.1115, ptr %2, align 4
  %46 = ptrtoint ptr %packet.1115 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %container, ptr %packet.1115, align 4
  %47 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %container, ptr %prev.i103, align 4
  %48 = ptrtoint ptr %container to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %packet.1115, ptr %container, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i108, %list_del.exit.list_add_tail.exit_crit_edge
  %49 = ptrtoint ptr %container to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %container, align 4
  %cmp.i.not.i = icmp eq ptr %50, %container
  br i1 %cmp.i.not.i, label %list_add_tail.exit.htc_tx_complete.exit_crit_edge, label %if.end.i

list_add_tail.exit.htc_tx_complete.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_tx_complete.exit

if.end.i:                                         ; preds = %list_add_tail.exit
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end.i
  %tmp_list.0.in.i.i = phi ptr [ %container, %if.end.i ], [ %tmp_list.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %depth.0.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %53 = ptrtoint ptr %tmp_list.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %tmp_list.0.i.i = load ptr, ptr %tmp_list.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp_list.0.i.i, %container
  %inc.i.i = add i32 %depth.0.i.i, 1
  br i1 %cmp.i.not.i.i, label %get_queue_depth.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

get_queue_depth.exit.i:                           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %52, i32 noundef %depth.0.i.i) #9
  %54 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %target.i, align 4
  call void @ath6kl_tx_complete(ptr noundef %55, ptr noundef nonnull %container) #9
  br label %htc_tx_complete.exit

htc_tx_complete.exit:                             ; preds = %get_queue_depth.exit.i, %list_add_tail.exit.htc_tx_complete.exit_crit_edge
  %cmp55.not = icmp eq ptr %tmp_pkt.1, %discard_q
  br i1 %cmp55.not, label %htc_tx_complete.exit.cleanup_crit_edge, label %htc_tx_complete.exit.for.body59_crit_edge

htc_tx_complete.exit.for.body59_crit_edge:        ; preds = %htc_tx_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body59

htc_tx_complete.exit.cleanup_crit_edge:           ; preds = %htc_tx_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %htc_tx_complete.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %container) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %discard_q) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_htc_mbox_flush_rx_buf(ptr noundef %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %entry
  %i.050 = phi i32 [ 0, %entry ], [ %inc, %for.inc25.for.body_crit_edge ]
  %svc_id = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.050, i32 1
  %0 = ptrtoint ptr %svc_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %svc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %for.body.for.inc25_crit_edge, label %if.end

for.body.for.inc25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc25

if.end:                                           ; preds = %for.body
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #9
  %rx_bufq = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.050, i32 3
  %2 = ptrtoint ptr %rx_bufq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_bufq, align 4
  %cmp9.not46 = icmp eq ptr %3, %rx_bufq
  br i1 %cmp9.not46, label %if.end.for.end_crit_edge, label %if.end.for.body10_crit_edge

if.end.for.body10_crit_edge:                      ; preds = %if.end
  br label %for.body10

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body10:                                       ; preds = %if.end17.for.body10_crit_edge, %if.end.for.body10_crit_edge
  %packet.047 = phi ptr [ %tmp_pkt.049, %if.end17.for.body10_crit_edge ], [ %3, %if.end.for.body10_crit_edge ]
  %4 = ptrtoint ptr %packet.047 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp_pkt.049 = load ptr, ptr %packet.047, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.047) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body10.list_del.exit_crit_edge

for.body10.list_del.exit_crit_edge:               ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %packet.047, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %packet.047 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %packet.047, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body10.list_del.exit_crit_edge
  %11 = ptrtoint ptr %packet.047 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.047, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %packet.047, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #9
  %buf_len = getelementptr inbounds %struct.htc_packet, ptr %packet.047, i32 0, i32 4
  %13 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_len, align 4
  %endpoint13 = getelementptr inbounds %struct.htc_packet, ptr %packet.047, i32 0, i32 6
  %15 = ptrtoint ptr %endpoint13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %endpoint13, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.87, ptr noundef %packet.047, i32 noundef %14, i32 noundef %16) #9
  %17 = ptrtoint ptr %endpoint13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %endpoint13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp15 = icmp eq i32 %18, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %buf_start = getelementptr inbounds %struct.htc_packet, ptr %packet.047, i32 0, i32 2
  %19 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf_start, align 4
  tail call void @kfree(ptr noundef %20) #9
  tail call void @kfree(ptr noundef %packet.047) #9
  br label %if.end17

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pkt_cntxt = getelementptr inbounds %struct.htc_packet, ptr %packet.047, i32 0, i32 1
  %21 = ptrtoint ptr %pkt_cntxt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pkt_cntxt, align 4
  tail call void @consume_skb(ptr noundef %22) #9
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #9
  %cmp9.not = icmp eq ptr %tmp_pkt.049, %rx_bufq
  br i1 %cmp9.not, label %if.end17.for.end_crit_edge, label %if.end17.for.body10_crit_edge

if.end17.for.body10_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #9
  br label %for.inc25

for.inc25:                                        ; preds = %for.end, %for.body.for.inc25_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end26, label %for.inc25.for.body_crit_edge

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end26:                                        ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_htc_mbox_activity_changed(ptr noundef %target, i32 noundef %eid, i1 noundef zeroext %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %svc_id = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %eid, i32 1
  %0 = ptrtoint ptr %svc_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %svc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1213, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end18:                                         ; preds = %entry
  %tx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  %dist_flags = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %eid, i32 4, i32 3
  %2 = ptrtoint ptr %dist_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dist_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool21.not = icmp sgt i32 %3, -1
  br i1 %active, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  br i1 %tobool21.not, label %if.then22, label %if.then20.if.end47.critedge_crit_edge

if.then20.if.end47.critedge_crit_edge:            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.critedge

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %3, -2147483648
  br label %if.then37

if.else:                                          ; preds = %if.end18
  br i1 %tobool21.not, label %if.else.if.end47.critedge_crit_edge, label %if.then30

if.else.if.end47.critedge_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.critedge

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and33 = and i32 %3, 2147483647
  br label %if.then37

if.then37:                                        ; preds = %if.then30, %if.then22
  %and33.sink = phi i32 [ %and33, %if.then30 ], [ %or, %if.then22 ]
  %4 = ptrtoint ptr %dist_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and33.sink, ptr %dist_flags, align 4
  %txq = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %eid, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then37
  %tmp_list.0.in.i = phi ptr [ %txq, %if.then37 ], [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ 0, %if.then37 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %txq
  %inc.i = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %get_queue_depth.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  %txq_depth = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %eid, i32 4, i32 13
  %6 = ptrtoint ptr %txq_depth to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %depth.0.i, ptr %txq_depth, align 4
  %credit_info = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 4
  %7 = ptrtoint ptr %credit_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %credit_info, align 4
  %cred_dist_list = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.88, ptr noundef %8, ptr noundef %cred_dist_list) #9
  %9 = ptrtoint ptr %credit_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %credit_info, align 4
  tail call fastcc void @ath6kl_credit_distribute(ptr noundef %10, ptr noundef %cred_dist_list, i32 noundef 1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  br i1 %active, label %get_queue_depth.exit.cleanup_crit_edge, label %if.then46

get_queue_depth.exit.cleanup_crit_edge:           ; preds = %get_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then46:                                        ; preds = %get_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @htc_chk_ep_txq(ptr noundef %target)
  br label %cleanup

if.end47.critedge:                                ; preds = %if.else.if.end47.critedge_crit_edge, %if.then20.if.end47.critedge_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47.critedge, %if.then46, %get_queue_depth.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_mbox_get_rxbuf_num(ptr noundef %target, i32 noundef %endpoint) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_lock = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #9
  ret i32 %depth.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_htc_mbox_credit_setup(ptr noundef %htc_target, ptr noundef %cred_info) #0 align 64 {
entry:
  %servicepriority = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %servicepriority) #9
  %0 = getelementptr inbounds [5 x i16], ptr %servicepriority, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i16], ptr %servicepriority, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i16], ptr %servicepriority, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i16], ptr %servicepriority, i32 0, i32 4
  %4 = call ptr @memset(ptr %cred_info, i32 0, i32 16)
  %5 = ptrtoint ptr %servicepriority to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %servicepriority, align 2
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 260, ptr %0, align 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 259, ptr %1, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 257, ptr %2, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 258, ptr %3, align 2
  %credit_info1.i = getelementptr inbounds %struct.htc_target, ptr %htc_target, i32 0, i32 4
  %10 = ptrtoint ptr %credit_info1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cred_info, ptr %credit_info1.i, align 4
  %cred_dist.i = getelementptr inbounds %struct.htc_endpoint, ptr %htc_target, i32 0, i32 4
  %cred_dist_list.i = getelementptr inbounds %struct.htc_target, ptr %htc_target, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.htc_target, ptr %htc_target, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cred_dist.i, ptr noundef %12, ptr noundef %cred_dist_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.list_add_tail.exit.i_crit_edge

entry.list_add_tail.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cred_dist.i, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %cred_dist.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cred_dist_list.i, ptr %cred_dist.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.htc_endpoint, ptr %htc_target, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %cred_dist.i, ptr %12, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %entry.list_add_tail.exit.i_crit_edge
  %svc_id.i = getelementptr [9 x %struct.htc_endpoint], ptr %htc_target, i32 0, i32 1, i32 1
  %svc_id.1.i = getelementptr [9 x %struct.htc_endpoint], ptr %htc_target, i32 0, i32 2, i32 1
  %svc_id.2.i = getelementptr [9 x %struct.htc_endpoint], ptr %htc_target, i32 0, i32 3, i32 1
  %svc_id.3.i = getelementptr [9 x %struct.htc_endpoint], ptr %htc_target, i32 0, i32 4, i32 1
  %svc_id.4.i = getelementptr [9 x %struct.htc_endpoint], ptr %htc_target, i32 0, i32 5, i32 1
  %svc_id.5.i = getelementptr [9 x %struct.htc_endpoint], ptr %htc_target, i32 0, i32 6, i32 1
  %svc_id.6.i = getelementptr [9 x %struct.htc_endpoint], ptr %htc_target, i32 0, i32 7, i32 1
  %svc_id.7.i = getelementptr [9 x %struct.htc_endpoint], ptr %htc_target, i32 0, i32 8, i32 1
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc35.i.for.cond3.preheader.i_crit_edge, %list_add_tail.exit.i
  %i.09.i = phi i32 [ 0, %list_add_tail.exit.i ], [ %inc36.i, %for.inc35.i.for.cond3.preheader.i_crit_edge ]
  %arrayidx8.i = getelementptr i16, ptr %servicepriority, i32 %i.09.i
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx8.i, align 2
  %19 = ptrtoint ptr %svc_id.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %svc_id.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %18)
  %cmp10.i = icmp eq i16 %20, %18
  br i1 %cmp10.i, label %for.cond3.preheader.i.if.then.i_crit_edge, label %for.inc.i

for.cond3.preheader.i.if.then.i_crit_edge:        ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %for.cond3.preheader.i.if.then.i_crit_edge
  %ep.08.lcssa.i = phi i32 [ 1, %for.cond3.preheader.i.if.then.i_crit_edge ], [ 2, %for.inc.i.if.then.i_crit_edge ], [ 3, %for.inc.1.i.if.then.i_crit_edge ], [ 4, %for.inc.2.i.if.then.i_crit_edge ], [ 5, %for.inc.3.i.if.then.i_crit_edge ], [ 6, %for.inc.4.i.if.then.i_crit_edge ], [ 7, %for.inc.5.i.if.then.i_crit_edge ], [ 8, %for.inc.6.i.if.then.i_crit_edge ]
  %cred_dist12.i = getelementptr [9 x %struct.htc_endpoint], ptr %htc_target, i32 0, i32 %ep.08.lcssa.i, i32 4
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i2.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cred_dist12.i, ptr noundef %22, ptr noundef %cred_dist_list.i) #9
  br i1 %call.i.i2.i, label %if.end.i.i4.i, label %if.then.i.for.inc35.i_crit_edge

if.then.i.for.inc35.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35.i

if.end.i.i4.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cred_dist12.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %cred_dist12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cred_dist_list.i, ptr %cred_dist12.i, align 4
  %prev3.i.i3.i = getelementptr inbounds %struct.list_head, ptr %cred_dist12.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i3.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %cred_dist12.i, ptr %22, align 4
  br label %for.inc35.i

for.inc.i:                                        ; preds = %for.cond3.preheader.i
  %27 = ptrtoint ptr %svc_id.1.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %svc_id.1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %18)
  %cmp10.1.i = icmp eq i16 %28, %18
  br i1 %cmp10.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %29 = ptrtoint ptr %svc_id.2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %svc_id.2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %18)
  %cmp10.2.i = icmp eq i16 %30, %18
  br i1 %cmp10.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %31 = ptrtoint ptr %svc_id.3.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %svc_id.3.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %18)
  %cmp10.3.i = icmp eq i16 %32, %18
  br i1 %cmp10.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %33 = ptrtoint ptr %svc_id.4.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %svc_id.4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %18)
  %cmp10.4.i = icmp eq i16 %34, %18
  br i1 %cmp10.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %35 = ptrtoint ptr %svc_id.5.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %svc_id.5.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %18)
  %cmp10.5.i = icmp eq i16 %36, %18
  br i1 %cmp10.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %37 = ptrtoint ptr %svc_id.6.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %svc_id.6.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %18)
  %cmp10.6.i = icmp eq i16 %38, %18
  br i1 %cmp10.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %39 = ptrtoint ptr %svc_id.7.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %svc_id.7.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %18)
  %cmp10.7.i = icmp eq i16 %40, %18
  br i1 %cmp10.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1115, i32 noundef 9, ptr noundef null) #9
  br label %ath6kl_htc_set_credit_dist.exit

for.inc35.i:                                      ; preds = %if.end.i.i4.i, %if.then.i.for.inc35.i_crit_edge
  %inc36.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc36.i, 5
  br i1 %exitcond.not.i, label %for.inc35.i.ath6kl_htc_set_credit_dist.exit_crit_edge, label %for.inc35.i.for.cond3.preheader.i_crit_edge

for.inc35.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i

for.inc35.i.ath6kl_htc_set_credit_dist.exit_crit_edge: ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_htc_set_credit_dist.exit

ath6kl_htc_set_credit_dist.exit:                  ; preds = %for.inc35.i.ath6kl_htc_set_credit_dist.exit_crit_edge, %for.inc.7.i
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %servicepriority) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_hif_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_htc_reset(ptr noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %cred_dist.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.016.i, i32 4
  %0 = call ptr @memset(ptr %cred_dist.i, i32 0, i32 60)
  %svc_id.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.016.i, i32 1
  %1 = ptrtoint ptr %svc_id.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %svc_id.i, align 4
  %len_max.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.016.i, i32 7
  %2 = ptrtoint ptr %len_max.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %len_max.i, align 4
  %max_txq_depth.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.016.i, i32 6
  %3 = ptrtoint ptr %max_txq_depth.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_txq_depth.i, align 4
  %ep_st.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.016.i, i32 13
  %4 = call ptr @memset(ptr %ep_st.i, i32 0, i32 84)
  %rx_bufq.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.016.i, i32 3
  %5 = ptrtoint ptr %rx_bufq.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %rx_bufq.i, ptr %rx_bufq.i, align 4
  %prev.i.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.016.i, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rx_bufq.i, ptr %prev.i.i, align 4
  %txq.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.016.i, i32 2
  %7 = ptrtoint ptr %txq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %txq.i, ptr %txq.i, align 4
  %prev.i14.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.016.i, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %txq.i, ptr %prev.i14.i, align 4
  %target2.i = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %i.016.i, i32 10
  %9 = ptrtoint ptr %target2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %target, ptr %target2.i, align 4
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %reset_ep_state.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

reset_ep_state.exit:                              ; preds = %for.body.i
  %cred_dist_list.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 1
  %10 = ptrtoint ptr %cred_dist_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %cred_dist_list.i, ptr %cred_dist_list.i, align 4
  %prev.i15.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cred_dist_list.i, ptr %prev.i15.i, align 4
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ar, align 4
  %block_size1 = getelementptr inbounds %struct.ath6kl, ptr %15, i32 0, i32 73, i32 3
  %16 = ptrtoint ptr %block_size1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %block_size1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %17)
  %cmp = icmp ugt i32 %17, 256
  %add = add i32 %17, 6
  %spec.select = select i1 %cmp, i32 %add, i32 262
  %free_ctrl_txbuf = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %prev.i35 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2, i32 1
  %free_ctrl_rxbuf = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %reset_ep_state.exit
  %i.044 = phi i32 [ 0, %reset_ep_state.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 64) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end8.i.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %for.body
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select, i32 noundef 3520) #13
  %buf_start = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %buf_start to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i, ptr %buf_start, align 4
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end8.i.i
  %buf_len = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.044)
  %cmp8 = icmp ult i32 %i.044, 6
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %act_len, align 8
  %buf = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i, ptr %buf, align 8
  %endpoint = getelementptr inbounds %struct.htc_packet, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %endpoint to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %endpoint, align 4
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %25, ptr noundef %free_ctrl_rxbuf) #9
  br i1 %call.i.i, label %if.then9.for.inc.sink.split_crit_edge, label %if.then9.for.inc_crit_edge

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then9.for.inc.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end7
  %26 = ptrtoint ptr %prev.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i35, align 4
  %call.i.i36 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %27, ptr noundef %free_ctrl_txbuf) #9
  br i1 %call.i.i36, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.then9.for.inc.sink.split_crit_edge
  %prev.i35.sink = phi ptr [ %prev.i, %if.then9.for.inc.sink.split_crit_edge ], [ %prev.i35, %if.else.for.inc.sink.split_crit_edge ]
  %free_ctrl_txbuf.sink = phi ptr [ %free_ctrl_rxbuf, %if.then9.for.inc.sink.split_crit_edge ], [ %free_ctrl_txbuf, %if.else.for.inc.sink.split_crit_edge ]
  %.sink50 = phi ptr [ %25, %if.then9.for.inc.sink.split_crit_edge ], [ %27, %if.else.for.inc.sink.split_crit_edge ]
  %28 = ptrtoint ptr %prev.i35.sink to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %prev.i35.sink, align 4
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_ctrl_txbuf.sink, ptr %call7.i.i, align 8
  %prev3.i.i37 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.sink50, ptr %prev3.i.i37, align 4
  %31 = ptrtoint ptr %.sink50 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i, ptr %.sink50, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.then9.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then6, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6 ], [ 0, %for.inc.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @htc_wait_for_ctrl_msg(ptr noundef %target) unnamed_addr #0 align 64 {
entry:
  %look_ahead = alloca %struct.htc_frame_look_ahead, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %look_ahead) #9
  %0 = ptrtoint ptr %look_ahead to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %look_ahead, align 4, !annotation !200
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call = call i32 @ath6kl_hif_poll_mboxmsg_rx(ptr noundef %2, ptr noundef nonnull %look_ahead, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %look_ahead to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %look_ahead, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32, ptr noundef nonnull @.str.73, i32 noundef %4) #9
  %5 = ptrtoint ptr %look_ahead to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %look_ahead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %free_ctrl_rxbuf.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %htc_lock.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 7
  call void @_raw_spin_lock_bh(ptr noundef %htc_lock.i) #9
  %7 = ptrtoint ptr %free_ctrl_rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %free_ctrl_rxbuf.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %free_ctrl_rxbuf.i
  br i1 %cmp.i.not.i, label %if.end3.cleanup.sink.split_crit_edge, label %if.end.i

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end3
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.htc_get_control_buf.exit_crit_edge

if.end.i.htc_get_control_buf.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_get_control_buf.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %htc_get_control_buf.exit

htc_get_control_buf.exit:                         ; preds = %if.end.i.i.i, %if.end.i.htc_get_control_buf.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i) #9
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %htc_get_control_buf.exit.cleanup_crit_edge, label %if.end7

htc_get_control_buf.exit.cleanup_crit_edge:       ; preds = %htc_get_control_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %htc_get_control_buf.exit
  %info = getelementptr inbounds %struct.htc_packet, ptr %8, i32 0, i32 8
  %rx_flags = getelementptr inbounds %struct.htc_packet, ptr %8, i32 0, i32 8, i32 0, i32 1
  %17 = ptrtoint ptr %rx_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rx_flags, align 4
  %18 = ptrtoint ptr %look_ahead to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %look_ahead, align 4
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %info, align 4
  %21 = trunc i32 %19 to i16
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %conv9 = zext i16 %22 to i32
  %add = add nuw nsw i32 %conv9, 6
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %8, i32 0, i32 5
  %23 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %act_len, align 4
  %buf_len = getelementptr inbounds %struct.htc_packet, ptr %8, i32 0, i32 4
  %24 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %25)
  %cmp11 = icmp ugt i32 %add, %25
  br i1 %cmp11, label %if.end7.if.then30_crit_edge, label %if.end14

if.end7.if.then30_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.end14:                                         ; preds = %if.end7
  %completion = getelementptr inbounds %struct.htc_packet, ptr %8, i32 0, i32 9
  %26 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %completion, align 4
  %call16 = call fastcc i32 @ath6kl_htc_rx_packet(ptr noundef %target, ptr noundef nonnull %8, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.if.then30_crit_edge

if.end14.if.then30_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.end19:                                         ; preds = %if.end14
  %status = getelementptr inbounds %struct.htc_packet, ptr %8, i32 0, i32 7
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %endpoint = getelementptr inbounds %struct.htc_packet, ptr %8, i32 0, i32 6
  %29 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %endpoint, align 4
  %buf = getelementptr inbounds %struct.htc_packet, ptr %8, i32 0, i32 3
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf, align 4
  %33 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %act_len, align 4
  call fastcc void @trace_ath6kl_htc_rx(i32 noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %34)
  %call21 = call fastcc i32 @ath6kl_htc_rx_process_hdr(ptr noundef %target, ptr noundef nonnull %8, ptr noundef null, ptr noundef null)
  %35 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call21, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool24.not = icmp eq i32 %call21, 0
  br i1 %tobool24.not, label %if.end19.cleanup_crit_edge, label %if.then25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.74, i32 noundef %call21) #9
  br label %if.then30

if.then30:                                        ; preds = %if.then25, %if.end14.if.then30_crit_edge, %if.end7.if.then30_crit_edge
  %buf_start.i = getelementptr inbounds %struct.htc_packet, ptr %8, i32 0, i32 2
  %36 = ptrtoint ptr %buf_start.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf_start.i, align 4
  %buf.i = getelementptr inbounds %struct.htc_packet, ptr %8, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %buf.i, align 4
  %39 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %act_len, align 4
  call void @_raw_spin_lock_bh(ptr noundef %htc_lock.i) #9
  %prev.i.i59 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i59, align 4
  %call.i.i.i60 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %8, ptr noundef %41, ptr noundef %free_ctrl_rxbuf.i) #9
  br i1 %call.i.i.i60, label %if.end.i.i.i61, label %if.then30.cleanup.sink.split_crit_edge

if.then30.cleanup.sink.split_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i.i.i61:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %8, ptr %prev.i.i59, align 4
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %free_ctrl_rxbuf.i, ptr %8, align 4
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %8, ptr %41, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i.i61, %if.then30.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge, %htc_get_control_buf.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %htc_get_control_buf.exit.cleanup_crit_edge ], [ %8, %if.end19.cleanup_crit_edge ], [ null, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %look_ahead) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htc_ctrl_rx(ptr noundef %context, ptr noundef %packets) #0 align 64 {
entry:
  %queue.i.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoint = getelementptr inbounds %struct.htc_packet, ptr %packets, i32 0, i32 6
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %endpoint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end16, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1570, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end16:                                         ; preds = %entry
  %status = getelementptr inbounds %struct.htc_packet, ptr %packets, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %3)
  %cmp17 = icmp eq i32 %3, -125
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  %htc_lock.i = getelementptr inbounds %struct.htc_target, ptr %context, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %htc_lock.i) #9
  %free_ctrl_rxbuf.i = getelementptr inbounds %struct.htc_target, ptr %context, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.htc_target, ptr %context, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %packets, ptr noundef %5, ptr noundef %free_ctrl_rxbuf.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then18.reclaim_rx_ctrl_buf.exit_crit_edge

if.then18.reclaim_rx_ctrl_buf.exit_crit_edge:     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %reclaim_rx_ctrl_buf.exit

if.end.i.i.i:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %packets, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %free_ctrl_rxbuf.i, ptr %packets, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %packets, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %packets, ptr %5, align 4
  br label %reclaim_rx_ctrl_buf.exit

reclaim_rx_ctrl_buf.exit:                         ; preds = %if.end.i.i.i, %if.then18.reclaim_rx_ctrl_buf.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %htc_lock.i) #9
  br label %return

if.end19:                                         ; preds = %if.end16
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %packets, i32 0, i32 5
  %10 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20.not = icmp eq i32 %11, 0
  br i1 %cmp20.not, label %if.end19.if.end25_crit_edge, label %if.then21

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %11, 6
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.78, i32 noundef %add) #9
  %buf = getelementptr inbounds %struct.htc_packet, ptr %packets, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 -6
  %14 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %act_len, align 4
  %add24 = add i32 %15, 6
  tail call void @ath6kl_dbg_dump(i32 noundef 32, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.25, ptr noundef %add.ptr, i32 noundef %add24) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end19.if.end25_crit_edge
  %rx_flags.i = getelementptr inbounds %struct.htc_packet, ptr %packets, i32 0, i32 8, i32 0, i32 1
  %16 = ptrtoint ptr %rx_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_flags.i, align 4
  %and.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %buf_start.i8.i = getelementptr inbounds %struct.htc_packet, ptr %packets, i32 0, i32 2
  %18 = ptrtoint ptr %buf_start.i8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf_start.i8.i, align 4
  %buf.i9.i = getelementptr inbounds %struct.htc_packet, ptr %packets, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %buf.i9.i, align 4
  %21 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %act_len, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -125, ptr %status, align 4
  %rx.i = getelementptr inbounds %struct.htc_endpoint, ptr %context, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx.i, align 4
  %target1.i = getelementptr inbounds %struct.htc_endpoint, ptr %context, i32 0, i32 10
  %25 = ptrtoint ptr %target1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %target1.i, align 4
  tail call void %24(ptr noundef %26, ptr noundef %packets) #9
  br label %return

if.else.i:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %queue.i.i) #9
  %27 = getelementptr inbounds %struct.list_head, ptr %queue.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %queue.i.i, ptr %queue.i.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %queue.i.i, ptr %27, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %packets, ptr noundef nonnull %queue.i.i, ptr noundef nonnull %queue.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.htc_add_rxbuf.exit.i_crit_edge

if.else.i.htc_add_rxbuf.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %htc_add_rxbuf.exit.i

if.end.i.i.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %packets, ptr %27, align 4
  %31 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %queue.i.i, ptr %packets, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %packets, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %queue.i.i, ptr %prev3.i.i.i.i, align 4
  %33 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %packets, ptr %queue.i.i, align 4
  br label %htc_add_rxbuf.exit.i

htc_add_rxbuf.exit.i:                             ; preds = %if.end.i.i.i.i, %if.else.i.htc_add_rxbuf.exit.i_crit_edge
  %call.i.i = call i32 @ath6kl_htc_mbox_add_rxbuf_multiple(ptr noundef %context, ptr noundef nonnull %queue.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %queue.i.i) #9
  br label %return

return:                                           ; preds = %htc_add_rxbuf.exit.i, %if.then.i, %reclaim_rx_ctrl_buf.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_hif_poll_mboxmsg_rx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_hif_disable_intrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_cred_dist_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_hif_unmask_intrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_hif_mask_intrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memmove(ptr, ptr, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !144, !145, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188}
!llvm.named.register.sp = !{!190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2171, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2226, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2237, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2247, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1485, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1492, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1499, i32 15}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1507, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1530, i32 8}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1382, i32 15}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1935, i32 15}
!22 = !{ptr @__func__.ath6kl_htc_rx_bundle, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1936, i32 8}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1942, i32 6}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1983, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1311, i32 14}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1317, i32 6}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 28, i32 6}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 29, i32 30}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 29, i32 40}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath6kl/trace.h", i32 194, i32 1}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!42 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1834, i32 15}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1846, i32 15}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1854, i32 14}
!52 = !{ptr @__func__.ath6kl_htc_rx_process_hdr, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1855, i32 7}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1856, i32 35}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1857, i32 5}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1858, i32 35}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1867, i32 15}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1894, i32 35}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1760, i32 29}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1778, i32 15}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1797, i32 35}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1703, i32 8}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1710, i32 6}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1729, i32 36}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1742, i32 14}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1613, i32 7}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 172, i32 32}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1022, i32 8}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 874, i32 30}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 617, i32 7}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 554, i32 32}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 570, i32 8}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 592, i32 8}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 44, i32 32}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 457, i32 29}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 418, i32 13}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 428, i32 29}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 445, i32 6}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 785, i32 8}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 815, i32 30}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 835, i32 7}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 852, i32 29}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 727, i32 7}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 478, i32 6}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 482, i32 14}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath6kl/trace.h", i32 222, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 522, i32 6}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 525, i32 13}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 525, i32 22}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 40, i32 6}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1904, i32 7}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2336, i32 6}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2362, i32 8}
!135 = !{ptr @ath6kl_htc_mbox_ops, !136, !"ath6kl_htc_mbox_ops", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2912, i32 36}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2848, i32 14}
!139 = !{ptr @ath6kl_htc_mbox_create.__key, !140, !"__key", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2859, i32 2}
!141 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ath6kl_htc_mbox_create.__key.65, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2860, i32 2}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @ath6kl_htc_mbox_create.__key.67, !146, !"__key", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2861, i32 2}
!147 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2686, i32 6}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2700, i32 30}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2701, i32 49}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2701, i32 57}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2270, i32 6}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2301, i32 14}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2621, i32 6}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2630, i32 30}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2641, i32 15}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1580, i32 14}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1584, i32 5}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 59, i32 32}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 135, i32 7}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2436, i32 6}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2488, i32 15}
!178 = distinct !{null, !179, !"__already_done", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2498, i32 6}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1128, i32 6}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 984, i32 7}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1179, i32 7}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 2397, i32 8}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/ath6kl/htc_mbox.c", i32 1236, i32 7}
!190 = !{!"sp"}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"auto-init"}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2148950703, i64 2148950708, i64 2148950721, i64 2148950765, i64 2148950799, i64 2148950820}
!203 = !{!"branch_weights", i32 2000, i32 1}
!204 = !{i64 2157423786}
!205 = !{i64 2157424035}
!206 = !{i64 2149774084}
!207 = !{i64 2149775120}
!208 = !{i64 2157444702}
!209 = !{i64 2157444951}
