; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/ccm.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/ccm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.92 }
%struct.atomic_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.170, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.159, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.159 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.msix_entry = type { i32, i16 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.atomic64_t = type { i64 }
%struct.anon.170 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfp_ccm = type { ptr, [2048 x i32], i16, i16, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff = type { %union.anon, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, i32, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.176 = type { i8, i8, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cmsg drop - wrong type 0x%02x != 0x%02lx!\0A\00", [53 x i8] zeroinitializer }, align 32
@nfp_ccm_communicate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfp_ccm_communicate\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/netronome/nfp/ccm.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_ccm_communicate._entry_ptr = internal global ptr @nfp_ccm_communicate._entry, section ".printk_index", align 4
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cmsg drop - type 0x%02x wrong size %d != %d!\0A\00", [50 x i8] zeroinitializer }, align 32
@nfp_ccm_communicate._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_communicate._entry_ptr.7 = internal global ptr @nfp_ccm_communicate._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cmsg drop - too short %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@nfp_ccm_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfp_ccm_rx\00", [21 x i8] zeroinitializer }, align 32
@nfp_ccm_rx._entry_ptr = internal global ptr @nfp_ccm_rx._entry, section ".printk_index", align 4
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cmsg drop - no one is waiting for tag %u!\0A\00", [53 x i8] zeroinitializer }, align 32
@nfp_ccm_rx._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.9, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_rx._entry_ptr.12 = internal global ptr @nfp_ccm_rx._entry.11, section ".printk_index", align 4
@nfp_ccm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&ccm->wq\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"all FW request contexts busy!\0A\00", [33 x i8] zeroinitializer }, align 32
@nfp_ccm_alloc_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 30, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfp_ccm_alloc_tag\00", [46 x i8] zeroinitializer }, align 32
@nfp_ccm_alloc_tag._entry_ptr = internal global ptr @nfp_ccm_alloc_tag._entry, section ".printk_index", align 4
@__tracepoint_devlink_hwmsg = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/devlink.h\00", [33 x i8] zeroinitializer }, align 32
@trace_devlink_hwmsg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s waiting for response to 0x%02x: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@nfp_ccm_wait_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.22, ptr @.str.2, i32 116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_ccm_wait_reply\00", [45 x i8] zeroinitializer }, align 32
@nfp_ccm_wait_reply._entry_ptr = internal global ptr @nfp_ccm_wait_reply._entry, section ".printk_index", align 4
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"timeout waiting for response to 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@nfp_ccm_wait_reply._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.22, ptr @.str.2, i32 120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_wait_reply._entry_ptr.25 = internal global ptr @nfp_ccm_wait_reply._entry.24, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 158, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 164, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 181, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 189, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 210, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 30, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [34 x i8] c"../include/trace/events/devlink.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 17, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 108, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 114, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private constant [44 x i8] c"../drivers/net/ethernet/netronome/nfp/ccm.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 120, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1984, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @nfp_ccm_alloc_tag._entry, ptr @nfp_ccm_alloc_tag._entry_ptr, ptr @nfp_ccm_communicate._entry, ptr @nfp_ccm_communicate._entry.6, ptr @nfp_ccm_communicate._entry_ptr, ptr @nfp_ccm_communicate._entry_ptr.7, ptr @nfp_ccm_rx._entry, ptr @nfp_ccm_rx._entry.11, ptr @nfp_ccm_rx._entry_ptr, ptr @nfp_ccm_rx._entry_ptr.12, ptr @nfp_ccm_wait_reply._entry, ptr @nfp_ccm_wait_reply._entry.24, ptr @nfp_ccm_wait_reply._entry_ptr, ptr @nfp_ccm_wait_reply._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @nfp_ccm_init.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @skb_queue_head_init.__key, ptr @.str.26], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_communicate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_communicate._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_rx._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_alloc_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_wait_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_wait_reply._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_ccm_communicate(ptr noundef %ccm, ptr noundef %skb, i32 noundef %type, i32 noundef %reply_size) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ccm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ccm, align 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %lock.i = getelementptr inbounds %struct.nfp_net, ptr %3, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #6
  %tag_alloc_next.i.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 2
  %4 = ptrtoint ptr %tag_alloc_next.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tag_alloc_next.i.i, align 4
  %tag_alloc_last.i.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 3
  %6 = ptrtoint ptr %tag_alloc_last.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tag_alloc_last.i.i, align 2
  %sub.i.i = sub i16 %5, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %sub.i.i)
  %cmp.i.i = icmp ugt i16 %sub.i.i, 16383
  br i1 %cmp.i.i, label %if.then.i, label %if.end15.i, !prof !61

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %ccm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ccm, align 4
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl.i, align 4
  %call2.i = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.then_crit_edge, label %if.then10.i, !prof !62

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then10.i:                                      ; preds = %if.then.i
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.i, align 4
  %tobool11.not.i = icmp eq ptr %13, null
  br i1 %tobool11.not.i, label %do.end.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %13, ptr noundef nonnull @.str.14) #9
  br label %if.then

do.end.i:                                         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.14) #9
  br label %if.then

