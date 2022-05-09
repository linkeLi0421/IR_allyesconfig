; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.133 = type { i32, ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.brcmf_ampdu_rx_reorder = type { ptr, i8, i8, i8, i8, i8 }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.brcmf_fws_info = type { ptr, %struct.spinlock, i32, %struct.brcmf_fws_stats, %struct.brcmf_fws_hanger, i32, i8, i8, %struct.brcmf_fws_macdesc_table, ptr, %struct.work_struct, [6 x i32], [6 x i32], [6 x i32], [4 x [4 x i32]], [6 x i32], i32, i32, i32, i8, i8, i8, i8 }
%struct.brcmf_fws_stats = type { i32, i32, i32, i32, i32, [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.brcmf_fws_hanger = type { i32, i32, i32, i32, i32, i32, [3072 x %struct.brcmf_fws_hanger_item] }
%struct.brcmf_fws_hanger_item = type { i32, ptr }
%struct.brcmf_fws_macdesc_table = type { [32 x %struct.brcmf_fws_mac_descriptor], [16 x %struct.brcmf_fws_mac_descriptor], %struct.brcmf_fws_mac_descriptor }
%struct.brcmf_fws_mac_descriptor = type { [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], %struct.pktq, i32, i32, i8, i8, i8 }
%struct.pktq = type { i16, i16, i16, i16, [16 x %struct.pktq_prec] }
%struct.pktq_prec = type { %struct.sk_buff_head, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.128 }
%union.anon.128 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_event_msg = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@brcmf_fws_rxreorder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1684, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: invalid flags...so ignore this packet\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcmf_fws_rxreorder\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_fws_rxreorder._entry_ptr = internal global ptr @brcmf_fws_rxreorder._entry, section ".printk_index", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flow-%d: delete\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"received flags to cleanup, but no flow (%d) yet\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"flow-%d: start, maxidx %d\0A\00", [37 x i8] zeroinitializer }, align 32
@brcmf_fws_rxreorder._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1721, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to alloc buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmf_fws_rxreorder._entry_ptr.10 = internal global ptr @brcmf_fws_rxreorder._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"flow-%d: new hole %d (%d), pending %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HOLE: ERROR buffer pending..free it\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"flow-%d: store pkt %d (%d), pending %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error buffer pending..free it\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"flow-%d: expected %d (%d), pending %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"flow-%d: freeing buffers %d, pending %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"flow-%d (0x%x): both moved, old %d/%d, new %d/%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"flow-%d (0x%x): change expected: %d -> %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_hdrpull = private unnamed_addr constant [18 x i8] c"brcmf_fws_hdrpull\00", align 1
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"enter: ifidx %d, skblen %u, sig %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tlv type=%s (%d), len=%d (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_process_skb = private unnamed_addr constant [22 x i8] c"brcmf_fws_process_skb\00", align 1
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx proto=0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s mac %pM multi %d fifo %d\0A\00", [35 x i8] zeroinitializer }, align 32
@brcmf_fws_process_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.brcmf_fws_process_skb, ptr @.str.2, i32 2146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: no hanger slot available\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmf_fws_process_skb._entry_ptr = internal global ptr @brcmf_fws_process_skb._entry, section ".printk_index", align 4
@__func__.brcmf_fws_reset_interface = private unnamed_addr constant [26 x i8] c"brcmf_fws_reset_interface\00", align 1
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enter: bsscfgidx=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_add_interface = private unnamed_addr constant [24 x i8] c"brcmf_fws_add_interface\00", align 1
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"added %s\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_del_interface = private unnamed_addr constant [24 x i8] c"brcmf_fws_del_interface\00", align 1
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"deleting %s\0A\00", [19 x i8] zeroinitializer }, align 32
@brcmf_fws_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&fws->spinlock\00", [17 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_attach = private unnamed_addr constant [17 x i8] c"brcmf_fws_attach\00", align 1
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FWS queueing will be avoided\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcmf_fws_wq\00", [19 x i8] zeroinitializer }, align 32
@brcmf_fws_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.brcmf_fws_attach, ptr @.str.2, i32 2371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: workqueue creation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmf_fws_attach._entry_ptr = internal global ptr @brcmf_fws_attach._entry, section ".printk_index", align 4
@brcmf_fws_attach.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&fws->fws_dequeue_work)\00", [54 x i8] zeroinitializer }, align 32
@brcmf_fws_attach._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.brcmf_fws_attach, ptr @.str.2, i32 2387, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: register credit map handler failed\0A\00", [56 x i8] zeroinitializer }, align 32
@brcmf_fws_attach._entry_ptr.36 = internal global ptr @brcmf_fws_attach._entry.34, section ".printk_index", align 4
@brcmf_fws_attach._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.brcmf_fws_attach, ptr @.str.2, i32 2393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: register bcmc credit handler failed\0A\00", [55 x i8] zeroinitializer }, align 32
@brcmf_fws_attach._entry_ptr.39 = internal global ptr @brcmf_fws_attach._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tlv\00", [28 x i8] zeroinitializer }, align 32
@brcmf_fws_attach._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.brcmf_fws_attach, ptr @.str.2, i32 2405, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: failed to set bdcv2 tlv signaling\0A\00", [57 x i8] zeroinitializer }, align 32
@brcmf_fws_attach._entry_ptr.43 = internal global ptr @brcmf_fws_attach._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ampdu_hostreorder\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"enabling AMPDU host-reorder failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wlfc_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s bdcv2 tlv signaling [%x]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fws_stats\00", [22 x i8] zeroinitializer }, align 32
@__func__.brcmf_rxreorder_get_skb_list = private unnamed_addr constant [29 x i8] c"brcmf_rxreorder_get_skb_list\00", align 1
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no packets in reorder queue\0A\00", [35 x i8] zeroinitializer }, align 32
@brcmf_fws_tlv_names = internal constant { [17 x %struct.anon.133], [56 x i8] } { [17 x %struct.anon.133] [%struct.anon.133 { i32 1, ptr @.str.53 }, %struct.anon.133 { i32 2, ptr @.str.54 }, %struct.anon.133 { i32 3, ptr @.str.55 }, %struct.anon.133 { i32 4, ptr @.str.56 }, %struct.anon.133 { i32 5, ptr @.str.57 }, %struct.anon.133 { i32 6, ptr @.str.58 }, %struct.anon.133 { i32 7, ptr @.str.59 }, %struct.anon.133 { i32 8, ptr @.str.60 }, %struct.anon.133 { i32 9, ptr @.str.61 }, %struct.anon.133 { i32 10, ptr @.str.62 }, %struct.anon.133 { i32 11, ptr @.str.63 }, %struct.anon.133 { i32 12, ptr @.str.64 }, %struct.anon.133 { i32 13, ptr @.str.65 }, %struct.anon.133 { i32 14, ptr @.str.66 }, %struct.anon.133 { i32 18, ptr @.str.67 }, %struct.anon.133 { i32 19, ptr @.str.68 }, %struct.anon.133 { i32 255, ptr @.str.69 }], [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAC_OPEN\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MAC_CLOSE\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAC_REQUEST_CREDIT\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TXSTATUS\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PKTTAG\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MACDESC_ADD\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MACDESC_DEL\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RSSI\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERFACE_OPEN\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INTERFACE_CLOSE\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FIFO_CREDITBACK\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PENDING_TRAFFIC_BMP\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAC_REQUEST_PACKET\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HOST_REORDER_RXPKTS\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TRANS_ID\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"COMP_TXSTATUS\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FILLER\00", [25 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_macdesc_indicate = private unnamed_addr constant [27 x i8] c"brcmf_fws_macdesc_indicate\00", align 1
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"deleting %s mac %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"add %s mac %pM\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"copy mac %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"relocate %s mac %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"use existing\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_hdrpush = private unnamed_addr constant [18 x i8] c"brcmf_fws_hdrpush\00", align 1
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"enter: %s, idx=%d hslot=%d htod %X seq %X\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"adding TIM info: handle %d bmp 0x%X\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_interface_state_indicate = private unnamed_addr constant [35 x i8] c"brcmf_fws_interface_state_indicate\00", align 1
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s (%d): %s\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_request_indicate = private unnamed_addr constant [27 x i8] c"brcmf_fws_request_indicate\00", align 1
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s (%d): %s cnt %d bmp %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_fifocreditback_indicate = private unnamed_addr constant [34 x i8] c"brcmf_fws_fifocreditback_indicate\00", align 1
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ignored\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enter: data %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"map: credit %x delay %x\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_rssi_indicate = private unnamed_addr constant [24 x i8] c"brcmf_fws_rssi_indicate\00", align 1
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rssi %d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_dbg_seqnum_check = private unnamed_addr constant [27 x i8] c"brcmf_fws_dbg_seqnum_check\00", align 1
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"received: seq %d, timestamp %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_hanger_get_free_slot = private unnamed_addr constant [31 x i8] c"brcmf_fws_hanger_get_free_slot\00", align 1
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"all slots occupied\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_hanger_pushpkt = private unnamed_addr constant [25 x i8] c"brcmf_fws_hanger_pushpkt\00", align 1
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slot is not free\0A\00", [46 x i8] zeroinitializer }, align 32
@brcmf_fws_enq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 1249, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: no mac descriptor found for skb %p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcmf_fws_enq\00", [18 x i8] zeroinitializer }, align 32
@brcmf_fws_enq._entry_ptr = internal global ptr @brcmf_fws_enq._entry, section ".printk_index", align 4
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enter: fifo %d skb %p\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_macdesc_init = private unnamed_addr constant [23 x i8] c"brcmf_fws_macdesc_init\00", align 1
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"enter: desc %p ea=%pM, ifidx=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MAC-OTHER\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MAC-%d:%d\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MACIF:%d\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_hanger_poppkt = private unnamed_addr constant [24 x i8] c"brcmf_fws_hanger_poppkt\00", align 1
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"entry not in use\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_macdesc_deinit = private unnamed_addr constant [25 x i8] c"brcmf_fws_macdesc_deinit\00", align 1
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enter: ea=%pM, ifidx=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_bus_txq_cleanup = private unnamed_addr constant [26 x i8] c"brcmf_fws_bus_txq_cleanup\00", align 1
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no txq to clean up\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_deq = private unnamed_addr constant [14 x i8] c"brcmf_fws_deq\00", align 1
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exit: fifo %d skb %p\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_macdesc_use_req_credit = private unnamed_addr constant [33 x i8] c"brcmf_fws_macdesc_use_req_credit\00", align 1
@.str.97 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"requested credit set while mac not closed!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"requested packet set while mac not closed!\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_commit_skb = private unnamed_addr constant [21 x i8] c"brcmf_fws_commit_skb\00", align 1
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s flags %X htod %X bus_tx %d\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmf_fws_rollback_toq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 2002, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s queue %d full\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcmf_fws_rollback_toq\00", [41 x i8] zeroinitializer }, align 32
@brcmf_fws_rollback_toq._entry_ptr = internal global ptr @brcmf_fws_rollback_toq._entry, section ".printk_index", align 4
@brcmf_fws_rollback_toq._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 2006, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s entry removed\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmf_fws_rollback_toq._entry_ptr.104 = internal global ptr @brcmf_fws_rollback_toq._entry.102, section ".printk_index", align 4
@__func__.brcmf_fws_borrow_credit = private unnamed_addr constant [24 x i8] c"brcmf_fws_borrow_credit\00", align 1
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"borrow credit from: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@brcmf_fws_notify_credit_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 1605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: event payload too small (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"brcmf_fws_notify_credit_map\00", [36 x i8] zeroinitializer }, align 32
@brcmf_fws_notify_credit_map._entry_ptr = internal global ptr @brcmf_fws_notify_credit_map._entry, section ".printk_index", align 4
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enter: credits %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@brcmf_fws_notify_credit_map.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fifo_credit[%d] is negative(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [565 x i8], [139 x i8] } { [565 x i8] c"header_pulls:      %u\0Aheader_only_pkt:   %u\0Atlv_parse_failed:  %u\0Atlv_invalid_type:  %u\0Amac_update_fails:  %u\0Aps_update_fails:   %u\0Aif_update_fails:   %u\0Apkt2bus:           %u\0Ageneric_error:     %u\0Arollback_success:  %u\0Arollback_failed:   %u\0Adelayq_full:       %u\0Asupprq_full:       %u\0Atxs_indicate:      %u\0Atxs_discard:       %u\0Atxs_suppr_core:    %u\0Atxs_suppr_ps:      %u\0Atxs_tossed:        %u\0Atxs_host_tossed:   %u\0Abus_flow_block:    %u\0Afws_flow_block:    %u\0Asend_pkts:         BK:%u BE:%u VO:%u VI:%u BCMC:%u\0Arequested_sent:    BK:%u BE:%u VO:%u VI:%u BCMC:%u\0A\00", [139 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_txs_process = private unnamed_addr constant [22 x i8] c"brcmf_fws_txs_process\00", align 1
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flags %d\0A\00", [22 x i8] zeroinitializer }, align 32
@brcmf_fws_txs_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @__func__.brcmf_fws_txs_process, ptr @.str.2, i32 1468, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: unexpected txstatus\0A\00", [39 x i8] zeroinitializer }, align 32
@brcmf_fws_txs_process._entry_ptr = internal global ptr @brcmf_fws_txs_process._entry, section ".printk_index", align 4
@brcmf_fws_txs_process._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @__func__.brcmf_fws_txs_process, ptr @.str.2, i32 1475, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: no packet in hanger slot: hslot=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@brcmf_fws_txs_process._entry_ptr.115 = internal global ptr @brcmf_fws_txs_process._entry.113, section ".printk_index", align 4
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s flags %d htod %X seq %X\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_txstatus_suppressed = private unnamed_addr constant [30 x i8] c"brcmf_fws_txstatus_suppressed\00", align 1
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"suppress %s: transit %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.brcmf_fws_hanger_mark_suppressed = private unnamed_addr constant [33 x i8] c"brcmf_fws_hanger_mark_suppressed\00", align 1
@switch.table.brcmf_fws_hdrpull = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 0, i32 0, i32 0, i32 14, i32 15], [52 x i8] zeroinitializer }, align 32
@switch.table.brcmf_fws_hdrpull.118 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 1, i32 1, i32 1, i32 2, i32 4, i32 4, i32 8, i32 8, i32 1, i32 1, i32 1, i32 6, i32 2, i32 3, i32 10, i32 1, i32 1, i32 1, i32 6, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 18, i64 19, i64 255]
@__sancov_gen_cov_switch_values.119 = internal global [16 x i64] [i64 14, i64 8, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 13, i64 14, i64 18, i64 19]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.122 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1684, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1691, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1695, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1717, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1721, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1744, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1754, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1761, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1771, i32 5 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1781, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1789, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1795, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1820, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1852, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1888, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2123, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2140, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2146, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2158, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2179, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2192, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2356, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2365, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2369, i32 16 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2371, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2375, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2387, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2393, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2404, i32 35 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2405, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2410, i32 35 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2411, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2414, i32 35 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2432, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2461, i32 32 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1651, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [20 x i8] c"brcmf_fws_tlv_names\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 107, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 121, i32 9 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 108, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1000, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1021, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1027, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1035, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1038, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 866, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 898, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1098, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1137, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1531, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1535, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1540, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 981, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1590, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 574, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 588, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1249, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1253, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 703, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 691, i32 23 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 693, i32 45 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 696, i32 45 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 607, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 719, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 818, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1390, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1160, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1166, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2071, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2002, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2006, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2042, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1605, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1611, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1620, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2280, i32 6 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1449, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1468, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1474, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1489, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.484 = private constant [63 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1408, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant [31 x i8] c"switch.table.brcmf_fws_hdrpull\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [35 x i8] c"switch.table.brcmf_fws_hdrpull.118\00", align 1
@llvm.compiler.used = appending global [136 x ptr] [ptr @brcmf_fws_attach._entry, ptr @brcmf_fws_attach._entry.34, ptr @brcmf_fws_attach._entry.37, ptr @brcmf_fws_attach._entry.41, ptr @brcmf_fws_attach._entry_ptr, ptr @brcmf_fws_attach._entry_ptr.36, ptr @brcmf_fws_attach._entry_ptr.39, ptr @brcmf_fws_attach._entry_ptr.43, ptr @brcmf_fws_enq._entry, ptr @brcmf_fws_enq._entry_ptr, ptr @brcmf_fws_notify_credit_map._entry, ptr @brcmf_fws_notify_credit_map._entry_ptr, ptr @brcmf_fws_process_skb._entry, ptr @brcmf_fws_process_skb._entry_ptr, ptr @brcmf_fws_rollback_toq._entry, ptr @brcmf_fws_rollback_toq._entry.102, ptr @brcmf_fws_rollback_toq._entry_ptr, ptr @brcmf_fws_rollback_toq._entry_ptr.104, ptr @brcmf_fws_rxreorder._entry, ptr @brcmf_fws_rxreorder._entry.8, ptr @brcmf_fws_rxreorder._entry_ptr, ptr @brcmf_fws_rxreorder._entry_ptr.10, ptr @brcmf_fws_txs_process._entry, ptr @brcmf_fws_txs_process._entry.113, ptr @brcmf_fws_txs_process._entry_ptr, ptr @brcmf_fws_txs_process._entry_ptr.115, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @brcmf_fws_attach.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @brcmf_fws_attach.__key.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @brcmf_fws_tlv_names, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @switch.table.brcmf_fws_hdrpull, ptr @switch.table.brcmf_fws_hdrpull.118], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_rxreorder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_rxreorder._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_process_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_attach.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_attach._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_attach._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_attach._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_tlv_names to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_enq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_rollback_toq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_rollback_toq._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_notify_credit_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 565, i32 704, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_txs_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fws_txs_process._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.brcmf_fws_hdrpull to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.brcmf_fws_hdrpull.118 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fws_rxreorder(ptr noundef %ifp, ptr noundef %pkt, i1 noundef zeroext %inirq) local_unnamed_addr #0 align 64 {
entry:
  %reorder_list = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %reorder_list) #10
  %2 = call ptr @memset(ptr %reorder_list, i32 255, i32 56)
  %cb = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb, align 8
  %arrayidx2 = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp eq i8 %6, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  tail call void @brcmf_netif_rx(ptr noundef %ifp, ptr noundef %pkt, i1 noundef zeroext %inirq) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %4, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx8 = getelementptr %struct.brcmf_pub, ptr %1, i32 0, i32 15, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx8, align 4
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end31, label %do.body12

do.body12:                                        ; preds = %if.end
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %idxprom) #10
  %cmp16 = icmp eq ptr %12, null
  br i1 %cmp16, label %do.body19, label %if.end24

do.body19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef %idxprom) #10
  tail call void @brcmf_netif_rx(ptr noundef %ifp, ptr noundef %pkt, i1 noundef zeroext %inirq) #10
  br label %cleanup

if.end24:                                         ; preds = %do.body12
  %exp_idx25 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %exp_idx25 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %exp_idx25, align 2
  %15 = ptrtoint ptr %reorder_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reorder_list, ptr %reorder_list, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.66, ptr %reorder_list, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reorder_list, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %reorder_list, i32 0, i32 1
  %17 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i.i, align 4
  %pend_pkts.i = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %12, i32 0, i32 5
  %18 = ptrtoint ptr %pend_pkts.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pend_pkts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i = icmp eq i8 %19, 0
  br i1 %cmp.i, label %do.body.i, label %do.body2.preheader.i

do.body2.preheader.i:                             ; preds = %if.end24
  %max_idx.i = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %12, i32 0, i32 4
  br label %do.body2.i

do.body.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_rxreorder_get_skb_list, ptr noundef nonnull @.str.51) #10
  br label %brcmf_rxreorder_get_skb_list.exit

do.body2.i:                                       ; preds = %if.end10.i.do.body2.i_crit_edge, %do.body2.preheader.i
  %start.addr.0.i = phi i8 [ %spec.store.select.i, %if.end10.i.do.body2.i_crit_edge ], [ %14, %do.body2.preheader.i ]
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %12, align 4
  %idxprom.i = zext i8 %start.addr.0.i to i32
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %idxprom.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %do.body2.i.if.end10.i_crit_edge, label %if.then3.i

do.body2.i.if.end10.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then3.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %reorder_list, ptr %23, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.45, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %23, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %23, ptr %25, align 4
  %29 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %12, align 4
  %arrayidx9.i = getelementptr ptr, ptr %32, i32 %idxprom.i
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then3.i, %do.body2.i.if.end10.i_crit_edge
  %inc.i = add i8 %start.addr.0.i, 1
  %34 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %max_idx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i, i8 %35)
  %cmp13.i = icmp ugt i8 %inc.i, %35
  %spec.store.select.i = select i1 %cmp13.i, i8 0, i8 %inc.i
  %cmp19.not.i = icmp eq i8 %spec.store.select.i, %14
  br i1 %cmp19.not.i, label %do.end21.i, label %if.end10.i.do.body2.i_crit_edge

if.end10.i.do.body2.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

do.end21.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i.i, align 4
  %38 = ptrtoint ptr %pend_pkts.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pend_pkts.i, align 4
  %40 = trunc i32 %37 to i8
  %conv24.i = sub i8 %39, %40
  store i8 %conv24.i, ptr %pend_pkts.i, align 4
  br label %brcmf_rxreorder_get_skb_list.exit

brcmf_rxreorder_get_skb_list.exit:                ; preds = %do.end21.i, %do.body.i
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %reorder_list, ptr %pkt, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.45, ptr %pkt, i32 0, i32 1
  %44 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %prev10.i.i.i, align 4
  store volatile ptr %pkt, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %pkt, ptr %42, align 4
  %46 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i, align 4
  call void @kfree(ptr noundef nonnull %12) #10
  %48 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ifp, align 4
  %arrayidx30 = getelementptr %struct.brcmf_pub, ptr %49, i32 0, i32 15, i32 %idxprom
  %50 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx30, align 4
  br label %netif_rx

if.end31:                                         ; preds = %if.end
  %cmp32 = icmp eq ptr %12, null
  br i1 %cmp32, label %if.then34, label %if.end31.if.end61_crit_edge

if.end31.if.end61_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then34:                                        ; preds = %if.end31
  %arrayidx35 = getelementptr i8, ptr %4, i32 2
  %51 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %52 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef %idxprom, i32 noundef %conv36) #10
  %add = shl nuw nsw i32 %conv36, 2
  %add37 = add nuw nsw i32 %add, 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add37, i32 noundef 2848) #14
  %cmp43 = icmp eq ptr %call9.i.i, null
  br i1 %cmp43, label %do.end49, label %if.end55

do.end49:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy50 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %wiphy50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wiphy50, align 4
  %dev51 = getelementptr inbounds %struct.wiphy, ptr %54, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #13
  tail call void @brcmf_netif_rx(ptr noundef %ifp, ptr noundef %pkt, i1 noundef zeroext %inirq) #10
  br label %cleanup

if.end55:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ifp, align 4
  %arrayidx59 = getelementptr %struct.brcmf_pub, ptr %56, i32 0, i32 15, i32 %idxprom
  %57 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i.i, ptr %arrayidx59, align 4
  %add.ptr = getelementptr %struct.brcmf_ampdu_rx_reorder, ptr %call9.i.i, i32 1
  %58 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr, ptr %call9.i.i, align 128
  %max_idx60 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %call9.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %max_idx60 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %52, ptr %max_idx60, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.end55, %if.end31.if.end61_crit_edge
  %rfi.0 = phi ptr [ %call9.i.i, %if.end55 ], [ %12, %if.end31.if.end61_crit_edge ]
  %and63 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else118, label %if.then65

if.then65:                                        ; preds = %if.end61
  %pend_pkts = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 5
  %60 = ptrtoint ptr %pend_pkts to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pend_pkts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool66.not = icmp eq i8 %61, 0
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.then65
  %exp_idx68 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 3
  %62 = ptrtoint ptr %exp_idx68 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %exp_idx68, align 2
  %64 = ptrtoint ptr %reorder_list to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %reorder_list, ptr %reorder_list, align 4
  %prev.i.i433 = getelementptr inbounds %struct.anon.66, ptr %reorder_list, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i433 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %reorder_list, ptr %prev.i.i433, align 4
  %qlen.i.i434 = getelementptr inbounds %struct.sk_buff_head, ptr %reorder_list, i32 0, i32 1
  %66 = ptrtoint ptr %qlen.i.i434 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %qlen.i.i434, align 4
  %67 = ptrtoint ptr %pend_pkts to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pend_pkts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp.i436 = icmp eq i8 %68, 0
  br i1 %cmp.i436, label %do.body.i439, label %do.body2.preheader.i438

do.body2.preheader.i438:                          ; preds = %if.then67
  %max_idx.i437 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 4
  br label %do.body2.i444

do.body.i439:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_rxreorder_get_skb_list, ptr noundef nonnull @.str.51) #10
  %69 = ptrtoint ptr %pend_pkts to i32
  call void @__asan_load1_noabort(i32 %69)
  %.pr = load i8, ptr %pend_pkts, align 4
  br label %brcmf_rxreorder_get_skb_list.exit456

do.body2.i444:                                    ; preds = %if.end10.i453.do.body2.i444_crit_edge, %do.body2.preheader.i438
  %start.addr.0.i440 = phi i8 [ %spec.store.select.i451, %if.end10.i453.do.body2.i444_crit_edge ], [ %63, %do.body2.preheader.i438 ]
  %70 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rfi.0, align 4
  %idxprom.i441 = zext i8 %start.addr.0.i440 to i32
  %arrayidx.i442 = getelementptr ptr, ptr %71, i32 %idxprom.i441
  %72 = ptrtoint ptr %arrayidx.i442 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i442, align 4
  %tobool.not.i443 = icmp eq ptr %73, null
  br i1 %tobool.not.i443, label %do.body2.i444.if.end10.i453_crit_edge, label %if.then3.i448

do.body2.i444.if.end10.i453_crit_edge:            ; preds = %do.body2.i444
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i453

if.then3.i448:                                    ; preds = %do.body2.i444
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %prev.i.i433 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i433, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %reorder_list, ptr %73, align 8
  %prev10.i.i.i.i445 = getelementptr inbounds %struct.anon.45, ptr %73, i32 0, i32 1
  %77 = ptrtoint ptr %prev10.i.i.i.i445 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %prev10.i.i.i.i445, align 4
  store volatile ptr %73, ptr %prev.i.i433, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %73, ptr %75, align 4
  %79 = ptrtoint ptr %qlen.i.i434 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %qlen.i.i434, align 4
  %add.i.i.i.i446 = add i32 %80, 1
  store volatile i32 %add.i.i.i.i446, ptr %qlen.i.i434, align 4
  %81 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rfi.0, align 4
  %arrayidx9.i447 = getelementptr ptr, ptr %82, i32 %idxprom.i441
  %83 = ptrtoint ptr %arrayidx9.i447 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %arrayidx9.i447, align 4
  br label %if.end10.i453

if.end10.i453:                                    ; preds = %if.then3.i448, %do.body2.i444.if.end10.i453_crit_edge
  %inc.i449 = add i8 %start.addr.0.i440, 1
  %84 = ptrtoint ptr %max_idx.i437 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %max_idx.i437, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i449, i8 %85)
  %cmp13.i450 = icmp ugt i8 %inc.i449, %85
  %spec.store.select.i451 = select i1 %cmp13.i450, i8 0, i8 %inc.i449
  %cmp19.not.i452 = icmp eq i8 %spec.store.select.i451, %63
  br i1 %cmp19.not.i452, label %do.end21.i455, label %if.end10.i453.do.body2.i444_crit_edge

if.end10.i453.do.body2.i444_crit_edge:            ; preds = %if.end10.i453
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i444

do.end21.i455:                                    ; preds = %if.end10.i453
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %qlen.i.i434 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qlen.i.i434, align 4
  %88 = ptrtoint ptr %pend_pkts to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %pend_pkts, align 4
  %90 = trunc i32 %87 to i8
  %conv24.i454 = sub i8 %89, %90
  store i8 %conv24.i454, ptr %pend_pkts, align 4
  br label %brcmf_rxreorder_get_skb_list.exit456

brcmf_rxreorder_get_skb_list.exit456:             ; preds = %do.end21.i455, %do.body.i439
  %91 = phi i8 [ %.pr, %do.body.i439 ], [ %conv24.i454, %do.end21.i455 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool71.not = icmp eq i8 %91, 0
  br i1 %tobool71.not, label %brcmf_rxreorder_get_skb_list.exit456.if.end96_crit_edge, label %do.end83, !prof !252

brcmf_rxreorder_get_skb_list.exit456.if.end96_crit_edge: ; preds = %brcmf_rxreorder_get_skb_list.exit456
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.end83:                                         ; preds = %brcmf_rxreorder_get_skb_list.exit456
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1735, i32 noundef 9, ptr noundef null) #10
  br label %if.end96

if.else:                                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %reorder_list to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %reorder_list, ptr %reorder_list, align 4
  %prev.i = getelementptr inbounds %struct.anon.66, ptr %reorder_list, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %reorder_list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %reorder_list, i32 0, i32 1
  %94 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %qlen.i, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else, %do.end83, %brcmf_rxreorder_get_skb_list.exit456.if.end96_crit_edge
  %arrayidx97 = getelementptr i8, ptr %4, i32 6
  %95 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx97, align 1
  %cur_idx98 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 2
  %97 = ptrtoint ptr %cur_idx98 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %cur_idx98, align 1
  %arrayidx99 = getelementptr i8, ptr %4, i32 8
  %98 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx99, align 1
  %exp_idx100 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 3
  %100 = ptrtoint ptr %exp_idx100 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %exp_idx100, align 2
  %arrayidx101 = getelementptr i8, ptr %4, i32 2
  %101 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx101, align 1
  %max_idx102 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 4
  %103 = ptrtoint ptr %max_idx102 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %max_idx102, align 1
  %104 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rfi.0, align 4
  %idxprom105 = zext i8 %96 to i32
  %arrayidx106 = getelementptr ptr, ptr %105, i32 %idxprom105
  %106 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %pkt, ptr %arrayidx106, align 4
  %107 = ptrtoint ptr %pend_pkts to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %pend_pkts, align 4
  %inc = add i8 %108, 1
  store i8 %inc, ptr %pend_pkts, align 4
  %109 = load i8, ptr %cur_idx98, align 1
  %conv111 = zext i8 %109 to i32
  %110 = load i8, ptr %exp_idx100, align 2
  %conv113 = zext i8 %110 to i32
  %conv115 = zext i8 %inc to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef %idxprom, i32 noundef %conv111, i32 noundef %conv113, i32 noundef %conv115) #10
  br label %netif_rx

if.else118:                                       ; preds = %if.end61
  %and120 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.else251, label %if.then122

if.then122:                                       ; preds = %if.else118
  %arrayidx123 = getelementptr i8, ptr %4, i32 6
  %111 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx123, align 1
  %arrayidx124 = getelementptr i8, ptr %4, i32 8
  %113 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %114 to i32
  %exp_idx126 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 3
  %115 = ptrtoint ptr %exp_idx126 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %exp_idx126, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %116)
  %cmp128 = icmp ne i8 %114, %116
  %conv130 = zext i8 %112 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %114)
  %cmp133.not = icmp eq i8 %112, %114
  %or.cond = select i1 %cmp128, i1 true, i1 %cmp133.not
  br i1 %or.cond, label %if.end166, label %if.then135

if.then135:                                       ; preds = %if.then122
  %117 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rfi.0, align 4
  %arrayidx138 = getelementptr ptr, ptr %118, i32 %conv130
  %119 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx138, align 4
  %cmp139.not = icmp eq ptr %120, null
  br i1 %cmp139.not, label %if.then135.if.end151_crit_edge, label %do.body142

if.then135.if.end151_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

