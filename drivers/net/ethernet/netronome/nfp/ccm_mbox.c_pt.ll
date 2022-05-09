; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/ccm_mbox.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/ccm_mbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.125, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.114, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.114 = type { %struct.napi_struct }
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
%struct.cpumask = type { [1 x i32] }
%struct.msix_entry = type { i32, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.anon.125 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.anon.132 = type { i8, i8, i16 }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/netronome/nfp/ccm_mbox.c\00", [50 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&nn->mbox_cmsg.wq\00", [46 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_alloc.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&nn->mbox_cmsg.wait_work)\00", [52 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_alloc.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&nn->mbox_cmsg.runq_work)\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfp-ccm-mbox\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"message type %d not supported by mailbox\0A\00", [54 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_msg_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 476, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_ccm_mbox_msg_prepare\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_msg_prepare._entry_ptr = internal global ptr @nfp_ccm_mbox_msg_prepare._entry, section ".printk_index", align 4
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't allocate reply buffer for mailbox\0A\00", [55 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_msg_prepare._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str, i32 497, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_msg_prepare._entry_ptr.13 = internal global ptr @nfp_ccm_mbox_msg_prepare._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"message too big for tha mailbox: %u/%u vs %u\0A\00", [50 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_msg_prepare._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str, i32 507, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_msg_prepare._entry_ptr.16 = internal global ptr @nfp_ccm_mbox_msg_prepare._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mailbox request queue too long\0A\00", [32 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_msg_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 525, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_ccm_mbox_msg_enqueue\00", [39 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_msg_enqueue._entry_ptr = internal global ptr @nfp_ccm_mbox_msg_enqueue._entry, section ".printk_index", align 4
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"time out waiting for mbox response to 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_unlink_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 459, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_ccm_mbox_unlink_unlock\00", [37 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_unlink_unlock._entry_ptr = internal global ptr @nfp_ccm_mbox_unlink_unlock._entry, section ".printk_index", align 4
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mailbox oversized TLV type:%d offset:%u len:%u\0A\00", [48 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 239, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_ccm_mbox_copy_out\00", [42 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry_ptr = internal global ptr @nfp_ccm_mbox_copy_out._entry, section ".printk_index", align 4
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mailbox unknown TLV type:%d offset:%u len:%u\0A\00", [50 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.22, ptr @.str, i32 250, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry_ptr.25 = internal global ptr @nfp_ccm_mbox_copy_out._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mailbox msg too short to contain header TLV type:%d offset:%u len:%u\0A\00", [58 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str, i32 256, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry_ptr.28 = internal global ptr @nfp_ccm_mbox_copy_out._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mailbox request not found:%u\0A\00", [34 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str, i32 265, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry_ptr.31 = internal global ptr @nfp_ccm_mbox_copy_out._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mailbox msg not supported type:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str, i32 273, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry_ptr.34 = internal global ptr @nfp_ccm_mbox_copy_out._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mailbox msg reply wrong type:%u expected:%lu\0A\00", [50 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str, i32 281, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry_ptr.37 = internal global ptr @nfp_ccm_mbox_copy_out._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mailbox msg reply wrong size type:%u expected:%u have:%u\0A\00", [38 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.22, ptr @.str, i32 287, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry_ptr.40 = internal global ptr @nfp_ccm_mbox_copy_out._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mailbox msg oversized reply type:%u max:%u have:%u\0A\00", [44 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.22, ptr @.str, i32 293, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry_ptr.43 = internal global ptr @nfp_ccm_mbox_copy_out._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reached end of MBOX without END TLV\0A\00", [59 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.22, ptr @.str, i32 324, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry_ptr.46 = internal global ptr @nfp_ccm_mbox_copy_out._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mailbox posted msg failed type:%u err:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.22, ptr @.str, i32 345, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nfp_ccm_mbox_copy_out._entry_ptr.49 = internal global ptr @nfp_ccm_mbox_copy_out._entry.48, section ".printk_index", align 4
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 563, i32 9 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 729, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 730, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 731, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 733, i32 40 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 475, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 496, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 505, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 525, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 458, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 238, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 249, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 255, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 264, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 271, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 279, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 286, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 292, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 323, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private constant [49 x i8] c"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 343, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2789, i32 6 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1984, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @nfp_ccm_mbox_copy_out._entry, ptr @nfp_ccm_mbox_copy_out._entry.24, ptr @nfp_ccm_mbox_copy_out._entry.27, ptr @nfp_ccm_mbox_copy_out._entry.30, ptr @nfp_ccm_mbox_copy_out._entry.33, ptr @nfp_ccm_mbox_copy_out._entry.36, ptr @nfp_ccm_mbox_copy_out._entry.39, ptr @nfp_ccm_mbox_copy_out._entry.42, ptr @nfp_ccm_mbox_copy_out._entry.45, ptr @nfp_ccm_mbox_copy_out._entry.48, ptr @nfp_ccm_mbox_copy_out._entry_ptr, ptr @nfp_ccm_mbox_copy_out._entry_ptr.25, ptr @nfp_ccm_mbox_copy_out._entry_ptr.28, ptr @nfp_ccm_mbox_copy_out._entry_ptr.31, ptr @nfp_ccm_mbox_copy_out._entry_ptr.34, ptr @nfp_ccm_mbox_copy_out._entry_ptr.37, ptr @nfp_ccm_mbox_copy_out._entry_ptr.40, ptr @nfp_ccm_mbox_copy_out._entry_ptr.43, ptr @nfp_ccm_mbox_copy_out._entry_ptr.46, ptr @nfp_ccm_mbox_copy_out._entry_ptr.49, ptr @nfp_ccm_mbox_msg_enqueue._entry, ptr @nfp_ccm_mbox_msg_enqueue._entry_ptr, ptr @nfp_ccm_mbox_msg_prepare._entry, ptr @nfp_ccm_mbox_msg_prepare._entry.12, ptr @nfp_ccm_mbox_msg_prepare._entry.15, ptr @nfp_ccm_mbox_msg_prepare._entry_ptr, ptr @nfp_ccm_mbox_msg_prepare._entry_ptr.13, ptr @nfp_ccm_mbox_msg_prepare._entry_ptr.16, ptr @nfp_ccm_mbox_unlink_unlock._entry, ptr @nfp_ccm_mbox_unlink_unlock._entry_ptr, ptr @.str, ptr @nfp_ccm_mbox_alloc.__key, ptr @.str.1, ptr @nfp_ccm_mbox_alloc.__key.2, ptr @.str.3, ptr @nfp_ccm_mbox_alloc.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @skb_queue_head_init.__key, ptr @.str.51], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_alloc.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_alloc.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_msg_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_msg_prepare._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_msg_prepare._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_msg_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_unlink_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_copy_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_copy_out._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_copy_out._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_copy_out._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_copy_out._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_copy_out._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_copy_out._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_copy_out._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_copy_out._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ccm_mbox_copy_out._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_ccm_mbox_communicate(ptr noundef %nn, ptr noundef %skb, i32 noundef %type, i32 noundef %reply_size, i32 noundef %max_reply_size, i1 noundef zeroext %critical) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfp_ccm_mbox_msg_prepare(ptr noundef %nn, ptr noundef %skb, i32 noundef %type, i32 noundef %reply_size, i32 noundef %max_reply_size, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_free_skb_crit_edge

entry.err_free_skb_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_skb

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %call2 = tail call fastcc i32 @nfp_ccm_mbox_msg_enqueue(ptr noundef %nn, ptr noundef %skb, i32 noundef %type, i1 noundef zeroext %critical)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %err_unlock

if.end5:                                          ; preds = %if.end
  %mbox_cmsg.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51
  %prev.i.i = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, %mbox_cmsg.i
  br i1 %cmp.i.i, label %if.end5.if.end114_crit_edge, label %if.then7

if.end5.if.end114_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then7:                                         ; preds = %if.end5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 566) #7
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb1.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then27 [
    i32 4, label %if.then7.do.end68_crit_edge
    i32 1, label %if.end72.thread
  ]

if.then7.do.end68_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then27:                                        ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %wq = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 1
  %call31212 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %6 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i164213 = icmp eq i32 %7, 4
  br i1 %cmp.i164213, label %if.then27.if.end58_crit_edge, label %if.then27.lor.end36_crit_edge

if.then27.lor.end36_crit_edge:                    ; preds = %if.then27
  br label %lor.end36

if.then27.if.end58_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

lor.end36.thread:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool41.not176 = icmp eq i32 %call54, 0
  %spec.select = select i1 %tobool41.not176, i32 1, i32 %call54
  br label %if.end58

lor.end36:                                        ; preds = %cleanup.lor.end36_crit_edge, %if.then27.lor.end36_crit_edge
  %8 = phi i32 [ %11, %cleanup.lor.end36_crit_edge ], [ %7, %if.then27.lor.end36_crit_edge ]
  %__ret28.0214 = phi i32 [ %call54, %cleanup.lor.end36_crit_edge ], [ 500, %if.then27.lor.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i166 = icmp eq i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.0214)
  %tobool41.not.le = icmp eq i32 %__ret28.0214, 0
  br i1 %cmp.i166, label %if.end58.loopexit.split.loop.exit207, label %9

9:                                                ; preds = %lor.end36
  br i1 %tobool41.not.le, label %.if.end58_crit_edge, label %cleanup

.if.end58_crit_edge:                              ; preds = %9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

cleanup:                                          ; preds = %9
  %call54 = call i32 @schedule_timeout(i32 noundef %__ret28.0214) #7
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %10 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb1.i, align 4
  %cmp.i164 = icmp eq i32 %11, 4
  br i1 %cmp.i164, label %lor.end36.thread, label %cleanup.lor.end36_crit_edge

cleanup.lor.end36_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end36

if.end58.loopexit.split.loop.exit207:             ; preds = %lor.end36
  call void @__sanitizer_cov_trace_pc() #9
  %spec.store.select120.le = select i1 %tobool41.not.le, i32 1, i32 %__ret28.0214
  br label %if.end58

if.end58:                                         ; preds = %if.end58.loopexit.split.loop.exit207, %.if.end58_crit_edge, %lor.end36.thread, %if.then27.if.end58_crit_edge
  %__ret28.2.ph = phi i32 [ %spec.store.select120.le, %if.end58.loopexit.split.loop.exit207 ], [ 500, %if.then27.if.end58_crit_edge ], [ %spec.select, %lor.end36.thread ], [ 0, %.if.end58_crit_edge ]
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  %12 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %cb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.2.ph)
  %tobool60.not = icmp eq i32 %__ret28.2.ph, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp.i168 = icmp eq i32 %.pr, 4
  br i1 %cmp.i168, label %if.end58.do.end68_crit_edge, label %if.end72

if.end58.do.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

do.end68:                                         ; preds = %if.end58.do.end68_crit_edge, %if.then7.do.end68_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  %err.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %do.end68.nfp_ccm_mbox_skb_return.exit_crit_edge, label %if.then.i

do.end68.nfp_ccm_mbox_skb_return.exit_crit_edge:  ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_ccm_mbox_skb_return.exit

if.then.i:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #9
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %nfp_ccm_mbox_skb_return.exit

nfp_ccm_mbox_skb_return.exit:                     ; preds = %if.then.i, %do.end68.nfp_ccm_mbox_skb_return.exit_crit_edge
  %15 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %err.i, align 4
  br label %cleanup119

if.end72:                                         ; preds = %if.end58
  call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.i171 = icmp eq ptr %18, %mbox_cmsg.i
  br i1 %cmp.i.i171, label %if.end72.if.end114_crit_edge, label %if.then77

if.end72.if.end114_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.end72.thread:                                  ; preds = %if.then7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.i171193 = icmp eq ptr %20, %mbox_cmsg.i
  br i1 %cmp.i.i171193, label %if.end72.thread.if.end114_crit_edge, label %if.end72.thread.do.end92_crit_edge

if.end72.thread.do.end92_crit_edge:               ; preds = %if.end72.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

if.end72.thread.if.end114_crit_edge:              ; preds = %if.end72.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then77:                                        ; preds = %if.end72
  br i1 %tobool60.not, label %if.then77.if.end98_crit_edge, label %if.then77.do.end92_crit_edge, !prof !94

if.then77.do.end92_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

if.then77.if.end98_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

do.end92:                                         ; preds = %if.then77.do.end92_crit_edge, %if.end72.thread.do.end92_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 577, i32 noundef 9, ptr noundef null) #7
  br label %if.end98

if.end98:                                         ; preds = %do.end92, %if.then77.if.end98_crit_edge
  %call106 = call fastcc i32 @nfp_ccm_mbox_unlink_unlock(ptr noundef %nn, ptr noundef %skb, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end98.cleanup119_crit_edge, label %if.end98.err_free_skb_crit_edge

if.end98.err_free_skb_crit_edge:                  ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_skb

if.end98.cleanup119_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup119

if.end114:                                        ; preds = %if.end72.thread.if.end114_crit_edge, %if.end72.if.end114_crit_edge, %if.end5.if.end114_crit_edge
  call fastcc void @nfp_ccm_mbox_run_queue_unlock(ptr noundef %nn)
  %err.i172 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %err.i172 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %err.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i173 = icmp eq i32 %22, 0
  br i1 %tobool.not.i173, label %if.end114.nfp_ccm_mbox_skb_return.exit175_crit_edge, label %if.then.i174

if.end114.nfp_ccm_mbox_skb_return.exit175_crit_edge: ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_ccm_mbox_skb_return.exit175

if.then.i174:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %nfp_ccm_mbox_skb_return.exit175

nfp_ccm_mbox_skb_return.exit175:                  ; preds = %if.then.i174, %if.end114.nfp_ccm_mbox_skb_return.exit175_crit_edge
  %23 = ptrtoint ptr %err.i172 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %err.i172, align 4
  br label %cleanup119

err_unlock:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %err_free_skb

err_free_skb:                                     ; preds = %err_unlock, %if.end98.err_free_skb_crit_edge, %entry.err_free_skb_crit_edge
  %err.1 = phi i32 [ %call, %entry.err_free_skb_crit_edge ], [ %call2, %err_unlock ], [ %call106, %if.end98.err_free_skb_crit_edge ]
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup119

cleanup119:                                       ; preds = %err_free_skb, %nfp_ccm_mbox_skb_return.exit175, %if.end98.cleanup119_crit_edge, %nfp_ccm_mbox_skb_return.exit
  %retval.1 = phi i32 [ %err.1, %err_free_skb ], [ %24, %nfp_ccm_mbox_skb_return.exit175 ], [ %16, %nfp_ccm_mbox_skb_return.exit ], [ 0, %if.end98.cleanup119_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_ccm_mbox_msg_prepare(ptr nocapture noundef readonly %nn, ptr noundef %skb, i32 noundef %type, i32 noundef %reply_size, i32 noundef %max_reply_size, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_len.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 2
  %0 = ptrtoint ptr %mbox_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbox_len.i, align 4
  %2 = add i32 %1, -16
  %sub1.i = and i32 %2, -4
  %mbox_cmsg_types = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 4
  %3 = ptrtoint ptr %mbox_cmsg_types to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mbox_cmsg_types, align 4
  %shl = shl nuw i32 1, %type
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end17, !prof !95

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then12, !prof !94

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.then
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %do.end, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %6, ptr noundef nonnull @.str.7, i32 noundef %type) #10
  br label %cleanup

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %type) #10
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_reply_size)
  %tobool18.not = icmp eq i32 %max_reply_size, 0
  %spec.select = select i1 %tobool18.not, i32 %sub1.i, i32 %max_reply_size
  %sub = add i32 %spec.select, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub22 = add i32 %sub.ptr.sub.neg, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22)
  %cmp = icmp sgt i32 %sub22, 0
  br i1 %cmp, label %if.then23, label %if.end17.if.end50_crit_edge

if.end17.if.end50_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then23:                                        ; preds = %if.end17
  %call24 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef %sub22, i32 noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end50_crit_edge, label %if.then26

if.then23.if.end50_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then26:                                        ; preds = %if.then23
  %call29 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then26.cleanup_crit_edge, label %if.then37, !prof !94

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then37:                                        ; preds = %if.then26
  %netdev38 = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %13 = ptrtoint ptr %netdev38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev38, align 4
  %tobool39.not = icmp eq ptr %14, null
  br i1 %tobool39.not, label %do.end45, label %if.then40

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %14, ptr noundef nonnull @.str.11) #10
  br label %cleanup

do.end45:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end50:                                         ; preds = %if.then23.if.end50_crit_edge, %if.end17.if.end50_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %sub51 = add i32 %18, -1
  %or52 = or i32 %sub51, 3
  %add53 = add i32 %or52, 1
  %19 = tail call i32 @llvm.umax.i32(i32 %add, i32 %add53)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub1.i)
  %cmp55 = icmp ugt i32 %19, %sub1.i
  br i1 %cmp55, label %if.then56, label %if.end81

