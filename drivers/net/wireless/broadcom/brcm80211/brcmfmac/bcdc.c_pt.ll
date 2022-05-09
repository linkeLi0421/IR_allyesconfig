; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.99 }
%struct.atomic_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_bcdc = type { i16, [80 x i8], %struct.brcmf_proto_bcdc_dcmd, [8192 x i8], ptr }
%struct.brcmf_proto_bcdc_dcmd = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
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
%struct.brcmf_proto_bcdc_header = type { i8, i8, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.121, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.121 = type { i64, i64, i8 }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__func__.brcmf_proto_bcdc_txflowblock = private unnamed_addr constant [29 x i8] c"brcmf_proto_bcdc_txflowblock\00", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@brcmf_proto_bcdc_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: struct brcmf_proto_bcdc is not correctly defined\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcmf_proto_bcdc_attach\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_proto_bcdc_attach._entry_ptr = internal global ptr @brcmf_proto_bcdc_attach._entry, section ".printk_index", align 4
@__func__.brcmf_proto_bcdc_hdrpull = private unnamed_addr constant [25 x i8] c"brcmf_proto_bcdc_hdrpull\00", align 1
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rx data too short (%d <= %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no matching ifp found\0A\00", [41 x i8] zeroinitializer }, align 32
@brcmf_proto_bcdc_hdrpull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.brcmf_proto_bcdc_hdrpull, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: %s: non-BCDC packet received, flags 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@brcmf_proto_bcdc_hdrpull._entry_ptr = internal global ptr @brcmf_proto_bcdc_hdrpull._entry, section ".printk_index", align 4
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: BDC rcv, good checksum, flags 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_brcmf_bcdchdr = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h\00", [34 x i8] zeroinitializer }, align 32
@trace_brcmf_bcdchdr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.brcmf_proto_bcdc_query_dcmd = private unnamed_addr constant [28 x i8] c"brcmf_proto_bcdc_query_dcmd\00", align 1
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enter, cmd %d len %d\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmf_proto_bcdc_query_dcmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.brcmf_proto_bcdc_query_dcmd, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: brcmf_proto_bcdc_msg failed w/status %d\0A\00", [51 x i8] zeroinitializer }, align 32
@brcmf_proto_bcdc_query_dcmd._entry_ptr = internal global ptr @brcmf_proto_bcdc_query_dcmd._entry, section ".printk_index", align 4
@brcmf_proto_bcdc_query_dcmd._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.brcmf_proto_bcdc_query_dcmd, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: %s: unexpected request id %d (expected %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@brcmf_proto_bcdc_query_dcmd._entry_ptr.17 = internal global ptr @brcmf_proto_bcdc_query_dcmd._entry.15, section ".printk_index", align 4
@__func__.brcmf_proto_bcdc_msg = private unnamed_addr constant [21 x i8] c"brcmf_proto_bcdc_msg\00", align 1
@__func__.brcmf_proto_bcdc_cmplt = private unnamed_addr constant [23 x i8] c"brcmf_proto_bcdc_cmplt\00", align 1
@__func__.brcmf_proto_bcdc_set_dcmd = private unnamed_addr constant [26 x i8] c"brcmf_proto_bcdc_set_dcmd\00", align 1
@brcmf_proto_bcdc_set_dcmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.brcmf_proto_bcdc_set_dcmd, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@brcmf_proto_bcdc_set_dcmd._entry_ptr = internal global ptr @brcmf_proto_bcdc_set_dcmd._entry, section ".printk_index", align 4
@__func__.brcmf_proto_bcdc_hdrpush = private unnamed_addr constant [25 x i8] c"brcmf_proto_bcdc_hdrpush\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 356, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 452, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 289, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 299, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 304, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 310, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [65 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 81, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 108, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 165, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 170, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 187, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 237, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @brcmf_proto_bcdc_attach._entry, ptr @brcmf_proto_bcdc_attach._entry_ptr, ptr @brcmf_proto_bcdc_hdrpull._entry, ptr @brcmf_proto_bcdc_hdrpull._entry_ptr, ptr @brcmf_proto_bcdc_query_dcmd._entry, ptr @brcmf_proto_bcdc_query_dcmd._entry.15, ptr @brcmf_proto_bcdc_query_dcmd._entry_ptr, ptr @brcmf_proto_bcdc_query_dcmd._entry_ptr.17, ptr @brcmf_proto_bcdc_set_dcmd._entry, ptr @brcmf_proto_bcdc_set_dcmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_bcdc_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_bcdc_hdrpull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_bcdc_query_dcmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_bcdc_query_dcmd._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_bcdc_set_dcmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @drvr_to_fws(ptr nocapture noundef readonly %drvr) local_unnamed_addr #0 align 64 {
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
  %fws = getelementptr inbounds %struct.brcmf_bcdc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fws, align 4
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_proto_bcdc_txflowblock(ptr nocapture noundef readonly %dev, i1 noundef zeroext %state) local_unnamed_addr #2 align 64 {
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
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_proto_bcdc_txflowblock, ptr noundef nonnull @.str) #10
  tail call void @brcmf_fws_bus_blocked(ptr noundef %3, i1 noundef zeroext %state) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_bus_blocked(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_proto_bcdc_txcomplete(ptr nocapture noundef readonly %dev, ptr noundef %txp, i1 noundef zeroext %success) local_unnamed_addr #2 align 64 {
entry:
  %ifp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr, align 4
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifp) #10
  %8 = ptrtoint ptr %ifp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %ifp, align 4, !annotation !63
  %fws = getelementptr inbounds %struct.brcmf_bcdc, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fws, align 4
  %call1 = tail call zeroext i1 @brcmf_fws_fc_active(ptr noundef %10) #10
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %success, label %if.then.if.end11_crit_edge, label %if.then2

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fws, align 4
  tail call void @brcmf_fws_bustxfail(ptr noundef %12, ptr noundef %txp) #10
  br label %if.end11

if.else:                                          ; preds = %entry
  %13 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drvr, align 4
  %call5 = call i32 @brcmf_proto_bcdc_hdrpull(ptr noundef %14, i1 noundef zeroext false, ptr noundef %txp, ptr noundef nonnull %ifp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %txp) #10
  br label %if.end11

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ifp, align 4
  call void @brcmf_txfinalize(ptr noundef %16, ptr noundef %txp, i1 noundef zeroext %success) #10
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then7, %if.then2, %if.then.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_fws_fc_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_bustxfail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_hdrpull(ptr noundef %drvr, i1 noundef zeroext %do_fws, ptr noundef %pktbuf, ptr noundef writeonly %ifp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 65536, ptr noundef nonnull @__func__.brcmf_proto_bcdc_hdrpull, ptr noundef nonnull @.str) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %pktbuf, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ult i32 %1, 5
  br i1 %cmp, label %do.body1, label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_proto_bcdc_hdrpull, ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef 4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %pktbuf, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call fastcc void @trace_brcmf_bcdchdr(ptr noundef %3)
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %flags2 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags2, align 1
  %8 = and i8 %7, 15
  %and = zext i8 %8 to i32
  %call = tail call ptr @brcmf_get_ifp(ptr noundef %drvr, i32 noundef %and) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body7, label %if.end10

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_proto_bcdc_hdrpull, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 1
  %conv11 = zext i8 %10 to i32
  %.mask = and i32 %conv11, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.mask)
  %cmp14.not = icmp eq i32 %.mask, 32
  br i1 %cmp14.not, label %if.end26, label %do.end20

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  %call21 = tail call ptr @brcmf_ifname(ptr noundef nonnull %call) #10
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  %conv23 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.brcmf_proto_bcdc_hdrpull, ptr noundef %call21, i32 noundef %conv23) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end10
  %and29 = and i32 %conv11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end26.if.end38_crit_edge, label %do.body32

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.body32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call ptr @brcmf_ifname(ptr noundef nonnull %call) #10
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %5, align 1
  %conv35 = zext i8 %16 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 65536, ptr noundef nonnull @__func__.brcmf_proto_bcdc_hdrpull, ptr noundef nonnull @.str.9, ptr noundef %call33, i32 noundef %conv35) #10
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %pktbuf, i32 0, i32 15
  %17 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end38