do.body142:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #10
  %121 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rfi.0, align 4
  %arrayidx147 = getelementptr ptr, ptr %122, i32 %conv130
  %123 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx147, align 4
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %124) #10
  %125 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rfi.0, align 4
  %arrayidx150 = getelementptr ptr, ptr %126, i32 %conv130
  %127 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %arrayidx150, align 4
  br label %if.end151

if.end151:                                        ; preds = %do.body142, %if.then135.if.end151_crit_edge
  %128 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rfi.0, align 4
  %arrayidx154 = getelementptr ptr, ptr %129, i32 %conv130
  %130 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %pkt, ptr %arrayidx154, align 4
  %pend_pkts155 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 5
  %131 = ptrtoint ptr %pend_pkts155 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %pend_pkts155, align 4
  %inc156 = add i8 %132, 1
  store i8 %inc156, ptr %pend_pkts155, align 4
  %cur_idx157 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 2
  %133 = ptrtoint ptr %cur_idx157 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %112, ptr %cur_idx157, align 1
  %conv163 = zext i8 %inc156 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, i32 noundef %idxprom, i32 noundef %conv130, i32 noundef %conv125, i32 noundef %conv163) #10
  br label %cleanup

if.end166:                                        ; preds = %if.then122
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %112)
  %cmp170 = icmp eq i8 %116, %112
  br i1 %cmp170, label %if.then172, label %if.else211

if.then172:                                       ; preds = %if.end166
  %134 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rfi.0, align 4
  %arrayidx175 = getelementptr ptr, ptr %135, i32 %conv130
  %136 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx175, align 4
  %cmp176.not = icmp eq ptr %137, null
  br i1 %cmp176.not, label %if.then172.if.end188_crit_edge, label %do.body179

if.then172.if.end188_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end188

do.body179:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #10
  %138 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rfi.0, align 4
  %arrayidx184 = getelementptr ptr, ptr %139, i32 %conv130
  %140 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx184, align 4
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %141) #10
  %142 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rfi.0, align 4
  %arrayidx187 = getelementptr ptr, ptr %143, i32 %conv130
  %144 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %arrayidx187, align 4
  br label %if.end188

if.end188:                                        ; preds = %do.body179, %if.then172.if.end188_crit_edge
  %145 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rfi.0, align 4
  %arrayidx191 = getelementptr ptr, ptr %146, i32 %conv130
  %147 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %pkt, ptr %arrayidx191, align 4
  %pend_pkts192 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 5
  %148 = ptrtoint ptr %pend_pkts192 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %pend_pkts192, align 4
  %inc193 = add i8 %149, 1
  store i8 %inc193, ptr %pend_pkts192, align 4
  %conv199 = zext i8 %inc193 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15, i32 noundef %idxprom, i32 noundef %conv130, i32 noundef %conv125, i32 noundef %conv199) #10
  %cur_idx202 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 2
  %150 = ptrtoint ptr %cur_idx202 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %112, ptr %cur_idx202, align 1
  %151 = ptrtoint ptr %exp_idx126 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %114, ptr %exp_idx126, align 2
  %152 = ptrtoint ptr %reorder_list to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %reorder_list, ptr %reorder_list, align 4
  %prev.i.i457 = getelementptr inbounds %struct.anon.66, ptr %reorder_list, i32 0, i32 1
  %153 = ptrtoint ptr %prev.i.i457 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %reorder_list, ptr %prev.i.i457, align 4
  %qlen.i.i458 = getelementptr inbounds %struct.sk_buff_head, ptr %reorder_list, i32 0, i32 1
  %154 = ptrtoint ptr %qlen.i.i458 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %qlen.i.i458, align 4
  %155 = ptrtoint ptr %pend_pkts192 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %pend_pkts192, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %cmp.i460 = icmp eq i8 %156, 0
  br i1 %cmp.i460, label %do.body.i463, label %do.body2.preheader.i462

do.body2.preheader.i462:                          ; preds = %if.end188
  %max_idx.i461 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 4
  br label %do.body2.i468

do.body.i463:                                     ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_rxreorder_get_skb_list, ptr noundef nonnull @.str.51) #10
  br label %brcmf_rxreorder_get_skb_list.exit480

do.body2.i468:                                    ; preds = %if.end10.i477.do.body2.i468_crit_edge, %do.body2.preheader.i462
  %start.addr.0.i464 = phi i8 [ %spec.store.select.i475, %if.end10.i477.do.body2.i468_crit_edge ], [ %112, %do.body2.preheader.i462 ]
  %157 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rfi.0, align 4
  %idxprom.i465 = zext i8 %start.addr.0.i464 to i32
  %arrayidx.i466 = getelementptr ptr, ptr %158, i32 %idxprom.i465
  %159 = ptrtoint ptr %arrayidx.i466 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i466, align 4
  %tobool.not.i467 = icmp eq ptr %160, null
  br i1 %tobool.not.i467, label %do.body2.i468.if.end10.i477_crit_edge, label %if.then3.i472

do.body2.i468.if.end10.i477_crit_edge:            ; preds = %do.body2.i468
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i477

if.then3.i472:                                    ; preds = %do.body2.i468
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %prev.i.i457 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %prev.i.i457, align 4
  %163 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %reorder_list, ptr %160, align 8
  %prev10.i.i.i.i469 = getelementptr inbounds %struct.anon.45, ptr %160, i32 0, i32 1
  %164 = ptrtoint ptr %prev10.i.i.i.i469 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %162, ptr %prev10.i.i.i.i469, align 4
  store volatile ptr %160, ptr %prev.i.i457, align 4
  %165 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %160, ptr %162, align 4
  %166 = ptrtoint ptr %qlen.i.i458 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %qlen.i.i458, align 4
  %add.i.i.i.i470 = add i32 %167, 1
  store volatile i32 %add.i.i.i.i470, ptr %qlen.i.i458, align 4
  %168 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rfi.0, align 4
  %arrayidx9.i471 = getelementptr ptr, ptr %169, i32 %idxprom.i465
  %170 = ptrtoint ptr %arrayidx9.i471 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %arrayidx9.i471, align 4
  br label %if.end10.i477

if.end10.i477:                                    ; preds = %if.then3.i472, %do.body2.i468.if.end10.i477_crit_edge
  %inc.i473 = add i8 %start.addr.0.i464, 1
  %171 = ptrtoint ptr %max_idx.i461 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %max_idx.i461, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i473, i8 %172)
  %cmp13.i474 = icmp ugt i8 %inc.i473, %172
  %spec.store.select.i475 = select i1 %cmp13.i474, i8 0, i8 %inc.i473
  %cmp19.not.i476 = icmp eq i8 %spec.store.select.i475, %114
  br i1 %cmp19.not.i476, label %do.end21.i479, label %if.end10.i477.do.body2.i468_crit_edge

if.end10.i477.do.body2.i468_crit_edge:            ; preds = %if.end10.i477
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i468

do.end21.i479:                                    ; preds = %if.end10.i477
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %qlen.i.i458 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %qlen.i.i458, align 4
  %175 = ptrtoint ptr %pend_pkts192 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %pend_pkts192, align 4
  %177 = trunc i32 %174 to i8
  %conv24.i478 = sub i8 %176, %177
  store i8 %conv24.i478, ptr %pend_pkts192, align 4
  br label %brcmf_rxreorder_get_skb_list.exit480

brcmf_rxreorder_get_skb_list.exit480:             ; preds = %do.end21.i479, %do.body.i463
  %178 = ptrtoint ptr %qlen.i.i458 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %qlen.i.i458, align 4
  %180 = ptrtoint ptr %pend_pkts192 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %pend_pkts192, align 4
  %conv208 = zext i8 %181 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, i32 noundef %idxprom, i32 noundef %179, i32 noundef %conv208) #10
  br label %netif_rx

if.else211:                                       ; preds = %if.end166
  %conv168 = zext i8 %116 to i32
  %cur_idx216 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 2
  %182 = ptrtoint ptr %cur_idx216 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %cur_idx216, align 1
  %conv217 = zext i8 %183 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, i32 noundef %idxprom, i32 noundef %conv, i32 noundef %conv217, i32 noundef %conv168, i32 noundef %conv130, i32 noundef %conv125) #10
  %and225 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.else211.if.end230_crit_edge, label %if.then227

if.else211.if.end230_crit_edge:                   ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

if.then227:                                       ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #12
  %184 = ptrtoint ptr %exp_idx126 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %exp_idx126, align 2
  br label %if.end230

if.end230:                                        ; preds = %if.then227, %if.else211.if.end230_crit_edge
  %end_idx212.0 = phi i8 [ %185, %if.then227 ], [ %114, %if.else211.if.end230_crit_edge ]
  %186 = ptrtoint ptr %exp_idx126 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %exp_idx126, align 2
  %188 = ptrtoint ptr %reorder_list to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %reorder_list, ptr %reorder_list, align 4
  %prev.i.i482 = getelementptr inbounds %struct.anon.66, ptr %reorder_list, i32 0, i32 1
  %189 = ptrtoint ptr %prev.i.i482 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %reorder_list, ptr %prev.i.i482, align 4
  %qlen.i.i483 = getelementptr inbounds %struct.sk_buff_head, ptr %reorder_list, i32 0, i32 1
  %190 = ptrtoint ptr %qlen.i.i483 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %qlen.i.i483, align 4
  %pend_pkts.i484 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 5
  %191 = ptrtoint ptr %pend_pkts.i484 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %pend_pkts.i484, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %cmp.i485 = icmp eq i8 %192, 0
  br i1 %cmp.i485, label %do.body.i488, label %do.body2.preheader.i487

do.body2.preheader.i487:                          ; preds = %if.end230
  %max_idx.i486 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 4
  br label %do.body2.i493

do.body.i488:                                     ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_rxreorder_get_skb_list, ptr noundef nonnull @.str.51) #10
  br label %brcmf_rxreorder_get_skb_list.exit505

do.body2.i493:                                    ; preds = %if.end10.i502.do.body2.i493_crit_edge, %do.body2.preheader.i487
  %start.addr.0.i489 = phi i8 [ %spec.store.select.i500, %if.end10.i502.do.body2.i493_crit_edge ], [ %187, %do.body2.preheader.i487 ]
  %193 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rfi.0, align 4
  %idxprom.i490 = zext i8 %start.addr.0.i489 to i32
  %arrayidx.i491 = getelementptr ptr, ptr %194, i32 %idxprom.i490
  %195 = ptrtoint ptr %arrayidx.i491 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx.i491, align 4
  %tobool.not.i492 = icmp eq ptr %196, null
  br i1 %tobool.not.i492, label %do.body2.i493.if.end10.i502_crit_edge, label %if.then3.i497

do.body2.i493.if.end10.i502_crit_edge:            ; preds = %do.body2.i493
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i502

if.then3.i497:                                    ; preds = %do.body2.i493
  call void @__sanitizer_cov_trace_pc() #12
  %197 = ptrtoint ptr %prev.i.i482 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %prev.i.i482, align 4
  %199 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %reorder_list, ptr %196, align 8
  %prev10.i.i.i.i494 = getelementptr inbounds %struct.anon.45, ptr %196, i32 0, i32 1
  %200 = ptrtoint ptr %prev10.i.i.i.i494 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %198, ptr %prev10.i.i.i.i494, align 4
  store volatile ptr %196, ptr %prev.i.i482, align 4
  %201 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %196, ptr %198, align 4
  %202 = ptrtoint ptr %qlen.i.i483 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %qlen.i.i483, align 4
  %add.i.i.i.i495 = add i32 %203, 1
  store volatile i32 %add.i.i.i.i495, ptr %qlen.i.i483, align 4
  %204 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rfi.0, align 4
  %arrayidx9.i496 = getelementptr ptr, ptr %205, i32 %idxprom.i490
  %206 = ptrtoint ptr %arrayidx9.i496 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %arrayidx9.i496, align 4
  br label %if.end10.i502

if.end10.i502:                                    ; preds = %if.then3.i497, %do.body2.i493.if.end10.i502_crit_edge
  %inc.i498 = add i8 %start.addr.0.i489, 1
  %207 = ptrtoint ptr %max_idx.i486 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %max_idx.i486, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i498, i8 %208)
  %cmp13.i499 = icmp ugt i8 %inc.i498, %208
  %spec.store.select.i500 = select i1 %cmp13.i499, i8 0, i8 %inc.i498
  %cmp19.not.i501 = icmp eq i8 %spec.store.select.i500, %end_idx212.0
  br i1 %cmp19.not.i501, label %do.end21.i504, label %if.end10.i502.do.body2.i493_crit_edge

if.end10.i502.do.body2.i493_crit_edge:            ; preds = %if.end10.i502
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i493

do.end21.i504:                                    ; preds = %if.end10.i502
  call void @__sanitizer_cov_trace_pc() #12
  %209 = ptrtoint ptr %qlen.i.i483 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %qlen.i.i483, align 4
  %211 = ptrtoint ptr %pend_pkts.i484 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %pend_pkts.i484, align 4
  %213 = trunc i32 %210 to i8
  %conv24.i503 = sub i8 %212, %213
  store i8 %conv24.i503, ptr %pend_pkts.i484, align 4
  br label %brcmf_rxreorder_get_skb_list.exit505

brcmf_rxreorder_get_skb_list.exit505:             ; preds = %do.end21.i504, %do.body.i488
  %add234 = add nuw nsw i32 %conv130, 1
  %max_idx235 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 4
  %214 = ptrtoint ptr %max_idx235 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %max_idx235, align 1
  %conv236 = zext i8 %215 to i32
  %add237 = add nuw nsw i32 %conv236, 1
  %rem = urem i32 %add234, %add237
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %conv125)
  %cmp238 = icmp eq i32 %rem, %conv125
  br i1 %cmp238, label %if.then240, label %if.else241

if.then240:                                       ; preds = %brcmf_rxreorder_get_skb_list.exit505
  call void @__sanitizer_cov_trace_pc() #12
  %216 = ptrtoint ptr %prev.i.i482 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %prev.i.i482, align 4
  %218 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %reorder_list, ptr %pkt, align 8
  %prev10.i.i.i507 = getelementptr inbounds %struct.anon.45, ptr %pkt, i32 0, i32 1
  %219 = ptrtoint ptr %prev10.i.i.i507 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %217, ptr %prev10.i.i.i507, align 4
  store volatile ptr %pkt, ptr %prev.i.i482, align 4
  %220 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %pkt, ptr %217, align 4
  %221 = ptrtoint ptr %qlen.i.i483 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %qlen.i.i483, align 4
  %add.i.i.i509 = add i32 %222, 1
  store volatile i32 %add.i.i.i509, ptr %qlen.i.i483, align 4
  br label %if.end247

if.else241:                                       ; preds = %brcmf_rxreorder_get_skb_list.exit505
  call void @__sanitizer_cov_trace_pc() #12
  %223 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %rfi.0, align 4
  %arrayidx244 = getelementptr ptr, ptr %224, i32 %conv130
  %225 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %pkt, ptr %arrayidx244, align 4
  %226 = ptrtoint ptr %pend_pkts.i484 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %pend_pkts.i484, align 4
  %inc246 = add i8 %227, 1
  store i8 %inc246, ptr %pend_pkts.i484, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.else241, %if.then240
  %228 = ptrtoint ptr %exp_idx126 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %114, ptr %exp_idx126, align 2
  %229 = ptrtoint ptr %cur_idx216 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %112, ptr %cur_idx216, align 1
  br label %netif_rx

if.else251:                                       ; preds = %if.else118
  %arrayidx252 = getelementptr i8, ptr %4, i32 8
  %230 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx252, align 1
  %exp_idx256 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 3
  %232 = ptrtoint ptr %exp_idx256 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %exp_idx256, align 2
  %conv257 = zext i8 %233 to i32
  %conv258 = zext i8 %231 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18, i32 noundef %idxprom, i32 noundef %conv, i32 noundef %conv257, i32 noundef %conv258) #10
  %and262 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %if.else251.if.end267_crit_edge, label %if.then264

if.else251.if.end267_crit_edge:                   ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end267

if.then264:                                       ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #12
  %234 = ptrtoint ptr %exp_idx256 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %exp_idx256, align 2
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %if.else251.if.end267_crit_edge
  %end_idx.0 = phi i8 [ %235, %if.then264 ], [ %231, %if.else251.if.end267_crit_edge ]
  %236 = ptrtoint ptr %exp_idx256 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %exp_idx256, align 2
  %238 = ptrtoint ptr %reorder_list to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %reorder_list, ptr %reorder_list, align 4
  %prev.i.i510 = getelementptr inbounds %struct.anon.66, ptr %reorder_list, i32 0, i32 1
  %239 = ptrtoint ptr %prev.i.i510 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %reorder_list, ptr %prev.i.i510, align 4
  %qlen.i.i511 = getelementptr inbounds %struct.sk_buff_head, ptr %reorder_list, i32 0, i32 1
  %240 = ptrtoint ptr %qlen.i.i511 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 0, ptr %qlen.i.i511, align 4
  %pend_pkts.i512 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 5
  %241 = ptrtoint ptr %pend_pkts.i512 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %pend_pkts.i512, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %cmp.i513 = icmp eq i8 %242, 0
  br i1 %cmp.i513, label %do.body.i516, label %do.body2.preheader.i515

do.body2.preheader.i515:                          ; preds = %if.end267
  %max_idx.i514 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %rfi.0, i32 0, i32 4
  br label %do.body2.i521

do.body.i516:                                     ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_rxreorder_get_skb_list, ptr noundef nonnull @.str.51) #10
  br label %brcmf_rxreorder_get_skb_list.exit533

do.body2.i521:                                    ; preds = %if.end10.i530.do.body2.i521_crit_edge, %do.body2.preheader.i515
  %start.addr.0.i517 = phi i8 [ %spec.store.select.i528, %if.end10.i530.do.body2.i521_crit_edge ], [ %237, %do.body2.preheader.i515 ]
  %243 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %rfi.0, align 4
  %idxprom.i518 = zext i8 %start.addr.0.i517 to i32
  %arrayidx.i519 = getelementptr ptr, ptr %244, i32 %idxprom.i518
  %245 = ptrtoint ptr %arrayidx.i519 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx.i519, align 4
  %tobool.not.i520 = icmp eq ptr %246, null
  br i1 %tobool.not.i520, label %do.body2.i521.if.end10.i530_crit_edge, label %if.then3.i525

do.body2.i521.if.end10.i530_crit_edge:            ; preds = %do.body2.i521
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i530

if.then3.i525:                                    ; preds = %do.body2.i521
  call void @__sanitizer_cov_trace_pc() #12
  %247 = ptrtoint ptr %prev.i.i510 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %prev.i.i510, align 4
  %249 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %249)
  store volatile ptr %reorder_list, ptr %246, align 8
  %prev10.i.i.i.i522 = getelementptr inbounds %struct.anon.45, ptr %246, i32 0, i32 1
  %250 = ptrtoint ptr %prev10.i.i.i.i522 to i32
  call void @__asan_store4_noabort(i32 %250)
  store volatile ptr %248, ptr %prev10.i.i.i.i522, align 4
  store volatile ptr %246, ptr %prev.i.i510, align 4
  %251 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %251)
  store volatile ptr %246, ptr %248, align 4
  %252 = ptrtoint ptr %qlen.i.i511 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %qlen.i.i511, align 4
  %add.i.i.i.i523 = add i32 %253, 1
  store volatile i32 %add.i.i.i.i523, ptr %qlen.i.i511, align 4
  %254 = ptrtoint ptr %rfi.0 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %rfi.0, align 4
  %arrayidx9.i524 = getelementptr ptr, ptr %255, i32 %idxprom.i518
  %256 = ptrtoint ptr %arrayidx9.i524 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr null, ptr %arrayidx9.i524, align 4
  br label %if.end10.i530

if.end10.i530:                                    ; preds = %if.then3.i525, %do.body2.i521.if.end10.i530_crit_edge
  %inc.i526 = add i8 %start.addr.0.i517, 1
  %257 = ptrtoint ptr %max_idx.i514 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %max_idx.i514, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i526, i8 %258)
  %cmp13.i527 = icmp ugt i8 %inc.i526, %258
  %spec.store.select.i528 = select i1 %cmp13.i527, i8 0, i8 %inc.i526
  %cmp19.not.i529 = icmp eq i8 %spec.store.select.i528, %end_idx.0
  br i1 %cmp19.not.i529, label %do.end21.i532, label %if.end10.i530.do.body2.i521_crit_edge

if.end10.i530.do.body2.i521_crit_edge:            ; preds = %if.end10.i530
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i521

do.end21.i532:                                    ; preds = %if.end10.i530
  call void @__sanitizer_cov_trace_pc() #12
  %259 = ptrtoint ptr %qlen.i.i511 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %qlen.i.i511, align 4
  %261 = ptrtoint ptr %pend_pkts.i512 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %pend_pkts.i512, align 4
  %263 = trunc i32 %260 to i8
  %conv24.i531 = sub i8 %262, %263
  store i8 %conv24.i531, ptr %pend_pkts.i512, align 4
  br label %brcmf_rxreorder_get_skb_list.exit533

brcmf_rxreorder_get_skb_list.exit533:             ; preds = %do.end21.i532, %do.body.i516
  %264 = ptrtoint ptr %prev.i.i510 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %prev.i.i510, align 4
  %266 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %266)
  store volatile ptr %reorder_list, ptr %pkt, align 8
  %prev10.i.i.i535 = getelementptr inbounds %struct.anon.45, ptr %pkt, i32 0, i32 1
  %267 = ptrtoint ptr %prev10.i.i.i535 to i32
  call void @__asan_store4_noabort(i32 %267)
  store volatile ptr %265, ptr %prev10.i.i.i535, align 4
  store volatile ptr %pkt, ptr %prev.i.i510, align 4
  %268 = ptrtoint ptr %265 to i32
  call void @__asan_store4_noabort(i32 %268)
  store volatile ptr %pkt, ptr %265, align 4
  %269 = ptrtoint ptr %qlen.i.i511 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %qlen.i.i511, align 4
  %add.i.i.i537 = add i32 %270, 1
  store volatile i32 %add.i.i.i537, ptr %qlen.i.i511, align 4
  %271 = ptrtoint ptr %exp_idx256 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %231, ptr %exp_idx256, align 2
  br label %netif_rx

netif_rx:                                         ; preds = %brcmf_rxreorder_get_skb_list.exit533, %if.end247, %brcmf_rxreorder_get_skb_list.exit480, %if.end96, %brcmf_rxreorder_get_skb_list.exit
  %272 = ptrtoint ptr %reorder_list to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %reorder_list, align 4
  %cmp273.not539 = icmp eq ptr %273, %reorder_list
  br i1 %cmp273.not539, label %netif_rx.cleanup_crit_edge, label %for.body.lr.ph

netif_rx.cleanup_crit_edge:                       ; preds = %netif_rx
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %netif_rx
  %qlen.i538 = getelementptr inbounds %struct.sk_buff_head, ptr %reorder_list, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pkt.addr.0540 = phi ptr [ %273, %for.body.lr.ph ], [ %pnext.0, %for.body.for.body_crit_edge ]
  %274 = ptrtoint ptr %pkt.addr.0540 to i32
  call void @__asan_load4_noabort(i32 %274)
  %pnext.0 = load ptr, ptr %pkt.addr.0540, align 8
  %275 = ptrtoint ptr %qlen.i538 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %qlen.i538, align 4
  %sub.i = add i32 %276, -1
  store volatile i32 %sub.i, ptr %qlen.i538, align 4
  %277 = load ptr, ptr %pkt.addr.0540, align 8
  %prev9.i = getelementptr inbounds %struct.anon.45, ptr %pkt.addr.0540, i32 0, i32 1
  %278 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %pkt.addr.0540, align 8
  %prev17.i = getelementptr inbounds %struct.anon.45, ptr %277, i32 0, i32 1
  %280 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store volatile ptr %279, ptr %prev17.i, align 4
  %281 = ptrtoint ptr %279 to i32
  call void @__asan_store4_noabort(i32 %281)
  store volatile ptr %277, ptr %279, align 8
  call void @brcmf_netif_rx(ptr noundef %ifp, ptr noundef %pkt.addr.0540, i1 noundef zeroext %inirq) #10
  %cmp273.not = icmp eq ptr %pnext.0, %reorder_list
  br i1 %cmp273.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %netif_rx.cleanup_crit_edge, %if.end151, %do.end49, %do.body19, %do.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reorder_list) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_netif_rx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fws_hdrpull(ptr nocapture noundef readonly %ifp, i16 noundef signext %siglen, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %call = tail call ptr @drvr_to_fws(ptr noundef %1) #10
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %2 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifidx, align 4
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1, align 4
  %conv = sext i16 %siglen to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 64, ptr noundef nonnull @__func__.brcmf_fws_hdrpull, ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef %5, i32 noundef %conv) #10
  %6 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp ult i32 %7, %conv
  br i1 %cmp, label %do.end14, label %entry.if.end_crit_edge, !prof !253

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1855, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end14, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp28 = icmp ult i32 %9, %conv
  %conv32 = trunc i32 %9 to i16
  %spec.select = select i1 %cmp28, i16 %conv32, i16 %siglen
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select)
  %tobool34.not = icmp eq i16 %spec.select, 0
  br i1 %tobool34.not, label %if.end.cleanup_crit_edge, label %if.end36

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end
  %tobool37.not = icmp eq ptr %call, null
  br i1 %tobool37.not, label %if.end36.if.then39_crit_edge, label %lor.lhs.false

if.end36.if.then39_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

lor.lhs.false:                                    ; preds = %if.end36
  %fw_signals = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %fw_signals to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_signals, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool38.not = icmp eq i8 %11, 0
  br i1 %tobool38.not, label %lor.lhs.false.if.then39_crit_edge, label %if.end42

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %if.end36.if.then39_crit_edge
  %conv40 = sext i16 %spec.select to i32
  %call41 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv40) #10
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false
  %stats = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3
  %header_pulls = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %header_pulls to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %header_pulls, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %header_pulls, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select)
  %cmp45366373 = icmp sgt i16 %spec.select, 0
  br i1 %cmp45366373, label %while.body.lr.ph.lr.ph, label %if.end42.if.then113_crit_edge

if.end42.if.then113_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then113

while.body.lr.ph.lr.ph:                           ; preds = %if.end42
  %data43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data43, align 4
  %tlv_invalid_type.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 1
  %fcmode.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 5
  %spinlock.i.i298 = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 1
  %flags.i.i300 = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 2
  %fifo_credit_map.i330 = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 16
  %arrayidx35.i334 = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 12, i32 0
  %arrayidx42.i337 = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 13, i32 0
  %arrayidx35.i322 = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 12, i32 4
  %arrayidx42.i325 = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 13, i32 4
  %arrayidx35.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 12, i32 5
  %arrayidx42.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 13, i32 5
  %fifo_delay_map.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 17
  %mode.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 21
  %txs_indicate.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 17
  %desc.i247 = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 8
  %packet_request_failed.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 11
  %credit_request_failed.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 12
  %if_update_failed.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 10
  %mac_ps_update_failed.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 9
  %other.i34.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 2
  %mac_update_failed20.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %sw.epilog.thread.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %status.0.ph376 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %230, %sw.epilog.thread.while.body.lr.ph_crit_edge ]
  %data_len.0.ph375 = phi i16 [ %spec.select, %while.body.lr.ph.lr.ph ], [ %conv109, %sw.epilog.thread.while.body.lr.ph_crit_edge ]
  %signal_data.0.ph374 = phi ptr [ %15, %while.body.lr.ph.lr.ph ], [ %add.ptr104, %sw.epilog.thread.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then50.while.body_crit_edge, %while.body.lr.ph
  %data_len.0368 = phi i16 [ %data_len.0.ph375, %while.body.lr.ph ], [ %sub, %if.then50.while.body_crit_edge ]
  %signal_data.0367 = phi ptr [ %signal_data.0.ph374, %while.body.lr.ph ], [ %add.ptr, %if.then50.while.body_crit_edge ]
  %16 = ptrtoint ptr %signal_data.0367 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %signal_data.0367, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp48 = icmp eq i8 %17, -1
  br i1 %cmp48, label %if.then50, label %if.end53

if.then50:                                        ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %signal_data.0367, i32 1
  %sub = add i16 %data_len.0368, -1
  %cmp45 = icmp sgt i16 %sub, 0
  br i1 %cmp45, label %if.then50.while.body_crit_edge, label %while.end.loopexit

if.then50.while.body_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end53:                                         ; preds = %while.body
  %conv44.le397 = zext i16 %data_len.0368 to i32
  %conv47.le = zext i8 %17 to i32
  %arrayidx54 = getelementptr i8, ptr %signal_data.0367, i32 1
  %18 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx54, align 1
  %add.ptr55 = getelementptr i8, ptr %signal_data.0367, i32 2
  %switch.tableidx = add i8 %17, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %switch.tableidx)
  %20 = icmp ult i8 %switch.tableidx, 19
  br i1 %20, label %switch.hole_check, label %if.end53.brcmf_fws_get_tlv_name.exit_crit_edge

if.end53.brcmf_fws_get_tlv_name.exit_crit_edge:   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_name.exit

switch.hole_check:                                ; preds = %if.end53
  %switch.maskindex = zext i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 409599, %switch.maskindex
  %21 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %switch.lobit.not = icmp eq i32 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.brcmf_fws_get_tlv_name.exit_crit_edge, label %switch.lookup

switch.hole_check.brcmf_fws_get_tlv_name.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_name.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %22 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [19 x i32], ptr @switch.table.brcmf_fws_hdrpull, i32 0, i32 %22
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  %name.i = getelementptr [17 x %struct.anon.133], ptr @brcmf_fws_tlv_names, i32 0, i32 %switch.load, i32 1
  %24 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name.i, align 4
  br label %brcmf_fws_get_tlv_name.exit

brcmf_fws_get_tlv_name.exit:                      ; preds = %switch.lookup, %switch.hole_check.brcmf_fws_get_tlv_name.exit_crit_edge, %if.end53.brcmf_fws_get_tlv_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %switch.lookup ], [ @.str.52, %if.end53.brcmf_fws_get_tlv_name.exit_crit_edge ], [ @.str.52, %switch.hole_check.brcmf_fws_get_tlv_name.exit_crit_edge ]
  %conv60 = zext i8 %19 to i32
  %switch.tableidx423 = add i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %switch.tableidx423)
  %26 = icmp ult i8 %switch.tableidx423, 21
  br i1 %26, label %switch.hole_check424, label %brcmf_fws_get_tlv_name.exit.sw.default.i_crit_edge

brcmf_fws_get_tlv_name.exit.sw.default.i_crit_edge: ; preds = %brcmf_fws_get_tlv_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default.i

sw.default.i:                                     ; preds = %switch.hole_check424.sw.default.i_crit_edge, %brcmf_fws_get_tlv_name.exit.sw.default.i_crit_edge
  %27 = ptrtoint ptr %tlv_invalid_type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tlv_invalid_type.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %tlv_invalid_type.i, align 4
  br label %brcmf_fws_get_tlv_len.exit

switch.hole_check424:                             ; preds = %brcmf_fws_get_tlv_name.exit
  %switch.maskindex426 = zext i8 %switch.tableidx423 to i32
  %switch.shifted427 = lshr i32 1638397, %switch.maskindex426
  %29 = and i32 %switch.shifted427, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %switch.lobit428.not = icmp eq i32 %29, 0
  br i1 %switch.lobit428.not, label %switch.hole_check424.sw.default.i_crit_edge, label %switch.lookup425

switch.hole_check424.sw.default.i_crit_edge:      ; preds = %switch.hole_check424
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default.i

switch.lookup425:                                 ; preds = %switch.hole_check424
  call void @__sanitizer_cov_trace_pc() #12
  %30 = sext i8 %switch.tableidx423 to i32
  %switch.gep429 = getelementptr inbounds [21 x i32], ptr @switch.table.brcmf_fws_hdrpull.118, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep429 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load430 = load i32, ptr %switch.gep429, align 4
  br label %brcmf_fws_get_tlv_len.exit