if.then56:                                        ; preds = %if.end50
  %call59 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then56.cleanup_crit_edge, label %if.then67, !prof !94

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then67:                                        ; preds = %if.then56
  %netdev68 = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %20 = ptrtoint ptr %netdev68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev68, align 4
  %tobool69.not = icmp eq ptr %21, null
  br i1 %tobool69.not, label %do.end76, label %if.then70

if.then70:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %21, ptr noundef nonnull @.str.14, i32 noundef %23, i32 noundef %add, i32 noundef %sub1.i) #10
  br label %cleanup

do.end76:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nn, align 4
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.14, i32 noundef %27, i32 noundef %add, i32 noundef %sub1.i) #10
  br label %cleanup

if.end81:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %28 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cb1.i, align 4
  %err.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %err.i, align 4
  %max_len2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %max_len2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %19, ptr %max_len2.i, align 4
  %exp_reply3.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %exp_reply3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %reply_size, ptr %exp_reply3.i, align 4
  %posted.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %32 = ptrtoint ptr %posted.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %posted.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %do.end76, %if.then70, %if.then56.cleanup_crit_edge, %do.end45, %if.then40, %if.then26.cleanup_crit_edge, %do.end, %if.then14, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end81 ], [ -22, %if.then14 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call24, %if.then40 ], [ %call24, %do.end45 ], [ %call24, %if.then26.cleanup_crit_edge ], [ -90, %if.then70 ], [ -90, %do.end76 ], [ -90, %if.then56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_ccm_mbox_msg_enqueue(ptr noundef %nn, ptr noundef %skb, i32 noundef %type, i1 noundef zeroext %critical) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_cmsg = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51
  %lock = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !95

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/netronome/nfp/ccm_mbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 522, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end9:                                          ; preds = %entry
  br i1 %critical, label %do.end9.if.end31_crit_edge, label %land.lhs.true

do.end9.if.end31_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true:                                    ; preds = %do.end9
  %qlen = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 1
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %3)
  %cmp = icmp ugt i32 %3, 1023
  br i1 %cmp, label %if.then13, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then13:                                        ; preds = %land.lhs.true
  %call14 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.cleanup_crit_edge, label %if.then22, !prof !94

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.then13
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %tobool23.not = icmp eq ptr %5, null
  br i1 %tobool23.not, label %do.end28, label %if.then24

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %5, ptr noundef nonnull @.str.17) #10
  br label %cleanup

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %do.end9.if.end31_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %ver = getelementptr inbounds %struct.anon.132, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ver, align 1
  %conv = trunc i32 %type to i8
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 4
  %tag = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 5
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tag, align 8
  %inc = add i16 %13, 1
  store i16 %inc, ptr %tag, align 8
  %tag34 = getelementptr inbounds %struct.anon.132, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %tag34 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tag34, align 2
  %prev.i.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %mbox_cmsg, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 1
  %18 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %skb, ptr %16, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 1
  %20 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end28, %if.then24, %if.then13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -16, %if.then24 ], [ -16, %do.end28 ], [ -16, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_ccm_mbox_unlink_unlock(ptr noundef %nn, ptr noundef %skb, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 443) #7
  %3 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.i = icmp eq i32 %4, 4
  br i1 %cmp.i, label %if.then.do.end19_crit_edge, label %if.end

if.then.do.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %wq = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 1
  %call878 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %6 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i7179 = icmp eq i32 %7, 4
  br i1 %cmp.i7179, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #7
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %8 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb1.i, align 4
  %cmp.i71 = icmp eq i32 %9, 4
  br i1 %cmp.i71, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %do.end19

do.end19:                                         ; preds = %for.end, %if.then.do.end19_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !97
  %err.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.end19.nfp_ccm_mbox_skb_return.exit_crit_edge, label %if.then.i

do.end19.nfp_ccm_mbox_skb_return.exit_crit_edge:  ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_ccm_mbox_skb_return.exit

if.then.i:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %nfp_ccm_mbox_skb_return.exit

nfp_ccm_mbox_skb_return.exit:                     ; preds = %if.then.i, %do.end19.nfp_ccm_mbox_skb_return.exit_crit_edge
  %12 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err.i, align 4
  br label %cleanup50

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i73 = icmp eq i32 %1, 1
  %qlen.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 1
  %14 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %15, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %16 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb, align 8
  %prev9.i = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 1
  %18 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb, align 8
  %prev17.i = getelementptr inbounds %struct.anon.44, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %prev17.i, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %17, ptr %19, align 8
  br i1 %cmp.i73, label %if.then27, label %if.end36.critedge

if.then27:                                        ; preds = %if.end23
  %mbox_cmsg25 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51
  %22 = ptrtoint ptr %mbox_cmsg25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbox_cmsg25, align 4
  %cmp.i.i = icmp eq ptr %23, %mbox_cmsg25
  %tobool.not13.i = icmp eq ptr %23, null
  %tobool.not.i74 = or i1 %cmp.i.i, %tobool.not13.i
  br i1 %tobool.not.i74, label %if.then27.nfp_ccm_mbox_mark_next_runner.exit_crit_edge, label %if.end.i

if.then27.nfp_ccm_mbox_mark_next_runner.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_ccm_mbox_mark_next_runner.exit

if.end.i:                                         ; preds = %if.then27
  %cb1.i75 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cb1.i75 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %cb1.i75, align 4
  %posted.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 16
  %25 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %posted.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool2.not.i = icmp eq i8 %26, 0
  br i1 %tobool2.not.i, label %if.end.i.nfp_ccm_mbox_mark_next_runner.exit_crit_edge, label %if.then3.i

if.end.i.nfp_ccm_mbox_mark_next_runner.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_ccm_mbox_mark_next_runner.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %workq.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 2
  %27 = ptrtoint ptr %workq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %workq.i, align 4
  %runq_work.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %runq_work.i) #7
  br label %nfp_ccm_mbox_mark_next_runner.exit