if.end38:                                         ; preds = %do.body32, %if.end26.if.end38_crit_edge
  %priority = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %priority, align 1
  %20 = and i8 %19, 7
  %and40 = zext i8 %20 to i32
  %priority41 = getelementptr inbounds %struct.sk_buff, ptr %pktbuf, i32 0, i32 15, i32 0, i32 6
  %21 = ptrtoint ptr %priority41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and40, ptr %priority41, align 4
  %call42 = tail call ptr @skb_pull(ptr noundef %pktbuf, i32 noundef 4) #10
  %data_offset = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %data_offset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_offset, align 1
  br i1 %do_fws, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %conv45 = zext i8 %23 to i16
  %shl = shl nuw nsw i16 %conv45, 2
  tail call void @brcmf_fws_hdrpull(ptr noundef nonnull %call, i16 noundef signext %shl, ptr noundef %pktbuf) #10
  br label %if.end51

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %conv48 = zext i8 %23 to i32
  %shl49 = shl nuw nsw i32 %conv48, 2
  %call50 = tail call ptr @skb_pull(ptr noundef %pktbuf, i32 noundef %shl49) #10
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then44
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp53 = icmp eq i32 %25, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %cmp57.not = icmp eq ptr %ifp, null
  br i1 %cmp57.not, label %if.end56.cleanup_crit_edge, label %if.then59

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %ifp to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %ifp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %do.end20, %do.body7, %do.body1
  %retval.0 = phi i32 [ -52, %do.body1 ], [ -52, %do.end20 ], [ -52, %do.body7 ], [ -61, %if.end51.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_txfinalize(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_proto_bcdc_attach(ptr nocapture noundef %drvr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8296, i32 noundef 2848, i32 noundef 2) #14
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %fail, label %if.end5

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @brcmf_proto_bcdc_hdrpull, ptr %1, align 4
  %3 = load ptr, ptr %proto, align 4
  %query_dcmd = getelementptr inbounds %struct.brcmf_proto, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %query_dcmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @brcmf_proto_bcdc_query_dcmd, ptr %query_dcmd, align 4
  %5 = load ptr, ptr %proto, align 4
  %set_dcmd = getelementptr inbounds %struct.brcmf_proto, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %set_dcmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @brcmf_proto_bcdc_set_dcmd, ptr %set_dcmd, align 4
  %7 = load ptr, ptr %proto, align 4
  %tx_queue_data = getelementptr inbounds %struct.brcmf_proto, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %tx_queue_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @brcmf_proto_bcdc_tx_queue_data, ptr %tx_queue_data, align 4
  %9 = load ptr, ptr %proto, align 4
  %txdata = getelementptr inbounds %struct.brcmf_proto, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %txdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @brcmf_proto_bcdc_txdata, ptr %txdata, align 4
  %11 = load ptr, ptr %proto, align 4
  %configure_addr_mode = getelementptr inbounds %struct.brcmf_proto, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %configure_addr_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @brcmf_proto_bcdc_configure_addr_mode, ptr %configure_addr_mode, align 4
  %13 = load ptr, ptr %proto, align 4
  %delete_peer = getelementptr inbounds %struct.brcmf_proto, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %delete_peer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @brcmf_proto_bcdc_delete_peer, ptr %delete_peer, align 4
  %15 = load ptr, ptr %proto, align 4
  %add_tdls_peer = getelementptr inbounds %struct.brcmf_proto, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %add_tdls_peer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @brcmf_proto_bcdc_add_tdls_peer, ptr %add_tdls_peer, align 4
  %17 = load ptr, ptr %proto, align 4
  %rxreorder = getelementptr inbounds %struct.brcmf_proto, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %rxreorder to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @brcmf_proto_bcdc_rxreorder, ptr %rxreorder, align 4
  %19 = load ptr, ptr %proto, align 4
  %add_if = getelementptr inbounds %struct.brcmf_proto, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %add_if to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @brcmf_proto_bcdc_add_if, ptr %add_if, align 4
  %21 = load ptr, ptr %proto, align 4
  %del_if = getelementptr inbounds %struct.brcmf_proto, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %del_if to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @brcmf_proto_bcdc_del_if, ptr %del_if, align 4
  %23 = load ptr, ptr %proto, align 4
  %reset_if = getelementptr inbounds %struct.brcmf_proto, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %reset_if to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @brcmf_proto_bcdc_reset_if, ptr %reset_if, align 4
  %25 = load ptr, ptr %proto, align 4
  %init_done = getelementptr inbounds %struct.brcmf_proto, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %init_done to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @brcmf_proto_bcdc_init_done, ptr %init_done, align 4
  %27 = load ptr, ptr %proto, align 4
  %debugfs_create = getelementptr inbounds %struct.brcmf_proto, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %debugfs_create to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @brcmf_proto_bcdc_debugfs_create, ptr %debugfs_create, align 4
  %29 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1.i.i.i, ptr %pd, align 4
  %hdrlen = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 5
  %31 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hdrlen, align 4
  %add = add i32 %32, 16
  store i32 %add, ptr %hdrlen, align 4
  %33 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drvr, align 4
  %maxctl = getelementptr inbounds %struct.brcmf_bus, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %maxctl to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8208, ptr %maxctl, align 4
  br label %cleanup

fail:                                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end5
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_query_dcmd(ptr noundef %drvr, i32 noundef %ifidx, i32 noundef %cmd, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef writeonly %fwerr) #2 align 64 {
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
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 65536, ptr noundef nonnull @__func__.brcmf_proto_bcdc_query_dcmd, ptr noundef nonnull @.str.13, i32 noundef %cmd, i32 noundef %len) #10
  %4 = ptrtoint ptr %fwerr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fwerr, align 4
  %5 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proto, align 4
  %pd.i = getelementptr inbounds %struct.brcmf_proto, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pd.i, align 4
  %msg1.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 2
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 65536, ptr noundef nonnull @__func__.brcmf_proto_bcdc_msg, ptr noundef nonnull @.str) #10
  %9 = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %cmd) #10
  %12 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %msg1.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %len) #10
  %len3.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %len3.i, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %8, align 4
  %inc.i = add i16 %16, 1
  store i16 %inc.i, ptr %8, align 4
  %conv.i = zext i16 %inc.i to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %shl4.i = shl i32 %ifidx, 12
  %or5.i = or i32 %shl.i, %shl4.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #10
  %flags6.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %flags6.i, align 4
  %tobool7.not.i = icmp eq ptr %buf, null
  br i1 %tobool7.not.i, label %entry.brcmf_proto_bcdc_msg.exit_crit_edge, label %if.then8.i

