; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/bpf/cmsg.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.cmsg_req_map_alloc_tbl = type { %struct.nfp_ccm_hdr, i32, i32, i32, i32, i32 }
%struct.nfp_ccm_hdr = type { %union.anon.236 }
%union.anon.236 = type { i32 }
%struct.nfp_app_bpf = type { ptr, %struct.nfp_ccm, ptr, i32, i32, i32, %struct.list_head, i32, i32, %struct.rhashtable, i32, %struct.nfp_bpf_cap_adjust_head, %struct.anon.230, %struct.anon.231, i8, i8, i8, i8 }
%struct.nfp_ccm = type { ptr, [2048 x i32], i16, i16, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.nfp_bpf_cap_adjust_head = type { i32, i32, i32, i32, i32 }
%struct.anon.230 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.231 = type { i32, i32, i32, i32 }
%struct.cmsg_reply_map_simple = type { %struct.nfp_ccm_hdr, i32 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.cmsg_reply_map_alloc_tbl = type { %struct.cmsg_reply_map_simple, i32 }
%struct.nfp_bpf_map = type { ptr, ptr, i32, %struct.spinlock, i32, i32, i64, ptr, %struct.list_head, [0 x %struct.nfp_bpf_map_word] }
%struct.nfp_bpf_map_word = type { i8 }
%struct.cmsg_req_map_free_tbl = type { %struct.nfp_ccm_hdr, i32 }
%struct.bpf_offloaded_map = type { %struct.bpf_map, ptr, ptr, ptr, %struct.list_head, [108 x i8] }
%struct.cmsg_reply_map_op = type { %struct.cmsg_reply_map_simple, i32, i32, [0 x i8] }
%struct.cmsg_req_map_op = type { %struct.nfp_ccm_hdr, i32, i32, i32, [0 x i8] }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"leaking map - failed to allocate msg\0A\00", [58 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_free_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_bpf_ctrl_free_map\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/netronome/nfp/bpf/cmsg.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_free_map._entry_ptr = internal global ptr @nfp_bpf_ctrl_free_map._entry, section ".printk_index", align 4
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"leaking map - I/O error\0A\00", [39 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_free_map._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_free_map._entry_ptr.7 = internal global ptr @nfp_bpf_ctrl_free_map._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"leaking map - FW responded with: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_free_map._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_free_map._entry_ptr.10 = internal global ptr @nfp_bpf_ctrl_free_map._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cmsg drop - too short %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_msg_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 447, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfp_bpf_ctrl_msg_rx\00", [44 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_msg_rx._entry_ptr = internal global ptr @nfp_bpf_ctrl_msg_rx._entry, section ".printk_index", align 4
@nfp_bpf_ctrl_msg_rx_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.13, ptr @.str.2, i32 470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_bpf_ctrl_msg_rx_raw\00", [40 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_msg_rx_raw._entry_ptr = internal global ptr @nfp_bpf_ctrl_msg_rx_raw._entry, section ".printk_index", align 4
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cmsg drop - msg type %d with raw buffer!\0A\00", [54 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_msg_rx_raw._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.13, ptr @.str.2, i32 478, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_msg_rx_raw._entry_ptr.16 = internal global ptr @nfp_bpf_ctrl_msg_rx_raw._entry.15, section ".printk_index", align 4
@nfp_bpf_ctrl_rc_to_errno.res_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 -77, i32 -2, i32 -22, i32 -5, i32 -17, i32 -12, i32 -7], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FW responded with invalid status: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_rc_to_errno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_bpf_ctrl_rc_to_errno\00", [39 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_rc_to_errno._entry_ptr = internal global ptr @nfp_bpf_ctrl_rc_to_errno._entry, section ".printk_index", align 4
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cmsg drop - type 0x%02x too short %d!\0A\00", [57 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_entry_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 341, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_bpf_ctrl_entry_op\00", [42 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_entry_op._entry_ptr = internal global ptr @nfp_bpf_ctrl_entry_op._entry, section ".printk_index", align 4
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"cmsg drop - type 0x%02x too short %d for %d entries!\0A\00", [42 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_entry_op._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.20, ptr @.str.2, i32 360, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_bpf_ctrl_entry_op._entry_ptr.23 = internal global ptr @nfp_bpf_ctrl_entry_op._entry.22, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 129, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 139, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 146, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 447, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 470, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 477, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [10 x i8] c"res_table\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 60, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 74, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 340, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private constant [49 x i8] c"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 359, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @nfp_bpf_ctrl_entry_op._entry, ptr @nfp_bpf_ctrl_entry_op._entry.22, ptr @nfp_bpf_ctrl_entry_op._entry_ptr, ptr @nfp_bpf_ctrl_entry_op._entry_ptr.23, ptr @nfp_bpf_ctrl_free_map._entry, ptr @nfp_bpf_ctrl_free_map._entry.6, ptr @nfp_bpf_ctrl_free_map._entry.9, ptr @nfp_bpf_ctrl_free_map._entry_ptr, ptr @nfp_bpf_ctrl_free_map._entry_ptr.10, ptr @nfp_bpf_ctrl_free_map._entry_ptr.7, ptr @nfp_bpf_ctrl_msg_rx._entry, ptr @nfp_bpf_ctrl_msg_rx._entry_ptr, ptr @nfp_bpf_ctrl_msg_rx_raw._entry, ptr @nfp_bpf_ctrl_msg_rx_raw._entry.15, ptr @nfp_bpf_ctrl_msg_rx_raw._entry_ptr, ptr @nfp_bpf_ctrl_msg_rx_raw._entry_ptr.16, ptr @nfp_bpf_ctrl_rc_to_errno._entry, ptr @nfp_bpf_ctrl_rc_to_errno._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @nfp_bpf_ctrl_rc_to_errno.res_table, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_ctrl_free_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_ctrl_free_map._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_ctrl_free_map._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_ctrl_msg_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_ctrl_msg_rx_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_ctrl_msg_rx_raw._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_ctrl_rc_to_errno.res_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_ctrl_rc_to_errno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_ctrl_entry_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_ctrl_entry_op._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nfp_bpf_ctrl_alloc_map(ptr noundef %bpf, ptr nocapture noundef readonly %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf, align 4
  %call.i = tail call ptr @nfp_app_ctrl_msg_alloc(ptr noundef %1, i32 noundef 24, i32 noundef 3264) #7
  %call1.i = tail call ptr @skb_put(ptr noundef %call.i, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %4 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_size, align 16
  %key_size1 = getelementptr inbounds %struct.cmsg_req_map_alloc_tbl, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %key_size1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %key_size1, align 4
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %7 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value_size, align 4
  %value_size2 = getelementptr inbounds %struct.cmsg_req_map_alloc_tbl, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %value_size2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value_size2, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %10 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_entries, align 8
  %max_entries3 = getelementptr inbounds %struct.cmsg_req_map_alloc_tbl, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %max_entries3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_entries3, align 4
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %13 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %map_type, align 4
  %map_type4 = getelementptr inbounds %struct.cmsg_req_map_alloc_tbl, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %map_type4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %map_type4, align 4
  %map_flags = getelementptr inbounds %struct.cmsg_req_map_alloc_tbl, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %map_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %map_flags, align 4
  %ccm = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 1
  %call5 = tail call ptr @nfp_ccm_communicate(ptr noundef %ccm, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 12) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call5 to i32
  %conv = sext i32 %17 to i64
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %data10 = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 19
  %18 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data10, align 4
  %rc1.i = getelementptr inbounds %struct.cmsg_reply_map_simple, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %rc1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rc1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp.i40 = icmp ugt i32 %21, 7
  br i1 %cmp.i40, label %if.then.i, label %nfp_bpf_ctrl_rc_to_errno.exit

if.then.i:                                        ; preds = %if.end9
  %22 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bpf, align 4
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl.i, align 4
  %call.i41 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i, label %if.then.i.err_free_crit_edge, label %if.then4.i, !prof !54

if.then.i.err_free_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.then4.i:                                       ; preds = %if.then.i
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev.i, align 4
  %tobool5.not.i = icmp eq ptr %27, null
  br i1 %tobool5.not.i, label %do.end.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %27, ptr noundef nonnull @.str.17, i32 noundef %21) #10
  br label %err_free

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.17, i32 noundef %21) #10
  br label %err_free

nfp_bpf_ctrl_rc_to_errno.exit:                    ; preds = %if.end9
  %arrayidx.i = getelementptr [8 x i32], ptr @nfp_bpf_ctrl_rc_to_errno.res_table, i32 0, i32 %21
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %if.end14, label %nfp_bpf_ctrl_rc_to_errno.exit.err_free_crit_edge

nfp_bpf_ctrl_rc_to_errno.exit.err_free_crit_edge: ; preds = %nfp_bpf_ctrl_rc_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end14:                                         ; preds = %nfp_bpf_ctrl_rc_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #9
  %tid15 = getelementptr inbounds %struct.cmsg_reply_map_alloc_tbl, ptr %19, i32 0, i32 1
  %32 = ptrtoint ptr %tid15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tid15, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %call5, i32 noundef 0) #7
  %conv16 = zext i32 %33 to i64
  br label %cleanup

err_free:                                         ; preds = %nfp_bpf_ctrl_rc_to_errno.exit.err_free_crit_edge, %do.end.i, %if.then6.i, %if.then.i.err_free_crit_edge
  %retval.0.i44 = phi i32 [ %31, %nfp_bpf_ctrl_rc_to_errno.exit.err_free_crit_edge ], [ -5, %if.then6.i ], [ -5, %do.end.i ], [ -5, %if.then.i.err_free_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef %call5, i32 noundef 1) #7
  %conv17 = sext i32 %retval.0.i44 to i64
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.then7 ], [ %conv17, %err_free ], [ %conv16, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_ccm_communicate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_bpf_ctrl_free_map(ptr noundef %bpf, ptr nocapture noundef readonly %nfp_map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf, align 4
  %call.i = tail call ptr @nfp_app_ctrl_msg_alloc(ptr noundef %1, i32 noundef 8, i32 noundef 3264) #7
  %call1.i = tail call ptr @skb_put(ptr noundef %call.i, i32 noundef 8) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpf, align 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %call1 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then5, !prof !54

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.then
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %do.end, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %7, ptr noundef nonnull @.str) #10
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %tid = getelementptr inbounds %struct.nfp_bpf_map, ptr %nfp_map, i32 0, i32 2
  %12 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tid, align 8
  %tid11 = getelementptr inbounds %struct.cmsg_req_map_free_tbl, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %tid11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tid11, align 4
  %ccm = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 1
  %call12 = tail call ptr @nfp_ccm_communicate(ptr noundef %ccm, ptr noundef nonnull %call.i, i32 noundef 2, i32 noundef 12) #7
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end39

if.then14:                                        ; preds = %if.end10
  %15 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bpf, align 4
  %ctrl17 = getelementptr inbounds %struct.nfp_app, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %ctrl17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl17, align 4
  %call19 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then14.cleanup_crit_edge, label %if.then27, !prof !54

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %if.then14
  %netdev28 = getelementptr inbounds %struct.nfp_net_dp, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %netdev28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev28, align 4
  %tobool29.not = icmp eq ptr %20, null
  br i1 %tobool29.not, label %do.end35, label %if.then30

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %20, ptr noundef nonnull @.str.5) #10
  br label %cleanup

do.end35:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end39:                                         ; preds = %if.end10
  %data40 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 19
  %23 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data40, align 4
  %rc1.i = getelementptr inbounds %struct.cmsg_reply_map_simple, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %rc1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rc1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp.i92 = icmp ugt i32 %26, 7
  br i1 %cmp.i92, label %if.then.i, label %nfp_bpf_ctrl_rc_to_errno.exit

if.then.i:                                        ; preds = %if.end39
  %27 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bpf, align 4
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl.i, align 4
  %call.i93 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i, label %if.then.i.if.then43_crit_edge, label %if.then4.i, !prof !54

if.then.i.if.then43_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then4.i:                                       ; preds = %if.then.i
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev.i, align 4
  %tobool5.not.i = icmp eq ptr %32, null
  br i1 %tobool5.not.i, label %do.end.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %32, ptr noundef nonnull @.str.17, i32 noundef %26) #10
  br label %if.then43

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.17, i32 noundef %26) #10
  br label %if.then43

nfp_bpf_ctrl_rc_to_errno.exit:                    ; preds = %if.end39
  %arrayidx.i = getelementptr [8 x i32], ptr @nfp_bpf_ctrl_rc_to_errno.res_table, i32 0, i32 %26
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool42.not = icmp eq i32 %26, 0
  br i1 %tobool42.not, label %nfp_bpf_ctrl_rc_to_errno.exit.if.end68_crit_edge, label %nfp_bpf_ctrl_rc_to_errno.exit.if.then43_crit_edge

nfp_bpf_ctrl_rc_to_errno.exit.if.then43_crit_edge: ; preds = %nfp_bpf_ctrl_rc_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

nfp_bpf_ctrl_rc_to_errno.exit.if.end68_crit_edge: ; preds = %nfp_bpf_ctrl_rc_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then43:                                        ; preds = %nfp_bpf_ctrl_rc_to_errno.exit.if.then43_crit_edge, %do.end.i, %if.then6.i, %if.then.i.if.then43_crit_edge
  %retval.0.i96 = phi i32 [ %36, %nfp_bpf_ctrl_rc_to_errno.exit.if.then43_crit_edge ], [ -5, %if.then6.i ], [ -5, %do.end.i ], [ -5, %if.then.i.if.then43_crit_edge ]
  %37 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bpf, align 4
  %ctrl46 = getelementptr inbounds %struct.nfp_app, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %ctrl46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl46, align 4
  %call48 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then43.if.end68_crit_edge, label %if.then56, !prof !54

if.then43.if.end68_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then56:                                        ; preds = %if.then43
  %netdev57 = getelementptr inbounds %struct.nfp_net_dp, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %netdev57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev57, align 4
  %tobool58.not = icmp eq ptr %42, null
  br i1 %tobool58.not, label %do.end64, label %if.then59

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %42, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i96) #10
  br label %if.end68

do.end64:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i96) #10
  br label %if.end68