brcmf_fws_get_tlv_len.exit:                       ; preds = %switch.lookup425, %sw.default.i
  %retval.0.i201 = phi i32 [ -22, %sw.default.i ], [ %switch.load430, %switch.lookup425 ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 64, ptr noundef nonnull @__func__.brcmf_fws_hdrpull, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i, i32 noundef %conv47.le, i32 noundef %conv60, i32 noundef %retval.0.i201) #10
  %add = add nuw nsw i32 %conv60, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv44.le397)
  %cmp67 = icmp ugt i32 %add, %conv44.le397
  br i1 %cmp67, label %brcmf_fws_get_tlv_len.exit.if.then113_crit_edge, label %if.end70

brcmf_fws_get_tlv_len.exit.if.then113_crit_edge:  ; preds = %brcmf_fws_get_tlv_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then113

if.end70:                                         ; preds = %brcmf_fws_get_tlv_len.exit
  %32 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %sw.default.i215 [
    i8 1, label %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge
    i8 2, label %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge452
    i8 3, label %sw.bb2.i202
    i8 4, label %sw.bb3.i203
    i8 5, label %sw.bb4.i204
    i8 6, label %sw.bb5.i205
    i8 7, label %sw.bb6.i206
    i8 8, label %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge453
    i8 9, label %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge454
    i8 10, label %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge455
    i8 11, label %sw.bb10.i207
    i8 12, label %sw.bb11.i208
    i8 13, label %sw.bb12.i209
    i8 14, label %sw.bb13.i210
    i8 18, label %sw.bb14.i211
    i8 19, label %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge456
    i8 -1, label %if.end70.sw.default_crit_edge
  ]

if.end70.sw.default_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge456: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge455: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge454: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge453: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge452: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.bb2.i202:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.bb3.i203:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.bb4.i204:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.bb5.i205:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.bb6.i206:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.bb10.i207:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.bb11.i208:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.bb12.i209:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.bb13.i210:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.bb14.i211:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_len.exit217

sw.default.i215:                                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %tlv_invalid_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tlv_invalid_type.i, align 4
  %inc.i214 = add i32 %34, 1
  store i32 %inc.i214, ptr %tlv_invalid_type.i, align 4
  br label %if.end77

brcmf_fws_get_tlv_len.exit217:                    ; preds = %sw.bb14.i211, %sw.bb13.i210, %sw.bb12.i209, %sw.bb11.i208, %sw.bb10.i207, %sw.bb6.i206, %sw.bb5.i205, %sw.bb4.i204, %sw.bb3.i203, %sw.bb2.i202, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge452, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge453, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge454, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge455, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge456
  %retval.0.i216 = phi i32 [ 6, %sw.bb14.i211 ], [ 10, %sw.bb13.i210 ], [ 3, %sw.bb12.i209 ], [ 2, %sw.bb11.i208 ], [ 6, %sw.bb10.i207 ], [ 8, %sw.bb6.i206 ], [ 8, %sw.bb5.i205 ], [ 4, %sw.bb4.i204 ], [ 4, %sw.bb3.i203 ], [ 2, %sw.bb2.i202 ], [ 1, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge ], [ 1, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge452 ], [ 1, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge453 ], [ 1, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge454 ], [ 1, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge455 ], [ 1, %if.end70.brcmf_fws_get_tlv_len.exit217_crit_edge456 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i216, i32 %conv60)
  %cmp74 = icmp ugt i32 %retval.0.i216, %conv60
  br i1 %cmp74, label %brcmf_fws_get_tlv_len.exit217.if.then113_crit_edge, label %brcmf_fws_get_tlv_len.exit217.if.end77_crit_edge

brcmf_fws_get_tlv_len.exit217.if.end77_crit_edge: ; preds = %brcmf_fws_get_tlv_len.exit217
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

brcmf_fws_get_tlv_len.exit217.if.then113_crit_edge: ; preds = %brcmf_fws_get_tlv_len.exit217
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then113

if.end77:                                         ; preds = %brcmf_fws_get_tlv_len.exit217.if.end77_crit_edge, %sw.default.i215
  %35 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %17, label %if.end77.sw.default_crit_edge [
    i8 14, label %sw.bb
    i8 6, label %if.end77.sw.bb79_crit_edge
    i8 7, label %if.end77.sw.bb79_crit_edge457
    i8 1, label %if.end77.sw.bb81_crit_edge
    i8 2, label %if.end77.sw.bb81_crit_edge458
    i8 9, label %if.end77.sw.bb83_crit_edge
    i8 10, label %if.end77.sw.bb83_crit_edge459
    i8 3, label %if.end77.sw.bb85_crit_edge
    i8 13, label %if.end77.sw.bb85_crit_edge460
    i8 4, label %if.end77.sw.bb87_crit_edge
    i8 19, label %if.end77.sw.bb87_crit_edge461
    i8 11, label %sw.bb89
    i8 8, label %sw.bb91
    i8 18, label %sw.bb93
  ]

if.end77.sw.bb87_crit_edge461:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb87

if.end77.sw.bb87_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb87

if.end77.sw.bb85_crit_edge460:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb85

if.end77.sw.bb85_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb85

if.end77.sw.bb83_crit_edge459:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83

if.end77.sw.bb83_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83

if.end77.sw.bb81_crit_edge458:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb81

if.end77.sw.bb81_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb81

if.end77.sw.bb79_crit_edge457:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb79

if.end77.sw.bb79_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb79

if.end77.sw.default_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr55, ptr %cb, align 4
  br label %sw.epilog.thread

sw.bb79:                                          ; preds = %if.end77.sw.bb79_crit_edge, %if.end77.sw.bb79_crit_edge457
  %incdec.ptr.i = getelementptr i8, ptr %signal_data.0367, i32 3
  %37 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr55, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %signal_data.0367, i32 4
  %39 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.i, align 1
  %41 = and i8 %38, 31
  %and.i = zext i8 %41 to i32
  %arrayidx.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %17)
  %cmp.i = icmp eq i8 %17, 7
  br i1 %cmp.i, label %if.then.i218, label %if.end6.i

if.then.i218:                                     ; preds = %sw.bb79
  %occupied.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 1
  %42 = ptrtoint ptr %occupied.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %occupied.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_indicate, ptr noundef nonnull @.str.70, ptr noundef %arrayidx.i, ptr noundef %incdec.ptr2.i) #10
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i298) #10
  %44 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call2.i.i, ptr %flags.i.i300, align 4
  tail call fastcc void @brcmf_fws_macdesc_cleanup(ptr noundef %call, ptr noundef %arrayidx.i, i32 noundef -1) #10
  %ea.i.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 10
  %interface_id.i.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 3
  %45 = ptrtoint ptr %interface_id.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %interface_id.i.i, align 2
  %conv.i.i = zext i8 %46 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_deinit, ptr noundef nonnull @.str.94, ptr noundef %ea.i.i, i32 noundef %conv.i.i) #10
  %47 = ptrtoint ptr %occupied.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %occupied.i, align 4
  %state.i.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 4
  %48 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %state.i.i, align 1
  %requested_credit.i.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 8
  %49 = ptrtoint ptr %requested_credit.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %requested_credit.i.i, align 1
  %requested_packet.i.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 9
  %50 = ptrtoint ptr %requested_packet.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %requested_packet.i.i, align 4
  %51 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i.i300, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i.i298, i32 noundef %52) #10
  br label %sw.epilog.thread

if.else.i:                                        ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %mac_update_failed20.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mac_update_failed20.i, align 4
  %inc.i219 = add i32 %54, 1
  store i32 %inc.i219, ptr %mac_update_failed20.i, align 4
  br label %sw.epilog.thread

if.end6.i:                                        ; preds = %sw.bb79
  %cmp.i.i = icmp eq ptr %incdec.ptr2.i, null
  br i1 %cmp.i.i, label %if.end6.i.if.then8.i_crit_edge, label %if.end6.i.for.body.i.i_crit_edge

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

if.end6.i.if.then8.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %i.017.i.i = phi i32 [ %inc.i.i, %if.end7.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.for.body.i.i_crit_edge ]
  %entry1.015.i.i = phi ptr [ %incdec.ptr.i.i, %if.end7.i.i.for.body.i.i_crit_edge ], [ %desc.i247, %if.end6.i.for.body.i.i_crit_edge ]
  %occupied.i3.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %occupied.i3.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %occupied.i3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end7.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %ea3.i.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 0, i32 10
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ea3.i.i, ptr noundef nonnull dereferenceable(6) %incdec.ptr2.i, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool5.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool5.not.i.i, label %brcmf_fws_macdesc_lookup.exit.i, label %land.lhs.true.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.if.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.if.end7.i.i_crit_edge, %for.body.i.i.if.end7.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %if.end7.i.i.if.then8.i_crit_edge, label %if.end7.i.i.for.body.i.i_crit_edge

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end7.i.i.if.then8.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

brcmf_fws_macdesc_lookup.exit.i:                  ; preds = %land.lhs.true.i.i
  %occupied.i3.i.le = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 0, i32 1
  %cmp.i4.i = icmp ugt ptr %entry1.015.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4.i, label %brcmf_fws_macdesc_lookup.exit.i.if.then8.i_crit_edge, label %if.else23.i

brcmf_fws_macdesc_lookup.exit.i.if.then8.i_crit_edge: ; preds = %brcmf_fws_macdesc_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then8.i:                                       ; preds = %brcmf_fws_macdesc_lookup.exit.i.if.then8.i_crit_edge, %if.end7.i.i.if.then8.i_crit_edge, %if.end6.i.if.then8.i_crit_edge
  %occupied9.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 1
  %57 = ptrtoint ptr %occupied9.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %occupied9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool10.not.i = icmp eq i8 %58, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else18.i

if.then11.i:                                      ; preds = %if.then8.i
  %call2.i6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i298) #10
  %59 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call2.i6.i, ptr %flags.i.i300, align 4
  %mac_handle12.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 2
  %60 = ptrtoint ptr %mac_handle12.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %38, ptr %mac_handle12.i, align 1
  %conv.i8.i = zext i8 %40 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_init, ptr noundef nonnull @.str.89, ptr noundef %arrayidx.i, ptr noundef %incdec.ptr2.i, i32 noundef %conv.i8.i) #10
  %61 = ptrtoint ptr %occupied9.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %occupied9.i, align 4
  %state.i10.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 4
  %62 = ptrtoint ptr %state.i10.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %state.i10.i, align 1
  %requested_credit.i11.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 8
  %63 = ptrtoint ptr %requested_credit.i11.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %requested_credit.i11.i, align 1
  %requested_packet.i12.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 9
  %64 = ptrtoint ptr %requested_packet.i12.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %requested_packet.i12.i, align 4
  %interface_id.i13.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 3
  %65 = ptrtoint ptr %interface_id.i13.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %40, ptr %interface_id.i13.i, align 2
  %ac_bitmap.i.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 7
  %66 = ptrtoint ptr %ac_bitmap.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -1, ptr %ac_bitmap.i.i, align 2
  br i1 %cmp.i.i, label %if.then11.i.brcmf_fws_macdesc_init.exit.i_crit_edge, label %if.then.i.i

if.then11.i.brcmf_fws_macdesc_init.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_init.exit.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %ea.i15.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 10
  %67 = call ptr @memcpy(ptr %ea.i15.i, ptr %incdec.ptr2.i, i32 6)
  br label %brcmf_fws_macdesc_init.exit.i

brcmf_fws_macdesc_init.exit.i:                    ; preds = %if.then.i.i, %if.then11.i.brcmf_fws_macdesc_init.exit.i_crit_edge
  %cmp.i17.i = icmp eq ptr %other.i34.i, %arrayidx.i
  br i1 %cmp.i17.i, label %if.then.i18.i, label %if.else.i.i

if.then.i18.i:                                    ; preds = %brcmf_fws_macdesc_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @strlcpy(ptr noundef %other.i34.i, ptr noundef nonnull @.str.90, i32 noundef 16) #10
  br label %brcmf_fws_macdesc_set_name.exit.i

if.else.i.i:                                      ; preds = %brcmf_fws_macdesc_init.exit.i
  %68 = ptrtoint ptr %mac_handle12.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mac_handle12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i19.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i19.i, label %if.else8.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i20.i = zext i8 %69 to i32
  %70 = ptrtoint ptr %interface_id.i13.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %interface_id.i13.i, align 2
  %conv6.i.i = zext i8 %71 to i32
  %call7.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef 16, ptr noundef nonnull @.str.91, i32 noundef %conv.i20.i, i32 noundef %conv6.i.i) #10
  br label %brcmf_fws_macdesc_set_name.exit.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %interface_id.i13.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %interface_id.i13.i, align 2
  %conv12.i.i = zext i8 %73 to i32
  %call13.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef 16, ptr noundef nonnull @.str.92, i32 noundef %conv12.i.i) #10
  br label %brcmf_fws_macdesc_set_name.exit.i

brcmf_fws_macdesc_set_name.exit.i:                ; preds = %if.else8.i.i, %if.then2.i.i, %if.then.i18.i
  %psq.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 12
  tail call void @brcmu_pktq_init(ptr noundef %psq.i, i32 noundef 14, i32 noundef 256) #10
  %74 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i.i300, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i.i298, i32 noundef %75) #10
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_indicate, ptr noundef nonnull @.str.71, ptr noundef %arrayidx.i, ptr noundef %incdec.ptr2.i) #10
  br label %sw.epilog.thread

if.else18.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %mac_update_failed20.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mac_update_failed20.i, align 4
  %inc21.i = add i32 %77, 1
  store i32 %inc21.i, ptr %mac_update_failed20.i, align 4
  br label %sw.epilog.thread

if.else23.i:                                      ; preds = %brcmf_fws_macdesc_lookup.exit.i
  %cmp24.not.i = icmp eq ptr %arrayidx.i, %entry1.015.i.i
  br i1 %cmp24.not.i, label %do.body39.i, label %do.body27.i

do.body27.i:                                      ; preds = %if.else23.i
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_indicate, ptr noundef nonnull @.str.72, ptr noundef %entry1.015.i.i) #10
  %call2.i25.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i298) #10
  %78 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call2.i25.i, ptr %flags.i.i300, align 4
  %79 = call ptr @memcpy(ptr %arrayidx.i, ptr %entry1.015.i.i, i32 40)
  %mac_handle32.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 2
  %80 = ptrtoint ptr %mac_handle32.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %38, ptr %mac_handle32.i, align 1
  %interface_id.i28.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 0, i32 3
  %81 = ptrtoint ptr %interface_id.i28.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %interface_id.i28.i, align 2
  %conv.i29.i = zext i8 %82 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_deinit, ptr noundef nonnull @.str.94, ptr noundef %ea3.i.i, i32 noundef %conv.i29.i) #10
  %83 = ptrtoint ptr %occupied.i3.i.le to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %occupied.i3.i.le, align 4
  %state.i31.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %state.i31.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 2, ptr %state.i31.i, align 1
  %requested_credit.i32.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 0, i32 8
  %85 = ptrtoint ptr %requested_credit.i32.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %requested_credit.i32.i, align 1
  %requested_packet.i33.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 0, i32 9
  %86 = ptrtoint ptr %requested_packet.i33.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %requested_packet.i33.i, align 4
  %cmp.i35.i = icmp eq ptr %other.i34.i, %arrayidx.i
  br i1 %cmp.i35.i, label %if.then.i37.i, label %if.else.i40.i

if.then.i37.i:                                    ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i36.i = tail call i32 @strlcpy(ptr noundef %other.i34.i, ptr noundef nonnull @.str.90, i32 noundef 16) #10
  br label %brcmf_fws_macdesc_set_name.exit50.i

if.else.i40.i:                                    ; preds = %do.body27.i
  %87 = ptrtoint ptr %mac_handle32.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mac_handle32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i39.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i39.i, label %if.else8.i49.i, label %if.then2.i45.i

if.then2.i45.i:                                   ; preds = %if.else.i40.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i41.i = zext i8 %88 to i32
  %interface_id.i42.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 3
  %89 = ptrtoint ptr %interface_id.i42.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %interface_id.i42.i, align 2
  %conv6.i43.i = zext i8 %90 to i32
  %call7.i44.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef 16, ptr noundef nonnull @.str.91, i32 noundef %conv.i41.i, i32 noundef %conv6.i43.i) #10
  br label %brcmf_fws_macdesc_set_name.exit50.i

if.else8.i49.i:                                   ; preds = %if.else.i40.i
  call void @__sanitizer_cov_trace_pc() #12
  %interface_id11.i46.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 3
  %91 = ptrtoint ptr %interface_id11.i46.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %interface_id11.i46.i, align 2
  %conv12.i47.i = zext i8 %92 to i32
  %call13.i48.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef 16, ptr noundef nonnull @.str.92, i32 noundef %conv12.i47.i) #10
  br label %brcmf_fws_macdesc_set_name.exit50.i

brcmf_fws_macdesc_set_name.exit50.i:              ; preds = %if.else8.i49.i, %if.then2.i45.i, %if.then.i37.i
  %93 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i.i300, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i.i298, i32 noundef %94) #10
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_indicate, ptr noundef nonnull @.str.73, ptr noundef %arrayidx.i, ptr noundef nonnull %incdec.ptr2.i) #10
  br label %sw.epilog.thread

do.body39.i:                                      ; preds = %if.else23.i
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_indicate, ptr noundef nonnull @.str.74) #10
  %mac_handle42.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i, i32 2
  %95 = ptrtoint ptr %mac_handle42.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %mac_handle42.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %96, i8 %38)
  %cmp45.not.i = icmp eq i8 %96, %38
  br i1 %cmp45.not.i, label %do.body39.i.sw.epilog.thread_crit_edge, label %do.end58.i, !prof !252

do.body39.i.sw.epilog.thread_crit_edge:           ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

do.end58.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1039, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog.thread

sw.bb81:                                          ; preds = %if.end77.sw.bb81_crit_edge, %if.end77.sw.bb81_crit_edge458
  %97 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr55, align 1
  %99 = and i8 %98, 31
  %and.i221 = zext i8 %99 to i32
  %arrayidx2.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i221
  %occupied.i222 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i221, i32 1
  %100 = ptrtoint ptr %occupied.i222 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %occupied.i222, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i223 = icmp eq i8 %101, 0
  br i1 %tobool.not.i223, label %if.then.i225, label %if.end.i

if.then.i225:                                     ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %mac_ps_update_failed.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mac_ps_update_failed.i, align 4
  %inc.i224 = add i32 %103, 1
  store i32 %inc.i224, ptr %mac_ps_update_failed.i, align 4
  br label %sw.epilog.thread

if.end.i:                                         ; preds = %sw.bb81
  %call2.i.i227 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i298) #10
  %104 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call2.i.i227, ptr %flags.i.i300, align 4
  %requested_credit.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i221, i32 8
  %105 = ptrtoint ptr %requested_credit.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %requested_credit.i, align 1
  %requested_packet.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i221, i32 9
  %106 = ptrtoint ptr %requested_packet.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %requested_packet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.i229 = icmp eq i8 %17, 1
  %state.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i221, i32 4
  br i1 %cmp.i229, label %if.then5.i, label %if.else.i232

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %state.i, align 1
  br label %if.end10.i

if.else.i232:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 2, ptr %state.i, align 1
  %psq.i.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i221, i32 12
  %call.i.i230 = tail call i32 @brcmu_pktq_mlen(ptr noundef %psq.i.i, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i230)
  %cmp.i.i231 = icmp ne i32 %call.i.i230, 0
  %traffic_pending_bmp.i.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i221, i32 16
  %109 = ptrtoint ptr %traffic_pending_bmp.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %traffic_pending_bmp.i.i, align 1
  %conv3.i.i = and i8 %110, -2
  %masksel.i = zext i1 %cmp.i.i231 to i8
  %conv7.sink.i.i = or i8 %conv3.i.i, %masksel.i
  store i8 %conv7.sink.i.i, ptr %traffic_pending_bmp.i.i, align 1
  %send_tim_signal.i.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i221, i32 15
  %traffic_lastreported_bmp.i.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i221, i32 17
  %111 = ptrtoint ptr %traffic_lastreported_bmp.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %traffic_lastreported_bmp.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %conv7.sink.i.i)
  %cmp11.not.i.i = icmp ne i8 %112, %conv7.sink.i.i
  %spec.store.select.i.i = zext i1 %cmp11.not.i.i to i8
  %113 = ptrtoint ptr %send_tim_signal.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %spec.store.select.i.i, ptr %send_tim_signal.i.i, align 4
  %call.i29.i = tail call i32 @brcmu_pktq_mlen(ptr noundef %psq.i.i, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %cmp.i30.i = icmp eq i32 %call.i29.i, 0
  %114 = ptrtoint ptr %traffic_pending_bmp.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %traffic_pending_bmp.i.i, align 1
  %conv3.i33.i = and i8 %115, -3
  %masksel54.i = select i1 %cmp.i30.i, i8 0, i8 2
  %conv7.sink.i34.i = or i8 %conv3.i33.i, %masksel54.i
  store i8 %conv7.sink.i34.i, ptr %traffic_pending_bmp.i.i, align 1
  %116 = ptrtoint ptr %traffic_lastreported_bmp.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %traffic_lastreported_bmp.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %117, i8 %conv7.sink.i34.i)
  %cmp11.not.i37.i = icmp ne i8 %117, %conv7.sink.i34.i
  %spec.store.select.i39.i = zext i1 %cmp11.not.i37.i to i8
  %118 = ptrtoint ptr %send_tim_signal.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %spec.store.select.i39.i, ptr %send_tim_signal.i.i, align 4
  %call.i41.i = tail call i32 @brcmu_pktq_mlen(ptr noundef %psq.i.i, i32 noundef 48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp.i42.i = icmp eq i32 %call.i41.i, 0
  %119 = ptrtoint ptr %traffic_pending_bmp.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %traffic_pending_bmp.i.i, align 1
  %conv3.i45.i = and i8 %120, -5
  %masksel55.i = select i1 %cmp.i42.i, i8 0, i8 4
  %conv7.sink.i46.i = or i8 %conv3.i45.i, %masksel55.i
  store i8 %conv7.sink.i46.i, ptr %traffic_pending_bmp.i.i, align 1
  %121 = ptrtoint ptr %traffic_lastreported_bmp.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %traffic_lastreported_bmp.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %122, i8 %conv7.sink.i46.i)
  %cmp11.not.i49.i = icmp ne i8 %122, %conv7.sink.i46.i
  %spec.store.select.i51.i = zext i1 %cmp11.not.i49.i to i8
  %123 = ptrtoint ptr %send_tim_signal.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %spec.store.select.i51.i, ptr %send_tim_signal.i.i, align 4
  tail call fastcc void @brcmf_fws_tim_update(ptr noundef %call, ptr noundef %arrayidx2.i, i32 noundef 3, i1 noundef zeroext true) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i232, %if.then5.i
  %ret.0.i = phi i32 [ 1, %if.then5.i ], [ 0, %if.else.i232 ]
  %124 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags.i.i300, align 4
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end77.sw.bb83_crit_edge, %if.end77.sw.bb83_crit_edge459
  %126 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %add.ptr55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %127)
  %cmp.i234 = icmp ugt i8 %127, 15
  br i1 %cmp.i234, label %sw.bb83.fail.i_crit_edge, label %if.end.i237

sw.bb83.fail.i_crit_edge:                         ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end.i237:                                      ; preds = %sw.bb83
  %conv.i = zext i8 %127 to i32
  %occupied.i235 = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %conv.i, i32 1
  %128 = ptrtoint ptr %occupied.i235 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %occupied.i235, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i236 = icmp eq i8 %129, 0
  br i1 %tobool.not.i236, label %if.end.i237.fail.i_crit_edge, label %do.body.i238

if.end.i237.fail.i_crit_edge:                     ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

do.body.i238:                                     ; preds = %if.end.i237
  %arrayidx3.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %conv.i
  %130 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %17, label %do.body.i238.brcmf_fws_get_tlv_name.exit.i_crit_edge [
    i8 10, label %if.then.fold.split17.i.i
    i8 9, label %do.body.i238.if.then.i.i239_crit_edge
  ]

do.body.i238.if.then.i.i239_crit_edge:            ; preds = %do.body.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i239

do.body.i238.brcmf_fws_get_tlv_name.exit.i_crit_edge: ; preds = %do.body.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_name.exit.i

if.then.fold.split17.i.i:                         ; preds = %do.body.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i239

if.then.i.i239:                                   ; preds = %if.then.fold.split17.i.i, %do.body.i238.if.then.i.i239_crit_edge
  %i.08.lcssa.i.i = phi i32 [ 9, %if.then.fold.split17.i.i ], [ 8, %do.body.i238.if.then.i.i239_crit_edge ]
  %name.i.i = getelementptr [17 x %struct.anon.133], ptr @brcmf_fws_tlv_names, i32 0, i32 %i.08.lcssa.i.i, i32 1
  %131 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %name.i.i, align 4
  br label %brcmf_fws_get_tlv_name.exit.i

brcmf_fws_get_tlv_name.exit.i:                    ; preds = %if.then.i.i239, %do.body.i238.brcmf_fws_get_tlv_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %132, %if.then.i.i239 ], [ @.str.52, %do.body.i238.brcmf_fws_get_tlv_name.exit.i_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_interface_state_indicate, ptr noundef nonnull @.str.77, ptr noundef %retval.0.i.i, i32 noundef %conv47.le, ptr noundef %arrayidx3.i) #10
  %call2.i.i241 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i298) #10
  %133 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %call2.i.i241, ptr %flags.i.i300, align 4
  %134 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %17, label %sw.default.i243 [
    i8 9, label %brcmf_fws_get_tlv_name.exit.i.sw.epilog.i_crit_edge
    i8 10, label %sw.bb9.i
  ]

brcmf_fws_get_tlv_name.exit.i.sw.epilog.i_crit_edge: ; preds = %brcmf_fws_get_tlv_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %brcmf_fws_get_tlv_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.default.i243:                                  ; preds = %brcmf_fws_get_tlv_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i.i298, i32 noundef %call2.i.i241) #10
  br label %fail.i

sw.epilog.i:                                      ; preds = %sw.bb9.i, %brcmf_fws_get_tlv_name.exit.i.sw.epilog.i_crit_edge
  %.sink.i = phi i8 [ 2, %sw.bb9.i ], [ 1, %brcmf_fws_get_tlv_name.exit.i.sw.epilog.i_crit_edge ]
  %ret.0.i244 = phi i32 [ 0, %sw.bb9.i ], [ 1, %brcmf_fws_get_tlv_name.exit.i.sw.epilog.i_crit_edge ]
  %state10.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %conv.i, i32 4
  %135 = ptrtoint ptr %state10.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %.sink.i, ptr %state10.i, align 1
  br label %sw.epilog

fail.i:                                           ; preds = %sw.default.i243, %if.end.i237.fail.i_crit_edge, %sw.bb83.fail.i_crit_edge
  %136 = ptrtoint ptr %if_update_failed.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %if_update_failed.i, align 4
  %inc.i245 = add i32 %137, 1
  store i32 %inc.i245, ptr %if_update_failed.i, align 4
  br label %sw.epilog.thread

sw.bb85:                                          ; preds = %if.end77.sw.bb85_crit_edge, %if.end77.sw.bb85_crit_edge460
  %arrayidx.i248 = getelementptr i8, ptr %signal_data.0367, i32 3
  %138 = ptrtoint ptr %arrayidx.i248 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i248, align 1
  %140 = and i8 %139, 31
  %and.i249 = zext i8 %140 to i32
  %occupied.i250 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i249, i32 1
  %141 = ptrtoint ptr %occupied.i250 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %occupied.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i251 = icmp eq i8 %142, 0
  br i1 %tobool.not.i251, label %if.then.i253, label %do.body.i258

if.then.i253:                                     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp.i252 = icmp eq i8 %17, 3
  br i1 %cmp.i252, label %if.then5.i255, label %if.else.i256

if.then5.i255:                                    ; preds = %if.then.i253
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %credit_request_failed.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %credit_request_failed.i, align 4
  %inc.i254 = add i32 %144, 1
  store i32 %inc.i254, ptr %credit_request_failed.i, align 4
  br label %sw.epilog.thread

if.else.i256:                                     ; preds = %if.then.i253
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %packet_request_failed.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %packet_request_failed.i, align 4
  %inc7.i = add i32 %146, 1
  store i32 %inc7.i, ptr %packet_request_failed.i, align 4
  br label %sw.epilog.thread

do.body.i258:                                     ; preds = %sw.bb85
  %arrayidx2.i257 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i249
  %switch.tableidx432 = add i8 %17, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx432)
  %147 = icmp ult i8 %switch.tableidx432, 11
  br i1 %147, label %switch.lookup431, label %do.body.i258.brcmf_fws_get_tlv_name.exit.i282_crit_edge

do.body.i258.brcmf_fws_get_tlv_name.exit.i282_crit_edge: ; preds = %do.body.i258
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_get_tlv_name.exit.i282

switch.lookup431:                                 ; preds = %do.body.i258
  call void @__sanitizer_cov_trace_pc() #12
  %switch.idx.cast = zext i8 %switch.tableidx432 to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 2
  %name.i.i276 = getelementptr [17 x %struct.anon.133], ptr @brcmf_fws_tlv_names, i32 0, i32 %switch.offset, i32 1
  %148 = ptrtoint ptr %name.i.i276 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name.i.i276, align 4
  br label %brcmf_fws_get_tlv_name.exit.i282

brcmf_fws_get_tlv_name.exit.i282:                 ; preds = %switch.lookup431, %do.body.i258.brcmf_fws_get_tlv_name.exit.i282_crit_edge
  %retval.0.i.i278 = phi ptr [ %149, %switch.lookup431 ], [ @.str.52, %do.body.i258.brcmf_fws_get_tlv_name.exit.i282_crit_edge ]
  %150 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %add.ptr55, align 1
  %conv12.i = zext i8 %151 to i32
  %arrayidx13.i = getelementptr i8, ptr %signal_data.0367, i32 4
  %152 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %153 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_request_indicate, ptr noundef nonnull @.str.78, ptr noundef %retval.0.i.i278, i32 noundef %conv47.le, ptr noundef %arrayidx2.i257, i32 noundef %conv12.i, i32 noundef %conv14.i) #10
  %call2.i.i280 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i298) #10
  %154 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call2.i.i280, ptr %flags.i.i300, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp16.i = icmp eq i8 %17, 3
  %155 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %add.ptr55, align 1
  br i1 %cmp16.i, label %if.then18.i, label %if.else20.i

if.then18.i:                                      ; preds = %brcmf_fws_get_tlv_name.exit.i282
  call void @__sanitizer_cov_trace_pc() #12
  %requested_credit.i283 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i249, i32 8
  %157 = ptrtoint ptr %requested_credit.i283 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %requested_credit.i283, align 1
  br label %if.end22.i

if.else20.i:                                      ; preds = %brcmf_fws_get_tlv_name.exit.i282
  call void @__sanitizer_cov_trace_pc() #12
  %requested_packet.i284 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i249, i32 9
  %158 = ptrtoint ptr %requested_packet.i284 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %156, ptr %requested_packet.i284, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else20.i, %if.then18.i
  %159 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx13.i, align 1
  %ac_bitmap.i = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %desc.i247, i32 0, i32 %and.i249, i32 7
  %161 = ptrtoint ptr %ac_bitmap.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %ac_bitmap.i, align 2
  br label %sw.epilog.thread346.sink.split