entry.brcmf_proto_bcdc_msg.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_proto_bcdc_msg.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %buf9.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %buf9.i, ptr %buf, i32 %len)
  br label %brcmf_proto_bcdc_msg.exit

brcmf_proto_bcdc_msg.exit:                        ; preds = %if.then8.i, %entry.brcmf_proto_bcdc_msg.exit_crit_edge
  %add.i = add i32 %len, 16
  %20 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 1518) #10
  %21 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drvr, align 4
  %ops.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %txctl.i.i = getelementptr inbounds %struct.brcmf_bus_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %txctl.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %txctl.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %28, ptr noundef %msg1.i, i32 noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end5, label %retry.preheader

retry.preheader:                                  ; preds = %brcmf_proto_bcdc_msg.exit
  %flags13 = getelementptr inbounds %struct.brcmf_bcdc, ptr %3, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %3, align 4
  %conv = zext i16 %30 to i32
  %31 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %proto, align 4
  %pd.i80 = getelementptr inbounds %struct.brcmf_proto, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %pd.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pd.i80, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 65536, ptr noundef nonnull @__func__.brcmf_proto_bcdc_cmplt, ptr noundef nonnull @.str) #10
  %flags.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %34, i32 0, i32 2, i32 2
  %msg.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %34, i32 0, i32 2
  br label %do.body1.i