if.end68:                                         ; preds = %do.end64, %if.then59, %if.then43.if.end68_crit_edge, %nfp_bpf_ctrl_rc_to_errno.exit.if.end68_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %call12, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end35, %if.then30, %if.then14.cleanup_crit_edge, %do.end, %if.then7, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_bpf_ctrl_update_entry(ptr nocapture noundef readonly %offmap, ptr noundef %key, ptr noundef %value, i64 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfp_bpf_ctrl_entry_op(ptr noundef %offmap, i32 noundef 4, ptr noundef %key, ptr noundef %value, i64 noundef %flags, ptr noundef null, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_bpf_ctrl_entry_op(ptr nocapture noundef readonly %offmap, i32 noundef %op, ptr noundef readonly %key, ptr noundef readonly %value, i64 noundef %flags, ptr noundef writeonly %out_key, ptr noundef writeonly %out_value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv = getelementptr inbounds %struct.bpf_offloaded_map, ptr %offmap, i32 0, i32 3
  %0 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv, align 8
  %bpf1 = getelementptr inbounds %struct.nfp_bpf_map, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bpf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpf1, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %flags)
  %tobool.not = icmp ult i64 %flags, 4294967296
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = and i32 %op, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %cond.true.i, label %if.end.cond.end.i_crit_edge

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cmsg_cache_cnt.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %cmsg_cache_cnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmsg_cache_cnt.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi i32 [ %9, %cond.true.i ], [ 1, %if.end.cond.end.i_crit_edge ]
  %cache_lock.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %cache_lock.i) #7
  %cache_gen3.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %cache_gen3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_gen3.i, align 4
  %cache_blockers.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %cache_blockers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cache_blockers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %cond.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %14 = icmp eq i32 %6, 4
  br i1 %14, label %exit_block.i, label %if.end6.i

if.end6.i:                                        ; preds = %cond.end.i
  %15 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %op, label %if.end6.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge [
    i32 6, label %if.end6.i.if.end9.i_crit_edge
    i32 3, label %if.end6.i.if.end9.i_crit_edge210
  ]

if.end6.i.if.end9.i_crit_edge210:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end6.i.if.end9.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end6.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_ctrl_op_cache_get.exit

if.end9.i:                                        ; preds = %if.end6.i.if.end9.i_crit_edge, %if.end6.i.if.end9.i_crit_edge210
  %cache.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cache.i, align 8
  %tobool10.not.i = icmp eq ptr %17, null
  br i1 %tobool10.not.i, label %if.end9.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge, label %if.end12.i

if.end9.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_ctrl_op_cache_get.exit

if.end12.i:                                       ; preds = %if.end9.i
  %cache_to.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %cache_to.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cache_to.i, align 8
  %call.i.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %call.i.i)
  %cmp.i = icmp ult i64 %19, %call.i.i
  br i1 %cmp.i, label %if.end12.i.exit_invalidate.i_crit_edge, label %if.end15.i