sw.bb87:                                          ; preds = %if.end77.sw.bb87_crit_edge, %if.end77.sw.bb87_crit_edge461
  %162 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %status_le.0.copyload.i = load i32, ptr %add.ptr55, align 1
  %163 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %mode.i, align 2
  %165 = and i8 %164, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i286 = icmp eq i8 %165, 0
  br i1 %tobool.not.i286, label %sw.bb87.if.end.i290_crit_edge, label %if.then.i288

sw.bb87.if.end.i290_crit_edge:                    ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i290

if.then.i288:                                     ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i287 = getelementptr i8, ptr %signal_data.0367, i32 6
  %166 = ptrtoint ptr %arrayidx.i287 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 2)
  %seq_le.0.copyload.i = load i16, ptr %arrayidx.i287, align 1
  %167 = tail call i16 @llvm.bswap.i16(i16 %seq_le.0.copyload.i) #10
  br label %if.end.i290

if.end.i290:                                      ; preds = %if.then.i288, %sw.bb87.if.end.i290_crit_edge
  %seq.0.i = phi i16 [ %167, %if.then.i288 ], [ 0, %sw.bb87.if.end.i290_crit_edge ]
  %compcnt_offset.0.i = phi i32 [ 6, %if.then.i288 ], [ 4, %sw.bb87.if.end.i290_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %17)
  %cmp.i289 = icmp eq i8 %17, 19
  br i1 %cmp.i289, label %if.then8.i291, label %if.end.i290.brcmf_fws_txstatus_indicate.exit_crit_edge

if.end.i290.brcmf_fws_txstatus_indicate.exit_crit_edge: ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_txstatus_indicate.exit

if.then8.i291:                                    ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9.i = getelementptr i8, ptr %add.ptr55, i32 %compcnt_offset.0.i
  %168 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx9.i, align 1
  br label %brcmf_fws_txstatus_indicate.exit

brcmf_fws_txstatus_indicate.exit:                 ; preds = %if.then8.i291, %if.end.i290.brcmf_fws_txstatus_indicate.exit_crit_edge
  %compcnt.0.i = phi i8 [ %169, %if.then8.i291 ], [ 1, %if.end.i290.brcmf_fws_txstatus_indicate.exit_crit_edge ]
  %170 = tail call i32 @llvm.bswap.i32(i32 %status_le.0.copyload.i) #10
  %shr.i4.i = lshr i32 %170, 31
  %and.i1.i = lshr i32 %170, 8
  %shr.i2.i = and i32 %and.i1.i, 65535
  %and.i.i = lshr i32 %170, 27
  %171 = trunc i32 %and.i.i to i8
  %conv.i292 = and i8 %171, 15
  %conv12.i293 = zext i8 %compcnt.0.i to i32
  %172 = ptrtoint ptr %txs_indicate.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %txs_indicate.i, align 4
  %add13.i = add i32 %173, %conv12.i293
  store i32 %add13.i, ptr %txs_indicate.i, align 4
  %call2.i.i295 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i298) #10
  %174 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %call2.i.i295, ptr %flags.i.i300, align 4
  tail call fastcc void @brcmf_fws_txs_process(ptr noundef %call, i8 noundef zeroext %conv.i292, i32 noundef %shr.i2.i, i32 noundef %shr.i4.i, i16 noundef zeroext %seq.0.i, i8 noundef zeroext %compcnt.0.i) #10
  %175 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags.i.i300, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i.i298, i32 noundef %176) #10
  br label %sw.epilog.thread

sw.bb89:                                          ; preds = %if.end77
  %177 = ptrtoint ptr %fcmode.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %fcmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %178)
  %cmp.not.i = icmp eq i32 %178, 2
  br i1 %cmp.not.i, label %do.body1.i, label %do.body.i297

do.body.i297:                                     ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_fws_fifocreditback_indicate, ptr noundef nonnull @.str.79) #10
  br label %sw.epilog.thread

do.body1.i:                                       ; preds = %sw.bb89
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_fws_fifocreditback_indicate, ptr noundef nonnull @.str.80, ptr noundef %add.ptr55) #10
  %call2.i.i299 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i298) #10
  %179 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %call2.i.i299, ptr %flags.i.i300, align 4
  %180 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %add.ptr55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i329 = icmp eq i8 %181, 0
  br i1 %tobool.not.i329, label %do.body1.i.brcmf_fws_return_credits.exit340_crit_edge, label %if.end.i332

do.body1.i.brcmf_fws_return_credits.exit340_crit_edge: ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_return_credits.exit340

if.end.i332:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %fifo_credit_map.i330 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %fifo_credit_map.i330, align 4
  %or.i331 = or i32 %183, 1
  store i32 %or.i331, ptr %fifo_credit_map.i330, align 4
  %conv32.i333 = zext i8 %181 to i32
  %184 = ptrtoint ptr %arrayidx35.i334 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx35.i334, align 4
  %add36.i335 = add i32 %185, %conv32.i333
  %186 = ptrtoint ptr %arrayidx42.i337 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx42.i337, align 4
  %188 = tail call i32 @llvm.smin.i32(i32 %add36.i335, i32 %187)
  %189 = ptrtoint ptr %arrayidx35.i334 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %arrayidx35.i334, align 4
  br label %brcmf_fws_return_credits.exit340

brcmf_fws_return_credits.exit340:                 ; preds = %if.end.i332, %do.body1.i.brcmf_fws_return_credits.exit340_crit_edge
  %arrayidx.1.i = getelementptr i8, ptr %signal_data.0367, i32 3
  %190 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx.1.i, align 1
  tail call fastcc void @brcmf_fws_return_credits(ptr noundef %call, i8 noundef zeroext 1, i8 noundef zeroext %191) #10
  %arrayidx.2.i = getelementptr i8, ptr %signal_data.0367, i32 4
  %192 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx.2.i, align 1
  tail call fastcc void @brcmf_fws_return_credits(ptr noundef %call, i8 noundef zeroext 2, i8 noundef zeroext %193) #10
  %arrayidx.3.i = getelementptr i8, ptr %signal_data.0367, i32 5
  %194 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx.3.i, align 1
  tail call fastcc void @brcmf_fws_return_credits(ptr noundef %call, i8 noundef zeroext 3, i8 noundef zeroext %195) #10
  %arrayidx.4.i = getelementptr i8, ptr %signal_data.0367, i32 6
  %196 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i317 = icmp eq i8 %197, 0
  br i1 %tobool.not.i317, label %brcmf_fws_return_credits.exit340.brcmf_fws_return_credits.exit328_crit_edge, label %if.end.i320

brcmf_fws_return_credits.exit340.brcmf_fws_return_credits.exit328_crit_edge: ; preds = %brcmf_fws_return_credits.exit340
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_return_credits.exit328

if.end.i320:                                      ; preds = %brcmf_fws_return_credits.exit340
  call void @__sanitizer_cov_trace_pc() #12
  %198 = ptrtoint ptr %fifo_credit_map.i330 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %fifo_credit_map.i330, align 4
  %or.i319 = or i32 %199, 16
  store i32 %or.i319, ptr %fifo_credit_map.i330, align 4
  %conv32.i321 = zext i8 %197 to i32
  %200 = ptrtoint ptr %arrayidx35.i322 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx35.i322, align 4
  %add36.i323 = add i32 %201, %conv32.i321
  %202 = ptrtoint ptr %arrayidx42.i325 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx42.i325, align 4
  %204 = tail call i32 @llvm.smin.i32(i32 %add36.i323, i32 %203)
  %205 = ptrtoint ptr %arrayidx35.i322 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %arrayidx35.i322, align 4
  br label %brcmf_fws_return_credits.exit328

brcmf_fws_return_credits.exit328:                 ; preds = %if.end.i320, %brcmf_fws_return_credits.exit340.brcmf_fws_return_credits.exit328_crit_edge
  %arrayidx.5.i = getelementptr i8, ptr %signal_data.0367, i32 7
  %206 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool.not.i314 = icmp eq i8 %207, 0
  br i1 %tobool.not.i314, label %brcmf_fws_return_credits.exit328.brcmf_fws_return_credits.exit_crit_edge, label %if.end.i316

brcmf_fws_return_credits.exit328.brcmf_fws_return_credits.exit_crit_edge: ; preds = %brcmf_fws_return_credits.exit328
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_return_credits.exit

if.end.i316:                                      ; preds = %brcmf_fws_return_credits.exit328
  call void @__sanitizer_cov_trace_pc() #12
  %208 = ptrtoint ptr %fifo_credit_map.i330 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %fifo_credit_map.i330, align 4
  %or.i = or i32 %209, 32
  store i32 %or.i, ptr %fifo_credit_map.i330, align 4
  %conv32.i = zext i8 %207 to i32
  %210 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx35.i, align 4
  %add36.i = add i32 %211, %conv32.i
  %212 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx42.i, align 4
  %214 = tail call i32 @llvm.smin.i32(i32 %add36.i, i32 %213)
  %215 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %arrayidx35.i, align 4
  br label %brcmf_fws_return_credits.exit

brcmf_fws_return_credits.exit:                    ; preds = %if.end.i316, %brcmf_fws_return_credits.exit328.brcmf_fws_return_credits.exit_crit_edge
  %216 = ptrtoint ptr %fifo_credit_map.i330 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %fifo_credit_map.i330, align 4
  %218 = ptrtoint ptr %fifo_delay_map.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %fifo_delay_map.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_fws_fifocreditback_indicate, ptr noundef nonnull @.str.81, i32 noundef %217, i32 noundef %219) #10
  %220 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %flags.i.i300, align 4
  br label %sw.epilog.thread346.sink.split

sw.bb91:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %222 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %add.ptr55, align 1
  %conv.i302 = sext i8 %223 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16, ptr noundef nonnull @__func__.brcmf_fws_rssi_indicate, ptr noundef nonnull @.str.82, i32 noundef %conv.i302) #10
  br label %sw.epilog.thread

sw.bb93:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i303 = getelementptr i8, ptr %signal_data.0367, i32 4
  %224 = ptrtoint ptr %arrayidx.i303 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %timestamp.0.copyload.i = load i32, ptr %arrayidx.i303, align 1
  %arrayidx1.i = getelementptr i8, ptr %signal_data.0367, i32 3
  %225 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx1.i, align 1
  %conv.i304 = zext i8 %226 to i32
  %227 = tail call i32 @llvm.bswap.i32(i32 %timestamp.0.copyload.i) #10
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16, ptr noundef nonnull @__func__.brcmf_fws_dbg_seqnum_check, ptr noundef nonnull @.str.83, i32 noundef %conv.i304, i32 noundef %227) #10
  br label %sw.epilog.thread

sw.default:                                       ; preds = %if.end77.sw.default_crit_edge, %if.end70.sw.default_crit_edge
  %228 = ptrtoint ptr %tlv_invalid_type.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %tlv_invalid_type.i, align 4
  %inc97 = add i32 %229, 1
  store i32 %inc97, ptr %tlv_invalid_type.i, align 4
  br label %sw.epilog.thread

sw.epilog:                                        ; preds = %sw.epilog.i, %if.end10.i
  %call2.i.i241.sink = phi i32 [ %call2.i.i241, %sw.epilog.i ], [ %125, %if.end10.i ]
  %err.0 = phi i32 [ %ret.0.i244, %sw.epilog.i ], [ %ret.0.i, %if.end10.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i.i298, i32 noundef %call2.i.i241.sink) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err.0)
  %cmp98 = icmp eq i32 %err.0, 1
  br i1 %cmp98, label %sw.epilog.sw.epilog.thread346_crit_edge, label %sw.epilog.sw.epilog.thread_crit_edge

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

sw.epilog.sw.epilog.thread346_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread346

sw.epilog.thread346.sink.split:                   ; preds = %brcmf_fws_return_credits.exit, %if.end22.i
  %.sink = phi i32 [ %221, %brcmf_fws_return_credits.exit ], [ %call2.i.i280, %if.end22.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i.i298, i32 noundef %.sink) #10
  br label %sw.epilog.thread346

sw.epilog.thread346:                              ; preds = %sw.epilog.thread346.sink.split, %sw.epilog.sw.epilog.thread346_crit_edge
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.thread346, %sw.epilog.sw.epilog.thread_crit_edge, %sw.default, %sw.bb93, %sw.bb91, %do.body.i297, %brcmf_fws_txstatus_indicate.exit, %if.else.i256, %if.then5.i255, %fail.i, %if.then.i225, %do.end58.i, %do.body39.i.sw.epilog.thread_crit_edge, %brcmf_fws_macdesc_set_name.exit50.i, %if.else18.i, %brcmf_fws_macdesc_set_name.exit.i, %if.else.i, %do.body.i, %sw.bb
  %230 = phi i32 [ 1, %sw.epilog.thread346 ], [ %status.0.ph376, %sw.epilog.sw.epilog.thread_crit_edge ], [ %status.0.ph376, %sw.default ], [ %status.0.ph376, %sw.bb93 ], [ %status.0.ph376, %sw.bb91 ], [ %status.0.ph376, %brcmf_fws_txstatus_indicate.exit ], [ %status.0.ph376, %sw.bb ], [ %status.0.ph376, %do.body.i ], [ %status.0.ph376, %if.else.i ], [ %status.0.ph376, %brcmf_fws_macdesc_set_name.exit.i ], [ %status.0.ph376, %if.else18.i ], [ %status.0.ph376, %brcmf_fws_macdesc_set_name.exit50.i ], [ %status.0.ph376, %do.body39.i.sw.epilog.thread_crit_edge ], [ %status.0.ph376, %do.end58.i ], [ %status.0.ph376, %if.then.i225 ], [ %status.0.ph376, %fail.i ], [ %status.0.ph376, %if.else.i256 ], [ %status.0.ph376, %if.then5.i255 ], [ %status.0.ph376, %do.body.i297 ]
  %add.ptr104 = getelementptr i8, ptr %signal_data.0367, i32 %add
  %231 = trunc i32 %add to i16
  %conv109 = sub i16 %data_len.0368, %231
  %cmp45366 = icmp sgt i16 %conv109, 0
  br i1 %cmp45366, label %sw.epilog.thread.while.body.lr.ph_crit_edge, label %sw.epilog.thread.while.end_crit_edge

sw.epilog.thread.while.end_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

sw.epilog.thread.while.body.lr.ph_crit_edge:      ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

while.end.loopexit:                               ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %232 = call i16 @llvm.smin.i16(i16 %data_len.0.ph375, i16 1)
  %smin.le = add nsw i16 %232, -1
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %sw.epilog.thread.while.end_crit_edge
  %status.0.ph.lcssa361 = phi i32 [ %status.0.ph376, %while.end.loopexit ], [ %230, %sw.epilog.thread.while.end_crit_edge ]
  %data_len.0.lcssa = phi i16 [ %smin.le, %while.end.loopexit ], [ %conv109, %sw.epilog.thread.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %data_len.0.lcssa)
  %cmp111.not = icmp eq i16 %data_len.0.lcssa, 0
  br i1 %cmp111.not, label %while.end.if.end116_crit_edge, label %while.end.if.then113_crit_edge

while.end.if.then113_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then113

while.end.if.end116_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then113:                                       ; preds = %while.end.if.then113_crit_edge, %brcmf_fws_get_tlv_len.exit217.if.then113_crit_edge, %brcmf_fws_get_tlv_len.exit.if.then113_crit_edge, %if.end42.if.then113_crit_edge
  %status.0.ph362 = phi i32 [ %status.0.ph.lcssa361, %while.end.if.then113_crit_edge ], [ 0, %if.end42.if.then113_crit_edge ], [ %status.0.ph376, %brcmf_fws_get_tlv_len.exit217.if.then113_crit_edge ], [ %status.0.ph376, %brcmf_fws_get_tlv_len.exit.if.then113_crit_edge ]
  %233 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %stats, align 4
  %inc115 = add i32 %234, 1
  store i32 %inc115, ptr %stats, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %while.end.if.end116_crit_edge
  %status.0.ph363 = phi i32 [ %status.0.ph362, %if.then113 ], [ %status.0.ph.lcssa361, %while.end.if.end116_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.0.ph363)
  %cmp117 = icmp eq i32 %status.0.ph363, 1
  br i1 %cmp117, label %if.then119, label %if.end116.if.end120_crit_edge

if.end116.if.end120_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then119:                                       ; preds = %if.end116
  %fifo_credit_map.i305 = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 16
  %235 = ptrtoint ptr %fifo_credit_map.i305 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %fifo_credit_map.i305, align 4
  %fifo_delay_map.i306 = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 17
  %237 = ptrtoint ptr %fifo_delay_map.i306 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %fifo_delay_map.i306, align 4
  %and.i307 = and i32 %238, %236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i307)
  %tobool.not.i308 = icmp eq i32 %and.i307, 0
  br i1 %tobool.not.i308, label %lor.lhs.false.i, label %if.then119.if.then.i312_crit_edge

if.then119.if.then.i312_crit_edge:                ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i312

lor.lhs.false.i:                                  ; preds = %if.then119
  %creditmap_received.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 20
  %239 = ptrtoint ptr %creditmap_received.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %creditmap_received.i.i, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.not.i.i309 = icmp eq i8 %240, 0
  br i1 %tobool.not.i.i309, label %land.lhs.true.i, label %brcmf_fws_fc_active.exit.i

brcmf_fws_fc_active.exit.i:                       ; preds = %lor.lhs.false.i
  %fcmode.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 5
  %241 = ptrtoint ptr %fcmode.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %fcmode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %cmp.i.i310 = icmp ne i32 %242, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool2.not.i = icmp eq i32 %238, 0
  %or.cond.i = select i1 %cmp.i.i310, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %brcmf_fws_fc_active.exit.i.if.end120_crit_edge, label %brcmf_fws_fc_active.exit.i.if.then.i312_crit_edge

brcmf_fws_fc_active.exit.i.if.then.i312_crit_edge: ; preds = %brcmf_fws_fc_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i312

brcmf_fws_fc_active.exit.i.if.end120_crit_edge:   ; preds = %brcmf_fws_fc_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool2.not.old.i = icmp eq i32 %238, 0
  br i1 %tobool2.not.old.i, label %land.lhs.true.i.if.end120_crit_edge, label %land.lhs.true.i.if.then.i312_crit_edge

land.lhs.true.i.if.then.i312_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i312

land.lhs.true.i.if.end120_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then.i312:                                     ; preds = %land.lhs.true.i.if.then.i312_crit_edge, %brcmf_fws_fc_active.exit.i.if.then.i312_crit_edge, %if.then119.if.then.i312_crit_edge
  %fws_wq.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 9
  %243 = ptrtoint ptr %fws_wq.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %fws_wq.i, align 4
  %fws_dequeue_work.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 10
  %call.i.i311 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %244, ptr noundef %fws_dequeue_work.i) #10
  br label %if.end120

if.end120:                                        ; preds = %if.then.i312, %land.lhs.true.i.if.end120_crit_edge, %brcmf_fws_fc_active.exit.i.if.end120_crit_edge, %if.end116.if.end120_crit_edge
  %conv121 = sext i16 %spec.select to i32
  %call122 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv121) #10
  %245 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %cmp124 = icmp eq i32 %246, 0
  br i1 %cmp124, label %if.then126, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then126:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  %header_only_pkt = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 2
  %247 = ptrtoint ptr %header_only_pkt to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %header_only_pkt, align 4
  %inc128 = add i32 %248, 1
  store i32 %inc128, ptr %header_only_pkt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %if.end120.cleanup_crit_edge, %if.then39, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drvr_to_fws(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fws_process_skb(ptr nocapture noundef readonly %ifp, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %call = tail call ptr @drvr_to_fws(ptr noundef %1) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %h_proto, align 1
  %conv = zext i16 %8 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_fws_process_skb, ptr noundef nonnull @.str.21, i32 noundef %conv) #10
  %if_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %if_flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %if_flags, align 2
  %state = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %11 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifidx, align 4
  %conv7 = trunc i32 %12 to i16
  %conv3.i = and i16 %conv7, 15
  store i16 %conv3.i, ptr %if_flags, align 2
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %15 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %priority, align 4
  %conv8 = trunc i32 %16 to i8
  %call9 = tail call zeroext i8 @brcmf_map_prio_to_aci(ptr noundef %14, i8 noundef zeroext %conv8) #10
  %conv10 = zext i8 %call9 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fifo.0 = phi i32 [ 4, %entry.if.end_crit_edge ], [ %conv10, %if.then ]
  %spinlock.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %flags.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2.i, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fifo.0)
  %cmp.not = icmp ne i32 %fifo.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fifo.0)
  %cmp12 = icmp ult i32 %fifo.0, 4
  %or.cond = and i1 %cmp.not, %cmp12
  br i1 %or.cond, label %if.then14, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 10
  %borrow_defer_timestamp = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 18
  %19 = ptrtoint ptr %borrow_defer_timestamp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %borrow_defer_timestamp, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %if.end15.if.end.i_crit_edge, label %land.lhs.true.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end15
  %fws_desc.i = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 5
  %23 = ptrtoint ptr %fws_desc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fws_desc.i, align 4
  %tobool2.not.i = icmp eq ptr %24, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.brcmf_fws_macdesc_find.exit_crit_edge

land.lhs.true.i.brcmf_fws_macdesc_find.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_find.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end15.if.end.i_crit_edge
  %cmp.i.i = icmp eq ptr %3, null
  br i1 %cmp.i.i, label %if.end.i.if.then6.i_crit_edge, label %if.end.i.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

if.end.i.i:                                       ; preds = %if.end.i
  %desc.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %i.017.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %if.end7.i.i.for.body.i.i_crit_edge ]
  %entry1.015.i.i = phi ptr [ %desc.i.i, %if.end.i.i ], [ %incdec.ptr.i.i, %if.end7.i.i.for.body.i.i_crit_edge ]
  %occupied.i.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %occupied.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %occupied.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end7.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %ea3.i.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 0, i32 10
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ea3.i.i, ptr noundef nonnull dereferenceable(6) %3, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool5.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool5.not.i.i, label %brcmf_fws_macdesc_lookup.exit.i, label %land.lhs.true.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.if.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.if.end7.i.i_crit_edge, %for.body.i.i.if.end7.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %entry1.015.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %if.end7.i.i.if.then6.i_crit_edge, label %if.end7.i.i.for.body.i.i_crit_edge

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end7.i.i.if.then6.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

brcmf_fws_macdesc_lookup.exit.i:                  ; preds = %land.lhs.true.i.i
  %cmp.i13.i = icmp ugt ptr %entry1.015.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i13.i, label %brcmf_fws_macdesc_lookup.exit.i.if.then6.i_crit_edge, label %brcmf_fws_macdesc_lookup.exit.i.brcmf_fws_macdesc_find.exit_crit_edge

brcmf_fws_macdesc_lookup.exit.i.brcmf_fws_macdesc_find.exit_crit_edge: ; preds = %brcmf_fws_macdesc_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_find.exit

brcmf_fws_macdesc_lookup.exit.i.if.then6.i_crit_edge: ; preds = %brcmf_fws_macdesc_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

if.then6.i:                                       ; preds = %brcmf_fws_macdesc_lookup.exit.i.if.then6.i_crit_edge, %if.end7.i.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %fws_desc7.i = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 5
  %27 = ptrtoint ptr %fws_desc7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fws_desc7.i, align 4
  br label %brcmf_fws_macdesc_find.exit

brcmf_fws_macdesc_find.exit:                      ; preds = %if.then6.i, %brcmf_fws_macdesc_lookup.exit.i.brcmf_fws_macdesc_find.exit_crit_edge, %land.lhs.true.i.brcmf_fws_macdesc_find.exit_crit_edge
  %entry1.0.i = phi ptr [ %28, %if.then6.i ], [ %entry1.015.i.i, %brcmf_fws_macdesc_lookup.exit.i.brcmf_fws_macdesc_find.exit_crit_edge ], [ %24, %land.lhs.true.i.brcmf_fws_macdesc_find.exit_crit_edge ]
  %mac = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %29 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry1.0.i, ptr %mac, align 4
  %.lobit = lshr exact i32 %6, 24
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_fws_process_skb, ptr noundef nonnull @.str.22, ptr noundef %entry1.0.i, ptr noundef %3, i32 noundef %.lobit, i32 noundef %fifo.0) #10
  %htod.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %htod.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %htod.i, align 4
  %htod_seq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %htod_seq.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %htod_seq.i, align 4
  %hanger.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 4
  %slot_pos.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %slot_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slot_pos.i.i, align 4
  %add.i.i = add i32 %33, 1
  %rem.i.i = urem i32 %add.i.i, 3072
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i, i32 %33)
  %cmp.not18.i.i = icmp eq i32 %rem.i.i, %33
  br i1 %cmp.not18.i.i, label %brcmf_fws_macdesc_find.exit.do.body.i.i_crit_edge, label %brcmf_fws_macdesc_find.exit.while.body.i.i_crit_edge

brcmf_fws_macdesc_find.exit.while.body.i.i_crit_edge: ; preds = %brcmf_fws_macdesc_find.exit
  br label %while.body.i.i

brcmf_fws_macdesc_find.exit.do.body.i.i_crit_edge: ; preds = %brcmf_fws_macdesc_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i66.while.body.i.i_crit_edge, %brcmf_fws_macdesc_find.exit.while.body.i.i_crit_edge
  %i.019.i.i = phi i32 [ %spec.store.select.i.i, %if.end.i.i66.while.body.i.i_crit_edge ], [ %rem.i.i, %brcmf_fws_macdesc_find.exit.while.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 4, i32 6, i32 %i.019.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp2.i.i = icmp eq i32 %35, 1
  br i1 %cmp2.i.i, label %if.then.i.i, label %if.end.i.i66

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %slot_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.019.i.i, ptr %slot_pos.i.i, align 4
  br label %brcmf_fws_hanger_get_free_slot.exit.i

if.end.i.i66:                                     ; preds = %while.body.i.i
  %inc.i.i65 = add i32 %i.019.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %inc.i.i65)
  %cmp4.i.i = icmp eq i32 %inc.i.i65, 3072
  %spec.store.select.i.i = select i1 %cmp4.i.i, i32 0, i32 %inc.i.i65
  %cmp.not.i.i = icmp eq i32 %spec.store.select.i.i, %33
  br i1 %cmp.not.i.i, label %if.end.i.i66.do.body.i.i_crit_edge, label %if.end.i.i66.while.body.i.i_crit_edge

if.end.i.i66.while.body.i.i_crit_edge:            ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i66.do.body.i.i_crit_edge:               ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i66.do.body.i.i_crit_edge, %brcmf_fws_macdesc_find.exit.do.body.i.i_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_get_free_slot, ptr noundef nonnull @.str.84) #10
  %failed_slotfind.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %failed_slotfind.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %failed_slotfind.i.i, align 4
  %inc7.i.i = add i32 %38, 1
  store i32 %inc7.i.i, ptr %failed_slotfind.i.i, align 4
  br label %brcmf_fws_hanger_get_free_slot.exit.i

brcmf_fws_hanger_get_free_slot.exit.i:            ; preds = %do.body.i.i, %if.then.i.i
  %i.1.i.i = phi i32 [ %i.019.i.i, %if.then.i.i ], [ 3072, %do.body.i.i ]
  %shl.i.i = shl i32 %i.1.i.i, 8
  %and.i.i = and i32 %shl.i.i, 16776960
  %39 = ptrtoint ptr %htod.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %htod.i, align 4
  %and1.i.i = and i32 %40, -16776961
  %or.i.i = or i32 %and1.i.i, %and.i.i
  store i32 %or.i.i, ptr %htod.i, align 4
  %41 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mac, align 4
  %arrayidx.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %42, i32 0, i32 11, i32 %fifo.0
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  %conv.i67 = zext i8 %44 to i32
  %and1.i30.i = and i32 %or.i.i, -117440768
  %shl.i32.i = shl nuw i32 %fifo.0, 24
  %and.i33.i = and i32 %shl.i32.i, 117440512
  %or.i31.i = or i32 %and1.i30.i, %and.i33.i
  %or.i35.i = or i32 %or.i31.i, %conv.i67
  store i32 %or.i35.i, ptr %htod.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3071, i32 %i.1.i.i)
  %cmp.i.i68 = icmp ugt i32 %i.1.i.i, 3071
  br i1 %cmp.i.i68, label %brcmf_fws_hanger_get_free_slot.exit.i.do.end35_crit_edge, label %if.end.i37.i

brcmf_fws_hanger_get_free_slot.exit.i.do.end35_crit_edge: ; preds = %brcmf_fws_hanger_get_free_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.end.i37.i:                                     ; preds = %brcmf_fws_hanger_get_free_slot.exit.i
  %arrayidx.i36.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 4, i32 6, i32 %i.1.i.i
  %45 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp1.not.i.i = icmp eq i32 %46, 1
  br i1 %cmp1.not.i.i, label %if.then30, label %brcmf_fws_hanger_pushpkt.exit.i

brcmf_fws_hanger_pushpkt.exit.i:                  ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_pushpkt, ptr noundef nonnull @.str.85) #10
  %failed_to_push.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %failed_to_push.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %failed_to_push.i.i, align 4
  %inc10.i.i = add i32 %48, 1
  store i32 %inc10.i.i, ptr %failed_to_push.i.i, align 4
  br label %do.end35

if.then30:                                        ; preds = %if.end.i37.i
  %49 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %arrayidx.i36.i, align 4
  %pkt9.i.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 4, i32 6, i32 %i.1.i.i, i32 1
  %50 = ptrtoint ptr %pkt9.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %skb, ptr %pkt9.i.i, align 4
  %51 = ptrtoint ptr %hanger.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hanger.i, align 4
  %inc10.i46.i = add i32 %52, 1
  store i32 %inc10.i46.i, ptr %hanger.i, align 4
  %53 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mac, align 4
  %arrayidx14.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %54, i32 0, i32 11, i32 %fifo.0
  %55 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx14.i, align 1
  %inc.i = add i8 %56, 1
  store i8 %inc.i, ptr %arrayidx14.i, align 1
  %call31 = tail call fastcc i32 @brcmf_fws_enq(ptr noundef %call, i32 noundef 1, i32 noundef %fifo.0, ptr noundef %skb)
  %fifo_credit_map.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 16
  %57 = ptrtoint ptr %fifo_credit_map.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fifo_credit_map.i, align 4
  %fifo_delay_map.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 17
  %59 = ptrtoint ptr %fifo_delay_map.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fifo_delay_map.i, align 4
  %and.i = and i32 %60, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then30.if.then.i74_crit_edge

if.then30.if.then.i74_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i74

lor.lhs.false.i:                                  ; preds = %if.then30
  %creditmap_received.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 20
  %61 = ptrtoint ptr %creditmap_received.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %creditmap_received.i.i, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i70 = icmp eq i8 %62, 0
  br i1 %tobool.not.i.i70, label %land.lhs.true.i73, label %brcmf_fws_fc_active.exit.i

brcmf_fws_fc_active.exit.i:                       ; preds = %lor.lhs.false.i
  %fcmode.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 5
  %63 = ptrtoint ptr %fcmode.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fcmode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i.i71 = icmp ne i32 %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool2.not.i72 = icmp eq i32 %60, 0
  %or.cond.i = select i1 %cmp.i.i71, i1 true, i1 %tobool2.not.i72
  br i1 %or.cond.i, label %brcmf_fws_fc_active.exit.i.if.end38_crit_edge, label %brcmf_fws_fc_active.exit.i.if.then.i74_crit_edge

brcmf_fws_fc_active.exit.i.if.then.i74_crit_edge: ; preds = %brcmf_fws_fc_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i74

brcmf_fws_fc_active.exit.i.if.end38_crit_edge:    ; preds = %brcmf_fws_fc_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true.i73:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool2.not.old.i = icmp eq i32 %60, 0
  br i1 %tobool2.not.old.i, label %land.lhs.true.i73.if.end38_crit_edge, label %land.lhs.true.i73.if.then.i74_crit_edge