do.end5:                                          ; preds = %brcmf_proto_bcdc_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %35 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %36, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.brcmf_proto_bcdc_query_dcmd, i32 noundef %call.i.i) #13
  br label %done

do.body1.i:                                       ; preds = %do.cond2.i.do.body1.i_crit_edge, %retry.preheader
  %37 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %drvr, align 4
  %ops.i.i82 = getelementptr inbounds %struct.brcmf_bus, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %ops.i.i82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i82, align 4
  %rxctl.i.i = getelementptr inbounds %struct.brcmf_bus_ops, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %rxctl.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rxctl.i.i, align 4
  %dev.i.i83 = getelementptr inbounds %struct.brcmf_bus, ptr %38, i32 0, i32 2
  %43 = ptrtoint ptr %dev.i.i83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i83, align 4
  %call.i.i84 = tail call i32 %42(ptr noundef %44, ptr noundef %msg.i, i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %cmp.i = icmp slt i32 %call.i.i84, 0
  br i1 %cmp.i, label %do.body1.i.done_crit_edge, label %do.cond2.i

do.body1.i.done_crit_edge:                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

do.cond2.i:                                       ; preds = %do.body1.i
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 4
  %47 = and i32 %46, 65535
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  %shr.i = lshr exact i32 %48, 16
  %cmp4.not.i = icmp eq i32 %shr.i, %conv
  br i1 %cmp4.not.i, label %if.end12, label %do.cond2.i.do.body1.i_crit_edge

do.cond2.i.do.body1.i_crit_edge:                  ; preds = %do.cond2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i

if.end12:                                         ; preds = %do.cond2.i
  %49 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags13, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %shr = lshr i32 %51, 16
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %3, align 4
  %conv15 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv15)
  %cmp16.not = icmp ult i32 %shr, %conv15
  br i1 %cmp16.not, label %retry.1, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