nfp_ccm_mbox_mark_next_runner.exit:               ; preds = %if.then3.i, %if.end.i.nfp_ccm_mbox_mark_next_runner.exit_crit_edge, %if.then27.nfp_ccm_mbox_mark_next_runner.exit_crit_edge
  %lock31.c = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock31.c) #7
  %wq35 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 1
  tail call void @__wake_up(ptr noundef %wq35, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %if.end36

if.end36.critedge:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %lock31.c68 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock31.c68) #7
  br label %if.end36

if.end36:                                         ; preds = %if.end36.critedge, %nfp_ccm_mbox_mark_next_runner.exit
  %call37 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.cleanup50_crit_edge, label %if.then41, !prof !94

if.end36.cleanup50_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.then41:                                        ; preds = %if.end36
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %29 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev, align 4
  %tobool42.not = icmp eq ptr %30, null
  br i1 %tobool42.not, label %do.end47, label %if.then43

if.then43:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %30, ptr noundef nonnull @.str.19, i32 noundef %type) #10
  br label %cleanup50

do.end47:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.19, i32 noundef %type) #10
  br label %cleanup50

cleanup50:                                        ; preds = %do.end47, %if.then43, %if.end36.cleanup50_crit_edge, %nfp_ccm_mbox_skb_return.exit
  %retval.0 = phi i32 [ %13, %nfp_ccm_mbox_skb_return.exit ], [ -110, %if.then43 ], [ -110, %do.end47 ], [ -110, %if.end36.cleanup50_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_ccm_mbox_run_queue_unlock(ptr noundef %nn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_len = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 2
  %0 = ptrtoint ptr %mbox_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbox_len, align 4
  %mbox_cmsg = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51
  %2 = ptrtoint ptr %mbox_cmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_cmsg, align 4
  %max_len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %max_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_len.i, align 4
  %6 = add i32 %1, -16
  %sub3 = sub i32 %6, %5
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %space.0 = phi i32 [ %sub3, %entry ], [ %sub12, %if.end.while.cond_crit_edge ]
  %last.0 = phi ptr [ %3, %entry ], [ %8, %if.end.while.cond_crit_edge ]
  %cnt.0 = phi i32 [ 1, %entry ], [ %inc, %if.end.while.cond_crit_edge ]
  %7 = ptrtoint ptr %last.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %last.0, align 8
  %cmp.i = icmp eq ptr %8, %mbox_cmsg
  br i1 %cmp.i, label %while.cond.while.end_crit_edge, label %skb_queue_next.exit

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

skb_queue_next.exit:                              ; preds = %while.cond
  %max_len.i44 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %max_len.i44 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_len.i44, align 4
  %add11.neg = add i32 %space.0, -4
  %sub12 = sub i32 %add11.neg, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12)
  %cmp = icmp slt i32 %sub12, 0
  br i1 %cmp, label %skb_queue_next.exit.while.end_crit_edge, label %if.end

skb_queue_next.exit.while.end_crit_edge:          ; preds = %skb_queue_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %skb_queue_next.exit
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %cb1.i, align 4
  %inc = add nuw nsw i32 %cnt.0, 1
  %cmp13 = icmp eq i32 %inc, 64
  br i1 %cmp13, label %if.end.while.end_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %skb_queue_next.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %last.1 = phi ptr [ %last.0, %skb_queue_next.exit.while.end_crit_edge ], [ %8, %if.end.while.end_crit_edge ], [ %last.0, %while.cond.while.end_crit_edge ]
  %lock = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %bar_lock.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 33
  tail call void @down(ptr noundef %bar_lock.i) #7
  tail call fastcc void @nfp_ccm_mbox_copy_in(ptr noundef %nn, ptr noundef %last.1)
  %call18 = tail call i32 @nfp_net_mbox_reconfig(ptr noundef %nn, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nfp_ccm_mbox_copy_out(ptr noundef %nn, ptr noundef %last.1)
  br label %if.end20

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nfp_ccm_mbox_mark_all_err(ptr noundef %nn, ptr noundef %last.1)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  tail call void @up(ptr noundef %bar_lock.i) #7
  %wq = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 1
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_ccm_mbox_communicate(ptr noundef %nn, ptr noundef %skb, i32 noundef %type, i32 noundef %reply_size, i32 noundef %max_reply_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__nfp_ccm_mbox_communicate(ptr noundef %nn, ptr noundef %skb, i32 noundef %type, i32 noundef %reply_size, i32 noundef %max_reply_size, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_ccm_mbox_post(ptr noundef %nn, ptr noundef %skb, i32 noundef %type, i32 noundef %max_reply_size) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfp_ccm_mbox_msg_prepare(ptr noundef %nn, ptr noundef %skb, i32 noundef %type, i32 noundef 0, i32 noundef %max_reply_size, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_free_skb_crit_edge

entry.err_free_skb_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_skb

if.end:                                           ; preds = %entry
  %posted.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %0 = ptrtoint ptr %posted.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %posted.i, align 4
  %lock = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %mbox_cmsg.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %lock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !95

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/netronome/nfp/ccm_mbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 522, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end9.i:                                        ; preds = %if.end
  %qlen.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 1
  %3 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %4)
  %cmp.i = icmp ugt i32 %4, 1023
  br i1 %cmp.i, label %if.then13.i, label %if.end4

if.then13.i:                                      ; preds = %do.end9.i
  %call14.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.err_unlock_crit_edge, label %if.then22.i, !prof !94

if.then13.i.err_unlock_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.then22.i:                                      ; preds = %if.then13.i
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %5 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev.i, align 4
  %tobool23.not.i = icmp eq ptr %6, null
  br i1 %tobool23.not.i, label %do.end28.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %6, ptr noundef nonnull @.str.17) #10
  br label %err_unlock

do.end28.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.17) #10
  br label %err_unlock

if.end4:                                          ; preds = %do.end9.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %ver.i = getelementptr inbounds %struct.anon.132, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %ver.i, align 1
  %conv.i = trunc i32 %type to i8
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %10, align 4
  %tag.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 5
  %13 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tag.i, align 8
  %inc.i = add i16 %14, 1
  store i16 %inc.i, ptr %tag.i, align 8
  %tag34.i = getelementptr inbounds %struct.anon.132, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %tag34.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %tag34.i, align 2
  %prev.i.i.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %mbox_cmsg.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 1
  %19 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %skb, ptr %17, align 4
  %21 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen.i, align 4
  %add.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i, align 4
  %23 = load ptr, ptr %prev10.i.i.i.i, align 4
  %cmp.i.i = icmp eq ptr %23, %mbox_cmsg.i
  br i1 %cmp.i.i, label %if.then6, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  %bar_lock.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 33
  %call.i = tail call i32 @down_trylock(ptr noundef %bar_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nfp_ccm_mbox_copy_in(ptr noundef %nn, ptr noundef %skb)
  tail call void @nfp_net_mbox_reconfig_post(ptr noundef %nn, i32 noundef 6) #7
  %workq = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 2
  %24 = ptrtoint ptr %workq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %workq, align 4
  %wait_work = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 3
  %call.i40 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %wait_work) #7
  br label %if.end13

if.else:                                          ; preds = %if.then6
  %26 = ptrtoint ptr %mbox_cmsg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mbox_cmsg.i, align 4
  %cmp.i.i42 = icmp eq ptr %27, %mbox_cmsg.i
  %tobool.not13.i = icmp eq ptr %27, null
  %tobool.not.i43 = or i1 %cmp.i.i42, %tobool.not13.i
  br i1 %tobool.not.i43, label %if.else.if.end13_crit_edge, label %if.end.i

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.i:                                         ; preds = %if.else
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %cb1.i, align 4
  %posted.i44 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 3, i32 16
  %29 = ptrtoint ptr %posted.i44 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %posted.i44, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool2.not.i = icmp eq i8 %30, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end13_crit_edge, label %if.then3.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %workq.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 2
  %31 = ptrtoint ptr %workq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %workq.i, align 4
  %runq_work.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %runq_work.i) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then3.i, %if.end.i.if.end13_crit_edge, %if.else.if.end13_crit_edge, %if.then8, %if.end4.if.end13_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

err_unlock:                                       ; preds = %do.end28.i, %if.then24.i, %if.then13.i.err_unlock_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %err_free_skb

err_free_skb:                                     ; preds = %err_unlock, %entry.err_free_skb_crit_edge
  %err.0 = phi i32 [ %call, %entry.err_free_skb_crit_edge ], [ -16, %err_unlock ]
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_skb, %if.end13
  %retval.0 = phi i32 [ %err.0, %err_free_skb ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_ccm_mbox_copy_in(ptr noundef readonly %nn, ptr noundef readnone %last) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_off = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 1
  %0 = ptrtoint ptr %mbox_off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbox_off, align 4
  %add = add i32 %1, 8
  %mbox_cmsg = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51
  %2 = ptrtoint ptr %mbox_cmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_cmsg, align 4
  %ctrl_bar.i.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %if.end22.while.cond_crit_edge, %entry
  %skb.0 = phi ptr [ %3, %entry ], [ %33, %if.end22.while.cond_crit_edge ]
  %off.0 = phi i32 [ %add, %entry ], [ %off.3, %if.end22.while.cond_crit_edge ]
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1, align 4
  %and28.i = and i32 %5, 65535
  %or.i = or i32 %and28.i, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %7 = ptrtoint ptr %ctrl_bar.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl_bar.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %off.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #7, !srcloc !100
  %data3 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %9 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data3, align 4
  %11 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len1, align 4
  %off.170 = add i32 %off.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp71.not = icmp ult i32 %12, 4
  br i1 %cmp71.not, label %while.cond.for.end_crit_edge, label %for.body.preheader

while.cond.for.end_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %while.cond
  %div55 = lshr i32 %12, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %off.173 = phi i32 [ %off.1, %for.body.for.body_crit_edge ], [ %off.170, %for.body.preheader ]
  %i.072 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %10, i32 %i.072
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %ctrl_bar.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_bar.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %off.173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #7, !srcloc !100
  %inc = add nuw nsw i32 %i.072, 1
  %off.1 = add i32 %off.173, 4
  %exitcond.not = icmp eq i32 %inc, %div55
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.cond.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %while.cond.for.end_crit_edge ], [ %div55, %for.body.for.end_crit_edge ]
  %off.1.in.lcssa = phi i32 [ %off.0, %while.cond.for.end_crit_edge ], [ %off.173, %for.body.for.end_crit_edge ]
  %off.1.lcssa = phi i32 [ %off.170, %while.cond.for.end_crit_edge ], [ %off.1, %for.body.for.end_crit_edge ]
  %18 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len1, align 4
  %and = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp)
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tmp, align 4
  %arrayidx7 = getelementptr i32, ptr %10, i32 %i.0.lcssa
  %21 = call ptr @memcpy(ptr %tmp, ptr %arrayidx7, i32 %and)
  %tmp.0.tmp.0.tmp.0. = load i32, ptr %tmp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.tmp.0.tmp.0.) #7
  %23 = ptrtoint ptr %ctrl_bar.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl_bar.i.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %24, i32 %off.1.lcssa
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %22) #7, !srcloc !100
  %add10 = add i32 %off.1.in.lcssa, 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %off.2 = phi i32 [ %add10, %if.then ], [ %off.1.lcssa, %for.end.if.end_crit_edge ]
  %25 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len1, align 4
  %notlhs = sub i32 0, %26
  %add12.neg = and i32 %notlhs, -4
  %max_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %max_len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_len.i, align 4
  %sub14 = add i32 %add12.neg, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %cmp15 = icmp sgt i32 %sub14, 0
  br i1 %cmp15, label %nfp_ccm_mbox_write_tlv.exit64, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