land.lhs.true.i73.if.then.i74_crit_edge:          ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i74

land.lhs.true.i73.if.end38_crit_edge:             ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then.i74:                                      ; preds = %land.lhs.true.i73.if.then.i74_crit_edge, %brcmf_fws_fc_active.exit.i.if.then.i74_crit_edge, %if.then30.if.then.i74_crit_edge
  %fws_wq.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 9
  %65 = ptrtoint ptr %fws_wq.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fws_wq.i, align 4
  %fws_dequeue_work.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %fws_dequeue_work.i) #10
  br label %if.end38

do.end35:                                         ; preds = %brcmf_fws_hanger_pushpkt.exit.i, %brcmf_fws_hanger_get_free_slot.exit.i.do.end35_crit_edge
  %generic_error.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 7
  %67 = ptrtoint ptr %generic_error.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %generic_error.i, align 4
  %inc15.i = add i32 %68, 1
  store i32 %inc15.i, ptr %generic_error.i, align 4
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %70, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.brcmf_fws_process_skb) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %if.then.i74, %land.lhs.true.i73.if.end38_crit_edge, %brcmf_fws_fc_active.exit.i.if.end38_crit_edge
  %rc.0 = phi i32 [ -12, %do.end35 ], [ 0, %brcmf_fws_fc_active.exit.i.if.end38_crit_edge ], [ 0, %land.lhs.true.i73.if.end38_crit_edge ], [ 0, %if.then.i74 ]
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %72) #10
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @brcmf_map_prio_to_aci(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_fws_enq(ptr noundef %fws, i32 noundef %state, i32 noundef %fifo, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %fifo, 1
  %delayq_full_error = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 15
  %mac = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 3, i32 16
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fws, align 4
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef %p) #13
  br label %cleanup

do.body6:                                         ; preds = %entry
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef %fifo, ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp9 = icmp eq i32 %state, 2
  br i1 %cmp9, label %if.then10, label %if.else62

if.then10:                                        ; preds = %do.body6
  %add = or i32 %mul, 1
  %supprq_full_error = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 16
  %len.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12, i32 3
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len.i, align 2
  %max.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp.i.not = icmp ult i16 %7, %9
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.then10.if.then13_crit_edge

if.then10.if.then13_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.then10
  %qlen.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12, i32 4, i32 %add, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i, align 4
  %max.i155 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12, i32 4, i32 %add, i32 1
  %12 = ptrtoint ptr %max.i155 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max.i155, align 4
  %conv.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp.i156.not = icmp ult i32 %11, %conv.i
  br i1 %cmp.i156.not, label %if.end15, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.then10.if.then13_crit_edge
  %14 = ptrtoint ptr %supprq_full_error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %supprq_full_error, align 4
  %add14 = add i32 %15, 1
  store i32 %add14, ptr %supprq_full_error, align 4
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12, i32 4, i32 %add
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %cmp.i157 = icmp eq ptr %17, %arrayidx
  %spec.store.select.i = select i1 %cmp.i157, ptr null, ptr %17
  %prev.i = getelementptr inbounds %struct.anon.66, ptr %arrayidx, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i158 = icmp eq ptr %19, %arrayidx
  %spec.store.select.i159 = select i1 %cmp.i158, ptr null, ptr %19
  %htod = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %htod to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %htod, align 4
  %and.i = and i32 %21, 255
  br label %while.cond

while.cond:                                       ; preds = %if.end34.while.cond_crit_edge, %if.end15
  %p_tail.0 = phi ptr [ %spec.store.select.i159, %if.end15 ], [ %25, %if.end34.while.cond_crit_edge ]
  %cmp21.not = icmp eq ptr %spec.store.select.i, %p_tail.0
  br i1 %cmp21.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %htod24 = getelementptr inbounds %struct.sk_buff, ptr %p_tail.0, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %htod24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %htod24, align 4
  %and.i160 = and i32 %23, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i160)
  %cmp26 = icmp ugt i32 %and.i, %and.i160
  %sub = sub nsw i32 %and.i, %and.i160
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub)
  %cmp27 = icmp ult i32 %sub, 128
  %or.cond = and i1 %cmp26, %cmp27
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %lor.lhs.false28

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

lor.lhs.false28:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i160)
  %cmp29 = icmp ult i32 %and.i, %and.i160
  %sub31 = sub nsw i32 %and.i160, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub31)
  %cmp32 = icmp ugt i32 %sub31, 128
  %or.cond152 = and i1 %cmp29, %cmp32
  br i1 %or.cond152, label %lor.lhs.false28.while.end_crit_edge, label %if.end34

lor.lhs.false28.while.end_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end34:                                         ; preds = %lor.lhs.false28
  %prev.i.i = getelementptr inbounds %struct.anon.45, ptr %p_tail.0, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %25, %arrayidx
  br i1 %cmp.i.i, label %do.body2.i, label %if.end34.while.cond_crit_edge, !prof !253

if.end34.while.cond_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.body2.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1682, 0\0A.popsection", ""() #10, !srcloc !255
  unreachable

while.end:                                        ; preds = %lor.lhs.false28.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %p_tail.0.lcssa = phi ptr [ %p_tail.0, %lor.lhs.false28.while.end_crit_edge ], [ %p_tail.0, %while.body.while.end_crit_edge ], [ %spec.store.select.i, %while.cond.while.end_crit_edge ]
  %cmp36 = icmp eq ptr %p_tail.0.lcssa, null
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %28 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx, ptr %p, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.45, ptr %p, i32 0, i32 1
  %29 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %prev10.i.i.i, align 4
  br label %if.end54

if.else:                                          ; preds = %while.end
  %htod40 = getelementptr inbounds %struct.sk_buff, ptr %p_tail.0.lcssa, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %htod40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %htod40, align 4
  %and.i162 = and i32 %31, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i162)
  %cmp42 = icmp ugt i32 %and.i, %and.i162
  %sub44 = sub nsw i32 %and.i, %and.i162
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub44)
  %cmp45 = icmp ult i32 %sub44, 128
  %or.cond153 = and i1 %cmp42, %cmp45
  br i1 %or.cond153, label %if.else.if.then51_crit_edge, label %lor.lhs.false46

if.else.if.then51_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

lor.lhs.false46:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i162)
  %cmp47 = icmp ult i32 %and.i, %and.i162
  %sub49 = sub nsw i32 %and.i162, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub49)
  %cmp50 = icmp ugt i32 %sub49, 128
  %or.cond154 = and i1 %cmp47, %cmp50
  br i1 %or.cond154, label %lor.lhs.false46.if.then51_crit_edge, label %if.else52

lor.lhs.false46.if.then51_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false46.if.then51_crit_edge, %if.else.if.then51_crit_edge
  %32 = ptrtoint ptr %p_tail.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p_tail.0.lcssa, align 4
  %34 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %33, ptr %p, align 8
  %prev10.i.i = getelementptr inbounds %struct.anon.45, ptr %p, i32 0, i32 1
  %35 = ptrtoint ptr %prev10.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %p_tail.0.lcssa, ptr %prev10.i.i, align 4
  %prev17.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %33, i32 0, i32 1
  br label %if.end54

if.else52:                                        ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  %prev = getelementptr inbounds %struct.anon.45, ptr %p_tail.0.lcssa, i32 0, i32 1
  %36 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev, align 4
  %38 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %p_tail.0.lcssa, ptr %p, align 8
  %prev10.i = getelementptr inbounds %struct.anon.45, ptr %p, i32 0, i32 1
  %39 = ptrtoint ptr %prev10.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %prev10.i, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then51, %if.then37
  %prev17.i.i.sink = phi ptr [ %prev17.i.i, %if.then51 ], [ %prev, %if.else52 ], [ %prev.i, %if.then37 ]
  %p_tail.0.lcssa.sink = phi ptr [ %p_tail.0.lcssa, %if.then51 ], [ %37, %if.else52 ], [ %27, %if.then37 ]
  %40 = ptrtoint ptr %prev17.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %p, ptr %prev17.i.i.sink, align 4
  %41 = ptrtoint ptr %p_tail.0.lcssa.sink to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %p, ptr %p_tail.0.lcssa.sink, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx, i32 0, i32 1
  %42 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen.i.i, align 4
  %add.i.i = add i32 %43, 1
  store volatile i32 %add.i.i, ptr %qlen.i.i, align 4
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %len.i, align 2
  %inc = add i16 %45, 1
  store i16 %inc, ptr %len.i, align 2
  %hi_prec = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12, i32 1
  %46 = ptrtoint ptr %hi_prec to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hi_prec, align 2
  %conv = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp55 = icmp sgt i32 %add, %conv
  br i1 %cmp55, label %if.then57, label %if.end54.if.end70_crit_edge

if.end54.if.end70_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %48 = trunc i32 %add to i16
  %conv59 = and i16 %48, 255
  %49 = ptrtoint ptr %hi_prec to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv59, ptr %hi_prec, align 2
  br label %if.end70

if.else62:                                        ; preds = %do.body6
  %psq63 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12
  %call64 = tail call ptr @brcmu_pktq_penq(ptr noundef %psq63, i32 noundef %mul, ptr noundef %p) #10
  %cmp65 = icmp eq ptr %call64, null
  br i1 %cmp65, label %if.then67, label %if.else62.if.end70_crit_edge

if.else62.if.end70_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then67:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %delayq_full_error to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delayq_full_error, align 4
  %add68 = add i32 %51, 1
  store i32 %add68, ptr %delayq_full_error, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.else62.if.end70_crit_edge, %if.then57, %if.end54.if.end70_crit_edge
  %shl = shl nuw i32 1, %fifo
  %fifo_delay_map = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 17
  %52 = ptrtoint ptr %fifo_delay_map to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fifo_delay_map, align 4
  %or = or i32 %53, %shl
  store i32 %or, ptr %fifo_delay_map, align 4
  %arrayidx71 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 11, i32 %fifo
  %54 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx71, align 4
  %inc72 = add i32 %55, 1
  store i32 %inc72, ptr %arrayidx71, align 4
  %state75 = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 3, i32 12
  %56 = ptrtoint ptr %state75 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %state, ptr %state75, align 4
  tail call fastcc void @brcmf_fws_tim_update(ptr noundef %fws, ptr noundef nonnull %1, i32 noundef %fifo, i1 noundef zeroext true)
  %psq77 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12
  %if_flags = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 3, i32 2
  %57 = ptrtoint ptr %if_flags to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %if_flags, align 2
  %59 = trunc i16 %58 to i8
  %conv81 = and i8 %59, 15
  tail call fastcc void @brcmf_fws_flow_control_check(ptr noundef %fws, ptr noundef %psq77, i8 noundef zeroext %conv81)
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then67, %if.then13, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ -23, %if.then13 ], [ 0, %if.end70 ], [ -23, %if.then67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fws_reset_interface(ptr noundef %ifp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fws_desc = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 5
  %0 = ptrtoint ptr %fws_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fws_desc, align 4
  %bsscfgidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 7
  %2 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsscfgidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_reset_interface, ptr noundef nonnull @.str.24, i32 noundef %3) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_addr = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 8
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %4 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifidx, align 4
  %conv = trunc i32 %5 to i8
  %conv.i = and i32 %5, 255
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_init, ptr noundef nonnull @.str.89, ptr noundef nonnull %1, ptr noundef %mac_addr, i32 noundef %conv.i) #10
  %occupied.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %occupied.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %occupied.i, align 4
  %state.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %state.i, align 1
  %requested_credit.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %requested_credit.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %requested_credit.i, align 1
  %requested_packet.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %requested_packet.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %requested_packet.i, align 4
  %interface_id.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %interface_id.i, align 2
  %ac_bitmap.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %ac_bitmap.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %ac_bitmap.i, align 2
  %tobool.not.i = icmp eq ptr %mac_addr, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ea.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 10
  %12 = call ptr @memcpy(ptr %ea.i, ptr %mac_addr, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fws_add_interface(ptr noundef %ifp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %call = tail call ptr @drvr_to_fws(ptr noundef %1) #10
  %ndev = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 2
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %avoid_queueing.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 22
  %4 = ptrtoint ptr %avoid_queueing.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %avoid_queueing.i, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %6 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifidx, align 4
  %arrayidx = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7
  %fws_desc = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 5
  %8 = ptrtoint ptr %fws_desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %fws_desc, align 4
  %mac_addr = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 8
  %conv = trunc i32 %7 to i8
  %conv.i = and i32 %7, 255
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_init, ptr noundef nonnull @.str.89, ptr noundef %arrayidx, ptr noundef %mac_addr, i32 noundef %conv.i) #10
  %occupied.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7, i32 1
  %9 = ptrtoint ptr %occupied.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %occupied.i, align 4
  %state.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7, i32 4
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %state.i, align 1
  %requested_credit.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7, i32 8
  %11 = ptrtoint ptr %requested_credit.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %requested_credit.i, align 1
  %requested_packet.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7, i32 9
  %12 = ptrtoint ptr %requested_packet.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %requested_packet.i, align 4
  %interface_id.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7, i32 3
  %13 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %interface_id.i, align 2
  %ac_bitmap.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7, i32 7
  %14 = ptrtoint ptr %ac_bitmap.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %ac_bitmap.i, align 2
  %tobool.not.i17 = icmp eq ptr %mac_addr, null
  br i1 %tobool.not.i17, label %if.end.brcmf_fws_macdesc_init.exit_crit_edge, label %if.then.i

if.end.brcmf_fws_macdesc_init.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ea.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7, i32 10
  %15 = call ptr @memcpy(ptr %ea.i, ptr %mac_addr, i32 6)
  br label %brcmf_fws_macdesc_init.exit

brcmf_fws_macdesc_init.exit:                      ; preds = %if.then.i, %if.end.brcmf_fws_macdesc_init.exit_crit_edge
  %other.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 2
  %cmp.i = icmp eq ptr %other.i, %arrayidx
  br i1 %cmp.i, label %if.then.i18, label %if.else.i

if.then.i18:                                      ; preds = %brcmf_fws_macdesc_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @strlcpy(ptr noundef %arrayidx, ptr noundef nonnull @.str.90, i32 noundef 16) #10
  br label %brcmf_fws_macdesc_set_name.exit

if.else.i:                                        ; preds = %brcmf_fws_macdesc_init.exit
  %mac_handle.i = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7, i32 2
  %16 = ptrtoint ptr %mac_handle.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mac_handle.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i19 = icmp eq i8 %17, 0
  br i1 %tobool.not.i19, label %if.else8.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i20 = zext i8 %17 to i32
  %18 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %interface_id.i, align 2
  %conv6.i = zext i8 %19 to i32
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef 16, ptr noundef nonnull @.str.91, i32 noundef %conv.i20, i32 noundef %conv6.i) #10
  br label %brcmf_fws_macdesc_set_name.exit

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %interface_id.i, align 2
  %conv12.i = zext i8 %21 to i32
  %call13.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef 16, ptr noundef nonnull @.str.92, i32 noundef %conv12.i) #10
  br label %brcmf_fws_macdesc_set_name.exit

brcmf_fws_macdesc_set_name.exit:                  ; preds = %if.else8.i, %if.then2.i, %if.then.i18
  %psq = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7, i32 12
  tail call void @brcmu_pktq_init(ptr noundef %psq, i32 noundef 14, i32 noundef 256) #10
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_add_interface, ptr noundef nonnull @.str.25, ptr noundef %arrayidx) #10
  br label %cleanup

cleanup:                                          ; preds = %brcmf_fws_macdesc_set_name.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @brcmf_fws_queue_skbs(ptr nocapture noundef readonly %fws) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %avoid_queueing = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 22
  %0 = ptrtoint ptr %avoid_queueing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %avoid_queueing, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pktq_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fws_del_interface(ptr nocapture noundef %ifp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fws_desc = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 5
  %0 = ptrtoint ptr %fws_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fws_desc, align 4
  %2 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ifp, align 4
  %call = tail call ptr @drvr_to_fws(ptr noundef %3) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spinlock.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %flags.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2.i, ptr %flags.i, align 4
  %5 = ptrtoint ptr %fws_desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fws_desc, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_del_interface, ptr noundef nonnull @.str.26, ptr noundef nonnull %1) #10
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %6 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifidx, align 4
  %arrayidx = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 8, i32 1, i32 %7
  tail call fastcc void @brcmf_fws_macdesc_cleanup(ptr noundef %call, ptr noundef %arrayidx, i32 noundef %7)
  %ea.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 10
  %interface_id.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %interface_id.i, align 2
  %conv.i = zext i8 %9 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_deinit, ptr noundef nonnull @.str.94, ptr noundef %ea.i, i32 noundef %conv.i) #10
  %occupied.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %occupied.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %occupied.i, align 4
  %state.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %state.i, align 1
  %requested_credit.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %requested_credit.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %requested_credit.i, align 1
  %requested_packet.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %requested_packet.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %requested_packet.i, align 4
  %14 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifidx, align 4
  tail call fastcc void @brcmf_fws_cleanup(ptr noundef %call, i32 noundef %15)
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_macdesc_cleanup(ptr nocapture noundef %fws, ptr noundef %entry1, i32 noundef %ifidx) unnamed_addr #0 align 64 {
entry:
  %ifidx.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %occupied = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %occupied to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %occupied, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ifidx)
  %cmp = icmp eq i32 %ifidx, -1
  br i1 %cmp, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %interface_id = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1, i32 0, i32 3
  %2 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interface_id, align 2
  %conv3 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %ifidx)
  %cmp4 = icmp eq i32 %conv3, %ifidx
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %spec.select.i = phi ptr [ @brcmf_fws_ifidx_match, %lor.lhs.false.if.then_crit_edge ], [ null, %land.lhs.true.if.then_crit_edge ]
  %psq = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifidx.addr.i)
  %4 = ptrtoint ptr %ifidx.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ifidx, ptr %ifidx.addr.i, align 4
  %5 = ptrtoint ptr %psq to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %psq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp144.not.i = icmp eq i16 %6, 0
  br i1 %cmp144.not.i, label %if.then.brcmf_fws_psq_flush.exit_crit_edge, label %for.body.lr.ph.i

if.then.brcmf_fws_psq_flush.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_psq_flush.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %failed_to_pop.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %prec.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = call ptr @brcmu_pktq_pdeq_match(ptr noundef %psq, i32 noundef %prec.045.i, ptr noundef %spec.select.i, ptr noundef nonnull %ifidx.addr.i) #10
  %tobool.not41.i = icmp eq ptr %call.i, null
  br i1 %tobool.not41.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.while.body.i_crit_edge

for.body.i.while.body.i_crit_edge:                ; preds = %for.body.i
  br label %while.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.body.i:                                     ; preds = %brcmf_fws_hanger_poppkt.exit.i.while.body.i_crit_edge, %for.body.i.while.body.i_crit_edge
  %storemerge42.i = phi ptr [ %call29.i, %brcmf_fws_hanger_poppkt.exit.i.while.body.i_crit_edge ], [ %call.i, %for.body.i.while.body.i_crit_edge ]
  %htod.i = getelementptr inbounds %struct.sk_buff, ptr %storemerge42.i, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %htod.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %htod.i, align 4
  %and.i.i = lshr i32 %8, 8
  %shr.i.i = and i32 %and.i.i, 65535
  %arrayidx.i = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %shr.i.i
  %pkt.i = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %shr.i.i, i32 1
  %9 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pkt.i, align 4
  %cmp4.not.i = icmp eq ptr %storemerge42.i, %10
  br i1 %cmp4.not.i, label %while.body.i.if.end20.i_crit_edge, label %do.end.i, !prof !252

while.body.i.if.end20.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 637, i32 noundef 9, ptr noundef null) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %while.body.i.if.end20.i_crit_edge
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3071, i32 %shr.i.i)
  %cmp.i.i = icmp ugt i32 %shr.i.i, 3071
  br i1 %cmp.i.i, label %if.end20.i.brcmf_fws_hanger_poppkt.exit.i_crit_edge, label %return.sink.split.i.i

if.end20.i.brcmf_fws_hanger_poppkt.exit.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_hanger_poppkt.exit.i

return.sink.split.i.i:                            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_poppkt, ptr noundef nonnull @.str.93) #10
  %12 = ptrtoint ptr %failed_to_pop.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %failed_to_pop.i.i, align 4
  %inc13.i.i = add i32 %13, 1
  store i32 %inc13.i.i, ptr %failed_to_pop.i.i, align 4
  br label %brcmf_fws_hanger_poppkt.exit.i

brcmf_fws_hanger_poppkt.exit.i:                   ; preds = %return.sink.split.i.i, %if.end20.i.brcmf_fws_hanger_poppkt.exit.i_crit_edge
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %storemerge42.i) #10
  %call29.i = call ptr @brcmu_pktq_pdeq_match(ptr noundef %psq, i32 noundef %prec.045.i, ptr noundef %spec.select.i, ptr noundef nonnull %ifidx.addr.i) #10
  %tobool.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool.not.i, label %brcmf_fws_hanger_poppkt.exit.i.for.inc.i_crit_edge, label %brcmf_fws_hanger_poppkt.exit.i.while.body.i_crit_edge

brcmf_fws_hanger_poppkt.exit.i.while.body.i_crit_edge: ; preds = %brcmf_fws_hanger_poppkt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

brcmf_fws_hanger_poppkt.exit.i.for.inc.i_crit_edge: ; preds = %brcmf_fws_hanger_poppkt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %brcmf_fws_hanger_poppkt.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %prec.045.i, 1
  %14 = ptrtoint ptr %psq to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %psq, align 4
  %conv.i = zext i16 %15 to i32
  %cmp1.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.brcmf_fws_psq_flush.exit_crit_edge

for.inc.i.brcmf_fws_psq_flush.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_psq_flush.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

brcmf_fws_psq_flush.exit:                         ; preds = %for.inc.i.brcmf_fws_psq_flush.exit_crit_edge, %if.then.brcmf_fws_psq_flush.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifidx.addr.i)
  %len = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1, i32 0, i32 12, i32 3
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool7 = icmp ne i16 %17, 0
  %conv9 = zext i1 %tobool7 to i8
  %18 = ptrtoint ptr %occupied to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv9, ptr %occupied, align 4
  br label %if.end

if.end:                                           ; preds = %brcmf_fws_psq_flush.exit, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_cleanup(ptr noundef %fws, i32 noundef %ifidx) unnamed_addr #0 align 64 {
entry:
  %ifidx.addr.i22 = alloca i32, align 4
  %ifidx.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %fws, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ifidx)
  %cmp1.not = icmp eq i32 %ifidx, -1
  %desc = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.028 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %i.028
  tail call fastcc void @brcmf_fws_macdesc_cleanup(ptr noundef nonnull %fws, ptr noundef %arrayidx5, i32 noundef %ifidx)
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %spec.select = select i1 %cmp1.not, ptr null, ptr @brcmf_fws_ifidx_match
  %other = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 8, i32 2
  tail call fastcc void @brcmf_fws_macdesc_cleanup(ptr noundef nonnull %fws, ptr noundef %other, i32 noundef %ifidx)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifidx.addr.i)
  %0 = ptrtoint ptr %ifidx.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ifidx, ptr %ifidx.addr.i, align 4
  %1 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fws, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %ops.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i, align 4
  %gettxq.i.i = getelementptr inbounds %struct.brcmf_bus_ops, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %gettxq.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gettxq.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %for.end.do.body.i_crit_edge, label %brcmf_bus_gettxq.exit.i

for.end.do.body.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

brcmf_bus_gettxq.exit.i:                          ; preds = %for.end
  %dev.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %call3.i.i = tail call ptr %8(ptr noundef %10) #10
  %cmp.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %brcmf_bus_gettxq.exit.i.do.body.i_crit_edge, label %for.cond.preheader.i

brcmf_bus_gettxq.exit.i.do.body.i_crit_edge:      ; preds = %brcmf_bus_gettxq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %brcmf_bus_gettxq.exit.i
  %11 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %call3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp54.not.i = icmp eq i16 %12, 0
  br i1 %cmp54.not.i, label %for.cond.preheader.i.brcmf_fws_bus_txq_cleanup.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.brcmf_fws_bus_txq_cleanup.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_bus_txq_cleanup.exit

do.body.i:                                        ; preds = %brcmf_bus_gettxq.exit.i.do.body.i_crit_edge, %for.end.do.body.i_crit_edge
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_bus_txq_cleanup, ptr noundef nonnull @.str.95) #10
  br label %brcmf_fws_bus_txq_cleanup.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %prec.055.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call3.i = call ptr @brcmu_pktq_pdeq_match(ptr noundef %call3.i.i, i32 noundef %prec.055.i, ptr noundef %spec.select, ptr noundef nonnull %ifidx.addr.i) #10
  %tobool.not51.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not51.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.while.body.i_crit_edge

for.body.i.while.body.i_crit_edge:                ; preds = %for.body.i
  br label %while.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %for.body.i.while.body.i_crit_edge
  %skb.052.i = phi ptr [ %call31.i, %if.end24.i.while.body.i_crit_edge ], [ %call3.i, %for.body.i.while.body.i_crit_edge ]
  %htod.i = getelementptr inbounds %struct.sk_buff, ptr %skb.052.i, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %htod.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %htod.i, align 4
  %and.i.i = lshr i32 %14, 8
  %shr.i.i = and i32 %and.i.i, 65535
  %arrayidx.i = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %shr.i.i
  %pkt.i = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %shr.i.i, i32 1
  %15 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pkt.i, align 4
  %cmp5.not.i = icmp eq ptr %skb.052.i, %16
  br i1 %cmp5.not.i, label %while.body.i.if.end24.i_crit_edge, label %do.end18.i, !prof !252

while.body.i.if.end24.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.end18.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 827, i32 noundef 9, ptr noundef null) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end18.i, %while.body.i.if.end24.i_crit_edge
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx.i, align 4
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %skb.052.i) #10
  %call31.i = call ptr @brcmu_pktq_pdeq_match(ptr noundef %call3.i.i, i32 noundef %prec.055.i, ptr noundef %spec.select, ptr noundef nonnull %ifidx.addr.i) #10
  %tobool.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool.not.i, label %if.end24.i.for.inc.i_crit_edge, label %if.end24.i.while.body.i_crit_edge

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end24.i.for.inc.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end24.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %prec.055.i, 1
  %18 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call3.i.i, align 4
  %conv.i = zext i16 %19 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.brcmf_fws_bus_txq_cleanup.exit_crit_edge

for.inc.i.brcmf_fws_bus_txq_cleanup.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_bus_txq_cleanup.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

brcmf_fws_bus_txq_cleanup.exit:                   ; preds = %for.inc.i.brcmf_fws_bus_txq_cleanup.exit_crit_edge, %do.body.i, %for.cond.preheader.i.brcmf_fws_bus_txq_cleanup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifidx.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifidx.addr.i22)
  %20 = ptrtoint ptr %ifidx.addr.i22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %ifidx, ptr %ifidx.addr.i22, align 4
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.inc.i27.for.body.i24_crit_edge, %brcmf_fws_bus_txq_cleanup.exit
  %i.025.i = phi i32 [ 0, %brcmf_fws_bus_txq_cleanup.exit ], [ %inc.i26, %for.inc.i27.for.body.i24_crit_edge ]
  %arrayidx.i23 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %i.025.i
  %21 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp1.i = icmp eq i32 %22, 2
  %23 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %switch.i = icmp eq i32 %23, 2
  br i1 %switch.i, label %if.then.i, label %for.body.i24.for.inc.i27_crit_edge

for.body.i24.for.inc.i27_crit_edge:               ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i27

if.then.i:                                        ; preds = %for.body.i24
  %pkt.i25 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %i.025.i, i32 1
  %24 = ptrtoint ptr %pkt.i25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pkt.i25, align 4
  br i1 %cmp1.not, label %if.then.i.if.then7.i_crit_edge, label %lor.lhs.false6.i

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

lor.lhs.false6.i:                                 ; preds = %if.then.i
  %call.i = call zeroext i1 %spec.select(ptr noundef %25, ptr noundef nonnull %ifidx.addr.i22) #10, !callees !256
  br i1 %call.i, label %lor.lhs.false6.i.if.then7.i_crit_edge, label %lor.lhs.false6.i.for.inc.i27_crit_edge

lor.lhs.false6.i.for.inc.i27_crit_edge:           ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i27

lor.lhs.false6.i.if.then7.i_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false6.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  br i1 %cmp1.i, label %if.then9.i, label %if.then7.i.if.end.i_crit_edge

if.then7.i.if.end.i_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %25) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %if.then7.i.if.end.i_crit_edge
  %26 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %arrayidx.i23, align 4
  br label %for.inc.i27

for.inc.i27:                                      ; preds = %if.end.i, %lor.lhs.false6.i.for.inc.i27_crit_edge, %for.body.i24.for.inc.i27_crit_edge
  %inc.i26 = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i26, 3072
  br i1 %exitcond.not.i, label %brcmf_fws_hanger_cleanup.exit, label %for.inc.i27.for.body.i24_crit_edge

for.inc.i27.for.body.i24_crit_edge:               ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i24

brcmf_fws_hanger_cleanup.exit:                    ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifidx.addr.i22)
  br label %cleanup

cleanup:                                          ; preds = %brcmf_fws_hanger_cleanup.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_fws_attach(ptr noundef %drvr) local_unnamed_addr #0 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #10
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mode, align 4, !annotation !257
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 74996, i32 noundef 3520, i32 noundef 5) #14
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.brcmf_fws_detach.exit_crit_edge, label %do.body

entry.brcmf_fws_detach.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_detach.exit

do.body:                                          ; preds = %entry
  %spinlock = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.27, ptr noundef nonnull @brcmf_fws_attach.__key, i16 noundef signext 3) #10
  %1 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %drvr, ptr %call1.i.i.i, align 4096
  %settings = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 22
  %2 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %settings, align 4
  %fcmode = getelementptr inbounds %struct.brcmf_mp_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fcmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fcmode, align 4
  %fcmode3 = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %fcmode3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fcmode3, align 16
  %7 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drvr, align 4
  %always_use_fws_queue = getelementptr inbounds %struct.brcmf_bus, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %always_use_fws_queue to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %always_use_fws_queue, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %or.cond = select i1 %tobool4.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then6, label %if.end10

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %avoid_queueing = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 22
  %11 = ptrtoint ptr %avoid_queueing to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %avoid_queueing, align 1
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_fws_attach, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %call11 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.29, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.30) #10
  %fws_wq = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %fws_wq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11, ptr %fws_wq, align 4
  %cmp13 = icmp eq ptr %call11, null
  br i1 %cmp13, label %do.end18, label %do.body22

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.brcmf_fws_attach) #13
  br label %if.end.i

do.body22:                                        ; preds = %if.end10
  %fws_dequeue_work = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %fws_dequeue_work, i32 noundef 0) #10
  %15 = ptrtoint ptr %fws_dequeue_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %fws_dequeue_work, align 8
  %lockdep_map = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.33, ptr noundef nonnull @brcmf_fws_attach.__key.32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry26 = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 10, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry26, ptr %prev.i, align 32
  %func = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @brcmf_fws_dequeue_worker, ptr %func, align 4
  %19 = ptrtoint ptr %fcmode3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fcmode3, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp31.not = icmp eq i32 %20, 0
  %spec.select = select i1 %cmp31.not, i32 1, i32 79
  %call34 = tail call i32 @brcmf_fweh_register(ptr noundef %drvr, i32 noundef 74, ptr noundef nonnull @brcmf_fws_notify_credit_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %if.end45

do.end40:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy41 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %21 = ptrtoint ptr %wiphy41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy41, align 4
  %dev42 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.brcmf_fws_attach) #13
  br label %if.end.i