retry.1:                                          ; preds = %if.end12
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %3, align 4
  %conv.1 = zext i16 %55 to i32
  %56 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %proto, align 4
  %pd.i80.1 = getelementptr inbounds %struct.brcmf_proto, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %pd.i80.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pd.i80.1, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 65536, ptr noundef nonnull @__func__.brcmf_proto_bcdc_cmplt, ptr noundef nonnull @.str) #10
  %flags.i.1 = getelementptr inbounds %struct.brcmf_bcdc, ptr %59, i32 0, i32 2, i32 2
  %msg.i.1 = getelementptr inbounds %struct.brcmf_bcdc, ptr %59, i32 0, i32 2
  br label %do.body1.i.1

do.body1.i.1:                                     ; preds = %do.cond2.i.1.do.body1.i.1_crit_edge, %retry.1
  %60 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %drvr, align 4
  %ops.i.i82.1 = getelementptr inbounds %struct.brcmf_bus, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %ops.i.i82.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i.i82.1, align 4
  %rxctl.i.i.1 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %rxctl.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rxctl.i.i.1, align 4
  %dev.i.i83.1 = getelementptr inbounds %struct.brcmf_bus, ptr %61, i32 0, i32 2
  %66 = ptrtoint ptr %dev.i.i83.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i83.1, align 4
  %call.i.i84.1 = tail call i32 %65(ptr noundef %67, ptr noundef %msg.i.1, i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84.1)
  %cmp.i.1 = icmp slt i32 %call.i.i84.1, 0
  br i1 %cmp.i.1, label %do.body1.i.1.done_crit_edge, label %do.cond2.i.1

do.body1.i.1.done_crit_edge:                      ; preds = %do.body1.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

do.cond2.i.1:                                     ; preds = %do.body1.i.1
  %68 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i.1, align 4
  %70 = and i32 %69, 65535
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #10
  %shr.i.1 = lshr exact i32 %71, 16
  %cmp4.not.i.1 = icmp eq i32 %shr.i.1, %conv.1
  br i1 %cmp4.not.i.1, label %if.end12.1, label %do.cond2.i.1.do.body1.i.1_crit_edge

do.cond2.i.1.do.body1.i.1_crit_edge:              ; preds = %do.cond2.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i.1

if.end12.1:                                       ; preds = %do.cond2.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags13, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %shr.1 = lshr i32 %74, 16
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %3, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end12.1, %if.end12.if.end21_crit_edge
  %.lcssa94 = phi i32 [ %51, %if.end12.if.end21_crit_edge ], [ %74, %if.end12.1 ]
  %shr.lcssa = phi i32 [ %shr, %if.end12.if.end21_crit_edge ], [ %shr.1, %if.end12.1 ]
  %.lcssa = phi i16 [ %53, %if.end12.if.end21_crit_edge ], [ %76, %if.end12.1 ]
  %call.i.i84.lcssa93.lcssa = phi i32 [ %call.i.i84, %if.end12.if.end21_crit_edge ], [ %call.i.i84.1, %if.end12.1 ]
  %conv15.le = zext i16 %.lcssa to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.lcssa, i32 %conv15.le)
  %cmp24.not = icmp eq i32 %shr.lcssa, %conv15.le
  br i1 %cmp24.not, label %if.end39, label %do.end30

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy31 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %77 = ptrtoint ptr %wiphy31 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wiphy31, align 4
  %dev32 = getelementptr inbounds %struct.wiphy, ptr %78, i32 0, i32 56
  %call33 = tail call ptr @brcmf_get_ifp(ptr noundef %drvr, i32 noundef %ifidx) #10
  %call34 = tail call ptr @brcmf_ifname(ptr noundef %call33) #10
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %3, align 4
  %conv36 = zext i16 %80 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.brcmf_proto_bcdc_query_dcmd, ptr noundef %call34, i32 noundef %shr.lcssa, i32 noundef %conv36) #13
  br label %done

if.end39:                                         ; preds = %if.end21
  br i1 %tobool7.not.i, label %if.end39.if.end46_crit_edge, label %if.then41

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %buf40 = getelementptr inbounds %struct.brcmf_bcdc, ptr %3, i32 0, i32 3
  %81 = tail call i32 @llvm.smin.i32(i32 %call.i.i84.lcssa93.lcssa, i32 %len)
  %82 = call ptr @memcpy(ptr %buf, ptr %buf40, i32 %81)
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end39.if.end46_crit_edge
  %and47 = and i32 %.lcssa94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.done_crit_edge, label %if.then49