if.end15.i:                                       ; preds = %entry
  %conv.i = zext i16 %5 to i32
  %tag_allocator.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 1
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div5.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %tag_allocator.i, i32 %div5.i.i
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %17, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %18 = and i32 %17, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not.i = icmp eq i32 %18, 0
  br i1 %tobool17.not.i, label %if.end15.i.nfp_ccm_alloc_tag.exit_crit_edge, label %do.end33.i, !prof !62

if.end15.i.nfp_ccm_alloc_tag.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_alloc_tag.exit

do.end33.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 34, i32 noundef 9, ptr noundef null) #6
  br label %nfp_ccm_alloc_tag.exit

nfp_ccm_alloc_tag.exit:                           ; preds = %do.end33.i, %if.end15.i.nfp_ccm_alloc_tag.exit_crit_edge
  %19 = ptrtoint ptr %tag_alloc_next.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tag_alloc_next.i.i, align 4
  %inc.i = add i16 %20, 1
  store i16 %inc.i, ptr %tag_alloc_next.i.i, align 4
  %conv47.i = zext i16 %20 to i32
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %ver = getelementptr inbounds %struct.anon.176, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ver, align 1
  %conv = trunc i32 %type to i8
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %22, align 4
  %tag6 = getelementptr inbounds %struct.anon.176, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %tag6 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %20, ptr %tag6, align 2
  %pf.i = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pf.i, align 4
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %27) #6
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  tail call fastcc void @trace_devlink_hwmsg(ptr noundef %call.i, ptr noundef %29, i32 noundef %31) #6
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl, align 4
  %call1.i = tail call zeroext i1 @__nfp_ctrl_tx(ptr noundef %33, ptr noundef %skb) #6
  %34 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl, align 4
  %lock.i106 = getelementptr inbounds %struct.nfp_net, ptr %35, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i106) #6
  br label %for.body.i

if.then:                                          ; preds = %do.end.i, %if.then12.i, %if.then.i.if.then_crit_edge
  %36 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctrl, align 4
  %lock.i104 = getelementptr inbounds %struct.nfp_net, ptr %37, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i104) #6
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i108 = add nuw nsw i32 %i.0186.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i108, 50
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %nfp_ccm_alloc_tag.exit
  %i.0186.i = phi i32 [ 0, %nfp_ccm_alloc_tag.exit ], [ %inc.i108, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 858992) #6
  %39 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl, align 4
  %lock.i.i.i = getelementptr inbounds %struct.nfp_net, ptr %40, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #6
  %call.i.i = tail call fastcc ptr @__nfp_ccm_reply(ptr noundef %ccm, i16 noundef zeroext %20) #6
  %41 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl, align 4
  %lock.i3.i.i = getelementptr inbounds %struct.nfp_net, ptr %42, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i3.i.i) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.nfp_ccm_wait_reply.exit_crit_edge

for.body.i.nfp_ccm_wait_reply.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_wait_reply.exit

for.end.i:                                        ; preds = %for.cond.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 107) #6
  %43 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl, align 4
  %lock.i.i153.i = getelementptr inbounds %struct.nfp_net, ptr %44, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i153.i) #6
  %call.i154.i = tail call fastcc ptr @__nfp_ccm_reply(ptr noundef %ccm, i16 noundef zeroext %20) #6
  %45 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl, align 4
  %lock.i3.i155.i = getelementptr inbounds %struct.nfp_net, ptr %46, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i3.i155.i) #6
  %tobool7.not.i = icmp eq ptr %call.i154.i, null
  br i1 %tobool7.not.i, label %if.then17.i, label %for.end.i.nfp_ccm_wait_reply.exit_crit_edge