if.end45:                                         ; preds = %do.body22
  %call46 = tail call i32 @brcmf_fweh_register(ptr noundef %drvr, i32 noundef 127, ptr noundef nonnull @brcmf_fws_notify_bcmc_credit_support) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end52, label %if.end57

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy53 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %23 = ptrtoint ptr %wiphy53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy53, align 4
  %dev54 = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.brcmf_fws_attach) #13
  tail call void @brcmf_fweh_unregister(ptr noundef %drvr, i32 noundef 74) #10
  br label %if.end.i

if.end57:                                         ; preds = %if.end45
  %fw_signals = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %fw_signals to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %fw_signals, align 4
  %call58 = tail call ptr @brcmf_get_ifp(ptr noundef %drvr, i32 noundef 0) #10
  %call59 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %call58, ptr noundef nonnull @.str.40, i32 noundef %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end57.if.end72_crit_edge, label %do.end65

if.end57.if.end72_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy66 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %26 = ptrtoint ptr %wiphy66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy66, align 4
  %dev67 = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.brcmf_fws_attach) #13
  %28 = ptrtoint ptr %fcmode3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %fcmode3, align 16
  %29 = ptrtoint ptr %fw_signals to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %fw_signals, align 4
  br label %if.end72

if.end72:                                         ; preds = %do.end65, %if.end57.if.end72_crit_edge
  %call73 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %call58, ptr noundef nonnull @.str.44, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.if.end79_crit_edge, label %do.body76

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.body76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_fws_attach, ptr noundef nonnull @.str.45) #10
  br label %if.end79

if.end79:                                         ; preds = %do.body76, %if.end72.if.end79_crit_edge
  %call80 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %call58, ptr noundef nonnull @.str.46, ptr noundef nonnull %mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then82, label %if.end79.if.end97_crit_edge

if.end79.if.end97_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then82:                                        ; preds = %if.end79
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode, align 4
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool83.not = icmp eq i32 %32, 0
  br i1 %tobool83.not, label %if.then82.if.end97_crit_edge, label %if.then84

if.then82.if.end97_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then84:                                        ; preds = %if.then82
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %mode, align 4
  %call87 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %call58, ptr noundef nonnull @.str.46, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then89, label %if.then84.if.end97_crit_edge

if.then84.if.end97_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then89:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %mode90 = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 21
  %34 = ptrtoint ptr %mode90 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mode90, align 2
  %36 = or i8 %35, 8
  store i8 %36, ptr %mode90, align 2
  br label %if.end97

if.end97:                                         ; preds = %if.then89, %if.then84.if.end97_crit_edge, %if.then82.if.end97_crit_edge, %if.end79.if.end97_crit_edge
  %hanger = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 4
  %37 = call ptr @memset(ptr %hanger, i32 0, i32 24600)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end97
  %i.04.i = phi i32 [ 0, %if.end97 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 4, i32 6, i32 %i.04.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %arrayidx.i, align 8
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3072
  br i1 %exitcond.not.i, label %brcmf_fws_hanger_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

brcmf_fws_hanger_init.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %other = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 8, i32 2
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_macdesc_init, ptr noundef nonnull @.str.89, ptr noundef %other, ptr noundef null, i32 noundef 0) #10
  %occupied.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 8, i32 2, i32 1
  %39 = ptrtoint ptr %occupied.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %occupied.i, align 8
  %state.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 8, i32 2, i32 4
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %state.i, align 1
  %requested_credit.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 8, i32 2, i32 8
  %41 = ptrtoint ptr %requested_credit.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %requested_credit.i, align 1
  %requested_packet.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 8, i32 2, i32 9
  %42 = ptrtoint ptr %requested_packet.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %requested_packet.i, align 16
  %interface_id.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 8, i32 2, i32 3
  %43 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %interface_id.i, align 2
  %ac_bitmap.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 8, i32 2, i32 7
  %44 = ptrtoint ptr %ac_bitmap.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %ac_bitmap.i, align 2
  %call.i = call i32 @strlcpy(ptr noundef %other, ptr noundef nonnull @.str.90, i32 noundef 16) #10
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_fws_attach, ptr noundef nonnull @.str.25, ptr noundef %other) #10
  %psq = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 8, i32 2, i32 12
  call void @brcmu_pktq_init(ptr noundef %psq, i32 noundef 14, i32 noundef 256) #10
  %45 = ptrtoint ptr %fw_signals to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %fw_signals, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool109.not = icmp eq i8 %46, 0
  %cond = select i1 %tobool109.not, ptr @.str.49, ptr @.str.48
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_fws_attach, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond, i32 noundef %spec.select) #10
  br label %cleanup

if.end.i:                                         ; preds = %do.end52, %do.end40, %do.end18
  %rc.0.ph = phi i32 [ %call46, %do.end52 ], [ %call34, %do.end40 ], [ -9, %do.end18 ]
  %47 = ptrtoint ptr %fws_wq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fws_wq, align 4
  %tobool1.not.i = icmp eq ptr %48, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %48) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #10
  %flags.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1.i.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call2.i.i, ptr %flags.i.i, align 16
  tail call fastcc void @brcmf_fws_cleanup(ptr noundef nonnull %call1.i.i.i, i32 noundef -1) #10
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %51) #10
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #10
  br label %brcmf_fws_detach.exit

brcmf_fws_detach.exit:                            ; preds = %if.end4.i, %entry.brcmf_fws_detach.exit_crit_edge
  %rc.0165 = phi i32 [ %rc.0.ph, %if.end4.i ], [ -12, %entry.brcmf_fws_detach.exit_crit_edge ]
  %52 = inttoptr i32 %rc.0165 to ptr
  br label %cleanup

cleanup:                                          ; preds = %brcmf_fws_detach.exit, %brcmf_fws_hanger_init.exit, %if.then6
  %retval.0 = phi ptr [ %52, %brcmf_fws_detach.exit ], [ %call1.i.i.i, %brcmf_fws_hanger_init.exit ], [ %call1.i.i.i, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_fws_dequeue_worker(ptr noundef %worker) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %worker, i32 -74776
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %spinlock.i = getelementptr i8, ptr %worker, i32 -74772
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %flags.i = getelementptr i8, ptr %worker, i32 -74728
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2.i, ptr %flags.i, align 4
  %bus_flow_blocked = getelementptr i8, ptr %worker, i32 216
  %creditmap_received.i = getelementptr i8, ptr %worker, i32 217
  %fcmode.i = getelementptr i8, ptr %worker, i32 -49992
  %fifo_credit = getelementptr i8, ptr %worker, i32 68
  %bcmc_credit_check = getelementptr i8, ptr %worker, i32 -49987
  %fifo_credit_map.i = getelementptr i8, ptr %worker, i32 204
  %hanger = getelementptr i8, ptr %worker, i32 -74592
  %popped.i = getelementptr i8, ptr %worker, i32 -74588
  %failed_to_pop.i = getelementptr i8, ptr %worker, i32 -74580
  %proto.i = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry
  %fifo.0140 = phi i32 [ 4, %entry ], [ %dec75.pre-phi, %for.inc.land.rhs_crit_edge ]
  %3 = ptrtoint ptr %bus_flow_blocked to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bus_flow_blocked, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %5 = ptrtoint ptr %creditmap_received.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %creditmap_received.i, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.while.cond.preheader_crit_edge, label %if.end.i

for.body.while.cond.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end.i.while.cond.preheader_crit_edge, %for.body.while.cond.preheader_crit_edge
  br label %while.cond

if.end.i:                                         ; preds = %for.body
  %7 = ptrtoint ptr %fcmode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fcmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %if.end.i.while.cond.preheader_crit_edge, label %while.cond19.preheader

if.end.i.while.cond.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

while.cond19.preheader:                           ; preds = %if.end.i
  %arrayidx = getelementptr [6 x i32], ptr %fifo_credit, i32 0, i32 %fifo.0140
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fifo.0140)
  %cmp23 = icmp eq i32 %fifo.0140, 4
  br label %while.cond19

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %while.cond.preheader
  %call2 = tail call fastcc ptr @brcmf_fws_deq(ptr noundef %add.ptr, i32 noundef %fifo.0140)
  %cmp3.not = icmp eq ptr %call2, null
  br i1 %cmp3.not, label %while.cond.for.inc.loopexit_crit_edge, label %while.body

while.cond.for.inc.loopexit_crit_edge:            ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.loopexit

while.body:                                       ; preds = %while.cond
  %htod = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %htod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %htod, align 4
  %and.i = lshr i32 %10, 8
  %shr.i = and i32 %and.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3071, i32 %shr.i)
  %cmp.i116 = icmp ugt i32 %shr.i, 3071
  br i1 %cmp.i116, label %while.body.brcmf_fws_hanger_poppkt.exit_crit_edge, label %if.end.i117

while.body.brcmf_fws_hanger_poppkt.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_hanger_poppkt.exit

if.end.i117:                                      ; preds = %while.body
  %arrayidx.i = getelementptr %struct.brcmf_fws_hanger, ptr %hanger, i32 0, i32 6, i32 %shr.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp1.i = icmp eq i32 %12, 1
  br i1 %cmp1.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_poppkt, ptr noundef nonnull @.str.93) #10
  br label %return.sink.split.i

if.end3.i:                                        ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #12
  %pkt.i = getelementptr %struct.brcmf_fws_hanger, ptr %hanger, i32 0, i32 6, i32 %shr.i, i32 1
  %13 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pkt.i, align 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arrayidx.i, align 4
  store ptr null, ptr %pkt.i, align 4
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end3.i, %do.body.i
  %skb.0 = phi ptr [ %call2, %do.body.i ], [ %14, %if.end3.i ]
  %popped.sink24.i = phi ptr [ %failed_to_pop.i, %do.body.i ], [ %popped.i, %if.end3.i ]
  %16 = ptrtoint ptr %popped.sink24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %popped.sink24.i, align 4
  %inc13.i = add i32 %17, 1
  store i32 %inc13.i, ptr %popped.sink24.i, align 4
  br label %brcmf_fws_hanger_poppkt.exit

brcmf_fws_hanger_poppkt.exit:                     ; preds = %return.sink.split.i, %while.body.brcmf_fws_hanger_poppkt.exit_crit_edge
  %skb.1 = phi ptr [ %call2, %while.body.brcmf_fws_hanger_poppkt.exit_crit_edge ], [ %skb.0, %return.sink.split.i ]
  %if_flags = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %if_flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %if_flags, align 2
  %and4.i = and i16 %19, 15
  %conv = zext i16 %and4.i to i32
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %21) #10
  %22 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %proto.i, align 4
  %txdata.i = getelementptr inbounds %struct.brcmf_proto, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %txdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %txdata.i, align 4
  %call.i = tail call i32 %25(ptr noundef %1, i32 noundef %conv, i8 noundef zeroext 0, ptr noundef %skb.1) #10
  %call2.i123 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call2.i123, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %if.then12, label %brcmf_fws_hanger_poppkt.exit.if.end_crit_edge

brcmf_fws_hanger_poppkt.exit.if.end_crit_edge:    ; preds = %brcmf_fws_hanger_poppkt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then12:                                        ; preds = %brcmf_fws_hanger_poppkt.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call ptr @brcmf_get_ifp(ptr noundef %1, i32 noundef %conv) #10
  tail call void @brcmf_txfinalize(ptr noundef %call13, ptr noundef %skb.1, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then12, %brcmf_fws_hanger_poppkt.exit.if.end_crit_edge
  %27 = ptrtoint ptr %bus_flow_blocked to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bus_flow_blocked, align 4, !range !254
  %tobool15.not = icmp eq i8 %28, 0
  br i1 %tobool15.not, label %if.end.while.cond_crit_edge, label %if.end.for.inc.loopexit_crit_edge

if.end.for.inc.loopexit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.loopexit

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.cond19:                                     ; preds = %if.end36.while.cond19_crit_edge, %while.cond19.preheader
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool20.not = icmp eq i32 %30, 0
  br i1 %tobool20.not, label %lor.rhs, label %while.cond19.while.body26_crit_edge

while.cond19.while.body26_crit_edge:              ; preds = %while.cond19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body26

lor.rhs:                                          ; preds = %while.cond19
  %31 = ptrtoint ptr %bcmc_credit_check to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bcmc_credit_check, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool21.not = icmp eq i8 %32, 0
  %or.cond = select i1 %tobool21.not, i1 %cmp23, i1 false
  br i1 %or.cond, label %lor.rhs.while.body26_crit_edge, label %lor.rhs.while.end41_crit_edge

lor.rhs.while.end41_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end41

lor.rhs.while.body26_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body26

while.body26:                                     ; preds = %lor.rhs.while.body26_crit_edge, %while.cond19.while.body26_crit_edge
  %call27 = tail call fastcc ptr @brcmf_fws_deq(ptr noundef %add.ptr, i32 noundef %fifo.0140)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %while.body26.while.end41_crit_edge, label %if.end30

while.body26.while.end41_crit_edge:               ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end41

if.end30:                                         ; preds = %while.body26
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %arrayidx, align 4
  %call33 = tail call fastcc i32 @brcmf_fws_commit_skb(ptr noundef %add.ptr, i32 noundef %fifo.0140, ptr noundef nonnull %call27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.while.end41_crit_edge

if.end30.while.end41_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end41

if.end36:                                         ; preds = %if.end30
  %35 = ptrtoint ptr %bus_flow_blocked to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bus_flow_blocked, align 4, !range !254
  %tobool38.not = icmp eq i8 %36, 0
  br i1 %tobool38.not, label %if.end36.while.cond19_crit_edge, label %if.end36.while.end41_crit_edge

if.end36.while.end41_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end41

if.end36.while.cond19_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond19

while.end41:                                      ; preds = %if.end36.while.end41_crit_edge, %if.end30.while.end41_crit_edge, %while.body26.while.end41_crit_edge, %lor.rhs.while.end41_crit_edge
  %37 = add nsw i32 %fifo.0140, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %38 = icmp ult i32 %37, 3
  br i1 %38, label %land.lhs.true46, label %while.end41.for.inc_crit_edge

while.end41.for.inc_crit_edge:                    ; preds = %while.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true46:                                  ; preds = %while.end41
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp49 = icmp eq i32 %40, 0
  br i1 %cmp49, label %land.lhs.true51, label %land.lhs.true46.for.inc_crit_edge

land.lhs.true46.for.inc_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true51:                                  ; preds = %land.lhs.true46
  %41 = ptrtoint ptr %bus_flow_blocked to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bus_flow_blocked, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool53.not = icmp eq i8 %42, 0
  br i1 %tobool53.not, label %while.cond55.preheader145, label %land.lhs.true51.for.inc_crit_edge

land.lhs.true51.for.inc_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond55.preheader145:                        ; preds = %land.lhs.true51
  %shl13.i = shl nuw nsw i32 1, %fifo.0140
  br label %if.end.i125

if.end.i125:                                      ; preds = %if.end.i125.backedge, %while.cond55.preheader145
  %lender_ac.04.i = phi i32 [ 0, %while.cond55.preheader145 ], [ %lender_ac.04.i.be, %if.end.i125.backedge ]
  %arrayidx1.i = getelementptr %struct.brcmf_fws_info, ptr %add.ptr, i32 0, i32 12, i32 %lender_ac.04.i
  %43 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp2.i = icmp sgt i32 %44, 0
  br i1 %cmp2.i, label %if.then3.i, label %for.inc.i

if.then3.i:                                       ; preds = %if.end.i125
  %arrayidx5.i = getelementptr %struct.brcmf_fws_info, ptr %add.ptr, i32 0, i32 14, i32 %fifo.0140, i32 %lender_ac.04.i
  %45 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx5.i, align 4
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %arrayidx5.i, align 4
  %47 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx1.i, align 4
  %dec.i = add i32 %48, -1
  store i32 %dec.i, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp10.i = icmp eq i32 %dec.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.then3.i.while.body59_crit_edge

if.then3.i.while.body59_crit_edge:                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body59

if.then11.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw i32 1, %lender_ac.04.i
  %neg.i = xor i32 %shl.i, -1
  %49 = ptrtoint ptr %fifo_credit_map.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fifo_credit_map.i, align 4
  %and.i126 = and i32 %50, %neg.i
  store i32 %and.i126, ptr %fifo_credit_map.i, align 4
  br label %while.body59

for.inc.i:                                        ; preds = %if.end.i125
  %inc16.i = add nuw nsw i32 %lender_ac.04.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %lender_ac.04.i, i32 %37)
  %cmp.not.i.not = icmp slt i32 %lender_ac.04.i, %37
  br i1 %cmp.not.i.not, label %for.inc.i.if.end.i125.backedge_crit_edge, label %brcmf_fws_borrow_credit.exit

for.inc.i.if.end.i125.backedge_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i125.backedge

if.end.i125.backedge:                             ; preds = %if.end68.if.end.i125.backedge_crit_edge, %for.inc.i.if.end.i125.backedge_crit_edge
  %lender_ac.04.i.be = phi i32 [ %inc16.i, %for.inc.i.if.end.i125.backedge_crit_edge ], [ 0, %if.end68.if.end.i125.backedge_crit_edge ]
  br label %if.end.i125

brcmf_fws_borrow_credit.exit:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg18.i = xor i32 %shl13.i, -1
  %51 = ptrtoint ptr %fifo_credit_map.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fifo_credit_map.i, align 4
  %and20.i = and i32 %52, %neg18.i
  store i32 %and20.i, ptr %fifo_credit_map.i, align 4
  br label %for.inc

while.body59:                                     ; preds = %if.then11.i, %if.then3.i.while.body59_crit_edge
  %53 = ptrtoint ptr %fifo_credit_map.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fifo_credit_map.i, align 4
  %or.i = or i32 %54, %shl13.i
  store i32 %or.i, ptr %fifo_credit_map.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_fws_borrow_credit, ptr noundef nonnull @.str.105, i32 noundef %lender_ac.04.i) #10
  %call60 = tail call fastcc ptr @brcmf_fws_deq(ptr noundef %add.ptr, i32 noundef %fifo.0140)
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %if.then62, label %if.end64

if.then62:                                        ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #12
  %conv63 = trunc i32 %fifo.0140 to i8
  tail call fastcc void @brcmf_fws_return_credits(ptr noundef %add.ptr, i8 noundef zeroext %conv63, i8 noundef zeroext 1)
  br label %for.inc

if.end64:                                         ; preds = %while.body59
  %call65 = tail call fastcc i32 @brcmf_fws_commit_skb(ptr noundef %add.ptr, i32 noundef %fifo.0140, ptr noundef nonnull %call60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.for.inc_crit_edge

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end68:                                         ; preds = %if.end64
  %55 = ptrtoint ptr %bus_flow_blocked to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bus_flow_blocked, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool70.not = icmp eq i8 %56, 0
  br i1 %tobool70.not, label %if.end68.if.end.i125.backedge_crit_edge, label %if.end68.for.inc_crit_edge

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end68.if.end.i125.backedge_crit_edge:          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i125.backedge

for.inc.loopexit:                                 ; preds = %if.end.for.inc.loopexit_crit_edge, %while.cond.for.inc.loopexit_crit_edge
  %.pre = add nsw i32 %fifo.0140, -1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.loopexit, %if.end68.for.inc_crit_edge, %if.end64.for.inc_crit_edge, %if.then62, %brcmf_fws_borrow_credit.exit, %land.lhs.true51.for.inc_crit_edge, %land.lhs.true46.for.inc_crit_edge, %while.end41.for.inc_crit_edge
  %dec75.pre-phi = phi i32 [ %.pre, %for.inc.loopexit ], [ %37, %brcmf_fws_borrow_credit.exit ], [ %37, %while.end41.for.inc_crit_edge ], [ %37, %land.lhs.true46.for.inc_crit_edge ], [ %37, %land.lhs.true51.for.inc_crit_edge ], [ %37, %if.then62 ], [ %37, %if.end64.for.inc_crit_edge ], [ %37, %if.end68.for.inc_crit_edge ]
  %cmp = icmp sgt i32 %dec75.pre-phi, -1
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %58) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fweh_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_fws_notify_credit_map(ptr nocapture noundef readonly %ifp, ptr nocapture noundef readonly %e, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %call = tail call ptr @drvr_to_fws(ptr noundef %1) #10
  %datalen = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 6
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp ult i32 %3, 6
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef %3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %creditmap_received = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 20
  %6 = ptrtoint ptr %creditmap_received to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %creditmap_received, align 1
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, ptr noundef %data) #10
  %spinlock.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %flags.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %flags.i, align 4
  %fifo_credit_map22 = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %if.end
  %i.0105 = phi i32 [ 0, %if.end ], [ %inc, %if.end62.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.0105
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %arrayidx10 = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 13, i32 %i.0105
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %sub = sub i32 %conv, %11
  %arrayidx11 = getelementptr %struct.brcmf_fws_info, ptr %call, i32 0, i32 12, i32 %i.0105
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx11, align 4
  %add = add i32 %13, %sub
  store i32 %add, ptr %arrayidx11, align 4
  %14 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %14 to i32
  store i32 %conv13, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp18 = icmp sgt i32 %add, 0
  %shl = shl nuw nsw i32 1, %i.0105
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %fifo_credit_map22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fifo_credit_map22, align 4
  %or = or i32 %16, %shl
  br label %if.end23

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %shl, -1
  %17 = ptrtoint ptr %fifo_credit_map22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fifo_credit_map22, align 4
  %and = and i32 %18, %neg
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then20 ]
  %19 = ptrtoint ptr %fifo_credit_map22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %fifo_credit_map22, align 4
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp26 = icmp slt i32 %21, 0
  br i1 %cmp26, label %land.rhs, label %if.end23.if.end62_crit_edge

if.end23.if.end62_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

land.rhs:                                         ; preds = %if.end23
  %.b102 = load i1, ptr @brcmf_fws_notify_credit_map.__already_done, align 1
  br i1 %.b102, label %land.rhs.if.end62_crit_edge, label %if.then35, !prof !252

land.rhs.if.end62_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then35:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @brcmf_fws_notify_credit_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1622, i32 noundef 9, ptr noundef nonnull @.str.109, i32 noundef %i.0105, i32 noundef %21) #10
  br label %if.end62

if.end62:                                         ; preds = %if.then35, %land.rhs.if.end62_crit_edge, %if.end23.if.end62_crit_edge
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end62
  %22 = ptrtoint ptr %fifo_credit_map22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifo_credit_map22, align 4
  %fifo_delay_map.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 17
  %24 = ptrtoint ptr %fifo_delay_map.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fifo_delay_map.i, align 4
  %and.i = and i32 %25, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.end.if.then.i_crit_edge

for.end.if.then.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.end
  %26 = ptrtoint ptr %creditmap_received to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %creditmap_received, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i, label %brcmf_fws_fc_active.exit.i

brcmf_fws_fc_active.exit.i:                       ; preds = %lor.lhs.false.i
  %fcmode.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 5
  %28 = ptrtoint ptr %fcmode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fcmode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not.i = icmp eq i32 %25, 0
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %brcmf_fws_fc_active.exit.i.brcmf_fws_schedule_deq.exit_crit_edge, label %brcmf_fws_fc_active.exit.i.if.then.i_crit_edge

brcmf_fws_fc_active.exit.i.if.then.i_crit_edge:   ; preds = %brcmf_fws_fc_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

brcmf_fws_fc_active.exit.i.brcmf_fws_schedule_deq.exit_crit_edge: ; preds = %brcmf_fws_fc_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_schedule_deq.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not.old.i = icmp eq i32 %25, 0
  br i1 %tobool2.not.old.i, label %land.lhs.true.i.brcmf_fws_schedule_deq.exit_crit_edge, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.brcmf_fws_schedule_deq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_schedule_deq.exit

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %brcmf_fws_fc_active.exit.i.if.then.i_crit_edge, %for.end.if.then.i_crit_edge
  %fws_wq.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 9
  %30 = ptrtoint ptr %fws_wq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fws_wq.i, align 4
  %fws_dequeue_work.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %fws_dequeue_work.i) #10
  br label %brcmf_fws_schedule_deq.exit

brcmf_fws_schedule_deq.exit:                      ; preds = %if.then.i, %land.lhs.true.i.brcmf_fws_schedule_deq.exit_crit_edge, %brcmf_fws_fc_active.exit.i.brcmf_fws_schedule_deq.exit_crit_edge
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %33) #10
  br label %cleanup

cleanup:                                          ; preds = %brcmf_fws_schedule_deq.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %brcmf_fws_schedule_deq.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_fws_notify_bcmc_credit_support(ptr nocapture noundef readonly %ifp, ptr nocapture noundef readnone %e, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %call = tail call ptr @drvr_to_fws(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spinlock.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %flags.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2.i, ptr %flags.i, align 4
  %bcmc_credit_check = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %bcmc_credit_check to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bcmc_credit_check, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_unregister(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fws_detach(ptr noundef %fws) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fws, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %fws_wq = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 9
  %0 = ptrtoint ptr %fws_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fws_wq, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %spinlock.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %flags.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2.i, ptr %flags.i, align 4
  tail call fastcc void @brcmf_fws_cleanup(ptr noundef nonnull %fws, i32 noundef -1)
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %4) #10
  tail call void @kfree(ptr noundef nonnull %fws) #10
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fws_debugfs_create(ptr noundef %drvr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcmf_debugfs_add_entry(ptr noundef %drvr, ptr noundef nonnull @.str.50, ptr noundef nonnull @brcmf_debugfs_fws_stats_read) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_debugfs_add_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_debugfs_fws_stats_read(ptr noundef %seq, ptr nocapture noundef readnone %data) #0 align 64 {
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
  %drvr = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvr, align 4
  %call1 = tail call ptr @drvr_to_fws(ptr noundef %5) #10
  %stats = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3
  %header_pulls = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %header_pulls to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %header_pulls, align 4
  %header_only_pkt = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %header_only_pkt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %header_only_pkt, align 4
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stats, align 4
  %tlv_invalid_type = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %tlv_invalid_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tlv_invalid_type, align 4
  %mac_update_failed = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %mac_update_failed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_update_failed, align 4
  %mac_ps_update_failed = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 9
  %16 = ptrtoint ptr %mac_ps_update_failed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_ps_update_failed, align 4
  %if_update_failed = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 10
  %18 = ptrtoint ptr %if_update_failed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %if_update_failed, align 4
  %pkt2bus = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %pkt2bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pkt2bus, align 4
  %generic_error = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %generic_error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %generic_error, align 4
  %rollback_success = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 13
  %24 = ptrtoint ptr %rollback_success to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rollback_success, align 4
  %rollback_failed = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 14
  %26 = ptrtoint ptr %rollback_failed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rollback_failed, align 4
  %delayq_full_error = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 15
  %28 = ptrtoint ptr %delayq_full_error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delayq_full_error, align 4
  %supprq_full_error = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 16
  %30 = ptrtoint ptr %supprq_full_error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %supprq_full_error, align 4
  %txs_indicate = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 17
  %32 = ptrtoint ptr %txs_indicate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %txs_indicate, align 4
  %txs_discard = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 18
  %34 = ptrtoint ptr %txs_discard to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %txs_discard, align 4
  %txs_supp_core = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 19
  %36 = ptrtoint ptr %txs_supp_core to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %txs_supp_core, align 4
  %txs_supp_ps = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 20
  %38 = ptrtoint ptr %txs_supp_ps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %txs_supp_ps, align 4
  %txs_tossed = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 21
  %40 = ptrtoint ptr %txs_tossed to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %txs_tossed, align 4
  %txs_host_tossed = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 22
  %42 = ptrtoint ptr %txs_host_tossed to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %txs_host_tossed, align 4
  %bus_flow_block = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 23
  %44 = ptrtoint ptr %bus_flow_block to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bus_flow_block, align 4
  %fws_flow_block = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 24
  %46 = ptrtoint ptr %fws_flow_block to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fws_flow_block, align 4
  %send_pkts = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 5
  %48 = ptrtoint ptr %send_pkts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %send_pkts, align 4
  %arrayidx3 = getelementptr %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 5, i32 1
  %50 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 5, i32 2
  %52 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 5, i32 3
  %54 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 5, i32 4
  %56 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx9, align 4
  %requested_sent = getelementptr inbounds %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 6
  %58 = ptrtoint ptr %requested_sent to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %requested_sent, align 4
  %arrayidx12 = getelementptr %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 6, i32 1
  %60 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 6, i32 2
  %62 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 6, i32 3
  %64 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr %struct.brcmf_fws_info, ptr %call1, i32 0, i32 3, i32 6, i32 4
  %66 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.110, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @brcmf_fws_fc_active(ptr nocapture noundef readonly %fws) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %creditmap_received = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 20
  %0 = ptrtoint ptr %creditmap_received to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %creditmap_received, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fcmode = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 5
  %2 = ptrtoint ptr %fcmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fcmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp ne i32 %3, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fws_bustxfail(ptr noundef %fws, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %skb) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spinlock.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %flags.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2.i, ptr %flags.i, align 4
  %htod = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %3 = ptrtoint ptr %htod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %htod, align 4
  %and.i = lshr i32 %4, 8
  %shr.i = and i32 %and.i, 65535
  tail call fastcc void @brcmf_fws_txs_process(ptr noundef %fws, i8 noundef zeroext 6, i32 noundef %shr.i, i32 noundef 0, i16 noundef zeroext 0, i8 noundef zeroext 1)
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_txs_process(ptr noundef %fws, i8 noundef zeroext %flags, i32 noundef %hslot, i32 noundef %genbit, i16 noundef zeroext %seq, i8 noundef zeroext %compcnt) unnamed_addr #0 align 64 {
entry:
  %ifp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fws, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifp) #10
  %2 = ptrtoint ptr %ifp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ifp, align 4, !annotation !257
  %conv = zext i8 %flags to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_fws_txs_process, ptr noundef nonnull @.str.111, i32 noundef %conv) #10
  %3 = zext i8 %flags to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %flags, label %do.end59 [
    i8 0, label %if.then
    i8 1, label %if.then9
    i8 2, label %if.then17
    i8 3, label %if.then25
    i8 4, label %if.then33
    i8 5, label %if.then42
    i8 6, label %if.then51
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv5 = zext i8 %compcnt to i32
  %txs_discard = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 18
  %4 = ptrtoint ptr %txs_discard to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txs_discard, align 4
  %add = add i32 %5, %conv5
  store i32 %add, ptr %txs_discard, align 4
  br label %if.end67

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv10 = zext i8 %compcnt to i32
  %txs_supp_core = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 19
  %6 = ptrtoint ptr %txs_supp_core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txs_supp_core, align 4
  %add12 = add i32 %7, %conv10
  store i32 %add12, ptr %txs_supp_core, align 4
  br label %if.end67

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv18 = zext i8 %compcnt to i32
  %txs_supp_ps = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 20
  %8 = ptrtoint ptr %txs_supp_ps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txs_supp_ps, align 4
  %add20 = add i32 %9, %conv18
  store i32 %add20, ptr %txs_supp_ps, align 4
  br label %if.end67

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv26 = zext i8 %compcnt to i32
  %txs_tossed = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 21
  %10 = ptrtoint ptr %txs_tossed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txs_tossed, align 4
  %add28 = add i32 %11, %conv26
  store i32 %add28, ptr %txs_tossed, align 4
  br label %if.end67

if.then33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv34 = zext i8 %compcnt to i32
  %txs_discard36 = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %txs_discard36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txs_discard36, align 4
  %add37 = add i32 %13, %conv34
  store i32 %add37, ptr %txs_discard36, align 4
  br label %if.end67

if.then42:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv43 = zext i8 %compcnt to i32
  %txs_discard45 = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 18
  %14 = ptrtoint ptr %txs_discard45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txs_discard45, align 4
  %add46 = add i32 %15, %conv43
  store i32 %add46, ptr %txs_discard45, align 4
  br label %if.end67

if.then51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv52 = zext i8 %compcnt to i32
  %txs_host_tossed = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 22
  %16 = ptrtoint ptr %txs_host_tossed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txs_host_tossed, align 4
  %add54 = add i32 %17, %conv52
  store i32 %add54, ptr %txs_host_tossed, align 4
  br label %if.end67

do.end59:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.brcmf_fws_txs_process) #13
  br label %if.end67

if.end67:                                         ; preds = %do.end59, %if.then51, %if.then42, %if.then33, %if.then25, %if.then17, %if.then9, %if.then
  %remove_from_hanger.0.off0 = phi i1 [ true, %if.then ], [ false, %if.then9 ], [ false, %if.then17 ], [ true, %if.then25 ], [ true, %if.then33 ], [ true, %if.then42 ], [ true, %if.then51 ], [ true, %do.end59 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %compcnt)
  %cmp7047.not = icmp eq i8 %compcnt, 0
  br i1 %cmp7047.not, label %if.end67.while.end_crit_edge, label %while.body.lr.ph

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end67
  %popped.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 1
  %fcmode = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %flags)
  %cmp139 = icmp eq i8 %flags, 6
  %fifo_credit_map.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 16
  %fifo_delay_map.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 17
  %creditmap_received.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 20
  %fws_wq.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 9
  %fws_dequeue_work.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 10
  %conv.i = trunc i32 %genbit to i8
  %shl.i.i = shl i32 %genbit, 31
  %failed_to_pop.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 3
  %wiphy79 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %mode = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %cont.while.body_crit_edge, %while.body.lr.ph
  %hslot.addr.053 = phi i32 [ %hslot, %while.body.lr.ph ], [ %and, %cont.while.body_crit_edge ]
  %cnt.052 = phi i8 [ 0, %while.body.lr.ph ], [ %inc, %cont.while.body_crit_edge ]
  %seq.addr.048 = phi i16 [ %seq, %while.body.lr.ph ], [ %seq.addr.1, %cont.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3071, i32 %hslot.addr.053)
  %cmp.i = icmp ugt i32 %hslot.addr.053, 3071
  br i1 %cmp.i, label %while.body.do.end78_crit_edge, label %if.end.i