if.end46.done_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.brcmf_bcdc, ptr %3, i32 0, i32 2, i32 3
  %83 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %status, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %86 = ptrtoint ptr %fwerr to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %fwerr, align 4
  br label %done

done:                                             ; preds = %if.then49, %if.end46.done_crit_edge, %do.end30, %do.body1.i.1.done_crit_edge, %do.body1.i.done_crit_edge, %do.end5
  %ret.0 = phi i32 [ %call.i.i, %do.end5 ], [ -22, %do.end30 ], [ 0, %if.then49 ], [ 0, %if.end46.done_crit_edge ], [ %call.i.i84, %do.body1.i.done_crit_edge ], [ %call.i.i84.1, %do.body1.i.1.done_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_set_dcmd(ptr noundef %drvr, i32 noundef %ifidx, i32 noundef %cmd, ptr noundef readonly %buf, i32 noundef %len, ptr nocapture noundef writeonly %fwerr) #2 align 64 {
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
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 65536, ptr noundef nonnull @__func__.brcmf_proto_bcdc_set_dcmd, ptr noundef nonnull @.str.13, i32 noundef %cmd, i32 noundef %len) #10
  %4 = ptrtoint ptr %fwerr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fwerr, align 4
  %5 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proto, align 4
  %pd.i = getelementptr inbounds %struct.brcmf_proto, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pd.i, align 4
  %msg1.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 2
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 65536, ptr noundef nonnull @__func__.brcmf_proto_bcdc_msg, ptr noundef nonnull @.str) #10
  %9 = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %cmd) #10
  %12 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %msg1.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %len) #10
  %len3.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %len3.i, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %8, align 4
  %inc.i = add i16 %16, 1
  store i16 %inc.i, ptr %8, align 4
  %conv.i = zext i16 %inc.i to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %shl4.i = shl i32 %ifidx, 12
  %or.i = or i32 %shl4.i, %shl.i
  %or5.i = or i32 %or.i, 2
  %17 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #10
  %flags6.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %flags6.i, align 4
  %tobool7.not.i = icmp eq ptr %buf, null
  br i1 %tobool7.not.i, label %entry.brcmf_proto_bcdc_msg.exit_crit_edge, label %if.then8.i

entry.brcmf_proto_bcdc_msg.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_proto_bcdc_msg.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %buf9.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %buf9.i, ptr %buf, i32 %len)
  br label %brcmf_proto_bcdc_msg.exit

brcmf_proto_bcdc_msg.exit:                        ; preds = %if.then8.i, %entry.brcmf_proto_bcdc_msg.exit_crit_edge
  %add.i = add i32 %len, 16
  %20 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 1518) #10
  %21 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drvr, align 4
  %ops.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %txctl.i.i = getelementptr inbounds %struct.brcmf_bus_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %txctl.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %txctl.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %28, ptr noundef %msg1.i, i32 noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %brcmf_proto_bcdc_msg.exit.done_crit_edge, label %if.end

brcmf_proto_bcdc_msg.exit.done_crit_edge:         ; preds = %brcmf_proto_bcdc_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %brcmf_proto_bcdc_msg.exit
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %3, align 4
  %conv = zext i16 %30 to i32
  %31 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %proto, align 4
  %pd.i45 = getelementptr inbounds %struct.brcmf_proto, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %pd.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pd.i45, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 65536, ptr noundef nonnull @__func__.brcmf_proto_bcdc_cmplt, ptr noundef nonnull @.str) #10
  %flags.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %34, i32 0, i32 2, i32 2
  %msg.i = getelementptr inbounds %struct.brcmf_bcdc, ptr %34, i32 0, i32 2
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.cond2.i.do.body1.i_crit_edge, %if.end
  %35 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drvr, align 4
  %ops.i.i47 = getelementptr inbounds %struct.brcmf_bus, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %ops.i.i47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i47, align 4
  %rxctl.i.i = getelementptr inbounds %struct.brcmf_bus_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %rxctl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rxctl.i.i, align 4
  %dev.i.i48 = getelementptr inbounds %struct.brcmf_bus, ptr %36, i32 0, i32 2
  %41 = ptrtoint ptr %dev.i.i48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i48, align 4
  %call.i.i49 = tail call i32 %40(ptr noundef %42, ptr noundef %msg.i, i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp.i = icmp slt i32 %call.i.i49, 0
  br i1 %cmp.i, label %do.body1.i.done_crit_edge, label %do.cond2.i

do.body1.i.done_crit_edge:                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

do.cond2.i:                                       ; preds = %do.body1.i
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %45 = and i32 %44, 65535
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  %shr.i = lshr exact i32 %46, 16
  %cmp4.not.i = icmp eq i32 %shr.i, %conv
  br i1 %cmp4.not.i, label %if.end6, label %do.cond2.i.do.body1.i_crit_edge

do.cond2.i.do.body1.i_crit_edge:                  ; preds = %do.cond2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i

if.end6:                                          ; preds = %do.cond2.i
  %flags7 = getelementptr inbounds %struct.brcmf_bcdc, ptr %3, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags7, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %shr = lshr i32 %49, 16
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %3, align 4
  %conv9 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv9)
  %cmp10.not = icmp eq i32 %shr, %conv9
  br i1 %cmp10.not, label %if.end23, label %do.end16