if.end12.i.exit_invalidate.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_invalidate.i

if.end15.i:                                       ; preds = %if.end12.i
  %20 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cache.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %count17.i = getelementptr inbounds %struct.cmsg_reply_map_op, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %count17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1891.not.i = icmp eq i32 %25, 0
  br i1 %cmp1891.not.i, label %if.end15.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge, label %for.body.lr.ph.i

if.end15.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_ctrl_op_cache_get.exit

for.body.lr.ph.i:                                 ; preds = %if.end15.i
  %cmsg_key_sz.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %cmsg_key_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmsg_key_sz.i.i, align 4
  %cmsg_val_sz.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %cmsg_val_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmsg_val_sz.i.i, align 4
  %mul4.i.i = add i32 %29, %27
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %5, i32 0, i32 4
  %30 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key_size.i, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i.i = mul i32 %i.092.i, %mul4.i.i
  %arrayidx.i.i = getelementptr %struct.cmsg_reply_map_op, ptr %23, i32 0, i32 3, i32 %add.i.i
  %bcmp.i = tail call i32 @bcmp(ptr %arrayidx.i.i, ptr %key, i32 %31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool21.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %for.inc.i

if.end23.i:                                       ; preds = %for.body.i
  %32 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %op, label %if.end23.i.nfp_bpf_ctrl_op_cache_get.exit.thread_crit_edge [
    i32 3, label %if.then25.i
    i32 6, label %if.then29.i
  ]

if.end23.i.nfp_bpf_ctrl_op_cache_get.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_ctrl_op_cache_get.exit.thread

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i78.i = add nuw i32 %i.092.i, 1
  %mul.i.i = mul i32 %add.i78.i, %27
  %mul1.i.i = mul i32 %i.092.i, %29
  %add2.i.i = add i32 %mul.i.i, %mul1.i.i
  %arrayidx.i80.i = getelementptr %struct.cmsg_reply_map_op, ptr %23, i32 0, i32 3, i32 %add2.i.i
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %5, i32 0, i32 5
  %33 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value_size.i, align 4
  %35 = call ptr @memcpy(ptr %out_value, ptr %arrayidx.i80.i, i32 %34)
  br label %nfp_bpf_ctrl_op_cache_get.exit.thread

if.then29.i:                                      ; preds = %if.end23.i
  %add.i = add nuw i32 %i.092.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %25)
  %cmp30.i = icmp eq i32 %add.i, %25
  br i1 %cmp30.i, label %if.then29.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge, label %if.end32.i