while.body.do.end78_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78

if.end.i:                                         ; preds = %while.body
  %arrayidx.i = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %hslot.addr.053
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp1.i = icmp eq i32 %21, 1
  br i1 %cmp1.i, label %brcmf_fws_hanger_poppkt.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %pkt.i = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %hslot.addr.053, i32 1
  %22 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pkt.i, align 4
  br i1 %remove_from_hanger.0.off0, label %brcmf_fws_hanger_poppkt.exit.thread35, label %if.end3.i.if.end83_crit_edge

if.end3.i.if.end83_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

brcmf_fws_hanger_poppkt.exit.thread35:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pkt.i, align 4
  %26 = ptrtoint ptr %popped.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %popped.i, align 4
  %inc13.i39 = add i32 %27, 1
  store i32 %inc13.i39, ptr %popped.i, align 4
  br label %if.end83

brcmf_fws_hanger_poppkt.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_poppkt, ptr noundef nonnull @.str.93) #10
  %28 = ptrtoint ptr %failed_to_pop.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %failed_to_pop.i.i, align 4
  %inc13.i = add i32 %29, 1
  store i32 %inc13.i, ptr %failed_to_pop.i.i, align 4
  br label %do.end78

do.end78:                                         ; preds = %brcmf_fws_hanger_poppkt.exit, %while.body.do.end78_crit_edge
  %30 = ptrtoint ptr %wiphy79 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wiphy79, align 4
  %dev80 = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.114, ptr noundef nonnull @__func__.brcmf_fws_txs_process, i32 noundef %hslot.addr.053) #13
  br label %cont

if.end83:                                         ; preds = %brcmf_fws_hanger_poppkt.exit.thread35, %if.end3.i.if.end83_crit_edge
  %mac = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 16
  %32 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mac, align 4
  %tobool84.not = icmp eq ptr %33, null
  br i1 %tobool84.not, label %do.end97, label %if.end112, !prof !253

do.end97:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1481, i32 noundef 9, ptr noundef null) #10
  call void @brcmu_pkt_buf_free_skb(ptr noundef %23) #10
  br label %cont

if.end112:                                        ; preds = %if.end83
  %transit_count = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %transit_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %transit_count, align 4
  %dec = add i32 %35, -1
  store i32 %dec, ptr %transit_count, align 4
  %suppressed = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %33, i32 0, i32 5
  %36 = ptrtoint ptr %suppressed to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %suppressed, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool113.not = icmp eq i8 %37, 0
  br i1 %tobool113.not, label %if.end112.do.body120_crit_edge, label %land.lhs.true

if.end112.do.body120_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body120

land.lhs.true:                                    ; preds = %if.end112
  %suppr_transit_count = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %33, i32 0, i32 14
  %38 = ptrtoint ptr %suppr_transit_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %suppr_transit_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool115.not = icmp eq i32 %39, 0
  br i1 %tobool115.not, label %land.lhs.true.do.body120_crit_edge, label %if.then116

land.lhs.true.do.body120_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body120

if.then116:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dec118 = add i32 %39, -1
  %40 = ptrtoint ptr %suppr_transit_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %dec118, ptr %suppr_transit_count, align 4
  br label %do.body120

do.body120:                                       ; preds = %if.then116, %land.lhs.true.do.body120_crit_edge, %if.end112.do.body120_crit_edge
  %htod = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %htod to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %htod, align 4
  %conv123 = zext i16 %seq.addr.048 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_fws_txs_process, ptr noundef nonnull @.str.116, ptr noundef nonnull %33, i32 noundef %conv, i32 noundef %42, i32 noundef %conv123) #10
  %43 = ptrtoint ptr %htod to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %htod, align 4
  %and.i = lshr i32 %44, 24
  %shr.i = and i32 %and.i, 7
  %45 = ptrtoint ptr %fcmode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fcmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp130 = icmp eq i32 %46, 1
  br i1 %cmp130, label %do.body120.if.then141_crit_edge, label %lor.lhs.false

do.body120.if.then141_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then141

lor.lhs.false:                                    ; preds = %do.body120
  %if_flags = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %if_flags to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %if_flags, align 2
  %49 = and i16 %48, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool136.not = icmp ne i16 %49, 0
  %or.cond = or i1 %cmp139, %tobool136.not
  br i1 %or.cond, label %lor.lhs.false.if.then141_crit_edge, label %lor.lhs.false.if.end143_crit_edge

lor.lhs.false.if.end143_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

lor.lhs.false.if.then141_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then141

if.then141:                                       ; preds = %lor.lhs.false.if.then141_crit_edge, %do.body120.if.then141_crit_edge
  %conv142 = trunc i32 %shr.i to i8
  call fastcc void @brcmf_fws_return_credits(ptr noundef %fws, i8 noundef zeroext %conv142, i8 noundef zeroext 1)
  %50 = ptrtoint ptr %fifo_credit_map.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fifo_credit_map.i, align 4
  %52 = ptrtoint ptr %fifo_delay_map.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fifo_delay_map.i, align 4
  %and.i4 = and i32 %53, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then141.if.then.i_crit_edge

if.then141.if.then.i_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then141
  %54 = ptrtoint ptr %creditmap_received.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %creditmap_received.i.i, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i, label %brcmf_fws_fc_active.exit.i

brcmf_fws_fc_active.exit.i:                       ; preds = %lor.lhs.false.i
  %56 = ptrtoint ptr %fcmode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fcmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i = icmp ne i32 %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool2.not.i = icmp eq i32 %53, 0
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %brcmf_fws_fc_active.exit.i.if.end143_crit_edge, label %brcmf_fws_fc_active.exit.i.if.then.i_crit_edge

brcmf_fws_fc_active.exit.i.if.then.i_crit_edge:   ; preds = %brcmf_fws_fc_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

brcmf_fws_fc_active.exit.i.if.end143_crit_edge:   ; preds = %brcmf_fws_fc_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool2.not.old.i = icmp eq i32 %53, 0
  br i1 %tobool2.not.old.i, label %land.lhs.true.i.if.end143_crit_edge, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.if.end143_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %brcmf_fws_fc_active.exit.i.if.then.i_crit_edge, %if.then141.if.then.i_crit_edge
  %58 = ptrtoint ptr %fws_wq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fws_wq.i, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %fws_dequeue_work.i) #10
  br label %if.end143

if.end143:                                        ; preds = %if.then.i, %land.lhs.true.i.if.end143_crit_edge, %brcmf_fws_fc_active.exit.i.if.end143_crit_edge, %lor.lhs.false.if.end143_crit_edge
  %60 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mac, align 8
  %if_flags.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 2
  %62 = ptrtoint ptr %if_flags.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %if_flags.i, align 2
  %64 = and i16 %63, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i6 = icmp eq i16 %64, 0
  br i1 %tobool.not.i6, label %if.end143.brcmf_fws_macdesc_return_req_credit.exit_crit_edge, label %land.lhs.true.i8

if.end143.brcmf_fws_macdesc_return_req_credit.exit_crit_edge: ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_return_req_credit.exit

land.lhs.true.i8:                                 ; preds = %if.end143
  %state.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %61, i32 0, i32 4
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp.i7 = icmp eq i8 %66, 2
  br i1 %cmp.i7, label %if.then.i9, label %land.lhs.true.i8.brcmf_fws_macdesc_return_req_credit.exit_crit_edge

land.lhs.true.i8.brcmf_fws_macdesc_return_req_credit.exit_crit_edge: ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_return_req_credit.exit

if.then.i9:                                       ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #12
  %requested_credit.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %61, i32 0, i32 8
  %67 = ptrtoint ptr %requested_credit.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %requested_credit.i, align 1
  %inc.i = add i8 %68, 1
  store i8 %inc.i, ptr %requested_credit.i, align 1
  br label %brcmf_fws_macdesc_return_req_credit.exit

brcmf_fws_macdesc_return_req_credit.exit:         ; preds = %if.then.i9, %land.lhs.true.i8.brcmf_fws_macdesc_return_req_credit.exit_crit_edge, %if.end143.brcmf_fws_macdesc_return_req_credit.exit_crit_edge
  %69 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fws, align 4
  %71 = ptrtoint ptr %ifp to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %ifp, align 4
  %proto.i = getelementptr inbounds %struct.brcmf_pub, ptr %70, i32 0, i32 1
  %72 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %proto.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %call.i = call i32 %75(ptr noundef %70, i1 noundef zeroext false, ptr noundef %23, ptr noundef nonnull %ifp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool146.not = icmp eq i32 %call.i, 0
  br i1 %tobool146.not, label %if.end148, label %if.then147

if.then147:                                       ; preds = %brcmf_fws_macdesc_return_req_credit.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %23) #10
  br label %cont

if.end148:                                        ; preds = %brcmf_fws_macdesc_return_req_credit.exit
  br i1 %remove_from_hanger.0.off0, label %if.end148.if.then157_crit_edge, label %if.then150

if.end148.if.then157_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157

if.then150:                                       ; preds = %if.end148
  %76 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mac, align 8
  %78 = ptrtoint ptr %htod to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %htod, align 4
  %and.i.i = lshr i32 %79, 8
  %shr.i.i = and i32 %and.i.i, 65535
  %suppressed.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %77, i32 0, i32 5
  %80 = ptrtoint ptr %suppressed.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %suppressed.i, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i14 = icmp eq i8 %81, 0
  br i1 %tobool.not.i14, label %if.then.i15, label %if.then150.if.end.i16_crit_edge

if.then150.if.end.i16_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i16

if.then.i15:                                      ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %suppressed.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %suppressed.i, align 4
  %transit_count.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %77, i32 0, i32 13
  %83 = ptrtoint ptr %transit_count.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %transit_count.i, align 4
  %suppr_transit_count.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %77, i32 0, i32 14
  %85 = ptrtoint ptr %suppr_transit_count.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %suppr_transit_count.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_fws_txstatus_suppressed, ptr noundef nonnull @.str.117, ptr noundef %77, i32 noundef %84) #10
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then.i15, %if.then150.if.end.i16_crit_edge
  %generation.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %77, i32 0, i32 6
  %86 = ptrtoint ptr %generation.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv.i, ptr %generation.i, align 1
  %87 = ptrtoint ptr %htod to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %htod, align 4
  %and1.i.i = and i32 %88, 2147483647
  %or.i.i = or i32 %and1.i.i, %shl.i.i
  store i32 %or.i.i, ptr %htod, align 4
  %htod_seq.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 8
  %89 = and i16 %seq.addr.048, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool16.not.i = icmp eq i16 %89, 0
  %or.i49.i = and i16 %seq.addr.048, -12289
  %and6.i50.i = or i16 %or.i49.i, 4096
  %and6.i51.i = and i16 %seq.addr.048, -4097
  %storemerge.i = select i1 %tobool16.not.i, i16 %and6.i51.i, i16 %and6.i50.i
  %90 = ptrtoint ptr %htod_seq.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %storemerge.i, ptr %htod_seq.i, align 2
  %call28.i = call fastcc i32 @brcmf_fws_enq(ptr noundef %fws, i32 noundef 2, i32 noundef %shr.i, ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.not.i = icmp eq i32 %call28.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3071, i32 %shr.i.i)
  %cmp.i52.i = icmp ugt i32 %shr.i.i, 3071
  br i1 %cmp.not.i, label %if.else32.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end.i16
  br i1 %cmp.i52.i, label %if.then30.i.if.then157_crit_edge, label %if.end.i.i

if.then30.i.if.then157_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157

if.end.i.i:                                       ; preds = %if.then30.i
  %arrayidx.i.i = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %shr.i.i
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp1.i.i = icmp eq i32 %92, 1
  br i1 %cmp1.i.i, label %do.body.i.i, label %if.end3.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_poppkt, ptr noundef nonnull @.str.93) #10
  br label %return.sink.split.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pkt.i.i = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %shr.i.i, i32 1
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %arrayidx.i.i, align 4
  %94 = ptrtoint ptr %pkt.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %pkt.i.i, align 4
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.end3.i.i, %do.body.i.i
  %popped.sink24.i.i = phi ptr [ %popped.i, %if.end3.i.i ], [ %failed_to_pop.i.i, %do.body.i.i ]
  %95 = ptrtoint ptr %popped.sink24.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %popped.sink24.i.i, align 4
  %inc13.i.i = add i32 %96, 1
  store i32 %inc13.i.i, ptr %popped.sink24.i.i, align 4
  br label %if.then157

if.else32.i:                                      ; preds = %if.end.i16
  br i1 %cmp.i52.i, label %if.else32.i.cont_crit_edge, label %if.end.i55.i

if.else32.i.cont_crit_edge:                       ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

if.end.i55.i:                                     ; preds = %if.else32.i
  %arrayidx.i53.i = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 4, i32 6, i32 %shr.i.i
  %97 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp1.i54.i = icmp eq i32 %98, 1
  br i1 %cmp1.i54.i, label %do.body.i56.i, label %if.end3.i57.i

do.body.i56.i:                                    ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_mark_suppressed, ptr noundef nonnull @.str.93) #10
  br label %cont

if.end3.i57.i:                                    ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 3, ptr %arrayidx.i53.i, align 4
  br label %cont

if.then157:                                       ; preds = %return.sink.split.i.i, %if.then30.i.if.then157_crit_edge, %if.end148.if.then157_crit_edge
  %100 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ifp, align 4
  call void @brcmf_txfinalize(ptr noundef %101, ptr noundef %23, i1 noundef zeroext true) #10
  br label %cont

cont:                                             ; preds = %if.then157, %if.end3.i57.i, %do.body.i56.i, %if.else32.i.cont_crit_edge, %if.then147, %do.end97, %do.end78
  %add159 = add i32 %hslot.addr.053, 1
  %and = and i32 %add159, 65535
  %102 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %mode, align 2
  %104 = and i8 %103, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool162.not = icmp eq i8 %104, 0
  %105 = add i16 %seq.addr.048, 1
  %106 = and i16 %105, 4095
  %seq.addr.1 = select i1 %tobool162.not, i16 %seq.addr.048, i16 %106
  %inc = add nuw i8 %cnt.052, 1
  %cmp70 = icmp ult i8 %inc, %compcnt
  br i1 %cmp70, label %cont.while.body_crit_edge, label %cont.while.end_crit_edge

cont.while.end_crit_edge:                         ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cont.while.body_crit_edge:                        ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cont.while.end_crit_edge, %if.end67.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fws_bus_blocked(ptr noundef %drvr, i1 noundef zeroext %flow_blocked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drvr_to_fws(ptr noundef %drvr) #10
  %avoid_queueing = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 22
  %0 = ptrtoint ptr %avoid_queueing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %avoid_queueing, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcmf_pub, ptr %drvr, i32 0, i32 9, i32 %i.023
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %ndev = getelementptr inbounds %struct.brcmf_if, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmf_txflowblock_if(ptr noundef nonnull %3, i32 noundef 2, i1 noundef zeroext %flow_blocked) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.if.end12_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %entry
  %frombool = zext i1 %flow_blocked to i8
  %bus_flow_blocked = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %bus_flow_blocked to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %bus_flow_blocked, align 4
  br i1 %flow_blocked, label %if.else9, label %if.then8

if.then8:                                         ; preds = %if.else
  %fifo_credit_map.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 16
  %7 = ptrtoint ptr %fifo_credit_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo_credit_map.i, align 4
  %fifo_delay_map.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 17
  %9 = ptrtoint ptr %fifo_delay_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo_delay_map.i, align 4
  %and.i = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then8.if.then.i_crit_edge

if.then8.if.then.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then8
  %creditmap_received.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 20
  %11 = ptrtoint ptr %creditmap_received.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %creditmap_received.i.i, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i, label %brcmf_fws_fc_active.exit.i

brcmf_fws_fc_active.exit.i:                       ; preds = %lor.lhs.false.i
  %fcmode.i.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %fcmode.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fcmode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %brcmf_fws_fc_active.exit.i.if.end12_crit_edge, label %brcmf_fws_fc_active.exit.i.if.then.i_crit_edge

brcmf_fws_fc_active.exit.i.if.then.i_crit_edge:   ; preds = %brcmf_fws_fc_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

brcmf_fws_fc_active.exit.i.if.end12_crit_edge:    ; preds = %brcmf_fws_fc_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.old.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.old.i, label %land.lhs.true.i.if.end12_crit_edge, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.if.end12_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %brcmf_fws_fc_active.exit.i.if.then.i_crit_edge, %if.then8.if.then.i_crit_edge
  %fws_wq.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 9
  %15 = ptrtoint ptr %fws_wq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fws_wq.i, align 4
  %fws_dequeue_work.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %fws_dequeue_work.i) #10
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bus_flow_block = getelementptr inbounds %struct.brcmf_fws_info, ptr %call, i32 0, i32 3, i32 23
  %17 = ptrtoint ptr %bus_flow_block to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bus_flow_block, align 4
  %inc10 = add i32 %18, 1
  store i32 %inc10, ptr %bus_flow_block, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then.i, %land.lhs.true.i.if.end12_crit_edge, %brcmf_fws_fc_active.exit.i.if.end12_crit_edge, %for.inc.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_txflowblock_if(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_tim_update(ptr noundef %fws, ptr noundef %entry1, i32 noundef %fifo, i1 noundef zeroext %send_immediately) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %psq = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1, i32 0, i32 12
  %mul = shl i32 %fifo, 1
  %shl = shl i32 3, %mul
  %call = tail call i32 @brcmu_pktq_mlen(ptr noundef %psq, i32 noundef %shl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %shl2 = shl nuw i32 1, %fifo
  %traffic_pending_bmp = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1, i32 0, i32 16
  %0 = ptrtoint ptr %traffic_pending_bmp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %traffic_pending_bmp, align 1
  %2 = trunc i32 %shl2 to i8
  %conv7 = or i8 %1, %2
  %3 = xor i8 %2, -1
  %conv3 = and i8 %1, %3
  %conv7.sink = select i1 %cmp, i8 %conv3, i8 %conv7
  store i8 %conv7.sink, ptr %traffic_pending_bmp, align 1
  %send_tim_signal = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1, i32 0, i32 15
  %traffic_lastreported_bmp = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1, i32 0, i32 17
  %4 = ptrtoint ptr %traffic_lastreported_bmp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %traffic_lastreported_bmp, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %conv7.sink)
  %cmp11.not = icmp eq i8 %5, %conv7.sink
  %not.cmp11.not = xor i1 %cmp11.not, true
  %spec.store.select = zext i1 %not.cmp11.not to i8
  %6 = ptrtoint ptr %send_tim_signal to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.store.select, ptr %send_tim_signal, align 4
  %send_immediately.not = xor i1 %send_immediately, true
  %brmerge = select i1 %send_immediately.not, i1 true, i1 %cmp11.not
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %land.lhs.true20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true20:                                  ; preds = %entry
  %state = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %entry1, i32 0, i32 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp22 = icmp eq i8 %8, 2
  br i1 %cmp22, label %if.then24, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true20
  %9 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fws, align 4
  %hdrlen = getelementptr inbounds %struct.brcmf_pub, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdrlen, align 4
  %add = add i32 %12, 16
  %call25 = tail call ptr @brcmu_pkt_buf_get_skb(i32 noundef %add) #10
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %if.then24.cleanup_crit_edge, label %if.end29

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.then24
  %call30 = tail call ptr @skb_pull(ptr noundef nonnull %call25, i32 noundef %add) #10
  %mac = getelementptr inbounds %struct.sk_buff, ptr %call25, i32 0, i32 3, i32 16
  %13 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry1, ptr %mac, align 4
  %state31 = getelementptr inbounds %struct.sk_buff, ptr %call25, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %state31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %state31, align 4
  %htod = getelementptr inbounds %struct.sk_buff, ptr %call25, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %htod to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %htod, align 4
  %htod_seq = getelementptr inbounds %struct.sk_buff, ptr %call25, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %htod_seq to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %htod_seq, align 4
  %call32 = tail call fastcc zeroext i8 @brcmf_fws_hdrpush(ptr noundef %fws, ptr noundef nonnull %call25)
  %if_flags = getelementptr inbounds %struct.sk_buff, ptr %call25, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %if_flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %if_flags, align 2
  %and4.i = and i16 %18, 15
  %conv36 = zext i16 %and4.i to i32
  %spinlock.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 2
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %20) #10
  %21 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fws, align 4
  %proto.i = getelementptr inbounds %struct.brcmf_pub, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %proto.i, align 4
  %txdata.i = getelementptr inbounds %struct.brcmf_proto, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %txdata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %txdata.i, align 4
  %call.i = tail call i32 %26(ptr noundef %22, i32 noundef %conv36, i8 noundef zeroext %call32, ptr noundef nonnull %call25) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call2.i, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %if.end29.cleanup_crit_edge, label %if.then40

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %call25) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end29.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmu_pktq_mlen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pkt_buf_get_skb(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @brcmf_fws_hdrpush(ptr nocapture noundef readonly %fws, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %htod = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %htod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %htod, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %htod_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %htod_seq to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %htod_seq, align 8
  %if_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %if_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %if_flags, align 2
  %and4.i = and i16 %8, 15
  %conv = zext i16 %and4.i to i32
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 65535
  %conv15 = zext i16 %6 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_hdrpush, ptr noundef nonnull @.str.75, ptr noundef %1, i32 noundef %conv, i32 noundef %and, i32 noundef %3, i32 noundef %conv15) #10
  %send_tim_signal = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %send_tim_signal to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %send_tim_signal, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 4
  %mode = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 21
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mode, align 2
  %13 = lshr i8 %12, 2
  %14 = and i8 %13, 2
  %15 = zext i8 %14 to i16
  %16 = or i16 %spec.select, %15
  %add28 = add nuw nsw i16 %16, 6
  %sub = add nuw nsw i16 %16, 5
  %or = or i16 %sub, 3
  %add31 = sub nuw nsw i16 -5, %16
  %sub33 = add nsw i16 %add31, %or
  %conv34 = trunc i16 %sub33 to i8
  %conv34.mask = and i16 %sub33, 254
  %conv35 = zext i16 %conv34.mask to i32
  %add37 = add nuw nsw i16 %conv34.mask, %add28
  %conv39 = zext i16 %add37 to i32
  %call40 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv39) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %18, align 1
  %arrayidx41 = getelementptr i8, ptr %18, i32 1
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %arrayidx41, align 1
  %arrayidx42 = getelementptr i8, ptr %18, i32 2
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %4, ptr %arrayidx42, align 1
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mode, align 2
  %24 = and i8 %23, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool47.not = icmp eq i8 %24, 0
  br i1 %tobool47.not, label %entry.if.end54_crit_edge, label %if.then48

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then48:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %25 = tail call i16 @llvm.bswap.i16(i16 %6)
  %26 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 6, ptr %arrayidx41, align 1
  %arrayidx53 = getelementptr i8, ptr %18, i32 6
  %27 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %25, ptr %arrayidx53, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %entry.if.end54_crit_edge
  %28 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx41, align 1
  %conv56 = zext i8 %29 to i32
  %add57 = add nuw nsw i32 %conv56, 2
  %add.ptr = getelementptr i8, ptr %18, i32 %add57
  %30 = ptrtoint ptr %send_tim_signal to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %send_tim_signal, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool59.not = icmp eq i8 %31, 0
  br i1 %tobool59.not, label %if.end54.if.end75_crit_edge, label %if.then60

if.end54.if.end75_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %send_tim_signal to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %send_tim_signal, align 4
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 12, ptr %add.ptr, align 1
  %arrayidx63 = getelementptr i8, ptr %add.ptr, i32 1
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %arrayidx63, align 1
  %mac_handle = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %mac_handle to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mac_handle, align 1
  %arrayidx64 = getelementptr i8, ptr %add.ptr, i32 2
  %37 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx64, align 1
  %traffic_pending_bmp = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %traffic_pending_bmp to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %traffic_pending_bmp, align 1
  %arrayidx65 = getelementptr i8, ptr %add.ptr, i32 3
  %40 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx65, align 1
  %41 = load i8, ptr %mac_handle, align 1
  %conv68 = zext i8 %41 to i32
  %42 = load i8, ptr %traffic_pending_bmp, align 1
  %conv70 = zext i8 %42 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fws_hdrpush, ptr noundef nonnull @.str.76, i32 noundef %conv68, i32 noundef %conv70) #10
  %add.ptr73 = getelementptr i8, ptr %add.ptr, i32 4
  %43 = ptrtoint ptr %traffic_pending_bmp to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %traffic_pending_bmp, align 1
  %traffic_lastreported_bmp = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %traffic_lastreported_bmp to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %traffic_lastreported_bmp, align 2
  br label %if.end75

if.end75:                                         ; preds = %if.then60, %if.end54.if.end75_crit_edge
  %wlh.0 = phi ptr [ %add.ptr73, %if.then60 ], [ %add.ptr, %if.end54.if.end75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv34)
  %tobool76.not = icmp eq i8 %conv34, 0
  br i1 %tobool76.not, label %if.end75.if.end79_crit_edge, label %if.then77

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %46 = call ptr @memset(ptr %wlh.0, i32 255, i32 %conv35)
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75.if.end79_crit_edge
  %47 = lshr i16 %add37, 2
  %conv82 = trunc i16 %47 to i8
  ret i8 %conv82
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_return_credits(ptr nocapture noundef %fws, i8 noundef zeroext %fifo, i8 noundef zeroext %credits) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %credits)
  %tobool.not = icmp eq i8 %credits, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %fifo to i32
  %shl = shl nuw i32 1, %conv
  %fifo_credit_map = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 16
  %0 = ptrtoint ptr %fifo_credit_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo_credit_map, align 4
  %or = or i32 %1, %shl
  store i32 %or, ptr %fifo_credit_map, align 4
  %2 = add i8 %fifo, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %3 = icmp ult i8 %2, 3
  br i1 %3, label %for.body.preheader, label %if.end.if.then31_crit_edge

if.end.if.then31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

for.body.preheader:                               ; preds = %if.end
  %arrayidx9 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 14, i32 %conv, i32 3
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %for.body.preheader.for.inc_crit_edge, label %if.then11

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %for.body.preheader
  %6 = ptrtoint ptr %fifo_credit_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_credit_map, align 4
  %or14 = or i32 %7, 8
  store i32 %or14, ptr %fifo_credit_map, align 4
  %arrayidx16 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 12, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %conv17 = zext i8 %credits to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv17)
  %cmp18.not = icmp slt i32 %9, %conv17
  br i1 %cmp18.not, label %if.else, label %if.then11.if.then20_crit_edge

if.then11.if.then20_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %if.then11.3.if.then20_crit_edge, %if.then11.2.if.then20_crit_edge, %if.then11.1.if.then20_crit_edge, %if.then11.if.then20_crit_edge
  %arrayidx9.lcssa = phi ptr [ %arrayidx9, %if.then11.if.then20_crit_edge ], [ %arrayidx9.1, %if.then11.1.if.then20_crit_edge ], [ %arrayidx9.2, %if.then11.2.if.then20_crit_edge ], [ %arrayidx9.3, %if.then11.3.if.then20_crit_edge ]
  %arrayidx16.lcssa = phi ptr [ %arrayidx16, %if.then11.if.then20_crit_edge ], [ %arrayidx16.1, %if.then11.1.if.then20_crit_edge ], [ %arrayidx16.2, %if.then11.2.if.then20_crit_edge ], [ %arrayidx16.3, %if.then11.3.if.then20_crit_edge ]
  %.lcssa = phi i32 [ %9, %if.then11.if.then20_crit_edge ], [ %22, %if.then11.1.if.then20_crit_edge ], [ %32, %if.then11.2.if.then20_crit_edge ], [ %42, %if.then11.3.if.then20_crit_edge ]
  %conv17.lcssa = phi i32 [ %conv17, %if.then11.if.then20_crit_edge ], [ %conv17.1, %if.then11.1.if.then20_crit_edge ], [ %conv17.2, %if.then11.2.if.then20_crit_edge ], [ %conv17.3, %if.then11.3.if.then20_crit_edge ]
  %sub = sub i32 %.lcssa, %conv17.lcssa
  %10 = ptrtoint ptr %arrayidx9.lcssa to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %arrayidx9.lcssa, align 4
  %11 = ptrtoint ptr %arrayidx16.lcssa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx16.lcssa, align 4
  %add = add i32 %12, %conv17.lcssa
  store i32 %add, ptr %arrayidx16.lcssa, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %13 = trunc i32 %9 to i8
  %conv25 = sub i8 %credits, %13
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %add26 = add i32 %15, %9
  store i32 %add26, ptr %arrayidx16, align 4
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.preheader.for.inc_crit_edge
  %credits.addr.1 = phi i8 [ %conv25, %if.else ], [ %credits, %for.body.preheader.for.inc_crit_edge ]
  %arrayidx9.1 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 14, i32 %conv, i32 2
  %17 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.1 = icmp eq i32 %18, 0
  br i1 %tobool10.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then11.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then11.1:                                      ; preds = %for.inc
  %19 = ptrtoint ptr %fifo_credit_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo_credit_map, align 4
  %or14.1 = or i32 %20, 4
  store i32 %or14.1, ptr %fifo_credit_map, align 4
  %arrayidx16.1 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx9.1, align 4
  %conv17.1 = zext i8 %credits.addr.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv17.1)
  %cmp18.not.1 = icmp slt i32 %22, %conv17.1
  br i1 %cmp18.not.1, label %if.else.1, label %if.then11.1.if.then20_crit_edge