do.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %52 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 56
  %call17 = tail call ptr @brcmf_get_ifp(ptr noundef %drvr, i32 noundef %ifidx) #10
  %call18 = tail call ptr @brcmf_ifname(ptr noundef %call17) #10
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %3, align 4
  %conv20 = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.brcmf_proto_bcdc_set_dcmd, ptr noundef %call18, i32 noundef %shr, i32 noundef %conv20) #13
  br label %done

if.end23:                                         ; preds = %if.end6
  %and24 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  br i1 %tobool.not, label %if.end23.done_crit_edge, label %if.then25

if.end23.done_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.brcmf_bcdc, ptr %3, i32 0, i32 2, i32 3
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %status, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %fwerr to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %fwerr, align 4
  br label %done

done:                                             ; preds = %if.then25, %if.end23.done_crit_edge, %do.end16, %do.body1.i.done_crit_edge, %brcmf_proto_bcdc_msg.exit.done_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %brcmf_proto_bcdc_msg.exit.done_crit_edge ], [ -22, %do.end16 ], [ 0, %if.then25 ], [ 0, %if.end23.done_crit_edge ], [ %call.i.i49, %do.body1.i.done_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_tx_queue_data(ptr noundef %drvr, i32 noundef %ifidx, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @brcmf_get_ifp(ptr noundef %drvr, i32 noundef %ifidx) #10
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %pd = getelementptr inbounds %struct.brcmf_proto, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %fws = getelementptr inbounds %struct.brcmf_bcdc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fws, align 4
  %call1 = tail call zeroext i1 @brcmf_fws_queue_skbs(ptr noundef %5) #10
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proto, align 4
  %txdata.i = getelementptr inbounds %struct.brcmf_proto, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %txdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %txdata.i, align 4
  %call.i = tail call i32 %9(ptr noundef %drvr, i32 noundef %ifidx, i8 noundef zeroext 0, ptr noundef %skb) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @brcmf_fws_process_skb(ptr noundef %call, ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_txdata(ptr nocapture noundef readonly %drvr, i32 noundef %ifidx, i8 noundef zeroext %offset, ptr noundef %pktbuf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 65536, ptr noundef nonnull @__func__.brcmf_proto_bcdc_hdrpush, ptr noundef nonnull @.str) #10
  %call.i = tail call ptr @skb_push(ptr noundef %pktbuf, i32 noundef 4) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %pktbuf, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %1, align 1
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %pktbuf, i32 0, i32 15
  %3 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %4 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %4)
  %cmp.i = icmp eq i16 %4, 1536
  %spec.store.select.i = select i1 %cmp.i, i8 40, i8 32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.store.select.i, ptr %1, align 1
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %pktbuf, i32 0, i32 15, i32 0, i32 6
  %6 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priority.i, align 4
  %8 = trunc i32 %7 to i8
  %conv5.i = and i8 %8, 7
  %priority6.i = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %priority6.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5.i, ptr %priority6.i, align 1
  %flags27.i = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %1, i32 0, i32 2
  %data_offset.i = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %offset, ptr %data_offset.i, align 1
  %conv12.i = trunc i32 %ifidx to i8
  %11 = ptrtoint ptr %flags27.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv12.i, ptr %flags27.i, align 1
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  tail call fastcc void @trace_brcmf_bcdchdr(ptr noundef %13) #10
  %14 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drvr, align 4
  %ops.i = getelementptr inbounds %struct.brcmf_bus, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %txdata.i = getelementptr inbounds %struct.brcmf_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %txdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %txdata.i, align 4
  %dev.i = getelementptr inbounds %struct.brcmf_bus, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %call.i3 = tail call i32 %19(ptr noundef %21, ptr noundef %pktbuf) #10
  ret i32 %call.i3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @brcmf_proto_bcdc_configure_addr_mode(ptr nocapture noundef %drvr, i32 noundef %ifidx, i32 noundef %addr_mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @brcmf_proto_bcdc_delete_peer(ptr nocapture noundef %drvr, i32 noundef %ifidx, ptr nocapture noundef %peer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @brcmf_proto_bcdc_add_tdls_peer(ptr nocapture noundef %drvr, i32 noundef %ifidx, ptr nocapture noundef %peer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_proto_bcdc_rxreorder(ptr noundef %ifp, ptr noundef %skb, i1 noundef zeroext %inirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcmf_fws_rxreorder(ptr noundef %ifp, ptr noundef %skb, i1 noundef zeroext %inirq) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_proto_bcdc_add_if(ptr noundef %ifp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcmf_fws_add_interface(ptr noundef %ifp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_proto_bcdc_del_if(ptr noundef %ifp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcmf_fws_del_interface(ptr noundef %ifp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_proto_bcdc_reset_if(ptr noundef %ifp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcmf_fws_reset_interface(ptr noundef %ifp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_init_done(ptr noundef %drvr) #2 align 64 {
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
  %call = tail call ptr @brcmf_fws_attach(ptr noundef %drvr) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fws3 = getelementptr inbounds %struct.brcmf_bcdc, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %fws3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %fws3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_proto_bcdc_debugfs_create(ptr noundef %drvr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcmf_fws_debugfs_create(ptr noundef %drvr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_proto_bcdc_detach(ptr nocapture noundef readonly %drvr) local_unnamed_addr #2 align 64 {
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
  store ptr null, ptr %pd, align 4
  %fws = getelementptr inbounds %struct.brcmf_bcdc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fws, align 4
  tail call void @brcmf_fws_detach(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_brcmf_bcdchdr(ptr noundef %data) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_bcdchdr, i32 0, i32 1), ptr blockaddress(@trace_brcmf_bcdchdr, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !64

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !53) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !53) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  %call42 = tail call i32 @__traceiter_brcmf_bcdchdr(ptr noundef null, ptr noundef %data) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %13 = tail call i32 @llvm.read_register.i32(metadata !53) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !53) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !65

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !53) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_bcdchdr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_bcdchdr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_brcmf_bcdchdr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_brcmf_bcdchdr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 100, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %31 = tail call i32 @llvm.read_register.i32(metadata !53) #10
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
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_ifname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_hdrpull(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_brcmf_bcdchdr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_fws_queue_skbs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fws_process_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_rxreorder(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_add_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_del_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_reset_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_fws_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_debugfs_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !21, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__func__.brcmf_proto_bcdc_txflowblock, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 356, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 452, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @brcmf_proto_bcdc_attach._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @brcmf_proto_bcdc_attach._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__func__.brcmf_proto_bcdc_hdrpull, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 285, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 289, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 299, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 304, i32 3}
!19 = !{ptr @brcmf_proto_bcdc_hdrpull._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @brcmf_proto_bcdc_hdrpull._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 310, i32 3}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h", i32 81, i32 1}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!27 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__func__.brcmf_proto_bcdc_query_dcmd, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 165, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 170, i32 3}
!36 = !{ptr @brcmf_proto_bcdc_query_dcmd._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @brcmf_proto_bcdc_query_dcmd._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 187, i32 3}
!40 = !{ptr @brcmf_proto_bcdc_query_dcmd._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @brcmf_proto_bcdc_query_dcmd._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__func__.brcmf_proto_bcdc_msg, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 114, i32 2}
!44 = !{ptr @__func__.brcmf_proto_bcdc_cmplt, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 143, i32 2}
!46 = !{ptr @__func__.brcmf_proto_bcdc_set_dcmd, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 222, i32 2}
!48 = !{ptr @brcmf_proto_bcdc_set_dcmd._entry, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 237, i32 3}
!50 = !{ptr @brcmf_proto_bcdc_set_dcmd._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @__func__.brcmf_proto_bcdc_hdrpush, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c", i32 260, i32 2}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 2149050166, i64 2149050171, i64 2149050184, i64 2149050228, i64 2149050262, i64 2149050283}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2157189613}
!67 = !{i64 2157189810}
!68 = !{i64 2149607485}
!69 = !{i64 2149608521}