if.then29.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_ctrl_op_cache_get.exit

if.end32.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i84.i = mul i32 %add.i, %mul4.i.i
  %arrayidx.i85.i = getelementptr %struct.cmsg_reply_map_op, ptr %23, i32 0, i32 3, i32 %add.i84.i
  %36 = call ptr @memcpy(ptr %out_key, ptr %arrayidx.i85.i, i32 %31)
  br label %nfp_bpf_ctrl_op_cache_get.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.inc.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_ctrl_op_cache_get.exit

exit_block.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc38.i = add i32 %13, 1
  %37 = ptrtoint ptr %cache_blockers.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %inc38.i, ptr %cache_blockers.i, align 8
  br label %exit_invalidate.i

exit_invalidate.i:                                ; preds = %exit_block.i, %if.end12.i.exit_invalidate.i_crit_edge
  %cache39.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %cache39.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cache39.i, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %39, i32 noundef 0) #7
  %40 = ptrtoint ptr %cache39.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %cache39.i, align 8
  br label %nfp_bpf_ctrl_op_cache_get.exit

nfp_bpf_ctrl_op_cache_get.exit.thread:            ; preds = %if.end32.i, %if.then25.i, %if.end23.i.nfp_bpf_ctrl_op_cache_get.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cache_lock.i) #7
  br label %cleanup

nfp_bpf_ctrl_op_cache_get.exit:                   ; preds = %exit_invalidate.i, %for.inc.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge, %if.then29.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge, %if.end15.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge, %if.end9.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge, %if.end6.i.nfp_bpf_ctrl_op_cache_get.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cache_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool3.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool3.not, label %nfp_bpf_ctrl_op_cache_get.exit.cleanup_crit_edge, label %if.end5

nfp_bpf_ctrl_op_cache_get.exit.cleanup_crit_edge: ; preds = %nfp_bpf_ctrl_op_cache_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %nfp_bpf_ctrl_op_cache_get.exit
  %cmsg_key_sz.i.i173 = getelementptr inbounds %struct.nfp_app_bpf, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %cmsg_key_sz.i.i173 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmsg_key_sz.i.i173, align 4
  %cmsg_val_sz.i.i174 = getelementptr inbounds %struct.nfp_app_bpf, ptr %3, i32 0, i32 4
  %43 = ptrtoint ptr %cmsg_val_sz.i.i174 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cmsg_val_sz.i.i174, align 4
  %add.i.i175 = add i32 %42, 16
  %add1.i.i = add i32 %add.i.i175, %44
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %call.i.i176 = tail call ptr @nfp_app_ctrl_msg_alloc(ptr noundef %46, i32 noundef %add1.i.i, i32 noundef 3264) #7
  %call1.i.i = tail call ptr @skb_put(ptr noundef %call.i.i176, i32 noundef %add1.i.i) #7
  %tobool7.not = icmp eq ptr %call.i.i176, null
  br i1 %tobool7.not, label %if.end5.err_cache_put_crit_edge, label %if.end9