nfp_ccm_mbox_write_tlv.exit64:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and28.i60 = and i32 %sub14, 65535
  %or.i61 = or i32 %and28.i60, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i61) #7
  %30 = ptrtoint ptr %ctrl_bar.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_bar.i.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %31, i32 %off.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 %29) #7, !srcloc !100
  %add17 = add i32 %off.2, 4
  %add18 = add i32 %add17, %sub14
  br label %if.end19

if.end19:                                         ; preds = %nfp_ccm_mbox_write_tlv.exit64, %if.end.if.end19_crit_edge
  %off.3 = phi i32 [ %add18, %nfp_ccm_mbox_write_tlv.exit64 ], [ %off.2, %if.end.if.end19_crit_edge ]
  %cmp20 = icmp eq ptr %skb.0, %last
  br i1 %cmp20, label %while.end, label %if.end22

if.end22:                                         ; preds = %if.end19
  %32 = ptrtoint ptr %skb.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb.0, align 8
  %cmp.i.i = icmp eq ptr %33, %mbox_cmsg
  br i1 %cmp.i.i, label %do.body2.i, label %if.end22.while.cond_crit_edge, !prof !95

if.end22.while.cond_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.body2.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1664, 0\0A.popsection", ""() #7, !srcloc !101
  unreachable