for.end.i.nfp_ccm_wait_reply.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_wait_reply.exit

if.then17.i:                                      ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %47 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %wq.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 5
  br label %for.cond20.i

for.cond20.i:                                     ; preds = %cleanup.i, %if.then17.i
  %__ret18.0.i = phi i32 [ 500, %if.then17.i ], [ %call47.i, %cleanup.i ]
  %call21.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %48 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl, align 4
  %lock.i.i157.i = getelementptr inbounds %struct.nfp_net, ptr %49, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i157.i) #6
  %call.i158.i = call fastcc ptr @__nfp_ccm_reply(ptr noundef %ccm, i16 noundef zeroext %20) #6
  %50 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl, align 4
  %lock.i3.i159.i = getelementptr inbounds %struct.nfp_net, ptr %51, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i3.i159.i) #6
  %tobool25.not.i = icmp eq ptr %call.i158.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.0.i)
  %tobool30.not.i = icmp eq i32 %__ret18.0.i, 0
  %spec.store.select112.i = select i1 %tobool30.not.i, i32 1, i32 %__ret18.0.i
  %__ret18.1.i = select i1 %tobool25.not.i, i32 %__ret18.0.i, i32 %spec.store.select112.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1.i)
  %tobool37.not.i = icmp eq i32 %__ret18.1.i, 0
  %not.tobool25.not.i = xor i1 %tobool25.not.i, true
  %52 = select i1 %not.tobool25.not.i, i1 true, i1 %tobool37.not.i
  br i1 %52, label %for.end48.i, label %if.end43.i

if.end43.i:                                       ; preds = %for.cond20.i
  %tobool44.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool44.not.i, label %cleanup.i, label %if.end43.i.if.end51.i_crit_edge

if.end43.i.if.end51.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

cleanup.i:                                        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %call47.i = call i32 @schedule_timeout(i32 noundef %__ret18.1.i) #6
  br label %for.cond20.i

for.end48.i:                                      ; preds = %for.cond20.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i) #6
  br label %if.end51.i

if.end51.i:                                       ; preds = %for.end48.i, %if.end43.i.if.end51.i_crit_edge
  %__ret18.2165.i = phi i32 [ %__ret18.1.i, %for.end48.i ], [ %call21.i, %if.end43.i.if.end51.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br i1 %tobool25.not.i, label %if.then54.i, label %if.end51.i.if.end57.i_crit_edge

if.end51.i.if.end57.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.then54.i:                                      ; preds = %if.end51.i
  %53 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl, align 4
  %lock.i.i161.i = getelementptr inbounds %struct.nfp_net, ptr %54, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i161.i) #6
  %call.i162.i = call fastcc ptr @__nfp_ccm_reply(ptr noundef %ccm, i16 noundef zeroext %20) #6
  %tobool.not.i.i = icmp eq ptr %call.i162.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then54.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge

if.then54.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_reply_drop_tag.exit.i

if.then.i.i:                                      ; preds = %if.then54.i
  %rem.i.i.i.i = and i32 %conv47.i, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %conv.i.i.i = lshr i32 %conv47.i, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %tag_allocator.i, i32 %conv.i.i.i
  %55 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %and.i.i.i.i = and i32 %56, %neg.i.i.i.i
  store i32 %and.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %57 = and i32 %56, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, !prof !61

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 40, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %58 = ptrtoint ptr %tag_alloc_last.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %tag_alloc_last.promoted.i.i.i = load i16, ptr %tag_alloc_last.i.i, align 2
  %conv2139.i.i.i = zext i16 %tag_alloc_last.promoted.i.i.i to i32
  %div3.i40.i.i.i = lshr i32 %conv2139.i.i.i, 5
  %arrayidx.i41.i.i.i = getelementptr i32, ptr %tag_allocator.i, i32 %div3.i40.i.i.i
  %59 = ptrtoint ptr %arrayidx.i41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i41.i.i.i, align 4
  %and.i3742.i.i.i = and i32 %conv2139.i.i.i, 31
  %61 = shl nuw i32 1, %and.i3742.i.i.i
  %62 = and i32 %61, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool25.not43.i.i.i = icmp eq i32 %62, 0
  br i1 %tobool25.not43.i.i.i, label %land.rhs.lr.ph.i.i.i, label %if.end.i.i.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge

if.end.i.i.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_reply_drop_tag.exit.i

land.rhs.lr.ph.i.i.i:                             ; preds = %if.end.i.i.i
  %63 = ptrtoint ptr %tag_alloc_next.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %tag_alloc_next.i.i, align 4
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %inc3844.i.i.i = phi i16 [ %tag_alloc_last.promoted.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %inc.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %inc3844.i.i.i, i16 %64)
  %cmp.not.i.i.i = icmp eq i16 %inc3844.i.i.i, %64
  br i1 %cmp.not.i.i.i, label %land.rhs.i.i.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge, label %while.body.i.i.i

land.rhs.i.i.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_reply_drop_tag.exit.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %inc.i.i.i = add i16 %inc3844.i.i.i, 1
  %65 = ptrtoint ptr %tag_alloc_last.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %inc.i.i.i, ptr %tag_alloc_last.i.i, align 2
  %conv21.i.i.i = zext i16 %inc.i.i.i to i32
  %div3.i.i.i.i = lshr i32 %conv21.i.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %tag_allocator.i, i32 %div3.i.i.i.i
  %66 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i37.i.i.i = and i32 %conv21.i.i.i, 31
  %68 = shl nuw i32 1, %and.i37.i.i.i
  %69 = and i32 %67, %68
  %tobool25.not.i.i.i = icmp eq i32 %69, 0
  br i1 %tobool25.not.i.i.i, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge, label %while.body.i.i.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge

while.body.i.i.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_reply_drop_tag.exit.i

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i.i

nfp_ccm_reply_drop_tag.exit.i:                    ; preds = %while.body.i.i.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge, %land.rhs.i.i.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge, %if.end.i.i.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge, %if.then54.i.nfp_ccm_reply_drop_tag.exit.i_crit_edge
  %70 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctrl, align 4
  %lock.i6.i.i = getelementptr inbounds %struct.nfp_net, ptr %71, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i6.i.i) #6
  br label %if.end57.i

if.end57.i:                                       ; preds = %nfp_ccm_reply_drop_tag.exit.i, %if.end51.i.if.end57.i_crit_edge
  %skb.1.i = phi ptr [ %call.i158.i, %if.end51.i.if.end57.i_crit_edge ], [ %call.i162.i, %nfp_ccm_reply_drop_tag.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.2165.i)
  %cmp58.i = icmp slt i32 %__ret18.2165.i, 0
  br i1 %cmp58.i, label %if.then60.i, label %if.end81.i

if.then60.i:                                      ; preds = %if.end57.i
  %72 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctrl, align 4
  %call61.i = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.then60.i.if.end79.i_crit_edge, label %if.then66.i, !prof !62

if.then60.i.if.end79.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79.i

if.then66.i:                                      ; preds = %if.then60.i
  %netdev.i109 = getelementptr inbounds %struct.nfp_net_dp, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %netdev.i109 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev.i109, align 4
  %tobool67.not.i = icmp eq ptr %75, null
  br i1 %tobool67.not.i, label %do.end74.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %75, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef %type, i32 noundef %__ret18.2165.i) #9
  br label %if.end79.i

do.end74.i:                                       ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef %type, i32 noundef %__ret18.2165.i) #9
  br label %if.end79.i

if.end79.i:                                       ; preds = %do.end74.i, %if.then68.i, %if.then60.i.if.end79.i_crit_edge
  %78 = inttoptr i32 %__ret18.2165.i to ptr
  br label %nfp_ccm_wait_reply.exit

if.end81.i:                                       ; preds = %if.end57.i
  %tobool82.not.i = icmp eq ptr %skb.1.i, null
  br i1 %tobool82.not.i, label %if.then83.i, label %if.end81.i.nfp_ccm_wait_reply.exit_crit_edge

if.end81.i.nfp_ccm_wait_reply.exit_crit_edge:     ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_wait_reply.exit

if.then83.i:                                      ; preds = %if.end81.i
  %79 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctrl, align 4
  %call87.i = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.then83.i.cleanup_crit_edge, label %if.then95.i, !prof !62

if.then83.i.cleanup_crit_edge:                    ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then95.i:                                      ; preds = %if.then83.i
  %netdev96.i = getelementptr inbounds %struct.nfp_net_dp, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %netdev96.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %netdev96.i, align 4
  %tobool97.not.i = icmp eq ptr %82, null
  br i1 %tobool97.not.i, label %do.end103.i, label %if.then98.i