if.end5.err_cache_put_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_cache_put

if.end9:                                          ; preds = %if.end5
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i176, i32 0, i32 19
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %tid = getelementptr inbounds %struct.nfp_bpf_map, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tid, align 8
  %tid10 = getelementptr inbounds %struct.cmsg_req_map_op, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %tid10 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tid10, align 4
  %count11 = getelementptr inbounds %struct.cmsg_req_map_op, ptr %48, i32 0, i32 2
  %52 = ptrtoint ptr %count11 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select.i, ptr %count11, align 4
  %conv = trunc i64 %flags to i32
  %flags12 = getelementptr inbounds %struct.cmsg_req_map_op, ptr %48, i32 0, i32 3
  %53 = ptrtoint ptr %flags12 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv, ptr %flags12, align 4
  %tobool13.not = icmp eq ptr %key, null
  br i1 %tobool13.not, label %if.end9.if.end16_crit_edge, label %if.then14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %data.i177 = getelementptr inbounds %struct.cmsg_req_map_op, ptr %48, i32 0, i32 4
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 4
  %54 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %key_size, align 16
  %56 = call ptr @memcpy(ptr %data.i177, ptr %key, i32 %55)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  %tobool17.not = icmp eq ptr %value, null
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %cmsg_key_sz.i.i173 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cmsg_key_sz.i.i173, align 4
  %arrayidx.i = getelementptr %struct.cmsg_req_map_op, ptr %48, i32 0, i32 4, i32 %58
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 5
  %59 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %value_size, align 4
  %61 = call ptr @memcpy(ptr %arrayidx.i, ptr %value, i32 %60)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %ccm = getelementptr inbounds %struct.nfp_app_bpf, ptr %3, i32 0, i32 1
  %call21 = tail call ptr @nfp_ccm_communicate(ptr noundef %ccm, ptr noundef nonnull %call.i.i176, i32 noundef %op, i32 noundef 0) #7
  %cmp.i178 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %call21 to i32
  br label %err_cache_put

if.end25:                                         ; preds = %if.end20
  %len = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 6
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %64)
  %cmp = icmp ult i32 %64, 16
  br i1 %cmp, label %if.then27, label %if.end40

if.then27:                                        ; preds = %if.end25
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctrl, align 4
  %call28 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.err_free_crit_edge, label %if.then32, !prof !54

if.then27.err_free_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.then32:                                        ; preds = %if.then27
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev, align 4
  %tobool33.not = icmp eq ptr %70, null
  br i1 %tobool33.not, label %do.end, label %if.then34

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %70, ptr noundef nonnull @.str.19, i32 noundef %op, i32 noundef %72) #10
  br label %err_free

do.end:                                           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %68, align 4
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.19, i32 noundef %op, i32 noundef %76) #10
  br label %err_free

if.end40:                                         ; preds = %if.end25
  %data41 = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 19
  %77 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data41, align 4
  %count42 = getelementptr inbounds %struct.cmsg_reply_map_op, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %count42 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count42, align 4
  %rc1.i = getelementptr inbounds %struct.cmsg_reply_map_simple, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %rc1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rc1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %82)
  %cmp.i179 = icmp ugt i32 %82, 7
  br i1 %cmp.i179, label %if.then.i, label %if.end9.i182

if.then.i:                                        ; preds = %if.end40
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %3, align 4
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ctrl.i, align 4
  %call.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i180 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i180, label %if.then.i.nfp_bpf_ctrl_rc_to_errno.exit_crit_edge, label %if.then4.i, !prof !54

if.then.i.nfp_bpf_ctrl_rc_to_errno.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_ctrl_rc_to_errno.exit

if.then4.i:                                       ; preds = %if.then.i
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %netdev.i, align 4
  %tobool5.not.i = icmp eq ptr %88, null
  br i1 %tobool5.not.i, label %do.end.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %88, ptr noundef nonnull @.str.17, i32 noundef %82) #10
  br label %nfp_bpf_ctrl_rc_to_errno.exit

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %86, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.17, i32 noundef %82) #10
  br label %nfp_bpf_ctrl_rc_to_errno.exit

if.end9.i182:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i181 = getelementptr [8 x i32], ptr @nfp_bpf_ctrl_rc_to_errno.res_table, i32 0, i32 %82
  %91 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i181, align 4
  br label %nfp_bpf_ctrl_rc_to_errno.exit

nfp_bpf_ctrl_rc_to_errno.exit:                    ; preds = %if.end9.i182, %do.end.i, %if.then6.i, %if.then.i.nfp_bpf_ctrl_rc_to_errno.exit_crit_edge
  %retval.0.i = phi i32 [ %92, %if.end9.i182 ], [ -5, %if.then6.i ], [ -5, %do.end.i ], [ -5, %if.then.i.nfp_bpf_ctrl_rc_to_errno.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool44 = icmp ne i32 %retval.0.i, 0
  %lnot.ext48 = zext i1 %tobool44 to i32
  %add = add i32 %80, %lnot.ext48
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %cmp49 = icmp ugt i32 %spec.select.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool51.not = icmp ne i32 %80, 0
  %or.cond = select i1 %cmp49, i1 %tobool51.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool54.not203 = icmp eq i32 %retval.0.i, 0
  %tobool54.not = select i1 %or.cond, i1 true, i1 %tobool54.not203
  br i1 %tobool54.not, label %if.end56, label %nfp_bpf_ctrl_rc_to_errno.exit.err_free_crit_edge

nfp_bpf_ctrl_rc_to_errno.exit.err_free_crit_edge: ; preds = %nfp_bpf_ctrl_rc_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end56:                                         ; preds = %nfp_bpf_ctrl_rc_to_errno.exit
  %93 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len, align 4
  %95 = ptrtoint ptr %cmsg_key_sz.i.i173 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cmsg_key_sz.i.i173, align 4
  %97 = ptrtoint ptr %cmsg_val_sz.i.i174 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cmsg_val_sz.i.i174, align 4
  %add.i184 = add i32 %98, %96
  %mul.i = mul i32 %add.i184, %add
  %add1.i = add i32 %mul.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %add1.i)
  %cmp59.not = icmp eq i32 %94, %add1.i
  br i1 %cmp59.not, label %if.end88, label %if.then61