if.then11.1.if.then20_crit_edge:                  ; preds = %if.then11.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.else.1:                                        ; preds = %if.then11.1
  call void @__sanitizer_cov_trace_pc() #12
  %23 = trunc i32 %22 to i8
  %conv25.1 = sub i8 %credits.addr.1, %23
  %24 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16.1, align 4
  %add26.1 = add i32 %25, %22
  store i32 %add26.1, ptr %arrayidx16.1, align 4
  %26 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx9.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %for.inc.for.inc.1_crit_edge
  %credits.addr.1.1 = phi i8 [ %conv25.1, %if.else.1 ], [ %credits.addr.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx9.2 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 14, i32 %conv, i32 1
  %27 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx9.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.2 = icmp eq i32 %28, 0
  br i1 %tobool10.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then11.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then11.2:                                      ; preds = %for.inc.1
  %29 = ptrtoint ptr %fifo_credit_map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fifo_credit_map, align 4
  %or14.2 = or i32 %30, 2
  store i32 %or14.2, ptr %fifo_credit_map, align 4
  %arrayidx16.2 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx9.2, align 4
  %conv17.2 = zext i8 %credits.addr.1.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv17.2)
  %cmp18.not.2 = icmp slt i32 %32, %conv17.2
  br i1 %cmp18.not.2, label %if.else.2, label %if.then11.2.if.then20_crit_edge

if.then11.2.if.then20_crit_edge:                  ; preds = %if.then11.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.else.2:                                        ; preds = %if.then11.2
  call void @__sanitizer_cov_trace_pc() #12
  %33 = trunc i32 %32 to i8
  %conv25.2 = sub i8 %credits.addr.1.1, %33
  %34 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx16.2, align 4
  %add26.2 = add i32 %35, %32
  store i32 %add26.2, ptr %arrayidx16.2, align 4
  %36 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx9.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %for.inc.1.for.inc.2_crit_edge
  %credits.addr.1.2 = phi i8 [ %conv25.2, %if.else.2 ], [ %credits.addr.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx9.3 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 14, i32 %conv, i32 0
  %37 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool10.not.3 = icmp eq i32 %38, 0
  br i1 %tobool10.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then11.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then11.3:                                      ; preds = %for.inc.2
  %39 = ptrtoint ptr %fifo_credit_map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fifo_credit_map, align 4
  %or14.3 = or i32 %40, 1
  store i32 %or14.3, ptr %fifo_credit_map, align 4
  %arrayidx16.3 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 12, i32 0
  %41 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx9.3, align 4
  %conv17.3 = zext i8 %credits.addr.1.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv17.3)
  %cmp18.not.3 = icmp slt i32 %42, %conv17.3
  br i1 %cmp18.not.3, label %if.else.3, label %if.then11.3.if.then20_crit_edge

if.then11.3.if.then20_crit_edge:                  ; preds = %if.then11.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.else.3:                                        ; preds = %if.then11.3
  call void @__sanitizer_cov_trace_pc() #12
  %43 = trunc i32 %42 to i8
  %conv25.3 = sub i8 %credits.addr.1.2, %43
  %44 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx16.3, align 4
  %add26.3 = add i32 %45, %42
  store i32 %add26.3, ptr %arrayidx16.3, align 4
  %46 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx9.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %for.inc.2.for.inc.3_crit_edge
  %credits.addr.1.3 = phi i8 [ %conv25.3, %if.else.3 ], [ %credits.addr.1.2, %for.inc.2.for.inc.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %credits.addr.1.3)
  %tobool30.not = icmp eq i8 %credits.addr.1.3, 0
  br i1 %tobool30.not, label %for.inc.3.if.end37_crit_edge, label %for.inc.3.if.then31_crit_edge

for.inc.3.if.then31_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

for.inc.3.if.end37_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then31:                                        ; preds = %for.inc.3.if.then31_crit_edge, %if.end.if.then31_crit_edge
  %credits.addr.290 = phi i8 [ %credits.addr.1.3, %for.inc.3.if.then31_crit_edge ], [ %credits, %if.end.if.then31_crit_edge ]
  %conv32 = zext i8 %credits.addr.290 to i32
  %arrayidx35 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 12, i32 %conv
  %47 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx35, align 4
  %add36 = add i32 %48, %conv32
  store i32 %add36, ptr %arrayidx35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %for.inc.3.if.end37_crit_edge
  %arrayidx40 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 12, i32 %conv
  %49 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx40, align 4
  %arrayidx42 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 13, i32 %conv
  %51 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp43 = icmp sgt i32 %50, %52
  br i1 %cmp43, label %if.then45, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end37.cleanup_crit_edge, %if.then20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_penq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_flow_control_check(ptr nocapture noundef %fws, ptr nocapture noundef readonly %pq, i8 noundef zeroext %if_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fws, align 4
  %conv = zext i8 %if_id to i32
  %call = tail call ptr @brcmf_get_ifp(ptr noundef %1, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !253

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 964, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  %netif_stop = getelementptr inbounds %struct.brcmf_if, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %netif_stop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %netif_stop, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool25.not = icmp eq i8 %4, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %land.lhs.true

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end23
  %len = getelementptr inbounds %struct.pktq, ptr %pq, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %6)
  %cmp = icmp ult i16 %6, 65
  br i1 %cmp, label %if.then28, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmf_txflowblock_if(ptr noundef nonnull %call, i32 noundef 1, i1 noundef zeroext false) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %land.lhs.true.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %7 = ptrtoint ptr %netif_stop to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %netif_stop, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool33.not = icmp eq i8 %9, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true34:                                  ; preds = %if.end29
  %len35 = getelementptr inbounds %struct.pktq, ptr %pq, i32 0, i32 3
  %10 = ptrtoint ptr %len35 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len35, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %11)
  %cmp37 = icmp ugt i16 %11, 127
  br i1 %cmp37, label %if.then39, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  %fws_flow_block = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 24
  %12 = ptrtoint ptr %fws_flow_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fws_flow_block, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %fws_flow_block, align 4
  tail call void @brcmf_txflowblock_if(ptr noundef nonnull %call, i32 noundef 1, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %land.lhs.true34.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @brcmf_fws_ifidx_match(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %if_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %if_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %if_flags, align 2
  %and4.i = and i16 %1, 15
  %conv = zext i16 %and4.i to i32
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp eq i32 %3, %conv
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_pdeq_match(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @brcmf_fws_deq(ptr noundef %fws, i32 noundef %fifo) unnamed_addr #0 align 64 {
entry:
  %prec_out = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prec_out) #10
  %0 = ptrtoint ptr %prec_out to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prec_out, align 4, !annotation !257
  %desc = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 8
  %arrayidx = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 15, i32 %fifo
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %shl.i = shl nuw i32 1, %fifo
  %mul = shl i32 %fifo, 1
  %shl18 = shl nuw i32 1, %mul
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.093 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i32 %i.093, %2
  %rem = srem i32 %add, 49
  %occupied = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 1
  %3 = ptrtoint ptr %occupied to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %occupied, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %mac_handle.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 2
  %5 = ptrtoint ptr %mac_handle.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mac_handle.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.if.end4.i_crit_edge, label %if.then.i

lor.lhs.false.if.end4.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i:                                        ; preds = %lor.lhs.false
  %interface_id.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 3
  %7 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %interface_id.i, align 2
  %idxprom.i = zext i8 %8 to i32
  %state.i = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 8, i32 1, i32 %idxprom.i, i32 4
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.i = icmp eq i8 %10, 2
  br i1 %cmp.i, label %if.then.i.for.inc_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %lor.lhs.false.if.end4.i_crit_edge
  %state5.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 4
  %11 = ptrtoint ptr %state5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp7.i = icmp eq i8 %12, 2
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.end4.i.brcmf_fws_macdesc_closed.exit_crit_edge

if.end4.i.brcmf_fws_macdesc_closed.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_closed.exit

land.lhs.true.i:                                  ; preds = %if.end4.i
  %requested_credit.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 8
  %13 = ptrtoint ptr %requested_credit.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %requested_credit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not.i = icmp eq i8 %14, 0
  br i1 %tobool9.not.i, label %land.rhs.i, label %land.lhs.true.i.brcmf_fws_macdesc_closed.exit_crit_edge

land.lhs.true.i.brcmf_fws_macdesc_closed.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_closed.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %requested_packet.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 9
  %15 = ptrtoint ptr %requested_packet.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %requested_packet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not.i = icmp eq i8 %16, 0
  br i1 %tobool10.not.i, label %land.rhs.i.for.inc_crit_edge, label %land.rhs.i.brcmf_fws_macdesc_closed.exit_crit_edge

land.rhs.i.brcmf_fws_macdesc_closed.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_closed.exit

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

brcmf_fws_macdesc_closed.exit:                    ; preds = %land.rhs.i.brcmf_fws_macdesc_closed.exit_crit_edge, %land.lhs.true.i.brcmf_fws_macdesc_closed.exit_crit_edge, %if.end4.i.brcmf_fws_macdesc_closed.exit_crit_edge
  %ac_bitmap.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 7
  %17 = ptrtoint ptr %ac_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ac_bitmap.i, align 2
  %conv13.i = zext i8 %18 to i32
  %and.i = and i32 %shl.i, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %brcmf_fws_macdesc_closed.exit.for.inc_crit_edge, label %if.end

brcmf_fws_macdesc_closed.exit.for.inc_crit_edge:  ; preds = %brcmf_fws_macdesc_closed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %brcmf_fws_macdesc_closed.exit
  %suppressed = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 5
  %19 = ptrtoint ptr %suppressed to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %suppressed, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not = icmp eq i8 %20, 0
  %. = select i1 %tobool3.not, i32 3, i32 2
  %psq = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 12
  %shl = shl i32 %., %mul
  %call6 = call ptr @brcmu_pktq_mdeq(ptr noundef %psq, i32 noundef %shl, ptr noundef nonnull %prec_out) #10
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.then8, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then8:                                         ; preds = %if.end
  %21 = ptrtoint ptr %suppressed to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %suppressed, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not = icmp eq i8 %22, 0
  br i1 %tobool10.not, label %if.then8.for.inc_crit_edge, label %if.then11

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %if.then8
  %suppr_transit_count = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 14
  %23 = ptrtoint ptr %suppr_transit_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %suppr_transit_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not = icmp eq i32 %24, 0
  br i1 %tobool12.not, label %if.end21, label %if.then11.for.inc_crit_edge

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end21:                                         ; preds = %if.then11
  %25 = ptrtoint ptr %suppressed to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %suppressed, align 4
  %call19 = call ptr @brcmu_pktq_mdeq(ptr noundef %psq, i32 noundef %shl18, ptr noundef nonnull %prec_out) #10
  %cmp22 = icmp eq ptr %call19, null
  br i1 %cmp22, label %if.end21.for.inc_crit_edge, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end24:                                         ; preds = %if.end21.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %p.092 = phi ptr [ %call19, %if.end21.if.end24_crit_edge ], [ %call6, %if.end.if.end24_crit_edge ]
  %requested_credit.i79 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 8
  %26 = ptrtoint ptr %requested_credit.i79 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %requested_credit.i79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.not.i = icmp eq i8 %27, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i81

if.then.i81:                                      ; preds = %if.end24
  %dec.i = add i8 %27, -1
  %28 = ptrtoint ptr %requested_credit.i79 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %dec.i, ptr %requested_credit.i79, align 1
  %if_flags.i = getelementptr inbounds %struct.sk_buff, ptr %p.092, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %if_flags.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %if_flags.i, align 2
  %or.i51.i = or i16 %30, 2304
  store i16 %or.i51.i, ptr %if_flags.i, align 2
  %31 = ptrtoint ptr %state5.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %state5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp8.not.i = icmp eq i8 %32, 2
  br i1 %cmp8.not.i, label %if.then.i81.brcmf_fws_macdesc_use_req_credit.exit_crit_edge, label %do.body.i

if.then.i81.brcmf_fws_macdesc_use_req_credit.exit_crit_edge: ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_use_req_credit.exit

do.body.i:                                        ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_macdesc_use_req_credit, ptr noundef nonnull @.str.97) #10
  br label %brcmf_fws_macdesc_use_req_credit.exit

if.else.i:                                        ; preds = %if.end24
  %requested_packet.i82 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 9
  %33 = ptrtoint ptr %requested_packet.i82 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %requested_packet.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp12.not.i = icmp eq i8 %34, 0
  br i1 %cmp12.not.i, label %if.else31.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %dec16.i = add i8 %34, -1
  %35 = ptrtoint ptr %requested_packet.i82 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %dec16.i, ptr %requested_packet.i82, align 4
  %if_flags19.i = getelementptr inbounds %struct.sk_buff, ptr %p.092, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %if_flags19.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %if_flags19.i, align 2
  %or.i53.i = and i16 %37, -2305
  %and6.i54.i = or i16 %or.i53.i, 2048
  store i16 %and6.i54.i, ptr %if_flags19.i, align 2
  %38 = ptrtoint ptr %state5.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %state5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp25.not.i = icmp eq i8 %39, 2
  br i1 %cmp25.not.i, label %if.then14.i.brcmf_fws_macdesc_use_req_credit.exit_crit_edge, label %do.body28.i

if.then14.i.brcmf_fws_macdesc_use_req_credit.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_macdesc_use_req_credit.exit

do.body28.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_macdesc_use_req_credit, ptr noundef nonnull @.str.98) #10
  br label %brcmf_fws_macdesc_use_req_credit.exit

if.else31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %if_flags34.i = getelementptr inbounds %struct.sk_buff, ptr %p.092, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %if_flags34.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %if_flags34.i, align 2
  %and6.i56.i = and i16 %41, -2305
  store i16 %and6.i56.i, ptr %if_flags34.i, align 2
  br label %brcmf_fws_macdesc_use_req_credit.exit

brcmf_fws_macdesc_use_req_credit.exit:            ; preds = %if.else31.i, %do.body28.i, %if.then14.i.brcmf_fws_macdesc_use_req_credit.exit_crit_edge, %do.body.i, %if.then.i81.brcmf_fws_macdesc_use_req_credit.exit_crit_edge
  %add26 = add i32 %add, 1
  %rem27 = srem i32 %add26, 49
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %rem27, ptr %arrayidx, align 4
  %if_flags = getelementptr inbounds %struct.sk_buff, ptr %p.092, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %if_flags to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %if_flags, align 2
  %45 = trunc i16 %44 to i8
  %conv = and i8 %45, 15
  call fastcc void @brcmf_fws_flow_control_check(ptr noundef %fws, ptr noundef %psq, i8 noundef zeroext %conv)
  %shl.i84 = shl i32 3, %mul
  %call.i = call i32 @brcmu_pktq_mlen(ptr noundef %psq, i32 noundef %shl.i84) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i85 = icmp eq i32 %call.i, 0
  %traffic_pending_bmp.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 16
  %46 = ptrtoint ptr %traffic_pending_bmp.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %traffic_pending_bmp.i, align 1
  %48 = trunc i32 %shl.i to i8
  %conv7.i = or i8 %47, %48
  %49 = xor i8 %48, -1
  %conv3.i = and i8 %47, %49
  %conv7.sink.i = select i1 %cmp.i85, i8 %conv3.i, i8 %conv7.i
  store i8 %conv7.sink.i, ptr %traffic_pending_bmp.i, align 1
  %send_tim_signal.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 15
  %traffic_lastreported_bmp.i = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %desc, i32 %rem, i32 17
  %50 = ptrtoint ptr %traffic_lastreported_bmp.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %traffic_lastreported_bmp.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %conv7.sink.i)
  %cmp11.not.i = icmp ne i8 %51, %conv7.sink.i
  %spec.store.select.i = zext i1 %cmp11.not.i to i8
  %52 = ptrtoint ptr %send_tim_signal.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %spec.store.select.i, ptr %send_tim_signal.i, align 4
  %arrayidx33 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 11, i32 %fifo
  %53 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx33, align 4
  %dec = add i32 %54, -1
  store i32 %dec, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp36 = icmp eq i32 %dec, 0
  br i1 %cmp36, label %if.then38, label %brcmf_fws_macdesc_use_req_credit.exit.do.body_crit_edge

brcmf_fws_macdesc_use_req_credit.exit.do.body_crit_edge: ; preds = %brcmf_fws_macdesc_use_req_credit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then38:                                        ; preds = %brcmf_fws_macdesc_use_req_credit.exit
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %shl.i, -1
  %fifo_delay_map = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 17
  %55 = ptrtoint ptr %fifo_delay_map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fifo_delay_map, align 4
  %and = and i32 %56, %neg
  store i32 %and, ptr %fifo_delay_map, align 4
  br label %do.body

for.inc:                                          ; preds = %if.end21.for.inc_crit_edge, %if.then11.for.inc_crit_edge, %if.then8.for.inc_crit_edge, %brcmf_fws_macdesc_closed.exit.for.inc_crit_edge, %land.rhs.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 49
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.then38, %brcmf_fws_macdesc_use_req_credit.exit.do.body_crit_edge
  %p.1 = phi ptr [ %p.092, %if.then38 ], [ %p.092, %brcmf_fws_macdesc_use_req_credit.exit.do.body_crit_edge ], [ null, %for.inc.do.body_crit_edge ]
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_fws_deq, ptr noundef nonnull @.str.96, i32 noundef %fifo, ptr noundef %p.1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prec_out) #10
  ret ptr %p.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_txfinalize(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_fws_commit_skb(ptr noundef %fws, i32 noundef %fifo, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 2
  br i1 %cmp.not.i, label %if.end.brcmf_fws_precommit_skb.exit_crit_edge, label %if.then.i

if.end.brcmf_fws_precommit_skb.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fws_precommit_skb.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %htod.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %generation.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %generation.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %generation.i, align 1
  %conv.i = zext i8 %6 to i32
  %shl.i.i = shl i32 %conv.i, 31
  %7 = ptrtoint ptr %htod.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %htod.i, align 4
  %and1.i.i = and i32 %8, 2147483647
  %or.i.i = or i32 %and1.i.i, %shl.i.i
  store i32 %or.i.i, ptr %htod.i, align 4
  br label %brcmf_fws_precommit_skb.exit

brcmf_fws_precommit_skb.exit:                     ; preds = %if.then.i, %if.end.brcmf_fws_precommit_skb.exit_crit_edge
  %if_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %if_flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %if_flags.i, align 2
  %11 = and i16 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  %spec.select.i = select i1 %tobool.not.i, i32 134217728, i32 402653184
  %htod12.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %htod12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %htod12.i, align 4
  %and1.i3.i = and i32 %13, -2013265921
  %or.i4.i = or i32 %spec.select.i, %and1.i3.i
  store i32 %or.i4.i, ptr %htod12.i, align 4
  %call14.i = tail call fastcc zeroext i8 @brcmf_fws_hdrpush(ptr noundef %fws, ptr noundef %skb) #10
  %transit_count = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %transit_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transit_count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %transit_count, align 4
  %suppressed = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %suppressed to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %suppressed, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %brcmf_fws_precommit_skb.exit.if.end6_crit_edge, label %if.then4

brcmf_fws_precommit_skb.exit.if.end6_crit_edge:   ; preds = %brcmf_fws_precommit_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %brcmf_fws_precommit_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %suppr_transit_count = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %suppr_transit_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %suppr_transit_count, align 4
  %inc5 = add i32 %19, 1
  store i32 %inc5, ptr %suppr_transit_count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %brcmf_fws_precommit_skb.exit.if.end6_crit_edge
  %20 = ptrtoint ptr %if_flags.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %if_flags.i, align 2
  %and4.i = and i16 %21, 15
  %spinlock.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 2
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %23) #10
  %24 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fws, align 4
  %conv10 = zext i16 %and4.i to i32
  %proto.i = getelementptr inbounds %struct.brcmf_pub, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %proto.i, align 4
  %txdata.i = getelementptr inbounds %struct.brcmf_proto, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %txdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %txdata.i, align 4
  %call.i = tail call i32 %29(ptr noundef %25, i32 noundef %conv10, i8 noundef zeroext %call14.i, ptr noundef %skb) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call2.i, ptr %flags.i, align 4
  %31 = ptrtoint ptr %if_flags.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %if_flags.i, align 2
  %conv14 = zext i16 %32 to i32
  %33 = ptrtoint ptr %htod12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %htod12.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_fws_commit_skb, ptr noundef nonnull @.str.99, ptr noundef %1, i32 noundef %conv14, i32 noundef %34, i32 noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end6
  %35 = ptrtoint ptr %transit_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %transit_count, align 4
  %dec = add i32 %36, -1
  store i32 %dec, ptr %transit_count, align 4
  %37 = ptrtoint ptr %suppressed to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %suppressed, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool19.not = icmp eq i8 %38, 0
  br i1 %tobool19.not, label %if.then16.if.end23_crit_edge, label %if.then20

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %suppr_transit_count21 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %suppr_transit_count21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %suppr_transit_count21, align 4
  %dec22 = add i32 %40, -1
  store i32 %dec22, ptr %suppr_transit_count21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then16.if.end23_crit_edge
  %41 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fws, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %43 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %tmp.i, align 4
  %proto.i76 = getelementptr inbounds %struct.brcmf_pub, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %proto.i76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %proto.i76, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call.i77 = call i32 %47(ptr noundef %42, i1 noundef zeroext false, ptr noundef %skb, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  %48 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fws, align 4
  %50 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mac, align 8
  %occupied.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %occupied.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %occupied.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i79 = icmp eq i8 %53, 0
  br i1 %tobool.not.i79, label %do.end16.i, label %if.then.i84

if.then.i84:                                      ; preds = %if.end23
  %mul.i = shl i32 %fifo, 1
  %54 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i81 = icmp eq i32 %55, 2
  %inc.i = zext i1 %cmp.i81 to i32
  %spec.select.i82 = or i32 %mul.i, %inc.i
  %psq.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %51, i32 0, i32 12
  %call.i83 = call ptr @brcmu_pktq_penq_head(ptr noundef %psq.i, i32 noundef %spec.select.i82, ptr noundef %skb) #10
  %cmp6.i = icmp eq ptr %call.i83, null
  br i1 %cmp6.i, label %do.end.i, label %if.else31.i

do.end.i:                                         ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %49, i32 0, i32 2
  %56 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %57, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef %51, i32 noundef %spec.select.i82) #13
  br label %if.then25.i

do.end16.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy17.i = getelementptr inbounds %struct.brcmf_pub, ptr %49, i32 0, i32 2
  %58 = ptrtoint ptr %wiphy17.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wiphy17.i, align 4
  %dev18.i = getelementptr inbounds %struct.wiphy, ptr %59, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, ptr noundef %51) #13
  br label %if.then25.i

if.then25.i:                                      ; preds = %do.end16.i, %do.end.i
  %rollback_failed.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 14
  %60 = ptrtoint ptr %rollback_failed.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rollback_failed.i, align 4
  %inc26.i = add i32 %61, 1
  store i32 %inc26.i, ptr %rollback_failed.i, align 4
  %62 = ptrtoint ptr %htod12.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %htod12.i, align 4
  %and.i.i = lshr i32 %63, 8
  %shr.i.i = and i32 %and.i.i, 65535
  call fastcc void @brcmf_fws_txs_process(ptr noundef %fws, i8 noundef zeroext 6, i32 noundef %shr.i.i, i32 noundef 0, i16 noundef zeroext 0, i8 noundef zeroext 1) #10
  br label %cleanup

if.else31.i:                                      ; preds = %if.then.i84
  %rollback_success.i = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 13
  %64 = ptrtoint ptr %rollback_success.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rollback_success.i, align 4
  %inc33.i = add i32 %65, 1
  store i32 %inc33.i, ptr %rollback_success.i, align 4
  %conv.i86 = trunc i32 %fifo to i8
  call fastcc void @brcmf_fws_return_credits(ptr noundef %fws, i8 noundef zeroext %conv.i86, i8 noundef zeroext 1) #10
  %66 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mac, align 8
  %68 = ptrtoint ptr %if_flags.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %if_flags.i, align 2
  %70 = and i16 %69, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool.not.i.i = icmp eq i16 %70, 0
  br i1 %tobool.not.i.i, label %if.else31.i.cleanup_crit_edge, label %land.lhs.true.i.i

if.else31.i.cleanup_crit_edge:                    ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.else31.i
  %state.i.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %67, i32 0, i32 4
  %71 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %state.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp.i.i = icmp eq i8 %72, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %requested_credit.i.i = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %67, i32 0, i32 8
  %73 = ptrtoint ptr %requested_credit.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %requested_credit.i.i, align 1
  %inc.i.i = add i8 %74, 1
  store i8 %inc.i.i, ptr %requested_credit.i.i, align 1
  br label %cleanup

if.end26:                                         ; preds = %if.end6
  %pkt2bus = getelementptr inbounds %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %pkt2bus to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pkt2bus, align 4
  %inc27 = add i32 %76, 1
  store i32 %inc27, ptr %pkt2bus, align 4
  %arrayidx = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 5, i32 %fifo
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx, align 4
  %inc29 = add i32 %78, 1
  store i32 %inc29, ptr %arrayidx, align 4
  %79 = ptrtoint ptr %if_flags.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %if_flags.i, align 2
  %81 = and i16 %80, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool34.not = icmp eq i16 %81, 0
  br i1 %tobool34.not, label %if.end26.cleanup_crit_edge, label %if.then35

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx37 = getelementptr %struct.brcmf_fws_info, ptr %fws, i32 0, i32 3, i32 6, i32 %fifo
  %82 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx37, align 4
  %inc38 = add i32 %83, 1
  store i32 %inc38, ptr %arrayidx37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end26.cleanup_crit_edge, %if.then.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %if.else31.i.cleanup_crit_edge, %if.then25.i, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call.i, %if.then35 ], [ %call.i, %if.end26.cleanup_crit_edge ], [ %call.i, %if.then25.i ], [ %call.i, %if.else31.i.cleanup_crit_edge ], [ %call.i, %land.lhs.true.i.i.cleanup_crit_edge ], [ %call.i, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_mdeq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_penq_head(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !42, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !91, !93, !95, !96, !97, !99, !101, !102, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !124, !126, !127, !129, !131, !133, !135, !137, !138, !140, !142, !143, !145, !146, !148, !149, !151, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !169, !170, !172, !174, !175, !177, !179, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216, !217, !218, !220, !222, !223, !225, !227, !228, !230, !231, !232, !234, !235, !236, !238, !240, !241}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1684, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @brcmf_fws_rxreorder._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @brcmf_fws_rxreorder._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1691, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1695, i32 4}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1717, i32 3}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1721, i32 4}
!16 = !{ptr @brcmf_fws_rxreorder._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @brcmf_fws_rxreorder._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1744, i32 3}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1754, i32 5}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1761, i32 4}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1771, i32 5}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1781, i32 4}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1789, i32 4}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1795, i32 4}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1820, i32 3}
!34 = !{ptr @__func__.brcmf_fws_hdrpull, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1852, i32 2}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1888, i32 3}
!39 = !{ptr @__func__.brcmf_fws_process_skb, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2123, i32 2}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2140, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2146, i32 3}
!46 = !{ptr @brcmf_fws_process_skb._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @brcmf_fws_process_skb._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__func__.brcmf_fws_reset_interface, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2158, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__func__.brcmf_fws_add_interface, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2179, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__func__.brcmf_fws_del_interface, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2192, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @brcmf_fws_attach.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2356, i32 2}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__func__.brcmf_fws_attach, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2365, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2369, i32 16}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2371, i32 3}
!68 = !{ptr @brcmf_fws_attach._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @brcmf_fws_attach._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @brcmf_fws_attach.__key.32, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2375, i32 2}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2387, i32 3}
!75 = !{ptr @brcmf_fws_attach._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @brcmf_fws_attach._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2393, i32 3}
!79 = !{ptr @brcmf_fws_attach._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @brcmf_fws_attach._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2404, i32 35}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2405, i32 3}
!85 = !{ptr @brcmf_fws_attach._entry.41, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @brcmf_fws_attach._entry_ptr.43, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2410, i32 35}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2411, i32 3}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2414, i32 35}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2432, i32 2}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2461, i32 32}
!99 = !{ptr @__func__.brcmf_rxreorder_get_skb_list, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1651, i32 3}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 121, i32 9}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 108, i32 2}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.65, !105, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.66, !105, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.67, !105, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.68, !105, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.69, !105, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @brcmf_fws_tlv_names, !123, !"brcmf_fws_tlv_names", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 107, i32 3}
!124 = !{ptr @__func__.brcmf_fws_macdesc_indicate, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1000, i32 4}
!126 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1021, i32 4}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1027, i32 4}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1035, i32 4}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1038, i32 4}
!135 = !{ptr @__func__.brcmf_fws_hdrpush, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 866, i32 2}
!137 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 898, i32 3}
!140 = !{ptr @__func__.brcmf_fws_interface_state_indicate, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1098, i32 2}
!142 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @__func__.brcmf_fws_request_indicate, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1137, i32 2}
!145 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @__func__.brcmf_fws_fifocreditback_indicate, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1531, i32 3}
!148 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1535, i32 2}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1540, i32 2}
!153 = !{ptr @__func__.brcmf_fws_rssi_indicate, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 981, i32 2}
!155 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @__func__.brcmf_fws_dbg_seqnum_check, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1590, i32 2}
!158 = !{ptr @.str.83, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @__func__.brcmf_fws_hanger_get_free_slot, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 574, i32 2}
!161 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @__func__.brcmf_fws_hanger_pushpkt, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 588, i32 3}
!164 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.86, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1249, i32 3}
!167 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @brcmf_fws_enq._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @brcmf_fws_enq._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1253, i32 2}
!172 = !{ptr @__func__.brcmf_fws_macdesc_init, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 703, i32 2}
!174 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 691, i32 23}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 693, i32 45}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 696, i32 45}
!181 = !{ptr @__func__.brcmf_fws_hanger_poppkt, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 607, i32 3}
!183 = !{ptr @.str.93, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @__func__.brcmf_fws_macdesc_deinit, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 719, i32 2}
!186 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @__func__.brcmf_fws_bus_txq_cleanup, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 818, i32 3}
!189 = !{ptr @.str.95, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @__func__.brcmf_fws_deq, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1390, i32 2}
!192 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @__func__.brcmf_fws_macdesc_use_req_credit, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1160, i32 4}
!195 = !{ptr @.str.97, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1166, i32 4}
!198 = !{ptr @__func__.brcmf_fws_commit_skb, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2071, i32 2}
!200 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2002, i32 4}
!203 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @brcmf_fws_rollback_toq._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @brcmf_fws_rollback_toq._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2006, i32 3}
!208 = !{ptr @brcmf_fws_rollback_toq._entry.102, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @brcmf_fws_rollback_toq._entry_ptr.104, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @__func__.brcmf_fws_borrow_credit, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2042, i32 4}
!212 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1605, i32 3}
!215 = !{ptr @.str.107, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @brcmf_fws_notify_credit_map._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @brcmf_fws_notify_credit_map._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1611, i32 2}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1620, i32 3}
!222 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 2280, i32 6}
!225 = !{ptr @__func__.brcmf_fws_txs_process, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1449, i32 2}
!227 = !{ptr @.str.111, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1468, i32 3}
!230 = !{ptr @brcmf_fws_txs_process._entry, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @brcmf_fws_txs_process._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1474, i32 4}
!234 = !{ptr @brcmf_fws_txs_process._entry.113, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @brcmf_fws_txs_process._entry_ptr.115, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1489, i32 3}
!238 = !{ptr @__func__.brcmf_fws_txstatus_suppressed, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 1408, i32 3}
!240 = !{ptr @.str.117, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @__func__.brcmf_fws_hanger_mark_suppressed, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c", i32 654, i32 3}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{!"branch_weights", i32 2000, i32 1}
!253 = !{!"branch_weights", i32 1, i32 2000}
!254 = !{i8 0, i8 2}
!255 = !{i64 2154588319, i64 2154588807, i64 2154588356, i64 2154588412, i64 2154588446, i64 2154588470, i64 2154588511, i64 2154588532, i64 2154588560, i64 2154588594}
!256 = !{ptr @brcmf_fws_ifidx_match}
!257 = !{!"auto-init"}