while.end:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %ctrl_bar.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl_bar.i.i, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %35, i32 %off.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 256) #7, !srcloc !100
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_mbox_reconfig_post(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_ccm_mbox_msg_alloc(ptr nocapture noundef readonly %nn, i32 noundef %req_size, i32 noundef %reply_size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reply_size)
  %tobool.not = icmp eq i32 %reply_size, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mbox_len.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 2
  %0 = ptrtoint ptr %mbox_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbox_len.i, align 4
  %2 = add i32 %1, -16
  %sub1.i = and i32 %2, -4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.umax.i32(i32 %req_size, i32 %reply_size)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %max_size.0 = phi i32 [ %3, %if.else ], [ %sub1.i, %if.then ]
  %sub = add i32 %max_size.0, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef %flags, i32 noundef 0, i32 noundef -1) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %req_size) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfp_ccm_mbox_fits(ptr nocapture noundef readonly %nn, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_len.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 2
  %0 = ptrtoint ptr %mbox_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbox_len.i, align 4
  %2 = add i32 %1, -16
  %sub1.i = and i32 %2, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %size)
  %cmp = icmp uge i32 %sub1.i, %size
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_ccm_mbox_init(ptr nocapture noundef readnone %nn) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_ccm_mbox_clean(ptr nocapture noundef readonly %nn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %workq = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 2
  %0 = ptrtoint ptr %workq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workq, align 4
  tail call void @drain_workqueue(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_ccm_mbox_alloc(ptr noundef %nn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_cmsg = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51
  %lock.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %0 = ptrtoint ptr %mbox_cmsg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mbox_cmsg, ptr %mbox_cmsg, align 4
  %prev.i.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mbox_cmsg, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen.i.i, align 4
  %wq = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.1, ptr noundef nonnull @nfp_ccm_mbox_alloc.__key) #7
  %wait_work = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 3
  tail call void @__init_work(ptr noundef %wait_work, i32 noundef 0) #7
  %3 = ptrtoint ptr %wait_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %wait_work, align 16
  %lockdep_map = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @nfp_ccm_mbox_alloc.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry10 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 3, i32 1
  %4 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 3, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 3, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nfp_ccm_mbox_post_wait_work, ptr %func, align 4
  %runq_work = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 4
  tail call void @__init_work(ptr noundef %runq_work, i32 noundef 0) #7
  %7 = ptrtoint ptr %runq_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %runq_work, align 4
  %lockdep_map23 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map23, ptr noundef nonnull @.str.5, ptr noundef nonnull @nfp_ccm_mbox_alloc.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry26 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 4, i32 1
  %8 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i47 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry26, ptr %prev.i47, align 4
  %func29 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 4, i32 2
  %10 = ptrtoint ptr %func29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nfp_ccm_mbox_post_runq_work, ptr %func29, align 4
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 0) #7
  %workq = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 2
  %11 = ptrtoint ptr %workq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %workq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_ccm_mbox_post_wait_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -58768
  %mbox_cmsg = getelementptr i8, ptr %work, i32 -112
  %0 = ptrtoint ptr %mbox_cmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_cmsg, align 4
  %cmp.i = icmp eq ptr %1, %mbox_cmsg
  %tobool.not40 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not40
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %posted.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %2 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %posted.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %lor.rhs.do.end_crit_edge, label %if.end25.critedge, !prof !95

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 634, i32 noundef 9, ptr noundef null) #7
  br label %exit_unlock_wake

if.end25.critedge:                                ; preds = %lor.rhs
  %call26 = tail call i32 @nfp_net_mbox_reconfig_wait_posted(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end25.critedge
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nfp_ccm_mbox_copy_out(ptr noundef %add.ptr, ptr noundef nonnull %1)
  br label %exit_unlock_wake

if.else:                                          ; preds = %if.end25.critedge
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nfp_ccm_mbox_mark_all_err(ptr noundef %add.ptr, ptr noundef nonnull %1)
  br label %exit_unlock_wake

exit_unlock_wake:                                 ; preds = %if.else, %if.then28, %do.end
  %bar_lock.i = getelementptr i8, ptr %work, i32 -276
  tail call void @up(ptr noundef %bar_lock.i) #7
  %wq = getelementptr i8, ptr %work, i32 -56
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_ccm_mbox_post_runq_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -58812
  %mbox_cmsg = getelementptr i8, ptr %work, i32 -156
  %lock = getelementptr i8, ptr %work, i32 -144
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %0 = ptrtoint ptr %mbox_cmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_cmsg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %posted.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %2 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %posted.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %lor.lhs.false.do.end_crit_edge, label %lor.rhs

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 1
  br i1 %cmp.i.not, label %if.end31, label %lor.rhs.do.end_crit_edge, !prof !94

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 617, i32 noundef 9, ptr noundef null) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

if.end31:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nfp_ccm_mbox_run_queue_unlock(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_ccm_mbox_free(ptr noundef readonly %nn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_cmsg = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51
  %workq = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 2
  %0 = ptrtoint ptr %workq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #7
  %2 = ptrtoint ptr %mbox_cmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_cmsg, align 4
  %cmp.i.not = icmp eq ptr %3, %mbox_cmsg
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !94

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 742, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_mbox_reconfig(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_ccm_mbox_copy_out(ptr noundef %nn, ptr noundef readnone %last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_bar = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 11
  %0 = ptrtoint ptr %ctrl_bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_bar, align 4
  %mbox_off = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 1
  %2 = ptrtoint ptr %mbox_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbox_off, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 8
  %mbox_len = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 2
  %4 = ptrtoint ptr %mbox_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbox_len, align 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr1, i32 %5
  %mbox_cmsg.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51
  %netdev193 = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %next_tlv.while.cond_crit_edge, %entry
  %data.0 = phi ptr [ %add.ptr1, %entry ], [ %add.ptr308, %next_tlv.while.cond_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %data.0) #7, !srcloc !102
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %shr = lshr i32 %7, 16
  %and34 = and i32 %7, 65535
  %8 = ptrtoint ptr %ctrl_bar to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_bar, align 4
  %add.ptr38 = getelementptr i8, ptr %data.0, i32 4
  %add.ptr39 = getelementptr i8, ptr %add.ptr38, i32 %and34
  %cmp = icmp ugt ptr %add.ptr39, %add.ptr3
  br i1 %cmp, label %if.then, label %if.end52

if.then:                                          ; preds = %while.cond
  %sub.ptr.lhs.cast.le = ptrtoint ptr %data.0 to i32
  %sub.ptr.rhs.cast.le = ptrtoint ptr %9 to i32
  %sub.ptr.sub.le597 = sub i32 %sub.ptr.lhs.cast.le, %sub.ptr.rhs.cast.le
  %call41 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool.not = icmp eq i32 %call41, 0
  br i1 %tobool.not, label %if.then.do.end343_crit_edge, label %if.then44, !prof !94

if.then.do.end343_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end343

if.then44:                                        ; preds = %if.then
  %10 = ptrtoint ptr %netdev193 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev193, align 4
  %tobool45.not = icmp eq ptr %11, null
  br i1 %tobool45.not, label %do.end50, label %if.then46

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %11, ptr noundef nonnull @.str.21, i32 noundef %shr, i32 noundef %sub.ptr.sub.le597, i32 noundef %and34) #10
  br label %do.end343

do.end50:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef %shr, i32 noundef %sub.ptr.sub.le597, i32 noundef %and34) #10
  br label %do.end343

if.end52:                                         ; preds = %while.cond
  %trunc = trunc i32 %shr to i16
  %14 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %trunc, label %if.then61 [
    i16 1, label %if.end52.do.end343_crit_edge
    i16 4, label %if.end52.next_tlv_crit_edge
    i16 2, label %if.end52.if.end84_crit_edge
    i16 3, label %if.end52.if.end84_crit_edge781
  ]

if.end52.if.end84_crit_edge781:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.end52.if.end84_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.end52.next_tlv_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_tlv

if.end52.do.end343_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end343

if.then61:                                        ; preds = %if.end52
  %sub.ptr.lhs.cast.le605 = ptrtoint ptr %data.0 to i32
  %sub.ptr.rhs.cast.le601 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.le594 = sub i32 %sub.ptr.lhs.cast.le605, %sub.ptr.rhs.cast.le601
  %call64 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then61.do.end343_crit_edge, label %if.then72, !prof !94

if.then61.do.end343_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end343

if.then72:                                        ; preds = %if.then61
  %15 = ptrtoint ptr %netdev193 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev193, align 4
  %tobool74.not = icmp eq ptr %16, null
  br i1 %tobool74.not, label %do.end80, label %if.then75

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %16, ptr noundef nonnull @.str.23, i32 noundef %shr, i32 noundef %sub.ptr.sub.le594, i32 noundef %and34) #10
  br label %do.end343

do.end80:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.23, i32 noundef %shr, i32 noundef %sub.ptr.sub.le594, i32 noundef %and34) #10
  br label %do.end343