if.then98.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %82, ptr noundef nonnull @.str.23, i32 noundef %type) #9
  br label %cleanup

do.end103.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %80, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.23, i32 noundef %type) #9
  br label %cleanup

nfp_ccm_wait_reply.exit:                          ; preds = %if.end81.i.nfp_ccm_wait_reply.exit_crit_edge, %if.end79.i, %for.end.i.nfp_ccm_wait_reply.exit_crit_edge, %for.body.i.nfp_ccm_wait_reply.exit_crit_edge
  %retval.0.i110 = phi ptr [ %78, %if.end79.i ], [ %skb.1.i, %if.end81.i.nfp_ccm_wait_reply.exit_crit_edge ], [ %call.i154.i, %for.end.i.nfp_ccm_wait_reply.exit_crit_edge ], [ %call.i.i, %for.body.i.nfp_ccm_wait_reply.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %nfp_ccm_wait_reply.exit.cleanup_crit_edge, label %if.end12

nfp_ccm_wait_reply.exit.cleanup_crit_edge:        ; preds = %nfp_ccm_wait_reply.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %nfp_ccm_wait_reply.exit
  %data.i111 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i110, i32 0, i32 19
  %85 = ptrtoint ptr %data.i111 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i111, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 4
  %conv14 = zext i8 %88 to i32
  %or = or i32 %type, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv14)
  %cmp15.not = icmp eq i32 %or, %conv14
  br i1 %cmp15.not, label %if.end30, label %if.then17

if.then17:                                        ; preds = %if.end12
  %89 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctrl, align 4
  %call19 = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.then17.err_free_crit_edge, label %if.then22, !prof !62

if.then17.err_free_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.then22:                                        ; preds = %if.then17
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %netdev, align 4
  %tobool23.not = icmp eq ptr %92, null
  br i1 %tobool23.not, label %do.end, label %if.then24

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %92, ptr noundef nonnull @.str, i32 noundef %conv14, i32 noundef %or) #9
  br label %err_free

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %90, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str, i32 noundef %conv14, i32 noundef %or) #9
  br label %err_free

if.end30:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reply_size)
  %tobool31.not = icmp eq i32 %reply_size, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %land.lhs.true

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end30
  %len = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i110, i32 0, i32 6
  %95 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %reply_size)
  %cmp32.not = icmp eq i32 %96, %reply_size
  br i1 %cmp32.not, label %land.lhs.true.cleanup_crit_edge, label %if.then34

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true
  %97 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ctrl, align 4
  %call38 = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then34.err_free_crit_edge, label %if.then46, !prof !62

if.then34.err_free_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.then46:                                        ; preds = %if.then34
  %netdev47 = getelementptr inbounds %struct.nfp_net_dp, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %netdev47 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %netdev47, align 4
  %tobool48.not = icmp eq ptr %100, null
  br i1 %tobool48.not, label %do.end55, label %if.then49

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %100, ptr noundef nonnull @.str.5, i32 noundef %type, i32 noundef %102, i32 noundef %reply_size) #9
  br label %err_free

do.end55:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %98, align 4
  %105 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.5, i32 noundef %type, i32 noundef %106, i32 noundef %reply_size) #9
  br label %err_free

err_free:                                         ; preds = %do.end55, %if.then49, %if.then34.err_free_crit_edge, %do.end, %if.then24, %if.then17.err_free_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %retval.0.i110, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %land.lhs.true.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %nfp_ccm_wait_reply.exit.cleanup_crit_edge, %do.end103.i, %if.then98.i, %if.then83.i.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -11 to ptr), %if.then ], [ inttoptr (i32 -5 to ptr), %err_free ], [ %retval.0.i110, %nfp_ccm_wait_reply.exit.cleanup_crit_edge ], [ %retval.0.i110, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.i110, %if.end30.cleanup_crit_edge ], [ inttoptr (i32 -110 to ptr), %if.then98.i ], [ inttoptr (i32 -110 to ptr), %do.end103.i ], [ inttoptr (i32 -110 to ptr), %if.then83.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_ccm_rx(ptr noundef %ccm, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ccm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ccm, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  br i1 %cmp, label %if.then, label %if.end17, !prof !61

if.then:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.err_free_crit_edge, label %if.then10, !prof !62

if.then.err_free_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.then10:                                        ; preds = %if.then
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %7, ptr noundef nonnull @.str.8, i32 noundef %9) #9
  br label %err_free

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef %13) #9
  br label %err_free