if.then61:                                        ; preds = %if.end56
  %99 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %3, align 4
  %ctrl64 = getelementptr inbounds %struct.nfp_app, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %ctrl64 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ctrl64, align 4
  %call66 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then61.err_free_crit_edge, label %if.then74, !prof !54

if.then61.err_free_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.then74:                                        ; preds = %if.then61
  %netdev75 = getelementptr inbounds %struct.nfp_net_dp, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %netdev75 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %netdev75, align 4
  %tobool76.not = icmp eq ptr %104, null
  br i1 %tobool76.not, label %do.end83, label %if.then77

if.then77:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %104, ptr noundef nonnull @.str.21, i32 noundef %op, i32 noundef %106, i32 noundef %add) #10
  br label %err_free

do.end83:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %102, align 4
  %109 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %108, ptr noundef nonnull @.str.21, i32 noundef %op, i32 noundef %110, i32 noundef %add) #10
  br label %err_free

if.end88:                                         ; preds = %if.end56
  %tobool89.not = icmp eq ptr %out_key, null
  br i1 %tobool89.not, label %if.end88.if.end93_crit_edge, label %if.then90

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i187 = getelementptr %struct.cmsg_reply_map_op, ptr %78, i32 0, i32 3, i32 0
  %key_size92 = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 4
  %111 = ptrtoint ptr %key_size92 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %key_size92, align 16
  %113 = call ptr @memcpy(ptr %out_key, ptr %arrayidx.i187, i32 %112)
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end88.if.end93_crit_edge
  %tobool94.not = icmp eq ptr %out_value, null
  br i1 %tobool94.not, label %if.end93.if.end98_crit_edge, label %if.then95

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %cmsg_key_sz.i.i173 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cmsg_key_sz.i.i173, align 4
  %arrayidx.i190 = getelementptr %struct.cmsg_reply_map_op, ptr %78, i32 0, i32 3, i32 %115
  %value_size97 = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 5
  %116 = ptrtoint ptr %value_size97 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %value_size97, align 4
  %118 = call ptr @memcpy(ptr %out_value, ptr %arrayidx.i190, i32 %117)
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.end93.if.end98_crit_edge
  tail call fastcc void @nfp_bpf_ctrl_op_cache_put(ptr noundef %1, i32 noundef %op, ptr noundef %call21, i32 noundef %11)
  br label %cleanup

err_free:                                         ; preds = %do.end83, %if.then77, %if.then61.err_free_crit_edge, %nfp_bpf_ctrl_rc_to_errno.exit.err_free_crit_edge, %do.end, %if.then34, %if.then27.err_free_crit_edge
  %err.1 = phi i32 [ %retval.0.i, %nfp_bpf_ctrl_rc_to_errno.exit.err_free_crit_edge ], [ -5, %if.then34 ], [ -5, %do.end ], [ -5, %if.then27.err_free_crit_edge ], [ -5, %if.then77 ], [ -5, %do.end83 ], [ -5, %if.then61.err_free_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef %call21, i32 noundef 1) #7
  br label %err_cache_put

err_cache_put:                                    ; preds = %err_free, %if.then23, %if.end5.err_cache_put_crit_edge
  %err.2 = phi i32 [ %62, %if.then23 ], [ %err.1, %err_free ], [ -12, %if.end5.err_cache_put_crit_edge ]
  %119 = and i32 %op, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %119)
  %switch.i = icmp eq i32 %119, 4
  br i1 %switch.i, label %if.then.i191, label %err_cache_put.nfp_bpf_ctrl_op_cache_put.exit_crit_edge

err_cache_put.nfp_bpf_ctrl_op_cache_put.exit_crit_edge: ; preds = %err_cache_put
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_ctrl_op_cache_put.exit

if.then.i191:                                     ; preds = %err_cache_put
  br i1 %7, label %if.then5.i, label %if.then.i191.if.end.i_crit_edge

if.then.i191.if.end.i_crit_edge:                  ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i192 = tail call i64 @ktime_get() #7
  %add.i193 = add i64 %call.i.i192, 250000
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i191.if.end.i_crit_edge
  %to.0.i = phi i64 [ %add.i193, %if.then5.i ], [ 0, %if.then.i191.if.end.i_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %cache_lock.i) #7
  br i1 %14, label %if.then8.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %cache_blockers.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cache_blockers.i, align 8
  %dec.i = add i32 %121, -1
  store i32 %dec.i, ptr %cache_blockers.i, align 8
  %122 = ptrtoint ptr %cache_gen3.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cache_gen3.i, align 4
  %inc.i196 = add i32 %123, 1
  store i32 %inc.i196, ptr %cache_gen3.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i.if.end10.i_crit_edge
  br i1 %7, label %land.lhs.true.i, label %if.end10.i.if.end18.i_crit_edge

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %124 = ptrtoint ptr %cache_blockers.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cache_blockers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool13.not.i = icmp eq i32 %125, 0
  br i1 %tobool13.not.i, label %land.lhs.true14.i, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %126 = ptrtoint ptr %cache_gen3.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cache_gen3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %11)
  %cmp.i197 = icmp eq i32 %127, %11
  br i1 %cmp.i197, label %if.then16.i, label %land.lhs.true14.i.if.end18.i_crit_edge