if.end84:                                         ; preds = %if.end52.if.end84_crit_edge, %if.end52.if.end84_crit_edge781
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and34)
  %cmp85 = icmp ult i32 %and34, 4
  br i1 %cmp85, label %if.then86, label %if.end109

if.then86:                                        ; preds = %if.end84
  %sub.ptr.lhs.cast.le607 = ptrtoint ptr %data.0 to i32
  %sub.ptr.rhs.cast.le603 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.le = sub i32 %sub.ptr.lhs.cast.le607, %sub.ptr.rhs.cast.le603
  %call89 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then86.do.end343_crit_edge, label %if.then97, !prof !94

if.then86.do.end343_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end343

if.then97:                                        ; preds = %if.then86
  %19 = ptrtoint ptr %netdev193 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev193, align 4
  %tobool99.not = icmp eq ptr %20, null
  br i1 %tobool99.not, label %do.end105, label %if.then100

if.then100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %20, ptr noundef nonnull @.str.26, i32 noundef %shr, i32 noundef %sub.ptr.sub.le, i32 noundef %and34) #10
  br label %do.end343

do.end105:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.26, i32 noundef %shr, i32 noundef %sub.ptr.sub.le, i32 noundef %and34) #10
  br label %do.end343

if.end109:                                        ; preds = %if.end84
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #7, !srcloc !102
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %hdr.sroa.0.0.extract.shift = lshr i32 %24, 24
  %hdr.sroa.0.0.extract.trunc = trunc i32 %hdr.sroa.0.0.extract.shift to i8
  %hdr.sroa.12.0.extract.shift = lshr i32 %24, 16
  %hdr.sroa.12.0.extract.trunc = trunc i32 %hdr.sroa.12.0.extract.shift to i8
  %hdr.sroa.12439.0.extract.trunc = trunc i32 %24 to i16
  %25 = ptrtoint ptr %mbox_cmsg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mbox_cmsg.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end7.i.while.cond.i_crit_edge, %if.end109
  %skb.0.i = phi ptr [ %26, %if.end109 ], [ %32, %if.end7.i.while.cond.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %tag.i.i = getelementptr inbounds %struct.anon.132, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tag.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %hdr.sroa.12439.0.extract.trunc)
  %cmp.i = icmp eq i16 %30, %hdr.sroa.12439.0.extract.trunc
  br i1 %cmp.i, label %nfp_ccm_mbox_find_req.exit, label %if.end.i

if.end.i:                                         ; preds = %while.cond.i
  %cmp4.i = icmp eq ptr %skb.0.i, %last
  br i1 %cmp4.i, label %if.end.i.if.then117_crit_edge, label %if.end7.i

if.end.i.if.then117_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

if.end7.i:                                        ; preds = %if.end.i
  %31 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skb.0.i, align 8
  %cmp.i.i.i = icmp eq ptr %32, %mbox_cmsg.i
  br i1 %cmp.i.i.i, label %do.body2.i.i, label %if.end7.i.while.cond.i_crit_edge, !prof !95

if.end7.i.while.cond.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

do.body2.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1664, 0\0A.popsection", ""() #7, !srcloc !101
  unreachable

nfp_ccm_mbox_find_req.exit:                       ; preds = %while.cond.i
  %data.i.i.le = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %tobool116.not = icmp eq ptr %skb.0.i, null
  br i1 %tobool116.not, label %nfp_ccm_mbox_find_req.exit.if.then117_crit_edge, label %if.end143

nfp_ccm_mbox_find_req.exit.if.then117_crit_edge:  ; preds = %nfp_ccm_mbox_find_req.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

if.then117:                                       ; preds = %nfp_ccm_mbox_find_req.exit.if.then117_crit_edge, %if.end.i.if.then117_crit_edge
  %call120 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then117.do.end343_crit_edge, label %if.then128, !prof !94

if.then117.do.end343_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end343

if.then128:                                       ; preds = %if.then117
  %33 = ptrtoint ptr %netdev193 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev193, align 4
  %tobool130.not = icmp eq ptr %34, null
  br i1 %tobool130.not, label %do.end137, label %if.then131

if.then131:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %conv = and i32 %24, 65535
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %34, ptr noundef nonnull @.str.29, i32 noundef %conv) #10
  br label %do.end343

do.end137:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nn, align 4
  %conv140 = and i32 %24, 65535
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.29, i32 noundef %conv140) #10
  br label %do.end343

if.end143:                                        ; preds = %nfp_ccm_mbox_find_req.exit
  %cb144 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp145 = icmp eq i32 %shr, 3
  br i1 %cmp145, label %if.then147, label %if.end174

if.then147:                                       ; preds = %if.end143
  %call150 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then147.if.end173_crit_edge, label %if.then158, !prof !94

if.then147.if.end173_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173

if.then158:                                       ; preds = %if.then147
  %37 = ptrtoint ptr %netdev193 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev193, align 4
  %tobool160.not = icmp eq ptr %38, null
  br i1 %tobool160.not, label %do.end168, label %if.then161

if.then161:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %data.i.i.le to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.le, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  %conv164 = zext i8 %42 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %38, ptr noundef nonnull @.str.32, i32 noundef %conv164) #10
  br label %if.end173

do.end168:                                        ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nn, align 4
  %45 = ptrtoint ptr %data.i.i.le to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i.le, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 4
  %conv171 = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.32, i32 noundef %conv171) #10
  br label %if.end173

if.end173:                                        ; preds = %do.end168, %if.then161, %if.then147.if.end173_crit_edge
  %err = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 4
  %49 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -5, ptr %err, align 4
  br label %next_tlv

if.end174:                                        ; preds = %if.end143
  %50 = ptrtoint ptr %data.i.i.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.le, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 4
  %54 = or i8 %53, -128
  %or = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %hdr.sroa.0.0.extract.shift, i32 %or)
  %cmp179.not = icmp eq i32 %hdr.sroa.0.0.extract.shift, %or
  br i1 %cmp179.not, label %if.end215, label %if.then181

if.then181:                                       ; preds = %if.end174
  %call184 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then181.if.end213_crit_edge, label %if.then192, !prof !94

if.then181.if.end213_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end213

if.then192:                                       ; preds = %if.then181
  %55 = ptrtoint ptr %netdev193 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev193, align 4
  %tobool194.not = icmp eq ptr %56, null
  br i1 %tobool194.not, label %do.end205, label %if.then195

if.then195:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %data.i.i.le to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.le, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 4
  %61 = or i8 %60, -128
  %or201 = zext i8 %61 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %56, ptr noundef nonnull @.str.35, i32 noundef %hdr.sroa.0.0.extract.shift, i32 noundef %or201) #10
  br label %if.end213

do.end205:                                        ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nn, align 4
  %64 = ptrtoint ptr %data.i.i.le to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i.le, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 4
  %68 = or i8 %67, -128
  %or211 = zext i8 %68 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.35, i32 noundef %hdr.sroa.0.0.extract.shift, i32 noundef %or211) #10
  br label %if.end213

if.end213:                                        ; preds = %do.end205, %if.then195, %if.then181.if.end213_crit_edge
  %err214 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 4
  %69 = ptrtoint ptr %err214 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -5, ptr %err214, align 4
  br label %next_tlv

if.end215:                                        ; preds = %if.end174
  %exp_reply = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 12
  %70 = ptrtoint ptr %exp_reply to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %exp_reply, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool216.not = icmp eq i32 %71, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and34, i32 %71)
  %cmp219.not = icmp eq i32 %and34, %71
  %or.cond = select i1 %tobool216.not, i1 true, i1 %cmp219.not
  br i1 %or.cond, label %if.end251, label %if.then221

if.then221:                                       ; preds = %if.end215
  %call224 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.then221.if.end249_crit_edge, label %if.then232, !prof !94

if.then221.if.end249_crit_edge:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end249

if.then232:                                       ; preds = %if.then221
  %72 = ptrtoint ptr %netdev193 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %netdev193, align 4
  %tobool234.not = icmp eq ptr %73, null
  br i1 %tobool234.not, label %do.end243, label %if.then235

if.then235:                                       ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %exp_reply to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %exp_reply, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %73, ptr noundef nonnull @.str.38, i32 noundef %hdr.sroa.0.0.extract.shift, i32 noundef %and34, i32 noundef %75) #10
  br label %if.end249

do.end243:                                        ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nn, align 4
  %78 = ptrtoint ptr %exp_reply to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %exp_reply, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.38, i32 noundef %hdr.sroa.0.0.extract.shift, i32 noundef %and34, i32 noundef %79) #10
  br label %if.end249

if.end249:                                        ; preds = %do.end243, %if.then235, %if.then221.if.end249_crit_edge
  %err250 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 4
  %80 = ptrtoint ptr %err250 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -5, ptr %err250, align 4
  br label %next_tlv