if.end17:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.nfp_net, ptr %5, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #6
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %tag.i.i = getelementptr inbounds %struct.anon.176, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tag.i.i, align 2
  %conv.i = zext i16 %17 to i32
  %tag_allocator = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 1
  %div3.i = lshr i32 %conv.i, 5
  %arrayidx.i = getelementptr i32, ptr %tag_allocator, i32 %div3.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv.i, 31
  %20 = shl nuw i32 1, %and.i
  %21 = and i32 %20, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool21.not = icmp eq i32 %21, 0
  br i1 %tobool21.not, label %if.then30, label %if.end54, !prof !61

if.then30:                                        ; preds = %if.end17
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl, align 4
  %call34 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then30.if.end53_crit_edge, label %if.then42, !prof !62

if.then30.if.end53_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then42:                                        ; preds = %if.then30
  %netdev43 = getelementptr inbounds %struct.nfp_net_dp, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %netdev43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev43, align 4
  %tobool44.not = icmp eq ptr %25, null
  br i1 %tobool44.not, label %do.end50, label %if.then45

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %25, ptr noundef nonnull @.str.10, i32 noundef %conv.i) #9
  br label %if.end53

do.end50:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.10, i32 noundef %conv.i) #9
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %if.then45, %if.then30.if.end53_crit_edge
  %28 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl, align 4
  %lock.i77 = getelementptr inbounds %struct.nfp_net, ptr %29, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i77) #6
  br label %err_free

if.end54:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %replies = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 4, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %replies, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %33 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %skb, ptr %31, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %wq = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  %37 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl, align 4
  %lock.i78 = getelementptr inbounds %struct.nfp_net, ptr %38, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8, i32 3, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i78) #6
  br label %cleanup