land.lhs.true14.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  %cache_to.i198 = getelementptr inbounds %struct.nfp_bpf_map, ptr %1, i32 0, i32 6
  %128 = ptrtoint ptr %cache_to.i198 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %to.0.i, ptr %cache_to.i198, align 8
  %cache.i199 = getelementptr inbounds %struct.nfp_bpf_map, ptr %1, i32 0, i32 7
  %129 = ptrtoint ptr %cache.i199 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cache.i199, align 8
  store ptr null, ptr %cache.i199, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %land.lhs.true14.i.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge, %if.end10.i.if.end18.i_crit_edge
  %skb.addr.0.i = phi ptr [ null, %land.lhs.true.i.if.end18.i_crit_edge ], [ %130, %if.then16.i ], [ null, %land.lhs.true14.i.if.end18.i_crit_edge ], [ null, %if.end10.i.if.end18.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %cache_lock.i) #7
  br label %nfp_bpf_ctrl_op_cache_put.exit

nfp_bpf_ctrl_op_cache_put.exit:                   ; preds = %if.end18.i, %err_cache_put.nfp_bpf_ctrl_op_cache_put.exit_crit_edge
  %skb.addr.1.i = phi ptr [ %skb.addr.0.i, %if.end18.i ], [ null, %err_cache_put.nfp_bpf_ctrl_op_cache_put.exit_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.addr.1.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %nfp_bpf_ctrl_op_cache_put.exit, %if.end98, %nfp_bpf_ctrl_op_cache_get.exit.cleanup_crit_edge, %nfp_bpf_ctrl_op_cache_get.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %nfp_bpf_ctrl_op_cache_put.exit ], [ 0, %if.end98 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %nfp_bpf_ctrl_op_cache_get.exit.cleanup_crit_edge ], [ 0, %nfp_bpf_ctrl_op_cache_get.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_bpf_ctrl_del_entry(ptr nocapture noundef readonly %offmap, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfp_bpf_ctrl_entry_op(ptr noundef %offmap, i32 noundef 5, ptr noundef %key, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_bpf_ctrl_lookup_entry(ptr nocapture noundef readonly %offmap, ptr noundef %key, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfp_bpf_ctrl_entry_op(ptr noundef %offmap, i32 noundef 3, ptr noundef %key, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef %value)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_bpf_ctrl_getfirst_entry(ptr nocapture noundef readonly %offmap, ptr noundef %next_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfp_bpf_ctrl_entry_op(ptr noundef %offmap, i32 noundef 7, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef %next_key, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_bpf_ctrl_getnext_entry(ptr nocapture noundef readonly %offmap, ptr noundef %key, ptr noundef %next_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfp_bpf_ctrl_entry_op(ptr noundef %offmap, i32 noundef 6, ptr noundef %key, ptr noundef null, i64 noundef 0, ptr noundef %next_key, ptr noundef null)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_bpf_ctrl_cmsg_min_mtu(ptr nocapture noundef readonly %bpf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmsg_key_sz.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 3
  %0 = ptrtoint ptr %cmsg_key_sz.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmsg_key_sz.i, align 4
  %cmsg_val_sz.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 4
  %2 = ptrtoint ptr %cmsg_val_sz.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmsg_val_sz.i, align 4
  %add.i = add i32 %1, 16
  %add1.i = add i32 %add.i, %3
  ret i32 %add1.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_bpf_ctrl_cmsg_mtu(ptr nocapture noundef readonly %bpf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmsg_key_sz.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 3
  %0 = ptrtoint ptr %cmsg_key_sz.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmsg_key_sz.i, align 4
  %cmsg_val_sz.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 4
  %2 = ptrtoint ptr %cmsg_val_sz.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmsg_val_sz.i, align 4
  %add.i = add i32 %3, %1
  %mul.i = shl i32 %add.i, 2
  %add1.i = add i32 %mul.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %add1.i)
  %cmp = icmp ult i32 %add1.i, 1500
  %4 = tail call i32 @llvm.umax.i32(i32 %add1.i, i32 1500)
  %cond7 = select i1 %cmp, i32 %4, i32 %add1.i
  ret i32 %cond7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_bpf_ctrl_cmsg_cache_cnt(ptr nocapture noundef readonly %bpf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf, align 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %mtu1 = getelementptr inbounds %struct.nfp_net_dp, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu1, align 64
  %cmsg_key_sz = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 3
  %6 = ptrtoint ptr %cmsg_key_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmsg_key_sz, align 4
  %cmsg_val_sz = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 4
  %8 = ptrtoint ptr %cmsg_val_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmsg_val_sz, align 4
  %add = add i32 %9, %7
  %sub = add i32 %5, -16
  %div = udiv i32 %sub, %add
  %10 = tail call i32 @llvm.umin.i32(i32 %div, i32 4)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_bpf_ctrl_msg_rx(ptr nocapture noundef readonly %app, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %if.then, label %if.end17, !prof !55

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl, align 4
  %call = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end16_crit_edge, label %if.then10, !prof !54

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then10:                                        ; preds = %if.then
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %do.end, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %9, ptr noundef nonnull @.str.11, i32 noundef %11) #10
  br label %if.end16

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef %15) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.then12, %if.then.if.end16_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

if.end17:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp19 = icmp eq i8 %19, 8
  br i1 %cmp19, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end17
  %call23 = tail call i32 @nfp_bpf_event_output(ptr noundef %1, ptr noundef %17, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.else26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %ccm = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 1
  tail call void @nfp_ccm_rx(ptr noundef %ccm, ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.else26, %if.then25, %if.end16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_event_output(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_ccm_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_bpf_ctrl_msg_rx_raw(ptr nocapture noundef readonly %app, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp = icmp ult i32 %len, 8
  br i1 %cmp, label %if.then, label %if.end15, !prof !55

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %call = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then10, !prof !54

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.then
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %7, ptr noundef nonnull @.str.11, i32 noundef %len) #10
  br label %cleanup

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef %len) #10
  br label %cleanup

if.end15:                                         ; preds = %entry
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp16 = icmp eq i8 %11, 8
  br i1 %cmp16, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 @nfp_bpf_event_output(ptr noundef %1, ptr noundef %data, i32 noundef %len) #7
  br label %cleanup

if.else20:                                        ; preds = %if.end15
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %ctrl23 = getelementptr inbounds %struct.nfp_app, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ctrl23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl23, align 4
  %call25 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else20.cleanup_crit_edge, label %if.then33, !prof !54

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %if.else20
  %netdev34 = getelementptr inbounds %struct.nfp_net_dp, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %netdev34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev34, align 4
  %tobool35.not = icmp eq ptr %17, null
  br i1 %tobool35.not, label %do.end43, label %if.then36

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 4
  %conv39 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %17, ptr noundef nonnull @.str.14, i32 noundef %conv39) #10
  br label %cleanup

do.end43:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 4
  %conv46 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.14, i32 noundef %conv46) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.then36, %if.else20.cleanup_crit_edge, %if.then18, %do.end, %if.then12, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_app_ctrl_msg_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_bpf_ctrl_op_cache_put(ptr noundef %nfp_map, i32 noundef %op, ptr noundef %skb, i32 noundef %cache_gen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %op, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %1 = icmp eq i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %2 = icmp eq i32 %0, 6
  %3 = and i32 %op, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp eq i32 %3, 4
  br i1 %switch, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then:                                          ; preds = %entry
  br i1 %2, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i64 @ktime_get() #7
  %add = add i64 %call.i, 250000
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %to.0 = phi i64 [ %add, %if.then5 ], [ 0, %if.then.if.end_crit_edge ]
  %cache_lock = getelementptr inbounds %struct.nfp_bpf_map, ptr %nfp_map, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %cache_lock) #7
  br i1 %1, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cache_blockers = getelementptr inbounds %struct.nfp_bpf_map, ptr %nfp_map, i32 0, i32 4
  %4 = ptrtoint ptr %cache_blockers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cache_blockers, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %cache_blockers, align 8
  %cache_gen9 = getelementptr inbounds %struct.nfp_bpf_map, ptr %nfp_map, i32 0, i32 5
  %6 = ptrtoint ptr %cache_gen9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache_gen9, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %cache_gen9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  br i1 %2, label %land.lhs.true, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end10
  %cache_blockers12 = getelementptr inbounds %struct.nfp_bpf_map, ptr %nfp_map, i32 0, i32 4
  %8 = ptrtoint ptr %cache_blockers12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cache_blockers12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not = icmp eq i32 %9, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true14:                                  ; preds = %land.lhs.true
  %cache_gen15 = getelementptr inbounds %struct.nfp_bpf_map, ptr %nfp_map, i32 0, i32 5
  %10 = ptrtoint ptr %cache_gen15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_gen15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cache_gen)
  %cmp = icmp eq i32 %11, %cache_gen
  br i1 %cmp, label %if.then16, label %land.lhs.true14.if.end18_crit_edge

land.lhs.true14.if.end18_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  %cache_to = getelementptr inbounds %struct.nfp_bpf_map, ptr %nfp_map, i32 0, i32 6
  %12 = ptrtoint ptr %cache_to to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %to.0, ptr %cache_to, align 8
  %cache = getelementptr inbounds %struct.nfp_bpf_map, ptr %nfp_map, i32 0, i32 7
  %13 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache, align 8
  store ptr %skb, ptr %cache, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true14.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %land.lhs.true.if.end18_crit_edge ], [ %14, %if.then16 ], [ %skb, %land.lhs.true14.if.end18_crit_edge ], [ %skb, %if.end10.if.end18_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %cache_lock) #7
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %entry.if.end20_crit_edge
  %skb.addr.1 = phi ptr [ %skb.addr.0, %if.end18 ], [ %skb, %entry.if.end20_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.addr.1, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c", i32 129, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_bpf_ctrl_free_map._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_bpf_ctrl_free_map._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c", i32 139, i32 3}
!10 = !{ptr @nfp_bpf_ctrl_free_map._entry.6, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nfp_bpf_ctrl_free_map._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c", i32 146, i32 3}
!14 = !{ptr @nfp_bpf_ctrl_free_map._entry.9, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nfp_bpf_ctrl_free_map._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c", i32 447, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nfp_bpf_ctrl_msg_rx._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfp_bpf_ctrl_msg_rx._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c", i32 470, i32 3}
!23 = !{ptr @nfp_bpf_ctrl_msg_rx_raw._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nfp_bpf_ctrl_msg_rx_raw._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c", i32 477, i32 3}
!27 = !{ptr @nfp_bpf_ctrl_msg_rx_raw._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfp_bpf_ctrl_msg_rx_raw._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @nfp_bpf_ctrl_rc_to_errno.res_table, !30, !"res_table", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c", i32 60, i32 19}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c", i32 74, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nfp_bpf_ctrl_rc_to_errno._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @nfp_bpf_ctrl_rc_to_errno._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c", i32 340, i32 3}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nfp_bpf_ctrl_entry_op._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @nfp_bpf_ctrl_entry_op._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/cmsg.c", i32 359, i32 3}
!43 = !{ptr @nfp_bpf_ctrl_entry_op._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @nfp_bpf_ctrl_entry_op._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!"branch_weights", i32 1, i32 2000}