if.end251:                                        ; preds = %if.end215
  %max_len = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 8
  %81 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and34, i32 %82)
  %cmp252 = icmp ugt i32 %and34, %82
  br i1 %cmp252, label %if.then254, label %if.end284

if.then254:                                       ; preds = %if.end251
  %call257 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257)
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %if.then254.if.end282_crit_edge, label %if.then265, !prof !94

if.then254.if.end282_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end282

if.then265:                                       ; preds = %if.then254
  %83 = ptrtoint ptr %netdev193 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %netdev193, align 4
  %tobool267.not = icmp eq ptr %84, null
  br i1 %tobool267.not, label %do.end276, label %if.then268

if.then268:                                       ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_len, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %84, ptr noundef nonnull @.str.41, i32 noundef %hdr.sroa.0.0.extract.shift, i32 noundef %86, i32 noundef %and34) #10
  br label %if.end282

do.end276:                                        ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %nn, align 4
  %89 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_len, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.41, i32 noundef %hdr.sroa.0.0.extract.shift, i32 noundef %90, i32 noundef %and34) #10
  br label %if.end282

if.end282:                                        ; preds = %do.end276, %if.then268, %if.then254.if.end282_crit_edge
  %err283 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 4
  %91 = ptrtoint ptr %err283 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -5, ptr %err283, align 4
  br label %next_tlv

if.end284:                                        ; preds = %if.end251
  %posted = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 16
  %92 = ptrtoint ptr %posted to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %posted, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool285.not = icmp eq i8 %93, 0
  br i1 %tobool285.not, label %if.then286, label %if.end284.if.end304_crit_edge

if.end284.if.end304_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end304

if.then286:                                       ; preds = %if.end284
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 6
  %94 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and34, i32 %95)
  %cmp287.not = icmp ugt i32 %and34, %95
  br i1 %cmp287.not, label %if.else290, label %if.then289

if.then289:                                       ; preds = %if.then286
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 7
  %96 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.i.not.i.i = icmp eq i32 %97, 0
  br i1 %tobool.i.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !94

do.end.i.i:                                       ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 2789, i32 noundef 9, ptr noundef null) #7
  br label %if.end293

if.end21.critedge.i.i:                            ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and34, ptr %len, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 %and34
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 16
  %99 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end293

if.else290:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %and34, %95
  %call292 = tail call ptr @skb_put(ptr noundef nonnull %skb.0.i, i32 noundef %sub) #7
  br label %if.end293

if.end293:                                        ; preds = %if.else290, %if.end21.critedge.i.i, %do.end.i.i
  %100 = ptrtoint ptr %data.i.i.le to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i.le, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %hdr.sroa.0.0.extract.trunc, ptr %101, align 4
  %hdr.sroa.12.0.skb_data.0..sroa_idx = getelementptr inbounds i8, ptr %101, i32 1
  %103 = ptrtoint ptr %hdr.sroa.12.0.skb_data.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %hdr.sroa.12.0.extract.trunc, ptr %hdr.sroa.12.0.skb_data.0..sroa_idx, align 1
  %hdr.sroa.12439.0.skb_data.0..sroa_idx = getelementptr inbounds i8, ptr %101, i32 2
  %104 = ptrtoint ptr %hdr.sroa.12439.0.skb_data.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %hdr.sroa.12439.0.extract.trunc, ptr %hdr.sroa.12439.0.skb_data.0..sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and34)
  %cmp296592 = icmp ugt i32 %and34, 4
  br i1 %cmp296592, label %for.body.preheader, label %if.end293.if.end304_crit_edge

if.end293.if.end304_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end304

for.body.preheader:                               ; preds = %if.end293
  %sub295 = add nuw nsw i32 %and34, 3
  %div549 = lshr i32 %sub295, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0593 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %mul = shl i32 %i.0593, 2
  %add.ptr300 = getelementptr i8, ptr %add.ptr38, i32 %mul
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr300) #7, !srcloc !102
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %arrayidx = getelementptr i32, ptr %101, i32 %i.0593
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0593, 1
  %exitcond.not = icmp eq i32 %inc, %div549
  br i1 %exitcond.not, label %for.body.if.end304_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end304_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end304

if.end304:                                        ; preds = %for.body.if.end304_crit_edge, %if.end293.if.end304_crit_edge, %if.end284.if.end304_crit_edge
  %108 = ptrtoint ptr %cb144 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 3, ptr %cb144, align 4
  br label %next_tlv

next_tlv:                                         ; preds = %if.end304, %if.end282, %if.end249, %if.end213, %if.end173, %if.end52.next_tlv_crit_edge
  %sub305 = add nsw i32 %and34, -1
  %or306 = or i32 %sub305, 3
  %add307 = add nsw i32 %or306, 1
  %add.ptr308 = getelementptr i8, ptr %add.ptr38, i32 %add307
  %add.ptr309 = getelementptr i8, ptr %add.ptr308, i32 4
  %cmp310 = icmp ugt ptr %add.ptr309, %add.ptr3
  br i1 %cmp310, label %if.then312, label %next_tlv.while.cond_crit_edge

next_tlv.while.cond_crit_edge:                    ; preds = %next_tlv
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then312:                                       ; preds = %next_tlv
  %call315 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %if.then312.do.end343_crit_edge, label %if.then323, !prof !94

if.then312.do.end343_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end343

if.then323:                                       ; preds = %if.then312
  %109 = ptrtoint ptr %netdev193 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %netdev193, align 4
  %tobool325.not = icmp eq ptr %110, null
  br i1 %tobool325.not, label %do.end331, label %if.then326

if.then326:                                       ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %110, ptr noundef nonnull @.str.44) #10
  br label %do.end343

do.end331:                                        ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %112, ptr noundef nonnull @.str.44) #10
  br label %do.end343

do.end343:                                        ; preds = %do.end331, %if.then326, %if.then312.do.end343_crit_edge, %do.end137, %if.then131, %if.then117.do.end343_crit_edge, %do.end105, %if.then100, %if.then86.do.end343_crit_edge, %do.end80, %if.then75, %if.then61.do.end343_crit_edge, %if.end52.do.end343_crit_edge, %do.end50, %if.then46, %if.then.do.end343_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  %lock = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %qlen.i.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 1
  br label %do.body346

do.body346:                                       ; preds = %do.cond401.do.body346_crit_edge, %do.end343
  %113 = ptrtoint ptr %mbox_cmsg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mbox_cmsg.i, align 4
  %cmp.i.i = icmp eq ptr %114, %mbox_cmsg.i
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %114
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %do.body346.__skb_dequeue.exit_crit_edge, label %if.then.i

do.body346.__skb_dequeue.exit_crit_edge:          ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %116, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %117 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %spec.store.select.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %118, i32 0, i32 1
  %121 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %120, ptr %prev17.i.i, align 4
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %118, ptr %120, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %do.body346.__skb_dequeue.exit_crit_edge
  %cb350 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3
  %123 = ptrtoint ptr %cb350 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cb350, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %cmp353.not = icmp eq i32 %124, 3
  br i1 %cmp353.not, label %__skb_dequeue.exit.if.end363_crit_edge, label %if.then355

__skb_dequeue.exit.if.end363_crit_edge:           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end363

if.then355:                                       ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #9
  %err356 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 4
  %125 = ptrtoint ptr %err356 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -2, ptr %err356, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !107
  br label %if.end363

if.end363:                                        ; preds = %if.then355, %__skb_dequeue.exit.if.end363_crit_edge
  %126 = ptrtoint ptr %cb350 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4, ptr %cb350, align 4
  %posted365 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 16
  %127 = ptrtoint ptr %posted365 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %posted365, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool366.not = icmp eq i8 %128, 0
  br i1 %tobool366.not, label %if.end363.do.cond401_crit_edge, label %if.then367

if.end363.do.cond401_crit_edge:                   ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond401

if.then367:                                       ; preds = %if.end363
  %err368 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 4
  %129 = ptrtoint ptr %err368 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %err368, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool369.not = icmp eq i32 %130, 0
  br i1 %tobool369.not, label %if.then367.if.end399_crit_edge, label %if.then370

if.then367.if.end399_crit_edge:                   ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end399

if.then370:                                       ; preds = %if.then367
  %call373 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.then370.if.end399_crit_edge, label %if.then381, !prof !94

if.then370.if.end399_crit_edge:                   ; preds = %if.then370
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end399

if.then381:                                       ; preds = %if.then370
  %131 = ptrtoint ptr %netdev193 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %netdev193, align 4
  %tobool383.not = icmp eq ptr %132, null
  br i1 %tobool383.not, label %do.end392, label %if.then384

if.then384:                                       ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #9
  %data.i555 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %133 = ptrtoint ptr %data.i555 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data.i555, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %134, align 4
  %conv387 = zext i8 %136 to i32
  %137 = ptrtoint ptr %err368 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %err368, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %132, ptr noundef nonnull @.str.47, i32 noundef %conv387, i32 noundef %138) #10
  br label %if.end399