err_free:                                         ; preds = %if.end53, %do.end, %if.then12, %if.then.err_free_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_ccm_init(ptr noundef %ccm, ptr noundef %app) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ccm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %app, ptr %ccm, align 4
  %replies = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 4
  %lock.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %1 = ptrtoint ptr %replies to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %replies, ptr %replies, align 4
  %prev.i.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %replies, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %wq = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.13, ptr noundef nonnull @nfp_ccm_init.__key) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_ccm_clean(ptr noundef readonly %ccm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %replies = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 4
  %0 = ptrtoint ptr %replies to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %replies, align 4
  %cmp.i.not = icmp eq ptr %1, %replies
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !62

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 216, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_devlink_hwmsg(ptr noundef %devlink, ptr noundef %buf, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devlink_hwmsg, i32 0, i32 1), ptr blockaddress(@trace_devlink_hwmsg, %do.body)) #6
          to label %if.end49 [label %do.body], !srcloc !63

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !62

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !64
  %call43 = tail call i32 @__traceiter_devlink_hwmsg(ptr noundef null, ptr noundef %devlink, i1 noundef zeroext false, i32 noundef 0, ptr noundef %buf, i32 noundef %len) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !65
  %13 = tail call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !62

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devlink_hwmsg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devlink_hwmsg, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_devlink_hwmsg.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_devlink_hwmsg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 47, ptr noundef nonnull @.str.17) #6
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !67
  %31 = tail call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nfp_ctrl_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_devlink_hwmsg(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__nfp_ccm_reply(ptr noundef %ccm, i16 noundef zeroext %tag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %replies = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %skb.0.in = phi ptr [ %replies, %entry ], [ %skb.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %skb.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.0 = load ptr, ptr %skb.0.in, align 4
  %cmp.not = icmp eq ptr %skb.0, %replies
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %1 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i.i, align 4
  %tag.i.i = getelementptr inbounds %struct.anon.176, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tag.i.i, align 2
  %cmp2 = icmp eq i16 %4, %tag
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then:                                          ; preds = %for.body
  %conv = zext i16 %tag to i32
  %tag_allocator.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 1
  %rem.i.i = and i32 %conv, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div6.i.i = lshr i32 %conv, 5
  %add.ptr.i.i = getelementptr i32, ptr %tag_allocator.i, i32 %div6.i.i
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %6, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %7 = and i32 %6, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.if.end.i_crit_edge, !prof !61

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 40, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  %tag_alloc_last.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 3
  %8 = ptrtoint ptr %tag_alloc_last.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %tag_alloc_last.promoted.i = load i16, ptr %tag_alloc_last.i, align 2
  %conv2139.i = zext i16 %tag_alloc_last.promoted.i to i32
  %div3.i40.i = lshr i32 %conv2139.i, 5
  %arrayidx.i41.i = getelementptr i32, ptr %tag_allocator.i, i32 %div3.i40.i
  %9 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i41.i, align 4
  %and.i3742.i = and i32 %conv2139.i, 31
  %11 = shl nuw i32 1, %and.i3742.i
  %12 = and i32 %11, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not43.i = icmp eq i32 %12, 0
  br i1 %tobool25.not43.i, label %land.rhs.lr.ph.i, label %if.end.i.nfp_ccm_free_tag.exit_crit_edge

if.end.i.nfp_ccm_free_tag.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_free_tag.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end.i
  %tag_alloc_next.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 2
  %13 = ptrtoint ptr %tag_alloc_next.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tag_alloc_next.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %inc3844.i = phi i16 [ %tag_alloc_last.promoted.i, %land.rhs.lr.ph.i ], [ %inc.i, %while.body.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %inc3844.i, i16 %14)
  %cmp.not.i = icmp eq i16 %inc3844.i, %14
  br i1 %cmp.not.i, label %land.rhs.i.nfp_ccm_free_tag.exit_crit_edge, label %while.body.i

land.rhs.i.nfp_ccm_free_tag.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_free_tag.exit

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add i16 %inc3844.i, 1
  %15 = ptrtoint ptr %tag_alloc_last.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %inc.i, ptr %tag_alloc_last.i, align 2
  %conv21.i = zext i16 %inc.i to i32
  %div3.i.i = lshr i32 %conv21.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %tag_allocator.i, i32 %div3.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i37.i = and i32 %conv21.i, 31
  %18 = shl nuw i32 1, %and.i37.i
  %19 = and i32 %17, %18
  %tobool25.not.i = icmp eq i32 %19, 0
  br i1 %tobool25.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.nfp_ccm_free_tag.exit_crit_edge

while.body.i.nfp_ccm_free_tag.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_ccm_free_tag.exit

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

nfp_ccm_free_tag.exit:                            ; preds = %while.body.i.nfp_ccm_free_tag.exit_crit_edge, %land.rhs.i.nfp_ccm_free_tag.exit_crit_edge, %if.end.i.nfp_ccm_free_tag.exit_crit_edge
  %qlen.i = getelementptr inbounds %struct.nfp_ccm, ptr %ccm, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %21, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %22 = ptrtoint ptr %skb.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb.0, align 8
  %prev9.i = getelementptr inbounds %struct.anon, ptr %skb.0, i32 0, i32 1
  %24 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.0, align 8
  %prev17.i = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %prev17.i, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %25, align 8
  br label %cleanup

cleanup:                                          ; preds = %nfp_ccm_free_tag.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb.0, %nfp_ccm_free_tag.exit ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/ccm.c", i32 158, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_ccm_communicate._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_ccm_communicate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/ccm.c", i32 164, i32 3}
!10 = !{ptr @nfp_ccm_communicate._entry.6, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nfp_ccm_communicate._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/ccm.c", i32 181, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfp_ccm_rx._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfp_ccm_rx._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/ccm.c", i32 189, i32 3}
!19 = !{ptr @nfp_ccm_rx._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfp_ccm_rx._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @nfp_ccm_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/ccm.c", i32 210, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/ccm.c", i32 30, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nfp_ccm_alloc_tag._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfp_ccm_alloc_tag._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/trace/events/devlink.h", i32 17, i32 1}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/ccm.c", i32 114, i32 3}
!39 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nfp_ccm_wait_reply._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @nfp_ccm_wait_reply._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/ccm.c", i32 120, i32 3}
!46 = !{ptr @nfp_ccm_wait_reply._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfp_ccm_wait_reply._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @skb_queue_head_init.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2148895662, i64 2148895667, i64 2148895680, i64 2148895724, i64 2148895758, i64 2148895779}
!64 = !{i64 2156099697}
!65 = !{i64 2156099952}
!66 = !{i64 2149660312}
!67 = !{i64 2149661348}