do.end392:                                        ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %nn, align 4
  %data.i556 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %141 = ptrtoint ptr %data.i556 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data.i556, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %142, align 4
  %conv395 = zext i8 %144 to i32
  %145 = ptrtoint ptr %err368 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %err368, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %140, ptr noundef nonnull @.str.47, i32 noundef %conv395, i32 noundef %146) #10
  br label %if.end399

if.end399:                                        ; preds = %do.end392, %if.then384, %if.then370.if.end399_crit_edge, %if.then367.if.end399_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %spec.store.select.i.i, i32 noundef 0) #7
  br label %do.cond401

do.cond401:                                       ; preds = %if.end399, %if.end363.do.cond401_crit_edge
  %cmp402.not = icmp eq ptr %spec.store.select.i.i, %last
  br i1 %cmp402.not, label %do.end404, label %do.cond401.do.body346_crit_edge

do.cond401.do.body346_crit_edge:                  ; preds = %do.cond401
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body346

do.end404:                                        ; preds = %do.cond401
  %147 = ptrtoint ptr %mbox_cmsg.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mbox_cmsg.i, align 4
  %cmp.i.i558 = icmp eq ptr %148, %mbox_cmsg.i
  %tobool.not13.i = icmp eq ptr %148, null
  %tobool.not.i559 = or i1 %cmp.i.i558, %tobool.not13.i
  br i1 %tobool.not.i559, label %do.end404.nfp_ccm_mbox_mark_next_runner.exit_crit_edge, label %if.end.i560

do.end404.nfp_ccm_mbox_mark_next_runner.exit_crit_edge: ; preds = %do.end404
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_ccm_mbox_mark_next_runner.exit

if.end.i560:                                      ; preds = %do.end404
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1, ptr %cb1.i, align 4
  %posted.i = getelementptr inbounds %struct.sk_buff, ptr %148, i32 0, i32 3, i32 16
  %150 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %posted.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool2.not.i = icmp eq i8 %151, 0
  br i1 %tobool2.not.i, label %if.end.i560.nfp_ccm_mbox_mark_next_runner.exit_crit_edge, label %if.then3.i

if.end.i560.nfp_ccm_mbox_mark_next_runner.exit_crit_edge: ; preds = %if.end.i560
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_ccm_mbox_mark_next_runner.exit

if.then3.i:                                       ; preds = %if.end.i560
  call void @__sanitizer_cov_trace_pc() #9
  %workq.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 2
  %152 = ptrtoint ptr %workq.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %workq.i, align 4
  %runq_work.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %153, ptr noundef %runq_work.i) #7
  br label %nfp_ccm_mbox_mark_next_runner.exit

nfp_ccm_mbox_mark_next_runner.exit:               ; preds = %if.then3.i, %if.end.i560.nfp_ccm_mbox_mark_next_runner.exit_crit_edge, %do.end404.nfp_ccm_mbox_mark_next_runner.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_ccm_mbox_mark_all_err(ptr noundef %nn, ptr noundef readnone %last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_cmsg = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51
  %lock = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %qlen.i.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %__skb_dequeue.exit.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %mbox_cmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_cmsg, align 4
  %cmp.i.i = icmp eq ptr %1, %mbox_cmsg
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %1
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %do.body.__skb_dequeue.exit_crit_edge, label %if.then.i

do.body.__skb_dequeue.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %4 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %spec.store.select.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %prev17.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %7, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %do.body.__skb_dequeue.exit_crit_edge
  %cb3 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3
  %err4 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %err4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -5, ptr %err4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !108
  %11 = ptrtoint ptr %cb3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %cb3, align 4
  %cmp.not = icmp eq ptr %spec.store.select.i.i, %last
  br i1 %cmp.not, label %do.end10, label %__skb_dequeue.exit.do.body_crit_edge

__skb_dequeue.exit.do.body_crit_edge:             ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end10:                                         ; preds = %__skb_dequeue.exit
  %12 = ptrtoint ptr %mbox_cmsg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbox_cmsg, align 4
  %cmp.i.i1 = icmp eq ptr %13, %mbox_cmsg
  %tobool.not13.i = icmp eq ptr %13, null
  %tobool.not.i2 = or i1 %cmp.i.i1, %tobool.not13.i
  br i1 %tobool.not.i2, label %do.end10.nfp_ccm_mbox_mark_next_runner.exit_crit_edge, label %if.end.i

do.end10.nfp_ccm_mbox_mark_next_runner.exit_crit_edge: ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_ccm_mbox_mark_next_runner.exit

if.end.i:                                         ; preds = %do.end10
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %cb1.i, align 4
  %posted.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 16
  %15 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %posted.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not.i = icmp eq i8 %16, 0
  br i1 %tobool2.not.i, label %if.end.i.nfp_ccm_mbox_mark_next_runner.exit_crit_edge, label %if.then3.i

if.end.i.nfp_ccm_mbox_mark_next_runner.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_ccm_mbox_mark_next_runner.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %workq.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 2
  %17 = ptrtoint ptr %workq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %workq.i, align 4
  %runq_work.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 51, i32 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %runq_work.i) #7
  br label %nfp_ccm_mbox_mark_next_runner.exit

nfp_ccm_mbox_mark_next_runner.exit:               ; preds = %if.then3.i, %if.end.i.nfp_ccm_mbox_mark_next_runner.exit_crit_edge, %do.end10.nfp_ccm_mbox_mark_next_runner.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_mbox_reconfig_wait_posted(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 563, i32 9}
!2 = !{ptr @nfp_ccm_mbox_alloc.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 729, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nfp_ccm_mbox_alloc.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 730, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfp_ccm_mbox_alloc.__key.4, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 731, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 733, i32 40}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 475, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nfp_ccm_mbox_msg_prepare._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @nfp_ccm_mbox_msg_prepare._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 496, i32 4}
!22 = !{ptr @nfp_ccm_mbox_msg_prepare._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfp_ccm_mbox_msg_prepare._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 505, i32 3}
!26 = !{ptr @nfp_ccm_mbox_msg_prepare._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nfp_ccm_mbox_msg_prepare._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 525, i32 3}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nfp_ccm_mbox_msg_enqueue._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfp_ccm_mbox_msg_enqueue._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 458, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nfp_ccm_mbox_unlink_unlock._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @nfp_ccm_mbox_unlink_unlock._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 238, i32 4}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nfp_ccm_mbox_copy_out._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @nfp_ccm_mbox_copy_out._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 249, i32 4}
!45 = !{ptr @nfp_ccm_mbox_copy_out._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @nfp_ccm_mbox_copy_out._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 255, i32 4}
!49 = !{ptr @nfp_ccm_mbox_copy_out._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @nfp_ccm_mbox_copy_out._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 264, i32 4}
!53 = !{ptr @nfp_ccm_mbox_copy_out._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @nfp_ccm_mbox_copy_out._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 271, i32 4}
!57 = !{ptr @nfp_ccm_mbox_copy_out._entry.33, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @nfp_ccm_mbox_copy_out._entry_ptr.34, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 279, i32 4}
!61 = !{ptr @nfp_ccm_mbox_copy_out._entry.36, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @nfp_ccm_mbox_copy_out._entry_ptr.37, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 286, i32 4}
!65 = !{ptr @nfp_ccm_mbox_copy_out._entry.39, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @nfp_ccm_mbox_copy_out._entry_ptr.40, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 292, i32 4}
!69 = !{ptr @nfp_ccm_mbox_copy_out._entry.42, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @nfp_ccm_mbox_copy_out._entry_ptr.43, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 323, i32 4}
!73 = !{ptr @nfp_ccm_mbox_copy_out._entry.45, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @nfp_ccm_mbox_copy_out._entry_ptr.46, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.47, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/netronome/nfp/ccm_mbox.c", i32 343, i32 5}
!77 = !{ptr @nfp_ccm_mbox_copy_out._entry.48, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @nfp_ccm_mbox_copy_out._entry_ptr.49, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!81 = !{ptr @skb_queue_head_init.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!83 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2156566620}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2156560549, i64 2156561059, i64 2156560586, i64 2156560642, i64 2156560676, i64 2156560700, i64 2156560741, i64 2156560762, i64 2156560790, i64 2156560824}
!97 = !{i64 2156548248}
!98 = !{i8 0, i8 2}
!99 = !{i64 2156346152}
!100 = !{i64 746238}
!101 = !{i64 2154561650, i64 2154562138, i64 2154561687, i64 2154561743, i64 2154561777, i64 2154561801, i64 2154561842, i64 2154561863, i64 2154561891, i64 2154561925}
!102 = !{i64 746656}
!103 = !{i64 2156436748}
!104 = !{i64 2156524660}
!105 = !{i64 2156541646}
!106 = !{i64 2156544008}
!107 = !{i64 2156544166}
!108 = !{i64 2156546612}
