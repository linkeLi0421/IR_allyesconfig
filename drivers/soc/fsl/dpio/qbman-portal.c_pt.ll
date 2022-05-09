; ModuleID = '/llk/IR_all_yes/drivers/soc/fsl/dpio/qbman-portal.c_pt.bc'
source_filename = "../drivers/soc/fsl/dpio/qbman-portal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.6 }
%union.anon.6 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.qbman_swp = type { ptr, ptr, ptr, %struct.anon, %struct.anon.0, i32, %struct.anon.1, %struct.anon.2, %struct.anon.3, %struct.spinlock, i32, i32, i32 }
%struct.anon = type { i32 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { %struct.atomic_t, i32, ptr }
%struct.anon.2 = type { i32, i32, i8, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dpaa2_fd = type { %union.anon.8 }
%union.anon.8 = type { %struct.dpaa2_fd_simple }
%struct.dpaa2_fd_simple = type { i64, i32, i16, i16, i32, i32, i64 }
%struct.qbman_eq_desc = type { i8, i8, i16, i16, i16, i32, i32, i16, i8, [3 x i8], i8, i8, i64 }
%struct.qbman_pull_desc = type { i8, i8, i8, i8, i32, i64, i64, [40 x i8] }
%struct.qbman_swp_desc = type { ptr, ptr, i32, i32, i32 }
%struct.dq = type { i8, i8, i16, i16, i8, i8, i32, i32, i32, i32, i64, [32 x i8] }
%struct.qbman_release_desc = type { i8, i8, i16, i32, [7 x i64] }
%struct.qbman_acquire_desc = type { i8, i8, i16, i8, [59 x i8] }
%struct.qbman_acquire_rslt = type { i8, i8, i16, i8, [3 x i8], [7 x i64] }
%struct.qbman_alt_fq_state_desc = type { i8, [3 x i8], i32, [56 x i8] }
%struct.qbman_alt_fq_state_rslt = type { i8, i8, [62 x i8] }
%struct.qbman_cdan_ctrl_desc = type { i8, i8, i16, i8, i8, i16, i64, [48 x i8] }
%struct.qbman_cdan_ctrl_rslt = type { i8, i8, i16, [60 x i8] }
%struct.qbman_fq_query_desc = type { i8, [3 x i8], i32, [56 x i8] }
%struct.qbman_fq_query_np_rslt = type { i8, i8, i8, i8, [2 x i8], i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i8, [29 x i8] }
%struct.qbman_bp_query_desc = type { i8, i8, i16, [60 x i8] }
%struct.qbman_bp_query_rslt = type { i8, i8, [4 x i8], i8, i8, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i64, i64, i16, i8, i8, i8, i8, i8, [9 x i8] }

@qbman_swp_enqueue_ptr = dso_local global { ptr, [28 x i8] } { ptr @qbman_swp_enqueue_direct, [28 x i8] zeroinitializer }, align 32
@qbman_swp_enqueue_multiple_ptr = dso_local global { ptr, [28 x i8] } { ptr @qbman_swp_enqueue_multiple_direct, [28 x i8] zeroinitializer }, align 32
@qbman_swp_enqueue_multiple_desc_ptr = dso_local global { ptr, [28 x i8] } { ptr @qbman_swp_enqueue_multiple_desc_direct, [28 x i8] zeroinitializer }, align 32
@qbman_swp_pull_ptr = dso_local global { ptr, [28 x i8] } { ptr @qbman_swp_pull_direct, [28 x i8] zeroinitializer }, align 32
@qbman_swp_dqrr_next_ptr = dso_local global { ptr, [28 x i8] } { ptr @qbman_swp_dqrr_next_direct, [28 x i8] zeroinitializer }, align 32
@qbman_swp_release_ptr = dso_local global { ptr, [28 x i8] } { ptr @qbman_swp_release_direct, [28 x i8] zeroinitializer }, align 32
@qbman_swp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&p->access_spinlock\00", [44 x i8] zeroinitializer }, align 32
@qbman_swp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013qbman: the portal is not enabled!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qbman_swp_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/soc/fsl/dpio/qbman-portal.c\00", [60 x i8] zeroinitializer }, align 32
@qbman_swp_init._entry_ptr = internal global ptr @qbman_swp_init._entry, section ".printk_index", align 4
@qbman_swp_dqrr_next_direct.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl_mc_dpio\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qbman_swp_dqrr_next_direct\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"next_idx=%d, pi=%d, clear reset bug\0A\00", [59 x i8] zeroinitializer }, align 32
@qbman_swp_dqrr_next_mem_back.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.7, ptr @.str.3, ptr @.str.6, i8 1, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qbman_swp_dqrr_next_mem_back\00", [35 x i8] zeroinitializer }, align 32
@qbman_swp_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qbman: acquire from BPID %d failed, no response\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qbman_swp_acquire\00", [46 x i8] zeroinitializer }, align 32
@qbman_swp_acquire._entry_ptr = internal global ptr @qbman_swp_acquire._entry, section ".printk_index", align 4
@qbman_swp_acquire._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013qbman: acquire from BPID 0x%x failed, code=0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@qbman_swp_acquire._entry_ptr.12 = internal global ptr @qbman_swp_acquire._entry.10, section ".printk_index", align 4
@qbman_swp_alt_fq_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 1630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qbman: mgmt cmd failed, no response (verb=0x%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qbman_swp_alt_fq_state\00", [41 x i8] zeroinitializer }, align 32
@qbman_swp_alt_fq_state._entry_ptr = internal global ptr @qbman_swp_alt_fq_state._entry, section ".printk_index", align 4
@qbman_swp_alt_fq_state._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 1640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013qbman: ALT FQID %d failed: verb = 0x%08x code = 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@qbman_swp_alt_fq_state._entry_ptr.17 = internal global ptr @qbman_swp_alt_fq_state._entry.15, section ".printk_index", align 4
@qbman_swp_CDAN_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013qbman: wqchan config failed, no response\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qbman_swp_CDAN_set\00", [45 x i8] zeroinitializer }, align 32
@qbman_swp_CDAN_set._entry_ptr = internal global ptr @qbman_swp_CDAN_set._entry, section ".printk_index", align 4
@qbman_swp_CDAN_set._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 1699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013qbman: CDAN cQID %d failed: code = 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@qbman_swp_CDAN_set._entry_ptr.22 = internal global ptr @qbman_swp_CDAN_set._entry.20, section ".printk_index", align 4
@qbman_fq_query_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 1732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013qbman: Query FQID %d NP fields failed, no response\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qbman_fq_query_state\00", [43 x i8] zeroinitializer }, align 32
@qbman_fq_query_state._entry_ptr = internal global ptr @qbman_fq_query_state._entry, section ".printk_index", align 4
@qbman_fq_query_state._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 1742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Query NP fields of FQID 0x%x failed, code=0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@qbman_fq_query_state._entry_ptr.27 = internal global ptr @qbman_fq_query_state._entry.25, section ".printk_index", align 4
@qbman_bp_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 1780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qbman: Query BPID %d fields failed, no response\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qbman_bp_query\00", [17 x i8] zeroinitializer }, align 32
@qbman_bp_query._entry_ptr = internal global ptr @qbman_bp_query._entry, section ".printk_index", align 4
@qbman_bp_query._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 1790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Query fields of BPID 0x%x failed, code=0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@qbman_bp_query._entry_ptr.32 = internal global ptr @qbman_bp_query._entry.30, section ".printk_index", align 4
@qbman_swp_set_irq_coalescing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013irq_holdoff must be <= %uus\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qbman_swp_set_irq_coalescing\00", [35 x i8] zeroinitializer }, align 32
@qbman_swp_set_irq_coalescing._entry_ptr = internal global ptr @qbman_swp_set_irq_coalescing._entry, section ".printk_index", align 4
@qbman_swp_set_irq_coalescing._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 1826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013irq_threshold must be < %u\0A\00", [34 x i8] zeroinitializer }, align 32
@qbman_swp_set_irq_coalescing._entry_ptr.37 = internal global ptr @qbman_swp_set_irq_coalescing._entry.35, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/soc/fsl/dpio/qbman-portal.h\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"qbman_swp_enqueue_ptr\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 143, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"qbman_swp_enqueue_multiple_ptr\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 148, i32 7 }
@___asan_gen_.45 = private unnamed_addr constant [36 x i8] c"qbman_swp_enqueue_multiple_desc_ptr\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 156, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"qbman_swp_pull_ptr\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 162, i32 7 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"qbman_swp_dqrr_next_ptr\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 165, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"qbman_swp_release_ptr\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 168, i32 7 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 257, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 320, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1209, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1301, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1574, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1584, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1629, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1639, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1690, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1698, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1731, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1741, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1779, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1789, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1821, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private constant [39 x i8] c"../drivers/soc/fsl/dpio/qbman-portal.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1826, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [39 x i8] c"../drivers/soc/fsl/dpio/qbman-portal.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 550, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @qbman_bp_query._entry, ptr @qbman_bp_query._entry.30, ptr @qbman_bp_query._entry_ptr, ptr @qbman_bp_query._entry_ptr.32, ptr @qbman_fq_query_state._entry, ptr @qbman_fq_query_state._entry.25, ptr @qbman_fq_query_state._entry_ptr, ptr @qbman_fq_query_state._entry_ptr.27, ptr @qbman_swp_CDAN_set._entry, ptr @qbman_swp_CDAN_set._entry.20, ptr @qbman_swp_CDAN_set._entry_ptr, ptr @qbman_swp_CDAN_set._entry_ptr.22, ptr @qbman_swp_acquire._entry, ptr @qbman_swp_acquire._entry.10, ptr @qbman_swp_acquire._entry_ptr, ptr @qbman_swp_acquire._entry_ptr.12, ptr @qbman_swp_alt_fq_state._entry, ptr @qbman_swp_alt_fq_state._entry.15, ptr @qbman_swp_alt_fq_state._entry_ptr, ptr @qbman_swp_alt_fq_state._entry_ptr.17, ptr @qbman_swp_init._entry, ptr @qbman_swp_init._entry_ptr, ptr @qbman_swp_set_irq_coalescing._entry, ptr @qbman_swp_set_irq_coalescing._entry.35, ptr @qbman_swp_set_irq_coalescing._entry_ptr, ptr @qbman_swp_set_irq_coalescing._entry_ptr.37, ptr @qbman_swp_enqueue_ptr, ptr @qbman_swp_enqueue_multiple_ptr, ptr @qbman_swp_enqueue_multiple_desc_ptr, ptr @qbman_swp_pull_ptr, ptr @qbman_swp_dqrr_next_ptr, ptr @qbman_swp_release_ptr, ptr @qbman_swp_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_enqueue_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_enqueue_multiple_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_enqueue_multiple_desc_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_pull_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_dqrr_next_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_release_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_acquire._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_alt_fq_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_alt_fq_state._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_CDAN_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_CDAN_set._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_fq_query_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_fq_query_state._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_bp_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_bp_query._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_set_irq_coalescing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qbman_swp_set_irq_coalescing._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qbman_swp_enqueue_direct(ptr noundef %s, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fd) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  %call = call i32 @qbman_swp_enqueue_multiple_direct(ptr noundef %s, ptr noundef %d, ptr noundef %fd, ptr noundef nonnull %flags, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.inv = icmp slt i32 %call, 0
  %. = select i1 %cmp.inv, i32 -16, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #14
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qbman_swp_enqueue_multiple_direct(ptr noundef %s, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fd, ptr noundef readonly %flags, i32 noundef %num_frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %access_spinlock = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %access_spinlock) #14
  %eqcr = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8
  %pi_ci_mask = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %pi_ci_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pi_ci_mask, align 4
  %shr = lshr i32 %1, 1
  %available = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then:                                          ; preds = %entry
  %ci = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci, align 4
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %6 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2112
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !94
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  %and = and i32 %9, %1
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %ci, align 4
  %pi_ring_size = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %pi_ring_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pi_ring_size, align 4
  %conv = trunc i32 %12 to i8
  %conv10 = trunc i32 %5 to i8
  %conv13 = trunc i32 %and to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv13, i8 %conv10)
  %cmp.not.i = icmp ult i8 %conv13, %conv10
  %sub.i = sub i8 %conv13, %conv10
  %mul.i = shl i8 %conv, 1
  %sub10.i = select i1 %cmp.not.i, i8 %mul.i, i8 0
  %retval.0.i = add i8 %sub10.i, %sub.i
  %conv15 = zext i8 %retval.0.i to i32
  %13 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv15, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i)
  %tobool20.not = icmp eq i8 %retval.0.i, 0
  br i1 %tobool20.not, label %if.then.cleanup_crit_edge, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.then.if.end23_crit_edge, %entry.if.end23_crit_edge
  %14 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eqcr, align 4
  %16 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %available, align 4
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %num_frames)
  %sub = sub i32 %17, %18
  %19 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp32150 = icmp sgt i32 %18, 0
  br i1 %cmp32150, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  br label %for.end75.thread

for.body.lr.ph:                                   ; preds = %if.end23
  %addr_cena34 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %arrayidx37 = getelementptr i32, ptr %d, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc40, %for.body.for.body_crit_edge ]
  %eqcr_pi.0151 = phi i32 [ %15, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %addr_cena34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr_cena34, align 4
  %and35 = and i32 %eqcr_pi.0151, %shr
  %shl = shl i32 %and35, 6
  %add.ptr36 = getelementptr i8, ptr %21, i32 %shl
  %arrayidx = getelementptr i32, ptr %add.ptr36, i32 1
  %22 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx37, i32 28)
  %arrayidx38 = getelementptr i32, ptr %add.ptr36, i32 8
  %arrayidx39 = getelementptr %struct.dpaa2_fd, ptr %fd, i32 %i.0152
  %23 = call ptr @memcpy(ptr %arrayidx38, ptr %arrayidx39, i32 32)
  %inc = add i32 %eqcr_pi.0151, 1
  %inc40 = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc40, %18
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  br i1 %cmp32150, label %for.body46.lr.ph, label %for.end.for.end75.thread_crit_edge

for.end.for.end75.thread_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end75.thread

for.body46.lr.ph:                                 ; preds = %for.end
  %24 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eqcr, align 4
  %addr_cena47 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %pi_vb = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 1
  %tobool55.not = icmp eq ptr %flags, null
  br label %for.body46

for.body46:                                       ; preds = %for.inc73.for.body46_crit_edge, %for.body46.lr.ph
  %i.1155 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc74, %for.inc73.for.body46_crit_edge ]
  %eqcr_pi.1154 = phi i32 [ %25, %for.body46.lr.ph ], [ %inc66, %for.inc73.for.body46_crit_edge ]
  %26 = ptrtoint ptr %addr_cena47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr_cena47, align 4
  %and48 = and i32 %eqcr_pi.1154, %shr
  %shl49 = shl i32 %and48, 6
  %add.ptr51 = getelementptr i8, ptr %27, i32 %shl49
  %28 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %d, align 4
  %30 = ptrtoint ptr %pi_vb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pi_vb, align 4
  %or = or i32 %31, %29
  %32 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %add.ptr51, align 4
  br i1 %tobool55.not, label %for.body46.if.end65_crit_edge, label %land.lhs.true

for.body46.if.end65_crit_edge:                    ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

land.lhs.true:                                    ; preds = %for.body46
  %arrayidx56 = getelementptr i32, ptr %flags, i32 %i.1155
  %33 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool59.not = icmp sgt i32 %34, -1
  br i1 %tobool59.not, label %land.lhs.true.if.end65_crit_edge, label %if.then60

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 15
  %conv64 = or i8 %36, -128
  %dca = getelementptr inbounds %struct.qbman_eq_desc, ptr %add.ptr51, i32 0, i32 1
  %37 = ptrtoint ptr %dca to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv64, ptr %dca, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %land.lhs.true.if.end65_crit_edge, %for.body46.if.end65_crit_edge
  %inc66 = add i32 %eqcr_pi.1154, 1
  %and67 = and i32 %inc66, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end65.for.inc73_crit_edge

if.end65.for.inc73_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc73

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %pi_vb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pi_vb, align 4
  %xor = xor i32 %39, 128
  store i32 %xor, ptr %pi_vb, align 4
  br label %for.inc73

for.inc73:                                        ; preds = %if.then69, %if.end65.for.inc73_crit_edge
  %inc74 = add nuw nsw i32 %i.1155, 1
  %exitcond160.not = icmp eq i32 %inc74, %18
  br i1 %exitcond160.not, label %for.end75, label %for.inc73.for.body46_crit_edge

for.inc73.for.body46_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body46

for.end75.thread:                                 ; preds = %for.end.for.end75.thread_crit_edge, %for.end.thread
  %40 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %eqcr, align 4
  br label %for.end85

for.end75:                                        ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %eqcr, align 4
  %44 = call i32 @llvm.smax.i32(i32 %18, i32 0)
  %spec.select = add i32 %43, %44
  br label %for.end85

for.end85:                                        ; preds = %for.end75, %for.end75.thread
  %eqcr_pi.2.lcssa = phi i32 [ %41, %for.end75.thread ], [ %spec.select, %for.end75 ]
  %and86 = and i32 %eqcr_pi.2.lcssa, %1
  %45 = ptrtoint ptr %eqcr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and86, ptr %eqcr, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end85, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %for.end85 ], [ 0, %if.then.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %access_spinlock) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qbman_swp_enqueue_multiple_desc_direct(ptr nocapture noundef %s, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fd, i32 noundef %num_frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eqcr = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8
  %pi_ci_mask = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %pi_ci_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pi_ci_mask, align 4
  %shr = lshr i32 %1, 1
  %available = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then:                                          ; preds = %entry
  %ci = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci, align 4
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %6 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2112
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !94
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ci, align 4
  %pi_ring_size = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %pi_ring_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pi_ring_size, align 4
  %conv = trunc i32 %12 to i8
  %conv8 = trunc i32 %5 to i8
  %conv11 = trunc i32 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv11, i8 %conv8)
  %cmp.not.i = icmp ult i8 %conv11, %conv8
  %sub.i = sub i8 %conv11, %conv8
  %mul.i = shl i8 %conv, 1
  %sub10.i = select i1 %cmp.not.i, i8 %mul.i, i8 0
  %retval.0.i = add i8 %sub10.i, %sub.i
  %conv13 = zext i8 %retval.0.i to i32
  %13 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv13, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i)
  %tobool18.not = icmp eq i8 %retval.0.i, 0
  br i1 %tobool18.not, label %if.then.cleanup_crit_edge, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  %14 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eqcr, align 4
  %16 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %available, align 4
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %num_frames)
  %sub = sub i32 %17, %18
  %19 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp29129 = icmp sgt i32 %18, 0
  br i1 %cmp29129, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !96
  br label %for.end62.thread

for.body.lr.ph:                                   ; preds = %if.end20
  %addr_cena31 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.body.for.body_crit_edge ]
  %eqcr_pi.0130 = phi i32 [ %15, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %addr_cena31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr_cena31, align 4
  %and = and i32 %eqcr_pi.0130, %shr
  %shl = shl i32 %and, 6
  %add.ptr32 = getelementptr i8, ptr %21, i32 %shl
  %arrayidx33 = getelementptr i32, ptr %add.ptr32, i32 1
  %arrayidx34 = getelementptr %struct.qbman_eq_desc, ptr %d, i32 %i.0131, i32 3
  %22 = call ptr @memcpy(ptr %arrayidx33, ptr %arrayidx34, i32 28)
  %arrayidx35 = getelementptr i32, ptr %add.ptr32, i32 8
  %arrayidx36 = getelementptr %struct.dpaa2_fd, ptr %fd, i32 %i.0131
  %23 = call ptr @memcpy(ptr %arrayidx35, ptr %arrayidx36, i32 32)
  %inc = add i32 %eqcr_pi.0130, 1
  %inc37 = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc37, %18
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !96
  br i1 %cmp29129, label %for.body43.lr.ph, label %for.end.for.end62.thread_crit_edge

for.end.for.end62.thread_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end62.thread

for.body43.lr.ph:                                 ; preds = %for.end
  %24 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eqcr, align 4
  %addr_cena44 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %pi_vb = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 1
  br label %for.body43

for.body43:                                       ; preds = %for.inc60.for.body43_crit_edge, %for.body43.lr.ph
  %i.1134 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc61, %for.inc60.for.body43_crit_edge ]
  %eqcr_pi.1133 = phi i32 [ %25, %for.body43.lr.ph ], [ %inc53, %for.inc60.for.body43_crit_edge ]
  %26 = ptrtoint ptr %addr_cena44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr_cena44, align 4
  %and45 = and i32 %eqcr_pi.1133, %shr
  %shl46 = shl i32 %and45, 6
  %add.ptr48 = getelementptr i8, ptr %27, i32 %shl46
  %arrayidx49 = getelementptr %struct.qbman_eq_desc, ptr %d, i32 %i.1134
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx49, align 4
  %30 = ptrtoint ptr %pi_vb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pi_vb, align 4
  %or = or i32 %31, %29
  %32 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %add.ptr48, align 4
  %inc53 = add i32 %eqcr_pi.1133, 1
  %and54 = and i32 %inc53, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then56, label %for.body43.for.inc60_crit_edge

for.body43.for.inc60_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc60

if.then56:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %pi_vb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pi_vb, align 4
  %xor = xor i32 %34, 128
  store i32 %xor, ptr %pi_vb, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %if.then56, %for.body43.for.inc60_crit_edge
  %inc61 = add nuw nsw i32 %i.1134, 1
  %exitcond138.not = icmp eq i32 %inc61, %18
  br i1 %exitcond138.not, label %for.end62, label %for.inc60.for.body43_crit_edge

for.inc60.for.body43_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body43

for.end62.thread:                                 ; preds = %for.end.for.end62.thread_crit_edge, %for.end.thread
  %35 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eqcr, align 4
  br label %for.end72

for.end62:                                        ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %eqcr, align 4
  %39 = call i32 @llvm.smax.i32(i32 %18, i32 0)
  %spec.select = add i32 %38, %39
  br label %for.end72

for.end72:                                        ; preds = %for.end62, %for.end62.thread
  %eqcr_pi.2.lcssa = phi i32 [ %36, %for.end62.thread ], [ %spec.select, %for.end62 ]
  %and73 = and i32 %eqcr_pi.2.lcssa, %1
  %40 = ptrtoint ptr %eqcr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and73, ptr %eqcr, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %for.end72 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qbman_swp_pull_direct(ptr noundef %s, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vdq = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vdq, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %vdq, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vdq, ptr %vdq, i32 1, ptr elementtype(i32) %vdq) #14, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vdq, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %vdq, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vdq, ptr %vdq, i32 1, ptr elementtype(i32) %vdq) #14, !srcloc !100
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rsp_addr_virt = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %rsp_addr_virt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rsp_addr_virt, align 8
  %conv = trunc i64 %3 to i32
  %4 = inttoptr i32 %conv to ptr
  %storage = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %storage to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %storage, align 4
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 4
  %qman_version = getelementptr inbounds %struct.qbman_swp_desc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %qman_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qman_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %9)
  %cmp = icmp ult i32 %9, 83886080
  %addr_cena.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %10 = ptrtoint ptr %addr_cena.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr_cena.i, align 4
  %. = select i1 %cmp, i32 1920, i32 6016
  %add.ptr.i39 = getelementptr i8, ptr %11, i32 %.
  %numf = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 1
  %12 = ptrtoint ptr %numf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %numf, align 1
  %numf9 = getelementptr inbounds %struct.qbman_pull_desc, ptr %add.ptr.i39, i32 0, i32 1
  %14 = ptrtoint ptr %numf9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %numf9, align 1
  %tok = getelementptr inbounds %struct.qbman_pull_desc, ptr %add.ptr.i39, i32 0, i32 2
  %15 = ptrtoint ptr %tok to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %tok, align 2
  %dq_src = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 4
  %16 = ptrtoint ptr %dq_src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dq_src, align 4
  %dq_src10 = getelementptr inbounds %struct.qbman_pull_desc, ptr %add.ptr.i39, i32 0, i32 4
  %18 = ptrtoint ptr %dq_src10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dq_src10, align 4
  %rsp_addr = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 5
  %19 = ptrtoint ptr %rsp_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rsp_addr, align 8
  %rsp_addr11 = getelementptr inbounds %struct.qbman_pull_desc, ptr %add.ptr.i39, i32 0, i32 5
  %21 = ptrtoint ptr %rsp_addr11 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %rsp_addr11, align 8
  %22 = ptrtoint ptr %rsp_addr_virt to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rsp_addr_virt, align 8
  %rsp_addr_virt13 = getelementptr inbounds %struct.qbman_pull_desc, ptr %add.ptr.i39, i32 0, i32 6
  %24 = ptrtoint ptr %rsp_addr_virt13 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %rsp_addr_virt13, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !101
  %25 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %d, align 8
  %valid_bit = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %valid_bit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %valid_bit, align 4
  %29 = trunc i32 %28 to i8
  %conv16 = or i8 %26, %29
  %30 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv16, ptr %add.ptr.i39, align 8
  %31 = load i32, ptr %valid_bit, align 4
  %xor = xor i32 %31, 128
  store i32 %xor, ptr %valid_bit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qbman_swp_dqrr_next_direct(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dqrr = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 7
  %reset_bug = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %reset_bug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reset_bug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then, !prof !102

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then:                                          ; preds = %entry
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !94
  %5 = lshr i32 %4, 24
  %conv = and i32 %5, 15
  %6 = ptrtoint ptr %dqrr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dqrr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %7)
  %cmp = icmp eq i32 %conv, %7
  br i1 %cmp, label %if.then.cleanup84_crit_edge, label %if.end

if.then.cleanup84_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup84

if.end:                                           ; preds = %if.then
  %dqrr_size = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %dqrr_size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dqrr_size, align 4
  %conv10 = zext i8 %9 to i32
  %sub = add nsw i32 %conv10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp11 = icmp eq i32 %7, %sub
  br i1 %cmp11, label %do.body, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qbman_swp_dqrr_next_direct.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qbman_swp_dqrr_next_direct, %if.then22)) #14
          to label %do.end [label %if.then22], !srcloc !103

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %dqrr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dqrr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qbman_swp_dqrr_next_direct.__UNIQUE_ID_ddebug217, ptr noundef nonnull @.str.6, i32 noundef %11, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  %12 = ptrtoint ptr %reset_bug to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %reset_bug, align 4
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end.if.end29_crit_edge
  %13 = ptrtoint ptr %dqrr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dqrr, align 4
  %shl = shl i32 %14, 6
  %add = add i32 %shl, 512
  %addr_cena.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %15 = ptrtoint ptr %addr_cena.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr_cena.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i115) #14, !srcloc !104
  br label %if.end33

if.end33:                                         ; preds = %if.end29, %entry.if.end33_crit_edge
  %17 = ptrtoint ptr %dqrr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dqrr, align 4
  %shl36 = shl i32 %18, 6
  %add37 = add i32 %shl36, 512
  %addr_cena.i116 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %19 = ptrtoint ptr %addr_cena.i116 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr_cena.i116, align 4
  %add.ptr.i117 = getelementptr i8, ptr %20, i32 %add37
  %21 = ptrtoint ptr %add.ptr.i117 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i117, align 8
  %conv40 = zext i8 %22 to i32
  %and41 = and i32 %conv40, 128
  %valid_bit = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %valid_bit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %valid_bit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and41, i32 %24)
  %cmp43.not = icmp eq i32 %and41, %24
  br i1 %cmp43.not, label %if.end51, label %if.then45

if.then45:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i117) #14, !srcloc !104
  br label %cleanup84

if.end51:                                         ; preds = %if.end33
  %inc = add i32 %18, 1
  %dqrr_size55 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %dqrr_size55 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dqrr_size55, align 4
  %conv56 = zext i8 %26 to i32
  %sub57 = add nsw i32 %conv56, -1
  %and60 = and i32 %sub57, %inc
  %27 = ptrtoint ptr %dqrr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and60, ptr %dqrr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool63.not = icmp eq i32 %and60, 0
  br i1 %tobool63.not, label %if.then64, label %if.end51.if.end67_crit_edge

if.end51.if.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then64:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %xor = xor i32 %and41, 128
  %28 = ptrtoint ptr %valid_bit to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %xor, ptr %valid_bit, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end51.if.end67_crit_edge
  %stat = getelementptr inbounds %struct.dq, ptr %add.ptr.i117, i32 0, i32 1
  %29 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %stat, align 1
  %conv68 = zext i8 %30 to i32
  %and69 = and i32 %conv40, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and69)
  %cmp70 = icmp ne i32 %and69, 96
  %and72 = and i32 %conv68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %or.cond = select i1 %cmp70, i1 true, i1 %tobool73.not
  %and75 = and i32 %conv68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %or.cond114 = select i1 %or.cond, i1 true, i1 %tobool76.not
  br i1 %or.cond114, label %if.end67.if.end78_crit_edge, label %if.then77

if.end67.if.end78_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then77:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %vdq = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vdq, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %vdq, i32 1, i32 3, i32 1) #14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vdq, ptr %vdq, i32 1, ptr elementtype(i32) %vdq) #14, !srcloc !100
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end67.if.end78_crit_edge
  %32 = ptrtoint ptr %dqrr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dqrr, align 4
  %shl81 = shl i32 %33, 6
  %add82 = add i32 %shl81, 512
  %34 = ptrtoint ptr %addr_cena.i116 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr_cena.i116, align 4
  %add.ptr.i121 = getelementptr i8, ptr %35, i32 %add82
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i121) #14, !srcloc !104
  br label %cleanup84

cleanup84:                                        ; preds = %if.end78, %if.then45, %if.then.cleanup84_crit_edge
  %retval.1 = phi ptr [ null, %if.then45 ], [ %add.ptr.i117, %if.end78 ], [ null, %if.then.cleanup84_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qbman_swp_release_direct(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %buffers, i32 noundef %num_buffers) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %num_buffers, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %0)
  %1 = icmp ult i32 %0, -7
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 3264
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !94
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #14
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %and4 = shl i32 %5, 6
  %shl = and i32 %and4, 448
  %add = or i32 %shl, 1024
  %addr_cena.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %addr_cena.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_cena.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %7, i32 %add
  %8 = ptrtoint ptr %buffers to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %buffers, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %arrayidx7 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i27, i32 0, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_buffers)
  %exitcond.not = icmp eq i32 %num_buffers, 1
  br i1 %exitcond.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr i64, ptr %buffers, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.1, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %arrayidx7.1 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i27, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx7.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_buffers)
  %exitcond.not.1 = icmp eq i32 %num_buffers, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr i64, ptr %buffers, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.2, align 8
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  %arrayidx7.2 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i27, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx7.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num_buffers)
  %exitcond.not.2 = icmp eq i32 %num_buffers, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %arrayidx.3 = getelementptr i64, ptr %buffers, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.3, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %arrayidx7.3 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i27, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx7.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %num_buffers)
  %exitcond.not.3 = icmp eq i32 %num_buffers, 4
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %arrayidx.4 = getelementptr i64, ptr %buffers, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.4, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %arrayidx7.4 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i27, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx7.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %num_buffers)
  %exitcond.not.4 = icmp eq i32 %num_buffers, 5
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %arrayidx.5 = getelementptr i64, ptr %buffers, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.5, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %arrayidx7.5 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i27, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx7.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %num_buffers)
  %exitcond.not.5 = icmp eq i32 %num_buffers, 6
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.6 = getelementptr i64, ptr %buffers, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.6, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %arrayidx7.6 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i27, i32 0, i32 4, i32 6
  %35 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx7.6, align 8
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %bpid = getelementptr inbounds %struct.qbman_release_desc, ptr %d, i32 0, i32 2
  %36 = ptrtoint ptr %bpid to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bpid, align 2
  %bpid8 = getelementptr inbounds %struct.qbman_release_desc, ptr %add.ptr.i27, i32 0, i32 2
  %38 = ptrtoint ptr %bpid8 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %bpid8, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !105
  %39 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %d, align 8
  %and9 = and i32 %5, 128
  %or = or i32 %and9, %num_buffers
  %41 = trunc i32 %or to i8
  %conv11 = or i8 %40, %41
  %42 = ptrtoint ptr %add.ptr.i27 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv11, ptr %add.ptr.i27, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qbman_swp_init(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 140) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  %access_spinlock = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %access_spinlock, ptr noundef nonnull @.str, ptr noundef nonnull @qbman_swp_init.__key, i16 noundef signext 3) #14
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %d, ptr %call7.i.i, align 8
  %mc = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %mc, align 4
  %sdq = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %sdq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 565903360, ptr %sdq, align 4
  %qman_version = getelementptr inbounds %struct.qbman_swp_desc, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %qman_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qman_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886079, i32 %5)
  %cmp = icmp ugt i32 %5, 83886079
  br i1 %cmp, label %if.then8, label %do.body.if.end10_crit_edge

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %mr = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 128, ptr %mr, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body.if.end10_crit_edge
  %vdq = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vdq, i32 noundef 4) #14
  %7 = ptrtoint ptr %vdq to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %vdq, align 8
  %valid_bit12 = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %valid_bit12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %valid_bit12, align 4
  %dqrr = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %dqrr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dqrr, align 4
  %valid_bit14 = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %valid_bit14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %valid_bit14, align 8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %qman_version16 = getelementptr inbounds %struct.qbman_swp_desc, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %qman_version16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qman_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67174400, i32 %14)
  %cmp18 = icmp ult i32 %14, 67174400
  %spec.select = select i1 %cmp18, i8 4, i8 8
  %spec.select167 = zext i1 %cmp18 to i32
  %15 = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %15, align 4
  %17 = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select167, ptr %17, align 8
  %19 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d, align 4
  %addr_cena = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %addr_cena to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %addr_cena, align 4
  %cinh_bar = getelementptr inbounds %struct.qbman_swp_desc, ptr %d, i32 0, i32 1
  %22 = ptrtoint ptr %cinh_bar to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cinh_bar, align 4
  %addr_cinh = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %addr_cinh to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %addr_cinh, align 8
  %25 = ptrtoint ptr %qman_version16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qman_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %26)
  %cmp30 = icmp ult i32 %26, 83886080
  br i1 %cmp30, label %if.end10.if.end41_crit_edge, label %if.else35

if.end10.if.end41_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.else35:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %27 = call ptr @memset(ptr %20, i32 0, i32 65536)
  br label %if.end41

if.end41:                                         ; preds = %if.else35, %if.end10.if.end41_crit_edge
  %.sink = phi i32 [ 129276, %if.else35 ], [ 31292, %if.end10.if.end41_crit_edge ]
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %15, align 4
  %conv.i147 = zext i8 %29 to i32
  %shl.i148 = shl nuw nsw i32 %conv.i147, 20
  %or40 = or i32 %shl.i148, %.sink
  %30 = tail call i32 @llvm.bswap.i32(i32 %or40) #14
  %add.ptr.i = getelementptr i8, ptr %23, i32 3328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #14, !srcloc !106
  %31 = ptrtoint ptr %addr_cinh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr_cinh, align 8
  %add.ptr.i151 = getelementptr i8, ptr %32, i32 3328
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #14, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool43.not = icmp eq i32 %33, 0
  br i1 %tobool43.not, label %do.end47, label %if.end49

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  %qman_version51 = getelementptr inbounds %struct.qbman_swp_desc, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %qman_version51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qman_version51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886079, i32 %37)
  %cmp53 = icmp ugt i32 %37, 83886079
  br i1 %cmp53, label %if.then54, label %if.end49.if.end55_crit_edge

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %addr_cinh to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr_cinh, align 8
  %add.ptr.i153 = getelementptr i8, ptr %39, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 65536) #14, !srcloc !106
  %40 = ptrtoint ptr %addr_cinh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr_cinh, align 8
  %add.ptr.i155 = getelementptr i8, ptr %41, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 65536) #14, !srcloc !106
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end49.if.end55_crit_edge
  %42 = ptrtoint ptr %addr_cinh to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr_cinh, align 8
  %add.ptr.i157 = getelementptr i8, ptr %43, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 0) #14, !srcloc !106
  %eqcr = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 8
  %pi_ring_size = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 8, i32 2
  %44 = ptrtoint ptr %pi_ring_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8, ptr %pi_ring_size, align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %qman_version57 = getelementptr inbounds %struct.qbman_swp_desc, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %qman_version57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qman_version57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886079, i32 %48)
  %cmp59 = icmp ugt i32 %48, 83886079
  br i1 %cmp59, label %if.end63, label %if.end55.for.body.lr.ph_crit_edge

if.end55.for.body.lr.ph_crit_edge:                ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph

if.end63:                                         ; preds = %if.end55
  %49 = ptrtoint ptr %pi_ring_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32, ptr %pi_ring_size, align 4
  store ptr @qbman_swp_enqueue_mem_back, ptr @qbman_swp_enqueue_ptr, align 4
  store ptr @qbman_swp_enqueue_multiple_mem_back, ptr @qbman_swp_enqueue_multiple_ptr, align 4
  store ptr @qbman_swp_enqueue_multiple_desc_mem_back, ptr @qbman_swp_enqueue_multiple_desc_ptr, align 4
  store ptr @qbman_swp_pull_mem_back, ptr @qbman_swp_pull_ptr, align 4
  store ptr @qbman_swp_dqrr_next_mem_back, ptr @qbman_swp_dqrr_next_ptr, align 4
  store ptr @qbman_swp_release_mem_back, ptr @qbman_swp_release_ptr, align 4
  %.pr = load i32, ptr %pi_ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp66.not163 = icmp eq i32 %.pr, 0
  br i1 %cmp66.not163, label %if.end63.for.end_crit_edge, label %if.end63.for.body.lr.ph_crit_edge

if.end63.for.body.lr.ph_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end63.for.body.lr.ph_crit_edge, %if.end55.for.body.lr.ph_crit_edge
  %50 = phi i32 [ %.pr, %if.end63.for.body.lr.ph_crit_edge ], [ 8, %if.end55.for.body.lr.ph_crit_edge ]
  %pi_ci_mask = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 8, i32 3
  %51 = ptrtoint ptr %pi_ci_mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %pi_ci_mask.promoted = load i32, ptr %pi_ci_mask, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %52 = phi i32 [ %pi_ci_mask.promoted, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %mask_size.0164 = phi i32 [ %50, %for.body.lr.ph ], [ %shr, %for.body.for.body_crit_edge ]
  %shl = shl i32 %52, 1
  %add = or i32 %shl, 1
  %shr = lshr i32 %mask_size.0164, 1
  %cmp66.not = icmp ult i32 %mask_size.0164, 2
  br i1 %cmp66.not, label %for.cond.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %pi_ci_mask to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add, ptr %pi_ci_mask, align 8
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end63.for.end_crit_edge
  %54 = ptrtoint ptr %addr_cinh to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %addr_cinh, align 8
  %add.ptr.i159 = getelementptr i8, ptr %55, i32 2048
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #14, !srcloc !94
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #14
  %pi_ci_mask72 = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 8, i32 3
  %58 = ptrtoint ptr %pi_ci_mask72 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pi_ci_mask72, align 8
  %and73 = and i32 %57, %59
  %60 = ptrtoint ptr %eqcr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and73, ptr %eqcr, align 4
  %and75 = and i32 %57, 128
  %pi_vb = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 8, i32 1
  %61 = ptrtoint ptr %pi_vb to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and75, ptr %pi_vb, align 8
  %62 = ptrtoint ptr %addr_cinh to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %addr_cinh, align 8
  %add.ptr.i161 = getelementptr i8, ptr %63, i32 2112
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #14, !srcloc !94
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #14
  %66 = ptrtoint ptr %pi_ci_mask72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pi_ci_mask72, align 8
  %and80 = and i32 %65, %67
  %ci = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 8, i32 4
  %68 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and80, ptr %ci, align 4
  %69 = ptrtoint ptr %pi_ring_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pi_ring_size, align 4
  %available85 = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 8, i32 5
  %71 = ptrtoint ptr %available85 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %available85, align 8
  %72 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %15, align 4
  %conv = zext i8 %73 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp5.not.i.not = icmp eq i8 %73, 0
  br i1 %cmp5.not.i.not, label %do.end10.i, label %if.end16.i

do.end10.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %sub) #18
  br label %cleanup

if.end16.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %irq_threshold17.i = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 10
  %74 = ptrtoint ptr %irq_threshold17.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub, ptr %irq_threshold17.i, align 8
  %irq_holdoff18.i = getelementptr inbounds %struct.qbman_swp, ptr %call7.i.i, i32 0, i32 11
  %75 = ptrtoint ptr %irq_holdoff18.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %irq_holdoff18.i, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %sub) #14
  %77 = ptrtoint ptr %addr_cinh to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %addr_cinh, align 8
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 2688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %76) #14, !srcloc !106
  %79 = ptrtoint ptr %addr_cinh to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %addr_cinh, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %80, i32 3904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 0) #14, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %if.end16.i, %do.end10.i, %do.end47, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end47 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %do.end10.i ], [ %call7.i.i, %if.end16.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qbman_swp_enqueue_mem_back(ptr noundef %s, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fd) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  %call = call i32 @qbman_swp_enqueue_multiple_mem_back(ptr noundef %s, ptr noundef %d, ptr noundef %fd, ptr noundef nonnull %flags, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.inv = icmp slt i32 %call, 0
  %. = select i1 %cmp.inv, i32 -16, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #14
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qbman_swp_enqueue_multiple_mem_back(ptr noundef %s, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fd, ptr noundef readonly %flags, i32 noundef %num_frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %access_spinlock = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %access_spinlock) #14
  %eqcr = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8
  %pi_ci_mask = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %pi_ci_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pi_ci_mask, align 4
  %shr = lshr i32 %1, 1
  %available = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then:                                          ; preds = %entry
  %ci = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci, align 4
  %addr_cena = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %addr_cena to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_cena, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 6208
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %and = and i32 %9, %1
  store i32 %and, ptr %ci, align 4
  %pi_ring_size = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %pi_ring_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pi_ring_size, align 4
  %conv12 = trunc i32 %11 to i8
  %conv13 = trunc i32 %5 to i8
  %conv16 = trunc i32 %and to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv16, i8 %conv13)
  %cmp.not.i = icmp ult i8 %conv16, %conv13
  %sub.i = sub i8 %conv16, %conv13
  %mul.i = shl i8 %conv12, 1
  %sub10.i = select i1 %cmp.not.i, i8 %mul.i, i8 0
  %retval.0.i = add i8 %sub10.i, %sub.i
  %conv18 = zext i8 %retval.0.i to i32
  %12 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv18, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i)
  %tobool23.not = icmp eq i8 %retval.0.i, 0
  br i1 %tobool23.not, label %if.then.cleanup_crit_edge, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  %13 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eqcr, align 4
  %15 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %available, align 4
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %num_frames)
  %sub = sub i32 %16, %17
  %18 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp36149 = icmp sgt i32 %17, 0
  br i1 %cmp36149, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eqcr, align 4
  br label %for.end79

for.body.lr.ph:                                   ; preds = %if.end26
  %addr_cena38 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %arrayidx41 = getelementptr i32, ptr %d, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %inc44, %for.body.for.body_crit_edge ]
  %eqcr_pi.0150 = phi i32 [ %14, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %21 = ptrtoint ptr %addr_cena38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr_cena38, align 4
  %and39 = and i32 %eqcr_pi.0150, %shr
  %shl = shl i32 %and39, 6
  %add.ptr40 = getelementptr i8, ptr %22, i32 %shl
  %arrayidx = getelementptr i32, ptr %add.ptr40, i32 1
  %23 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx41, i32 28)
  %arrayidx42 = getelementptr i32, ptr %add.ptr40, i32 8
  %arrayidx43 = getelementptr %struct.dpaa2_fd, ptr %fd, i32 %i.0151
  %24 = call ptr @memcpy(ptr %arrayidx42, ptr %arrayidx43, i32 32)
  %inc = add i32 %eqcr_pi.0150, 1
  %inc44 = add nuw nsw i32 %i.0151, 1
  %exitcond.not = icmp eq i32 %inc44, %17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %25 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eqcr, align 4
  br i1 %cmp36149, label %for.body50.lr.ph, label %for.end.for.end79_crit_edge

for.end.for.end79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end79

for.body50.lr.ph:                                 ; preds = %for.end
  %addr_cena51 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %pi_vb = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 1
  %tobool59.not = icmp eq ptr %flags, null
  br label %for.body50

for.body50:                                       ; preds = %for.inc77.for.body50_crit_edge, %for.body50.lr.ph
  %i.1154 = phi i32 [ 0, %for.body50.lr.ph ], [ %inc78, %for.inc77.for.body50_crit_edge ]
  %eqcr_pi.1153 = phi i32 [ %26, %for.body50.lr.ph ], [ %inc70, %for.inc77.for.body50_crit_edge ]
  %27 = ptrtoint ptr %addr_cena51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %addr_cena51, align 4
  %and52 = and i32 %eqcr_pi.1153, %shr
  %shl53 = shl i32 %and52, 6
  %add.ptr55 = getelementptr i8, ptr %28, i32 %shl53
  %29 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %d, align 4
  %31 = ptrtoint ptr %pi_vb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pi_vb, align 4
  %or = or i32 %32, %30
  %33 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or, ptr %add.ptr55, align 4
  br i1 %tobool59.not, label %for.body50.if.end69_crit_edge, label %land.lhs.true

for.body50.if.end69_crit_edge:                    ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

land.lhs.true:                                    ; preds = %for.body50
  %arrayidx60 = getelementptr i32, ptr %flags, i32 %i.1154
  %34 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool63.not = icmp sgt i32 %35, -1
  br i1 %tobool63.not, label %land.lhs.true.if.end69_crit_edge, label %if.then64

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 15
  %conv68 = or i8 %37, -128
  %dca = getelementptr inbounds %struct.qbman_eq_desc, ptr %add.ptr55, i32 0, i32 1
  %38 = ptrtoint ptr %dca to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv68, ptr %dca, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %land.lhs.true.if.end69_crit_edge, %for.body50.if.end69_crit_edge
  %inc70 = add i32 %eqcr_pi.1153, 1
  %and71 = and i32 %inc70, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end69.for.inc77_crit_edge

if.end69.for.inc77_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc77

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %pi_vb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pi_vb, align 4
  %xor = xor i32 %40, 128
  store i32 %xor, ptr %pi_vb, align 4
  br label %for.inc77

for.inc77:                                        ; preds = %if.then73, %if.end69.for.inc77_crit_edge
  %inc78 = add nuw nsw i32 %i.1154, 1
  %exitcond156.not = icmp eq i32 %inc78, %17
  br i1 %exitcond156.not, label %for.inc77.for.end79_crit_edge, label %for.inc77.for.body50_crit_edge

for.inc77.for.body50_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body50

for.inc77.for.end79_crit_edge:                    ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end79

for.end79:                                        ; preds = %for.inc77.for.end79_crit_edge, %for.end.for.end79_crit_edge, %for.end.thread
  %eqcr_pi.1.lcssa = phi i32 [ %26, %for.end.for.end79_crit_edge ], [ %20, %for.end.thread ], [ %inc70, %for.inc77.for.end79_crit_edge ]
  %and80 = and i32 %eqcr_pi.1.lcssa, %1
  %41 = ptrtoint ptr %eqcr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and80, ptr %eqcr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !107
  %42 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %eqcr, align 4
  %pi_vb87 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %pi_vb87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pi_vb87, align 4
  %or85 = or i32 %43, %45
  %or88 = or i32 %or85, 256
  %46 = tail call i32 @llvm.bswap.i32(i32 %or88) #14
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %47 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %46) #14, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %for.end79, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %for.end79 ], [ 0, %if.then.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %access_spinlock, i32 noundef %call2) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qbman_swp_enqueue_multiple_desc_mem_back(ptr nocapture noundef %s, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fd, i32 noundef %num_frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eqcr = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8
  %pi_ci_mask = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %pi_ci_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pi_ci_mask, align 4
  %shr = lshr i32 %1, 1
  %available = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then:                                          ; preds = %entry
  %ci = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci, align 4
  %addr_cena = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %addr_cena to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_cena, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 6208
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %and = and i32 %9, %1
  store i32 %and, ptr %ci, align 4
  %pi_ring_size = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %pi_ring_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pi_ring_size, align 4
  %conv = trunc i32 %11 to i8
  %conv8 = trunc i32 %5 to i8
  %conv11 = trunc i32 %and to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv11, i8 %conv8)
  %cmp.not.i = icmp ult i8 %conv11, %conv8
  %sub.i = sub i8 %conv11, %conv8
  %mul.i = shl i8 %conv, 1
  %sub10.i = select i1 %cmp.not.i, i8 %mul.i, i8 0
  %retval.0.i = add i8 %sub10.i, %sub.i
  %conv12 = zext i8 %retval.0.i to i32
  %12 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv12, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i)
  %tobool17.not = icmp eq i8 %retval.0.i, 0
  br i1 %tobool17.not, label %if.then.cleanup_crit_edge, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %13 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eqcr, align 4
  %15 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %available, align 4
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %num_frames)
  %sub = sub i32 %16, %17
  %18 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp28124 = icmp sgt i32 %17, 0
  br i1 %cmp28124, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eqcr, align 4
  br label %for.end62

for.body.lr.ph:                                   ; preds = %if.end19
  %addr_cena30 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.body.for.body_crit_edge ]
  %eqcr_pi.0125 = phi i32 [ %14, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %21 = ptrtoint ptr %addr_cena30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr_cena30, align 4
  %and31 = and i32 %eqcr_pi.0125, %shr
  %shl = shl i32 %and31, 6
  %add.ptr32 = getelementptr i8, ptr %22, i32 %shl
  %arrayidx33 = getelementptr i32, ptr %add.ptr32, i32 1
  %arrayidx34 = getelementptr %struct.qbman_eq_desc, ptr %d, i32 %i.0126, i32 3
  %23 = call ptr @memcpy(ptr %arrayidx33, ptr %arrayidx34, i32 28)
  %arrayidx35 = getelementptr i32, ptr %add.ptr32, i32 8
  %arrayidx36 = getelementptr %struct.dpaa2_fd, ptr %fd, i32 %i.0126
  %24 = call ptr @memcpy(ptr %arrayidx35, ptr %arrayidx36, i32 32)
  %inc = add i32 %eqcr_pi.0125, 1
  %inc37 = add nuw nsw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc37, %17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %25 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eqcr, align 4
  br i1 %cmp28124, label %for.body43.lr.ph, label %for.end.for.end62_crit_edge

for.end.for.end62_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end62

for.body43.lr.ph:                                 ; preds = %for.end
  %addr_cena44 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %pi_vb = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 1
  br label %for.body43

for.body43:                                       ; preds = %for.inc60.for.body43_crit_edge, %for.body43.lr.ph
  %i.1129 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc61, %for.inc60.for.body43_crit_edge ]
  %eqcr_pi.1128 = phi i32 [ %26, %for.body43.lr.ph ], [ %inc53, %for.inc60.for.body43_crit_edge ]
  %27 = ptrtoint ptr %addr_cena44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %addr_cena44, align 4
  %and45 = and i32 %eqcr_pi.1128, %shr
  %shl46 = shl i32 %and45, 6
  %add.ptr48 = getelementptr i8, ptr %28, i32 %shl46
  %arrayidx49 = getelementptr %struct.qbman_eq_desc, ptr %d, i32 %i.1129
  %29 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx49, align 4
  %31 = ptrtoint ptr %pi_vb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pi_vb, align 4
  %or = or i32 %32, %30
  %33 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or, ptr %add.ptr48, align 4
  %inc53 = add i32 %eqcr_pi.1128, 1
  %and54 = and i32 %inc53, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then56, label %for.body43.for.inc60_crit_edge

for.body43.for.inc60_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc60

if.then56:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %pi_vb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pi_vb, align 4
  %xor = xor i32 %35, 128
  store i32 %xor, ptr %pi_vb, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %if.then56, %for.body43.for.inc60_crit_edge
  %inc61 = add nuw nsw i32 %i.1129, 1
  %exitcond130.not = icmp eq i32 %inc61, %17
  br i1 %exitcond130.not, label %for.inc60.for.end62_crit_edge, label %for.inc60.for.body43_crit_edge

for.inc60.for.body43_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body43

for.inc60.for.end62_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end62

for.end62:                                        ; preds = %for.inc60.for.end62_crit_edge, %for.end.for.end62_crit_edge, %for.end.thread
  %eqcr_pi.1.lcssa = phi i32 [ %26, %for.end.for.end62_crit_edge ], [ %20, %for.end.thread ], [ %inc53, %for.inc60.for.end62_crit_edge ]
  %and63 = and i32 %eqcr_pi.1.lcssa, %1
  %36 = ptrtoint ptr %eqcr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and63, ptr %eqcr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  %37 = ptrtoint ptr %eqcr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %eqcr, align 4
  %pi_vb70 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %pi_vb70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pi_vb70, align 4
  %or68 = or i32 %38, %40
  %or71 = or i32 %or68, 256
  %41 = tail call i32 @llvm.bswap.i32(i32 %or71) #14
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %42 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %41) #14, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %for.end62, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %for.end62 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qbman_swp_pull_mem_back(ptr noundef %s, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vdq = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vdq, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %vdq, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vdq, ptr %vdq, i32 1, ptr elementtype(i32) %vdq) #14, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vdq, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %vdq, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vdq, ptr %vdq, i32 1, ptr elementtype(i32) %vdq) #14, !srcloc !100
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rsp_addr_virt = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %rsp_addr_virt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rsp_addr_virt, align 8
  %conv = trunc i64 %3 to i32
  %4 = inttoptr i32 %conv to ptr
  %storage = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %storage to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %storage, align 4
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 4
  %qman_version = getelementptr inbounds %struct.qbman_swp_desc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %qman_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qman_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %9)
  %cmp = icmp ult i32 %9, 83886080
  %addr_cena.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %10 = ptrtoint ptr %addr_cena.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr_cena.i, align 4
  %. = select i1 %cmp, i32 1920, i32 6016
  %add.ptr.i40 = getelementptr i8, ptr %11, i32 %.
  %numf = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 1
  %12 = ptrtoint ptr %numf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %numf, align 1
  %numf9 = getelementptr inbounds %struct.qbman_pull_desc, ptr %add.ptr.i40, i32 0, i32 1
  %14 = ptrtoint ptr %numf9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %numf9, align 1
  %tok = getelementptr inbounds %struct.qbman_pull_desc, ptr %add.ptr.i40, i32 0, i32 2
  %15 = ptrtoint ptr %tok to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %tok, align 2
  %dq_src = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 4
  %16 = ptrtoint ptr %dq_src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dq_src, align 4
  %dq_src10 = getelementptr inbounds %struct.qbman_pull_desc, ptr %add.ptr.i40, i32 0, i32 4
  %18 = ptrtoint ptr %dq_src10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dq_src10, align 4
  %rsp_addr = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 5
  %19 = ptrtoint ptr %rsp_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rsp_addr, align 8
  %rsp_addr11 = getelementptr inbounds %struct.qbman_pull_desc, ptr %add.ptr.i40, i32 0, i32 5
  %21 = ptrtoint ptr %rsp_addr11 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %rsp_addr11, align 8
  %22 = ptrtoint ptr %rsp_addr_virt to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rsp_addr_virt, align 8
  %rsp_addr_virt13 = getelementptr inbounds %struct.qbman_pull_desc, ptr %add.ptr.i40, i32 0, i32 6
  %24 = ptrtoint ptr %rsp_addr_virt13 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %rsp_addr_virt13, align 8
  %25 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %d, align 8
  %valid_bit = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %valid_bit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %valid_bit, align 4
  %29 = trunc i32 %28 to i8
  %conv16 = or i8 %26, %29
  %30 = ptrtoint ptr %add.ptr.i40 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv16, ptr %add.ptr.i40, align 8
  %31 = load i32, ptr %valid_bit, align 4
  %xor = xor i32 %31, 128
  store i32 %xor, ptr %valid_bit, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !109
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %32 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %33, i32 2368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 65536) #14, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qbman_swp_dqrr_next_mem_back(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dqrr = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 7
  %reset_bug = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %reset_bug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reset_bug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then, !prof !102

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then:                                          ; preds = %entry
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !94
  %5 = lshr i32 %4, 24
  %conv = and i32 %5, 15
  %6 = ptrtoint ptr %dqrr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dqrr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %7)
  %cmp = icmp eq i32 %conv, %7
  br i1 %cmp, label %if.then.cleanup84_crit_edge, label %if.end

if.then.cleanup84_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup84

if.end:                                           ; preds = %if.then
  %dqrr_size = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %dqrr_size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dqrr_size, align 4
  %conv10 = zext i8 %9 to i32
  %sub = add nsw i32 %conv10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp11 = icmp eq i32 %7, %sub
  br i1 %cmp11, label %do.body, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qbman_swp_dqrr_next_mem_back.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qbman_swp_dqrr_next_mem_back, %if.then22)) #14
          to label %do.end [label %if.then22], !srcloc !103

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %dqrr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dqrr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qbman_swp_dqrr_next_mem_back.__UNIQUE_ID_ddebug218, ptr noundef nonnull @.str.6, i32 noundef %11, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  %12 = ptrtoint ptr %reset_bug to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %reset_bug, align 4
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end.if.end29_crit_edge
  %13 = ptrtoint ptr %dqrr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dqrr, align 4
  %shl = shl i32 %14, 6
  %add = add i32 %shl, 512
  %addr_cena.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %15 = ptrtoint ptr %addr_cena.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr_cena.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i115) #14, !srcloc !104
  br label %if.end33

if.end33:                                         ; preds = %if.end29, %entry.if.end33_crit_edge
  %17 = ptrtoint ptr %dqrr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dqrr, align 4
  %shl36 = shl i32 %18, 6
  %add37 = add i32 %shl36, 2048
  %addr_cena.i116 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %19 = ptrtoint ptr %addr_cena.i116 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr_cena.i116, align 4
  %add.ptr.i117 = getelementptr i8, ptr %20, i32 %add37
  %21 = ptrtoint ptr %add.ptr.i117 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i117, align 8
  %conv40 = zext i8 %22 to i32
  %and41 = and i32 %conv40, 128
  %valid_bit = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %valid_bit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %valid_bit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and41, i32 %24)
  %cmp43.not = icmp eq i32 %and41, %24
  br i1 %cmp43.not, label %if.end51, label %if.then45

if.then45:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %add49 = add i32 %shl36, 512
  %add.ptr.i119 = getelementptr i8, ptr %20, i32 %add49
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i119) #14, !srcloc !104
  br label %cleanup84

if.end51:                                         ; preds = %if.end33
  %inc = add i32 %18, 1
  %dqrr_size55 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %dqrr_size55 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dqrr_size55, align 4
  %conv56 = zext i8 %26 to i32
  %sub57 = add nsw i32 %conv56, -1
  %and60 = and i32 %sub57, %inc
  %27 = ptrtoint ptr %dqrr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and60, ptr %dqrr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool63.not = icmp eq i32 %and60, 0
  br i1 %tobool63.not, label %if.then64, label %if.end51.if.end67_crit_edge

if.end51.if.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then64:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %xor = xor i32 %and41, 128
  %28 = ptrtoint ptr %valid_bit to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %xor, ptr %valid_bit, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end51.if.end67_crit_edge
  %stat = getelementptr inbounds %struct.dq, ptr %add.ptr.i117, i32 0, i32 1
  %29 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %stat, align 1
  %conv68 = zext i8 %30 to i32
  %and69 = and i32 %conv40, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and69)
  %cmp70 = icmp ne i32 %and69, 96
  %and72 = and i32 %conv68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %or.cond = select i1 %cmp70, i1 true, i1 %tobool73.not
  %and75 = and i32 %conv68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %or.cond114 = select i1 %or.cond, i1 true, i1 %tobool76.not
  br i1 %or.cond114, label %if.end67.if.end78_crit_edge, label %if.then77

if.end67.if.end78_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then77:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %vdq = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vdq, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %vdq, i32 1, i32 3, i32 1) #14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vdq, ptr %vdq, i32 1, ptr elementtype(i32) %vdq) #14, !srcloc !100
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end67.if.end78_crit_edge
  %32 = ptrtoint ptr %dqrr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dqrr, align 4
  %shl81 = shl i32 %33, 6
  %add82 = add i32 %shl81, 512
  %34 = ptrtoint ptr %addr_cena.i116 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr_cena.i116, align 4
  %add.ptr.i121 = getelementptr i8, ptr %35, i32 %add82
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i121) #14, !srcloc !104
  br label %cleanup84

cleanup84:                                        ; preds = %if.end78, %if.then45, %if.then.cleanup84_crit_edge
  %retval.1 = phi ptr [ null, %if.then45 ], [ %add.ptr.i117, %if.end78 ], [ null, %if.then.cleanup84_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qbman_swp_release_mem_back(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %buffers, i32 noundef %num_buffers) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %num_buffers, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %0)
  %1 = icmp ult i32 %0, -7
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 3264
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !94
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #14
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %and4 = and i32 %5, 7
  %shl = shl nuw nsw i32 %and4, 6
  %add = or i32 %shl, 5120
  %addr_cena.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %addr_cena.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_cena.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %7, i32 %add
  %8 = ptrtoint ptr %buffers to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %buffers, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %arrayidx7 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i31, i32 0, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_buffers)
  %exitcond.not = icmp eq i32 %num_buffers, 1
  br i1 %exitcond.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr i64, ptr %buffers, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.1, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %arrayidx7.1 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i31, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx7.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_buffers)
  %exitcond.not.1 = icmp eq i32 %num_buffers, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr i64, ptr %buffers, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.2, align 8
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  %arrayidx7.2 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i31, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx7.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num_buffers)
  %exitcond.not.2 = icmp eq i32 %num_buffers, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %arrayidx.3 = getelementptr i64, ptr %buffers, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.3, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %arrayidx7.3 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i31, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx7.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %num_buffers)
  %exitcond.not.3 = icmp eq i32 %num_buffers, 4
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %arrayidx.4 = getelementptr i64, ptr %buffers, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.4, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %arrayidx7.4 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i31, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx7.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %num_buffers)
  %exitcond.not.4 = icmp eq i32 %num_buffers, 5
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %arrayidx.5 = getelementptr i64, ptr %buffers, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.5, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %arrayidx7.5 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i31, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx7.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %num_buffers)
  %exitcond.not.5 = icmp eq i32 %num_buffers, 6
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.6 = getelementptr i64, ptr %buffers, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.6, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %arrayidx7.6 = getelementptr %struct.qbman_release_desc, ptr %add.ptr.i31, i32 0, i32 4, i32 6
  %35 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx7.6, align 8
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %bpid = getelementptr inbounds %struct.qbman_release_desc, ptr %d, i32 0, i32 2
  %36 = ptrtoint ptr %bpid to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bpid, align 2
  %bpid8 = getelementptr inbounds %struct.qbman_release_desc, ptr %add.ptr.i31, i32 0, i32 2
  %38 = ptrtoint ptr %bpid8 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %bpid8, align 2
  %39 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %d, align 8
  %and9 = and i32 %5, 128
  %or = or i32 %and9, %num_buffers
  %41 = trunc i32 %or to i8
  %conv11 = or i8 %40, %41
  %42 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv11, ptr %add.ptr.i31, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  %mul = shl nuw nsw i32 %and4, 2
  %add14 = or i32 %mul, 2496
  %43 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %44, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 65536) #14, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qbman_swp_set_irq_coalescing(ptr nocapture noundef %p, i32 noundef %irq_threshold, i32 noundef %irq_holdoff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %irq_holdoff, 1000
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %qman_256_cycles_per_ns = getelementptr inbounds %struct.qbman_swp_desc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %qman_256_cycles_per_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qman_256_cycles_per_ns, align 4
  %div = udiv i32 %mul, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div)
  %cmp = icmp ugt i32 %div, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mul3 = shl i32 %3, 12
  %div4 = udiv i32 %mul3, 1000
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %div4) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %dqrr_size = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %dqrr_size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dqrr_size, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %irq_threshold)
  %cmp5.not = icmp ugt i32 %conv, %irq_threshold
  br i1 %cmp5.not, label %if.end16, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add nsw i32 %conv, -1
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %sub) #18
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %irq_threshold17 = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 10
  %6 = ptrtoint ptr %irq_threshold17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %irq_threshold, ptr %irq_threshold17, align 4
  %irq_holdoff18 = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 11
  %7 = ptrtoint ptr %irq_holdoff18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %irq_holdoff, ptr %irq_holdoff18, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %irq_threshold) #14
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 2
  %9 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 2688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #14, !srcloc !106
  %11 = tail call i32 @llvm.bswap.i32(i32 %div) #14
  %12 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %13, i32 3904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %11) #14, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end10, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %do.end10 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qbman_swp_finish(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %p) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qbman_swp_interrupt_read_status(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3584
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !94
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qbman_swp_interrupt_clear_status(ptr nocapture noundef readonly %p, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %mask) #14
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #14, !srcloc !106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qbman_swp_interrupt_get_trigger(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3648
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !94
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qbman_swp_interrupt_set_trigger(ptr nocapture noundef readonly %p, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %mask) #14
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #14, !srcloc !106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qbman_swp_interrupt_get_inhibit(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3776
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !94
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qbman_swp_interrupt_set_inhibit(ptr nocapture noundef readonly %p, i32 noundef %inhibit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inhibit)
  %tobool.not = icmp ne i32 %inhibit, 0
  %cond = sext i1 %tobool.not to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %cond) #14
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #14, !srcloc !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qbman_swp_mc_start(ptr nocapture noundef readonly %p) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %qman_version = getelementptr inbounds %struct.qbman_swp_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %qman_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qman_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %3)
  %cmp = icmp ult i32 %3, 83886080
  %addr_cena.i = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %addr_cena.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr_cena.i, align 4
  %. = select i1 %cmp, i32 1536, i32 5632
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 %.
  ret ptr %add.ptr.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qbman_swp_mc_submit(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %cmd, i8 noundef zeroext %cmd_verb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %qman_version = getelementptr inbounds %struct.qbman_swp_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %qman_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qman_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %3)
  %cmp = icmp ult i32 %3, 83886080
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  %mc = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mc, align 4
  %6 = trunc i32 %5 to i8
  %conv1 = or i8 %6, %cmd_verb
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %cmd, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mc3 = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 3
  %8 = ptrtoint ptr %mc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mc3, align 4
  %10 = trunc i32 %9 to i8
  %conv6 = or i8 %10, %cmd_verb
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %cmd, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !112
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 2
  %12 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #14, !srcloc !106
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qbman_swp_mc_result(ptr nocapture noundef %p) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %qman_version = getelementptr inbounds %struct.qbman_swp_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %qman_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qman_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %3)
  %cmp = icmp ult i32 %3, 83886080
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mc, align 4
  %shr = lshr i32 %5, 1
  %add = add nuw i32 %shr, 1792
  %addr_cena.i = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %addr_cena.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_cena.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %and1 = and i32 %9, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %entry
  %addr_cena.i32 = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 1
  %10 = ptrtoint ptr %addr_cena.i32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr_cena.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %11, i32 5760
  %mr = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 4
  %12 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mr, align 4
  %14 = ptrtoint ptr %add.ptr.i33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i33, align 4
  %and8 = and i32 %15, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %and8)
  %cmp9.not = icmp ne i32 %13, %and8
  %and13 = and i32 %15, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = or i1 %cmp9.not, %tobool14.not
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %5, %if.then.cleanup.sink.split_crit_edge ], [ %13, %if.else.cleanup.sink.split_crit_edge ]
  %mc.sink = phi ptr [ %mc, %if.then.cleanup.sink.split_crit_edge ], [ %mr, %if.else.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ %add.ptr.i, %if.then.cleanup.sink.split_crit_edge ], [ %add.ptr.i33, %if.else.cleanup.sink.split_crit_edge ]
  %xor = xor i32 %.sink, 128
  %16 = ptrtoint ptr %mc.sink to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %xor, ptr %mc.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qbman_eq_desc_clear(ptr nocapture noundef writeonly %d) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %d, i32 0, i32 32)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qbman_eq_desc_set_no_orp(ptr nocapture noundef %d, i32 noundef %respond_success) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d, align 8
  %2 = and i8 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %respond_success)
  %tobool.not = icmp eq i32 %respond_success, 0
  %storemerge.v = select i1 %tobool.not, i8 2, i8 1
  %storemerge = or i8 %2, %storemerge.v
  %3 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %storemerge, ptr %d, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qbman_eq_desc_set_fq(ptr nocapture noundef %d, i32 noundef %fqid) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d, align 8
  %2 = and i8 %1, -17
  store i8 %2, ptr %d, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %fqid)
  %tgtid = getelementptr inbounds %struct.qbman_eq_desc, ptr %d, i32 0, i32 5
  %4 = ptrtoint ptr %tgtid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tgtid, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qbman_eq_desc_set_qd(ptr nocapture noundef %d, i32 noundef %qdid, i32 noundef %qd_bin, i32 noundef %qd_prio) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d, align 8
  %2 = or i8 %1, 16
  store i8 %2, ptr %d, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %qdid)
  %tgtid = getelementptr inbounds %struct.qbman_eq_desc, ptr %d, i32 0, i32 5
  %4 = ptrtoint ptr %tgtid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tgtid, align 8
  %conv2 = trunc i32 %qd_bin to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %qdbin = getelementptr inbounds %struct.qbman_eq_desc, ptr %d, i32 0, i32 7
  %6 = ptrtoint ptr %qdbin to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %qdbin, align 8
  %conv3 = trunc i32 %qd_prio to i8
  %qpri = getelementptr inbounds %struct.qbman_eq_desc, ptr %d, i32 0, i32 8
  %7 = ptrtoint ptr %qpri to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %qpri, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qbman_swp_push_get(ptr nocapture noundef readonly %s, i8 noundef zeroext %channel_idx, ptr nocapture noundef writeonly %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sdq = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 5
  %0 = ptrtoint ptr %sdq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %channel_idx)
  %cmp = icmp ugt i8 %channel_idx, 15
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !113

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 946, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv1 = zext i8 %channel_idx to i32
  %conv21 = and i32 %1, 65535
  %shl = shl nuw i32 1, %conv1
  %or = or i32 %conv21, %shl
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %enabled, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qbman_swp_push_set(ptr nocapture noundef %s, i8 noundef zeroext %channel_idx, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %channel_idx to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %channel_idx)
  %cmp = icmp ugt i8 %channel_idx, 15
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !113

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 960, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool20.not = icmp eq i32 %enable, 0
  %shl24 = shl nuw i32 1, %conv
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sdq = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 5
  %0 = ptrtoint ptr %sdq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdq, align 4
  %or = or i32 %1, %shl24
  store i32 %or, ptr %sdq, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %neg = xor i32 %shl24, -1
  %sdq25 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 5
  %2 = ptrtoint ptr %sdq25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdq25, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %sdq25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then21
  %sdq27 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 5
  %4 = ptrtoint ptr %sdq27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sdq27, align 4
  %conv30 = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv30)
  %cmp31.not = icmp eq i32 %conv30, 0
  br i1 %cmp31.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %7 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #14, !srcloc !106
  br label %if.end36

if.else35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %addr_cinh.i45 = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %9 = ptrtoint ptr %addr_cinh.i45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr_cinh.i45, align 4
  %add.ptr.i46 = getelementptr i8, ptr %10, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #14, !srcloc !106
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then33
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qbman_pull_desc_clear(ptr nocapture noundef writeonly %d) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %d, i32 0, i32 64)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qbman_pull_desc_set_storage(ptr nocapture noundef %d, ptr noundef %storage, i32 noundef %storage_phys, i32 noundef %stash) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %storage to i32
  %conv = zext i32 %0 to i64
  %rsp_addr_virt = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 6
  %1 = ptrtoint ptr %rsp_addr_virt to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %rsp_addr_virt, align 8
  %tobool.not = icmp eq ptr %storage, null
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %d, align 8
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = and i8 %3, -17
  %5 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %d, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stash)
  %tobool6.not = icmp eq i32 %stash, 0
  %6 = and i8 %3, -49
  %7 = or i8 %6, 16
  %8 = or i8 %3, 48
  %storemerge = select i1 %tobool6.not, i8 %7, i8 %8
  %9 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge, ptr %d, align 8
  %conv17 = zext i32 %storage_phys to i64
  %10 = tail call i64 @llvm.bswap.i64(i64 %conv17)
  %rsp_addr = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 5
  %11 = ptrtoint ptr %rsp_addr to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %rsp_addr, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qbman_pull_desc_set_numframes(ptr nocapture noundef writeonly %d, i8 noundef zeroext %numframes) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i8 %numframes, -1
  %numf = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %numf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %sub, ptr %numf, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qbman_pull_desc_set_fq(ptr nocapture noundef %d, i32 noundef %fqid) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d, align 8
  %2 = or i8 %1, 9
  store i8 %2, ptr %d, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %fqid)
  %dq_src = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %dq_src to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dq_src, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qbman_pull_desc_set_wq(ptr nocapture noundef %d, i32 noundef %wqid, i32 noundef %dct) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d, align 8
  %2 = trunc i32 %dct to i8
  %conv1 = or i8 %1, %2
  %3 = or i8 %conv1, 4
  store i8 %3, ptr %d, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %wqid)
  %dq_src = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 4
  %5 = ptrtoint ptr %dq_src to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dq_src, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qbman_pull_desc_set_channel(ptr nocapture noundef %d, i32 noundef %chid, i32 noundef %dct) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d, align 8
  %2 = trunc i32 %dct to i8
  %conv1 = or i8 %1, %2
  store i8 %conv1, ptr %d, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %chid)
  %dq_src = getelementptr inbounds %struct.qbman_pull_desc, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %dq_src to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dq_src, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qbman_swp_dqrr_consume(ptr nocapture noundef readonly %s, ptr noundef %dq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dq to i32
  %1 = shl i32 %0, 18
  %2 = and i32 %1, 117440512
  %addr_cinh.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %3 = ptrtoint ptr %addr_cinh.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr_cinh.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 2752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #14, !srcloc !106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qbman_result_has_new_result(ptr noundef %s, ptr noundef %dq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tok = getelementptr inbounds %struct.dq, ptr %dq, i32 0, i32 5
  %0 = ptrtoint ptr %tok to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tok, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %tok to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %tok, align 1
  %storage = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %storage to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %storage, align 4
  %cmp3 = icmp eq ptr %4, %dq
  br i1 %cmp3, label %if.then5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %vdq = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 6
  %5 = ptrtoint ptr %storage to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %storage, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vdq, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %vdq, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vdq, ptr %vdq, i32 1, ptr elementtype(i32) %vdq) #14, !srcloc !100
  br label %return

return:                                           ; preds = %if.then5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.then5 ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qbman_release_desc_clear(ptr nocapture noundef writeonly %d) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %d, i32 0, i32 64)
  %1 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %d, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qbman_release_desc_set_bpid(ptr nocapture noundef writeonly %d, i16 noundef zeroext %bpid) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.bswap.i16(i16 %bpid)
  %bpid1 = getelementptr inbounds %struct.qbman_release_desc, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %bpid1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %bpid1, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qbman_release_desc_set_rcdi(ptr nocapture noundef %d, i32 noundef %enable) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d, align 8
  %2 = and i8 %1, -65
  %masksel = select i1 %tobool.not, i8 0, i8 64
  %storemerge = or i8 %2, %masksel
  store i8 %storemerge, ptr %d, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qbman_swp_acquire(ptr nocapture noundef %s, i16 noundef zeroext %bpid, ptr nocapture noundef writeonly %buffers, i32 noundef %num_buffers) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %num_buffers, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %0)
  %1 = icmp ult i32 %0, -7
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s, align 4
  %qman_version.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %qman_version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qman_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %5)
  %cmp.i = icmp ult i32 %5, 83886080
  %addr_cena.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_cena.i.i, align 4
  %..i = select i1 %cmp.i, i32 1536, i32 5632
  %add.ptr.i5.i = getelementptr i8, ptr %7, i32 %..i
  %tobool1.not = icmp eq ptr %add.ptr.i5.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = tail call i16 @llvm.bswap.i16(i16 %bpid)
  %bpid4 = getelementptr inbounds %struct.qbman_acquire_desc, ptr %add.ptr.i5.i, i32 0, i32 2
  %9 = ptrtoint ptr %bpid4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %bpid4, align 2
  %conv = trunc i32 %num_buffers to i8
  %num = getelementptr inbounds %struct.qbman_acquire_desc, ptr %add.ptr.i5.i, i32 0, i32 3
  %10 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %num, align 2
  %11 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s, align 4
  %qman_version.i.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %qman_version.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qman_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %14)
  %cmp.i.i = icmp ult i32 %14, 83886080
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  %mc.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  %15 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mc.i.i, align 4
  %17 = trunc i32 %16 to i8
  %conv1.i.i = or i8 %17, 48
  %18 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv1.i.i, ptr %add.ptr.i5.i, align 1
  br label %qbman_swp_mc_submit.exit.i

if.else.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %mc3.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  %19 = ptrtoint ptr %mc3.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mc3.i.i, align 4
  %21 = trunc i32 %20 to i8
  %conv6.i.i = or i8 %21, 48
  %22 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv6.i.i, ptr %add.ptr.i5.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !112
  %addr_cinh.i.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %23 = ptrtoint ptr %addr_cinh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr_cinh.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 65536) #14, !srcloc !106
  br label %qbman_swp_mc_submit.exit.i

qbman_swp_mc_submit.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %25 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s, align 4
  %qman_version.i31.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %26, i32 0, i32 2
  %mr.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 4
  %mc.i33.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %qbman_swp_mc_submit.exit.i
  %loopvar.0.i = phi i32 [ 2000, %qbman_swp_mc_submit.exit.i ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %27 = ptrtoint ptr %qman_version.i31.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qman_version.i31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %28)
  %cmp.i32.i = icmp ult i32 %28, 83886080
  br i1 %cmp.i32.i, label %if.then.i35.i, label %if.else.i36.i

if.then.i35.i:                                    ; preds = %do.body.i
  %29 = ptrtoint ptr %mc.i33.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mc.i33.i, align 4
  %shr.i.i = lshr i32 %30, 1
  %add.i.i = add nuw i32 %shr.i.i, 1792
  %31 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr_cena.i.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %32, i32 %add.i.i
  %33 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i34.i, align 4
  %and1.i.i = and i32 %34, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i35.i.land.rhs.i_crit_edge, label %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge

if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge: ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qbman_swp_mc_result.exit.i

if.then.i35.i.land.rhs.i_crit_edge:               ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.else.i36.i:                                    ; preds = %do.body.i
  %35 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %addr_cena.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %36, i32 5760
  %37 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mr.i.i, align 4
  %39 = ptrtoint ptr %add.ptr.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i33.i.i, align 4
  %and8.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %and8.i.i)
  %cmp9.not.i.i = icmp ne i32 %38, %and8.i.i
  %and13.i.i = and i32 %40, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  %or.cond.i.i = or i1 %cmp9.not.i.i, %tobool14.not.i.i
  br i1 %or.cond.i.i, label %if.else.i36.i.land.rhs.i_crit_edge, label %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge

if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge: ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qbman_swp_mc_result.exit.i

if.else.i36.i.land.rhs.i_crit_edge:               ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

qbman_swp_mc_result.exit.i:                       ; preds = %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %30, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %38, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %mc.sink.i.i = phi ptr [ %mc.i33.i, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %mr.i.i, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi ptr [ %add.ptr.i.i34.i, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %add.ptr.i33.i.i, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %xor.i.i = xor i32 %.sink.i.i, 128
  %41 = ptrtoint ptr %mc.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %xor.i.i, ptr %mc.sink.i.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.ph.i.i, null
  br i1 %tobool.not.i, label %qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge, label %do.end.i

qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge:  ; preds = %qbman_swp_mc_result.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge, %if.else.i36.i.land.rhs.i_crit_edge, %if.then.i35.i.land.rhs.i_crit_edge
  %dec.i = add nsw i32 %loopvar.0.i, -1
  %tobool1.not.i = icmp eq i32 %loopvar.0.i, 0
  br i1 %tobool1.not.i, label %do.end, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %qbman_swp_mc_result.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loopvar.0.i)
  %tobool2.not.i = icmp eq i32 %loopvar.0.i, 0
  br i1 %tobool2.not.i, label %do.end14.i, label %do.end.i.if.end13_crit_edge, !prof !113

do.end.i.if.end13_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

do.end14.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 550, i32 noundef 9, ptr noundef null) #14
  br label %if.end13

do.end:                                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv11 = zext i16 %bpid to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv11) #18
  br label %cleanup

if.end13:                                         ; preds = %do.end14.i, %do.end.i.if.end13_crit_edge
  %42 = ptrtoint ptr %retval.0.ph.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %retval.0.ph.i.i, align 8
  %44 = and i8 %43, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %44)
  %cmp15.not = icmp eq i8 %44, 48
  br i1 %cmp15.not, label %if.end13.if.end38_crit_edge, label %do.end32, !prof !102

if.end13.if.end38_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

do.end32:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1580, i32 noundef 9, ptr noundef null) #14
  br label %if.end38

if.end38:                                         ; preds = %do.end32, %if.end13.if.end38_crit_edge
  %rslt = getelementptr inbounds %struct.qbman_acquire_rslt, ptr %retval.0.ph.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %rslt to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rslt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %46)
  %cmp47.not = icmp eq i8 %46, -16
  br i1 %cmp47.not, label %if.end64, label %do.end58, !prof !102

do.end58:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %conv46 = zext i8 %46 to i32
  %conv60 = zext i16 %bpid to i32
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv60, i32 noundef %conv46) #18
  br label %cleanup

if.end64:                                         ; preds = %if.end38
  %num66 = getelementptr inbounds %struct.qbman_acquire_rslt, ptr %retval.0.ph.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %num66 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num66, align 4
  %conv67 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv67, i32 %num_buffers)
  %cmp68 = icmp ugt i32 %conv67, %num_buffers
  br i1 %cmp68, label %do.end85, label %if.end64.if.end91_crit_edge, !prof !113

if.end64.if.end91_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

do.end85:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1589, i32 noundef 9, ptr noundef null) #14
  %49 = ptrtoint ptr %num66 to i32
  call void @__asan_load1_noabort(i32 %49)
  %.pr = load i8, ptr %num66, align 4
  br label %if.end91

if.end91:                                         ; preds = %do.end85, %if.end64.if.end91_crit_edge
  %50 = phi i8 [ %.pr, %do.end85 ], [ %48, %if.end64.if.end91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp101134.not = icmp eq i8 %50, 0
  br i1 %cmp101134.not, label %if.end91.cleanup_crit_edge, label %if.end91.for.body_crit_edge

if.end91.for.body_crit_edge:                      ; preds = %if.end91
  br label %for.body

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end91.for.body_crit_edge
  %i.0135 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end91.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qbman_acquire_rslt, ptr %retval.0.ph.i.i, i32 0, i32 5, i32 %i.0135
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx, align 8
  %53 = tail call i64 @llvm.bswap.i64(i64 %52)
  %arrayidx103 = getelementptr i64, ptr %buffers, i32 %i.0135
  %54 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx103, align 8
  %inc = add nuw nsw i32 %i.0135, 1
  %55 = ptrtoint ptr %num66 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num66, align 4
  %conv100 = zext i8 %56 to i32
  %cmp101 = icmp ult i32 %inc, %conv100
  br i1 %cmp101, label %for.body.for.body_crit_edge, label %cleanup.loopexit.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.loopexit.loopexit:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast = zext i8 %56 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.loopexit, %if.end91.cleanup_crit_edge, %do.end58, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end58 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %phi.cast, %cleanup.loopexit.loopexit ], [ 0, %if.end91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qbman_swp_alt_fq_state(ptr nocapture noundef %s, i32 noundef %fqid, i8 noundef zeroext %alt_fq_verb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  %qman_version.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %qman_version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qman_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %3)
  %cmp.i = icmp ult i32 %3, 83886080
  %addr_cena.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr_cena.i.i, align 4
  %..i = select i1 %cmp.i, i32 1536, i32 5632
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 %..i
  %tobool.not = icmp eq ptr %add.ptr.i5.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %fqid, 16777215
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %fqid1 = getelementptr inbounds %struct.qbman_alt_fq_state_desc, ptr %add.ptr.i5.i, i32 0, i32 2
  %7 = ptrtoint ptr %fqid1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fqid1, align 4
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s, align 4
  %qman_version.i.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %qman_version.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qman_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %11)
  %cmp.i.i = icmp ult i32 %11, 83886080
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  %mc.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  %12 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mc.i.i, align 4
  %14 = trunc i32 %13 to i8
  %conv1.i.i = or i8 %14, %alt_fq_verb
  %15 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i.i, ptr %add.ptr.i5.i, align 1
  br label %qbman_swp_mc_submit.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mc3.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  %16 = ptrtoint ptr %mc3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mc3.i.i, align 4
  %18 = trunc i32 %17 to i8
  %conv6.i.i = or i8 %18, %alt_fq_verb
  %19 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv6.i.i, ptr %add.ptr.i5.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !112
  %addr_cinh.i.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %20 = ptrtoint ptr %addr_cinh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr_cinh.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 65536) #14, !srcloc !106
  br label %qbman_swp_mc_submit.exit.i

qbman_swp_mc_submit.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %22 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s, align 4
  %qman_version.i31.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %23, i32 0, i32 2
  %mr.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 4
  %mc.i33.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %qbman_swp_mc_submit.exit.i
  %loopvar.0.i = phi i32 [ 2000, %qbman_swp_mc_submit.exit.i ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %24 = ptrtoint ptr %qman_version.i31.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qman_version.i31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %25)
  %cmp.i32.i = icmp ult i32 %25, 83886080
  br i1 %cmp.i32.i, label %if.then.i35.i, label %if.else.i36.i

if.then.i35.i:                                    ; preds = %do.body.i
  %26 = ptrtoint ptr %mc.i33.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mc.i33.i, align 4
  %shr.i.i = lshr i32 %27, 1
  %add.i.i = add nuw i32 %shr.i.i, 1792
  %28 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr_cena.i.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %29, i32 %add.i.i
  %30 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i34.i, align 4
  %and1.i.i = and i32 %31, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i35.i.land.rhs.i_crit_edge, label %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge

if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge: ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qbman_swp_mc_result.exit.i

if.then.i35.i.land.rhs.i_crit_edge:               ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.else.i36.i:                                    ; preds = %do.body.i
  %32 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr_cena.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %33, i32 5760
  %34 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mr.i.i, align 4
  %36 = ptrtoint ptr %add.ptr.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i33.i.i, align 4
  %and8.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %and8.i.i)
  %cmp9.not.i.i = icmp ne i32 %35, %and8.i.i
  %and13.i.i = and i32 %37, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  %or.cond.i.i = or i1 %cmp9.not.i.i, %tobool14.not.i.i
  br i1 %or.cond.i.i, label %if.else.i36.i.land.rhs.i_crit_edge, label %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge

if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge: ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qbman_swp_mc_result.exit.i

if.else.i36.i.land.rhs.i_crit_edge:               ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

qbman_swp_mc_result.exit.i:                       ; preds = %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %27, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %35, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %mc.sink.i.i = phi ptr [ %mc.i33.i, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %mr.i.i, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi ptr [ %add.ptr.i.i34.i, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %add.ptr.i33.i.i, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %xor.i.i = xor i32 %.sink.i.i, 128
  %38 = ptrtoint ptr %mc.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %xor.i.i, ptr %mc.sink.i.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.ph.i.i, null
  br i1 %tobool.not.i, label %qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge, label %do.end.i

qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge:  ; preds = %qbman_swp_mc_result.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge, %if.else.i36.i.land.rhs.i_crit_edge, %if.then.i35.i.land.rhs.i_crit_edge
  %dec.i = add nsw i32 %loopvar.0.i, -1
  %tobool1.not.i = icmp eq i32 %loopvar.0.i, 0
  br i1 %tobool1.not.i, label %do.end, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %qbman_swp_mc_result.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loopvar.0.i)
  %tobool2.not.i = icmp eq i32 %loopvar.0.i, 0
  br i1 %tobool2.not.i, label %do.end14.i, label %do.end.i.if.end9_crit_edge, !prof !113

do.end.i.if.end9_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

do.end14.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 550, i32 noundef 9, ptr noundef null) #14
  br label %if.end9

do.end:                                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %alt_fq_verb to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv) #18
  br label %cleanup

if.end9:                                          ; preds = %do.end14.i, %do.end.i.if.end9_crit_edge
  %39 = ptrtoint ptr %retval.0.ph.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %retval.0.ph.i.i, align 1
  %41 = and i8 %40, 127
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %alt_fq_verb)
  %cmp.not = icmp eq i8 %41, %alt_fq_verb
  br i1 %cmp.not, label %if.end9.if.end35_crit_edge, label %do.end29, !prof !102

if.end9.if.end35_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end29:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1635, i32 noundef 9, ptr noundef null) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %if.end9.if.end35_crit_edge
  %rslt = getelementptr inbounds %struct.qbman_alt_fq_state_rslt, ptr %retval.0.ph.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %rslt to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rslt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %43)
  %cmp44.not = icmp eq i8 %43, -16
  br i1 %cmp44.not, label %if.end35.cleanup_crit_edge, label %do.end55, !prof !102

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end55:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %conv43 = zext i8 %43 to i32
  %44 = ptrtoint ptr %retval.0.ph.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %retval.0.ph.i.i, align 1
  %conv58 = zext i8 %45 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %fqid, i32 noundef %conv58, i32 noundef %conv43) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end35.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end55 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qbman_swp_CDAN_set(ptr nocapture noundef %s, i16 noundef zeroext %channelid, i8 noundef zeroext %we_mask, i8 noundef zeroext %cdan_en, i64 noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  %qman_version.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %qman_version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qman_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %3)
  %cmp.i = icmp ult i32 %3, 83886080
  %addr_cena.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr_cena.i.i, align 4
  %..i = select i1 %cmp.i, i32 1536, i32 5632
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 %..i
  %tobool.not = icmp eq ptr %add.ptr.i5.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i16 @llvm.bswap.i16(i16 %channelid)
  %ch = getelementptr inbounds %struct.qbman_cdan_ctrl_desc, ptr %add.ptr.i5.i, i32 0, i32 2
  %7 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %ch, align 2
  %we = getelementptr inbounds %struct.qbman_cdan_ctrl_desc, ptr %add.ptr.i5.i, i32 0, i32 3
  %8 = ptrtoint ptr %we to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %we_mask, ptr %we, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cdan_en)
  %tobool1.not = icmp ne i8 %cdan_en, 0
  %spec.select = zext i1 %tobool1.not to i8
  %9 = getelementptr inbounds %struct.qbman_cdan_ctrl_desc, ptr %add.ptr.i5.i, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %9, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %ctx)
  %cdan_ctx = getelementptr inbounds %struct.qbman_cdan_ctrl_desc, ptr %add.ptr.i5.i, i32 0, i32 6
  %12 = ptrtoint ptr %cdan_ctx to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %cdan_ctx, align 8
  %13 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s, align 4
  %qman_version.i.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %qman_version.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qman_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %16)
  %cmp.i.i = icmp ult i32 %16, 83886080
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  %mc.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  %17 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mc.i.i, align 4
  %19 = trunc i32 %18 to i8
  %conv1.i.i = or i8 %19, 70
  %20 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv1.i.i, ptr %add.ptr.i5.i, align 1
  br label %qbman_swp_mc_submit.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mc3.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  %21 = ptrtoint ptr %mc3.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mc3.i.i, align 4
  %23 = trunc i32 %22 to i8
  %conv6.i.i = or i8 %23, 70
  %24 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6.i.i, ptr %add.ptr.i5.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !112
  %addr_cinh.i.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %25 = ptrtoint ptr %addr_cinh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr_cinh.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 65536) #14, !srcloc !106
  br label %qbman_swp_mc_submit.exit.i

qbman_swp_mc_submit.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %27 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s, align 4
  %qman_version.i31.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %28, i32 0, i32 2
  %mr.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 4
  %mc.i33.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %qbman_swp_mc_submit.exit.i
  %loopvar.0.i = phi i32 [ 2000, %qbman_swp_mc_submit.exit.i ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %29 = ptrtoint ptr %qman_version.i31.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qman_version.i31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %30)
  %cmp.i32.i = icmp ult i32 %30, 83886080
  br i1 %cmp.i32.i, label %if.then.i35.i, label %if.else.i36.i

if.then.i35.i:                                    ; preds = %do.body.i
  %31 = ptrtoint ptr %mc.i33.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mc.i33.i, align 4
  %shr.i.i = lshr i32 %32, 1
  %add.i.i = add nuw i32 %shr.i.i, 1792
  %33 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %addr_cena.i.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %34, i32 %add.i.i
  %35 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i34.i, align 4
  %and1.i.i = and i32 %36, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i35.i.land.rhs.i_crit_edge, label %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge

if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge: ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qbman_swp_mc_result.exit.i

if.then.i35.i.land.rhs.i_crit_edge:               ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.else.i36.i:                                    ; preds = %do.body.i
  %37 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addr_cena.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %38, i32 5760
  %39 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mr.i.i, align 4
  %41 = ptrtoint ptr %add.ptr.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i33.i.i, align 4
  %and8.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %and8.i.i)
  %cmp9.not.i.i = icmp ne i32 %40, %and8.i.i
  %and13.i.i = and i32 %42, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  %or.cond.i.i = or i1 %cmp9.not.i.i, %tobool14.not.i.i
  br i1 %or.cond.i.i, label %if.else.i36.i.land.rhs.i_crit_edge, label %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge

if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge: ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qbman_swp_mc_result.exit.i

if.else.i36.i.land.rhs.i_crit_edge:               ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

qbman_swp_mc_result.exit.i:                       ; preds = %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %32, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %40, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %mc.sink.i.i = phi ptr [ %mc.i33.i, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %mr.i.i, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi ptr [ %add.ptr.i.i34.i, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %add.ptr.i33.i.i, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %xor.i.i = xor i32 %.sink.i.i, 128
  %43 = ptrtoint ptr %mc.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %xor.i.i, ptr %mc.sink.i.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.ph.i.i, null
  br i1 %tobool.not.i, label %qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge, label %do.end.i

qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge:  ; preds = %qbman_swp_mc_result.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge, %if.else.i36.i.land.rhs.i_crit_edge, %if.then.i35.i.land.rhs.i_crit_edge
  %dec.i = add nsw i32 %loopvar.0.i, -1
  %tobool1.not.i = icmp eq i32 %loopvar.0.i, 0
  br i1 %tobool1.not.i, label %do.end, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %qbman_swp_mc_result.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loopvar.0.i)
  %tobool2.not.i = icmp eq i32 %loopvar.0.i, 0
  br i1 %tobool2.not.i, label %do.end14.i, label %do.end.i.if.end12_crit_edge, !prof !113

do.end.i.if.end12_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

do.end14.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 550, i32 noundef 9, ptr noundef null) #14
  br label %if.end12

do.end:                                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #18
  br label %cleanup

if.end12:                                         ; preds = %do.end14.i, %do.end.i.if.end12_crit_edge
  %44 = ptrtoint ptr %retval.0.ph.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %retval.0.ph.i.i, align 2
  %46 = and i8 %45, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %46)
  %cmp.not = icmp eq i8 %46, 70
  br i1 %cmp.not, label %if.end12.if.end35_crit_edge, label %do.end29, !prof !102

if.end12.if.end35_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end29:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1694, i32 noundef 9, ptr noundef null) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %if.end12.if.end35_crit_edge
  %rslt = getelementptr inbounds %struct.qbman_cdan_ctrl_rslt, ptr %retval.0.ph.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %rslt to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rslt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %48)
  %cmp44.not = icmp eq i8 %48, -16
  br i1 %cmp44.not, label %if.end35.cleanup_crit_edge, label %do.end55, !prof !102

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end55:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %conv43 = zext i8 %48 to i32
  %conv57 = zext i16 %channelid to i32
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv57, i32 noundef %conv43) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end35.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end55 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qbman_fq_query_state(ptr nocapture noundef %s, i32 noundef %fqid, ptr nocapture noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  %qman_version.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %qman_version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qman_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %3)
  %cmp.i = icmp ult i32 %3, 83886080
  %addr_cena.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr_cena.i.i, align 4
  %..i = select i1 %cmp.i, i32 1536, i32 5632
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 %..i
  %tobool.not = icmp eq ptr %add.ptr.i5.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %fqid, 16777215
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %fqid1 = getelementptr inbounds %struct.qbman_fq_query_desc, ptr %add.ptr.i5.i, i32 0, i32 2
  %7 = ptrtoint ptr %fqid1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fqid1, align 4
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s, align 4
  %qman_version.i.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %qman_version.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qman_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %11)
  %cmp.i.i = icmp ult i32 %11, 83886080
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  %mc.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  %12 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mc.i.i, align 4
  %14 = trunc i32 %13 to i8
  %conv1.i.i = or i8 %14, 69
  %15 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i.i, ptr %add.ptr.i5.i, align 1
  br label %qbman_swp_mc_submit.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mc3.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  %16 = ptrtoint ptr %mc3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mc3.i.i, align 4
  %18 = trunc i32 %17 to i8
  %conv6.i.i = or i8 %18, 69
  %19 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv6.i.i, ptr %add.ptr.i5.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !112
  %addr_cinh.i.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %20 = ptrtoint ptr %addr_cinh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr_cinh.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 65536) #14, !srcloc !106
  br label %qbman_swp_mc_submit.exit.i

qbman_swp_mc_submit.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %22 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s, align 4
  %qman_version.i31.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %23, i32 0, i32 2
  %mr.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 4
  %mc.i33.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %qbman_swp_mc_submit.exit.i
  %loopvar.0.i = phi i32 [ 2000, %qbman_swp_mc_submit.exit.i ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %24 = ptrtoint ptr %qman_version.i31.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qman_version.i31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %25)
  %cmp.i32.i = icmp ult i32 %25, 83886080
  br i1 %cmp.i32.i, label %if.then.i35.i, label %if.else.i36.i

if.then.i35.i:                                    ; preds = %do.body.i
  %26 = ptrtoint ptr %mc.i33.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mc.i33.i, align 4
  %shr.i.i = lshr i32 %27, 1
  %add.i.i = add nuw i32 %shr.i.i, 1792
  %28 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr_cena.i.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %29, i32 %add.i.i
  %30 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i34.i, align 4
  %and1.i.i = and i32 %31, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i35.i.land.rhs.i_crit_edge, label %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge

if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge: ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qbman_swp_mc_result.exit.i

if.then.i35.i.land.rhs.i_crit_edge:               ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.else.i36.i:                                    ; preds = %do.body.i
  %32 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr_cena.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %33, i32 5760
  %34 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mr.i.i, align 4
  %36 = ptrtoint ptr %add.ptr.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i33.i.i, align 4
  %and8.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %and8.i.i)
  %cmp9.not.i.i = icmp ne i32 %35, %and8.i.i
  %and13.i.i = and i32 %37, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  %or.cond.i.i = or i1 %cmp9.not.i.i, %tobool14.not.i.i
  br i1 %or.cond.i.i, label %if.else.i36.i.land.rhs.i_crit_edge, label %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge

if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge: ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qbman_swp_mc_result.exit.i

if.else.i36.i.land.rhs.i_crit_edge:               ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

qbman_swp_mc_result.exit.i:                       ; preds = %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %27, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %35, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %mc.sink.i.i = phi ptr [ %mc.i33.i, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %mr.i.i, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi ptr [ %add.ptr.i.i34.i, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %add.ptr.i33.i.i, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %xor.i.i = xor i32 %.sink.i.i, 128
  %38 = ptrtoint ptr %mc.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %xor.i.i, ptr %mc.sink.i.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.ph.i.i, null
  br i1 %tobool.not.i, label %qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge, label %do.end.i

qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge:  ; preds = %qbman_swp_mc_result.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge, %if.else.i36.i.land.rhs.i_crit_edge, %if.then.i35.i.land.rhs.i_crit_edge
  %dec.i = add nsw i32 %loopvar.0.i, -1
  %tobool1.not.i = icmp eq i32 %loopvar.0.i, 0
  br i1 %tobool1.not.i, label %do.end, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %qbman_swp_mc_result.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loopvar.0.i)
  %tobool2.not.i = icmp eq i32 %loopvar.0.i, 0
  br i1 %tobool2.not.i, label %do.end14.i, label %do.end.i.if.end6_crit_edge, !prof !113

do.end.i.if.end6_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

do.end14.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 550, i32 noundef 9, ptr noundef null) #14
  br label %if.end6

do.end:                                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %fqid) #18
  br label %cleanup

if.end6:                                          ; preds = %do.end14.i, %do.end.i.if.end6_crit_edge
  %39 = call ptr @memcpy(ptr %r, ptr %retval.0.ph.i.i, i32 64)
  %40 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %r, align 4
  %42 = and i8 %41, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %42)
  %cmp.not = icmp eq i8 %42, 69
  br i1 %cmp.not, label %if.end6.if.end26_crit_edge, label %do.end20, !prof !102

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end20:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1737, i32 noundef 9, ptr noundef null) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %if.end6.if.end26_crit_edge
  %rslt = getelementptr inbounds %struct.qbman_fq_query_np_rslt, ptr %r, i32 0, i32 1
  %43 = ptrtoint ptr %rslt to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rslt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %44)
  %cmp35.not = icmp eq i8 %44, -16
  br i1 %cmp35.not, label %if.end26.cleanup_crit_edge, label %do.end40

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end40:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %conv34 = zext i8 %44 to i32
  %45 = ptrtoint ptr %fqid1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fqid1, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %46, i32 noundef %conv34) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end26.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end40 ], [ -5, %do.end ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qbman_fq_state_frame_count(ptr nocapture noundef readonly %r) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frm_cnt = getelementptr inbounds %struct.qbman_fq_query_np_rslt, ptr %r, i32 0, i32 12
  %0 = ptrtoint ptr %frm_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frm_cnt, align 4
  %2 = and i32 %1, -256
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qbman_fq_state_byte_count(ptr nocapture noundef readonly %r) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_cnt = getelementptr inbounds %struct.qbman_fq_query_np_rslt, ptr %r, i32 0, i32 13
  %0 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %byte_cnt, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qbman_bp_query(ptr nocapture noundef %s, i16 noundef zeroext %bpid, ptr nocapture noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  %qman_version.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %qman_version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qman_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %3)
  %cmp.i = icmp ult i32 %3, 83886080
  %addr_cena.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr_cena.i.i, align 4
  %..i = select i1 %cmp.i, i32 1536, i32 5632
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 %..i
  %tobool.not = icmp eq ptr %add.ptr.i5.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i16 @llvm.bswap.i16(i16 %bpid)
  %bpid1 = getelementptr inbounds %struct.qbman_bp_query_desc, ptr %add.ptr.i5.i, i32 0, i32 2
  %7 = ptrtoint ptr %bpid1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %bpid1, align 2
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s, align 4
  %qman_version.i.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %qman_version.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qman_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %11)
  %cmp.i.i = icmp ult i32 %11, 83886080
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  %mc.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  %12 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mc.i.i, align 4
  %14 = trunc i32 %13 to i8
  %conv1.i.i = or i8 %14, 50
  %15 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i.i, ptr %add.ptr.i5.i, align 1
  br label %qbman_swp_mc_submit.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mc3.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  %16 = ptrtoint ptr %mc3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mc3.i.i, align 4
  %18 = trunc i32 %17 to i8
  %conv6.i.i = or i8 %18, 50
  %19 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv6.i.i, ptr %add.ptr.i5.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !112
  %addr_cinh.i.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 2
  %20 = ptrtoint ptr %addr_cinh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr_cinh.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 65536) #14, !srcloc !106
  br label %qbman_swp_mc_submit.exit.i

qbman_swp_mc_submit.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %22 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s, align 4
  %qman_version.i31.i = getelementptr inbounds %struct.qbman_swp_desc, ptr %23, i32 0, i32 2
  %mr.i.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 4
  %mc.i33.i = getelementptr inbounds %struct.qbman_swp, ptr %s, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %qbman_swp_mc_submit.exit.i
  %loopvar.0.i = phi i32 [ 2000, %qbman_swp_mc_submit.exit.i ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %24 = ptrtoint ptr %qman_version.i31.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qman_version.i31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %25)
  %cmp.i32.i = icmp ult i32 %25, 83886080
  br i1 %cmp.i32.i, label %if.then.i35.i, label %if.else.i36.i

if.then.i35.i:                                    ; preds = %do.body.i
  %26 = ptrtoint ptr %mc.i33.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mc.i33.i, align 4
  %shr.i.i = lshr i32 %27, 1
  %add.i.i = add nuw i32 %shr.i.i, 1792
  %28 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr_cena.i.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %29, i32 %add.i.i
  %30 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i34.i, align 4
  %and1.i.i = and i32 %31, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i35.i.land.rhs.i_crit_edge, label %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge

if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge: ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qbman_swp_mc_result.exit.i

if.then.i35.i.land.rhs.i_crit_edge:               ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.else.i36.i:                                    ; preds = %do.body.i
  %32 = ptrtoint ptr %addr_cena.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr_cena.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %33, i32 5760
  %34 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mr.i.i, align 4
  %36 = ptrtoint ptr %add.ptr.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i33.i.i, align 4
  %and8.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %and8.i.i)
  %cmp9.not.i.i = icmp ne i32 %35, %and8.i.i
  %and13.i.i = and i32 %37, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  %or.cond.i.i = or i1 %cmp9.not.i.i, %tobool14.not.i.i
  br i1 %or.cond.i.i, label %if.else.i36.i.land.rhs.i_crit_edge, label %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge

if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge: ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qbman_swp_mc_result.exit.i

if.else.i36.i.land.rhs.i_crit_edge:               ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

qbman_swp_mc_result.exit.i:                       ; preds = %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %27, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %35, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %mc.sink.i.i = phi ptr [ %mc.i33.i, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %mr.i.i, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi ptr [ %add.ptr.i.i34.i, %if.then.i35.i.qbman_swp_mc_result.exit.i_crit_edge ], [ %add.ptr.i33.i.i, %if.else.i36.i.qbman_swp_mc_result.exit.i_crit_edge ]
  %xor.i.i = xor i32 %.sink.i.i, 128
  %38 = ptrtoint ptr %mc.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %xor.i.i, ptr %mc.sink.i.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.ph.i.i, null
  br i1 %tobool.not.i, label %qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge, label %do.end.i

qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge:  ; preds = %qbman_swp_mc_result.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %qbman_swp_mc_result.exit.i.land.rhs.i_crit_edge, %if.else.i36.i.land.rhs.i_crit_edge, %if.then.i35.i.land.rhs.i_crit_edge
  %dec.i = add nsw i32 %loopvar.0.i, -1
  %tobool1.not.i = icmp eq i32 %loopvar.0.i, 0
  br i1 %tobool1.not.i, label %do.end, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %qbman_swp_mc_result.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loopvar.0.i)
  %tobool2.not.i = icmp eq i32 %loopvar.0.i, 0
  br i1 %tobool2.not.i, label %do.end14.i, label %do.end.i.if.end6_crit_edge, !prof !113

do.end.i.if.end6_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

do.end14.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 550, i32 noundef 9, ptr noundef null) #14
  br label %if.end6

do.end:                                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i16 %bpid to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv) #18
  br label %cleanup

if.end6:                                          ; preds = %do.end14.i, %do.end.i.if.end6_crit_edge
  %39 = call ptr @memcpy(ptr %r, ptr %retval.0.ph.i.i, i32 64)
  %40 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %r, align 8
  %42 = and i8 %41, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %42)
  %cmp.not = icmp eq i8 %42, 50
  br i1 %cmp.not, label %if.end6.if.end26_crit_edge, label %do.end20, !prof !102

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end20:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1785, i32 noundef 9, ptr noundef null) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %if.end6.if.end26_crit_edge
  %rslt = getelementptr inbounds %struct.qbman_bp_query_rslt, ptr %r, i32 0, i32 1
  %43 = ptrtoint ptr %rslt to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rslt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %44)
  %cmp35.not = icmp eq i8 %44, -16
  br i1 %cmp35.not, label %if.end26.cleanup_crit_edge, label %do.end40

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end40:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %conv34 = zext i8 %44 to i32
  %conv42 = zext i16 %bpid to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv42, i32 noundef %conv34) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end26.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end40 ], [ -5, %do.end ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qbman_bp_info_num_free_bufs(ptr nocapture noundef readonly %a) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fill = getelementptr inbounds %struct.qbman_bp_query_rslt, ptr %a, i32 0, i32 5
  %0 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fill, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qbman_swp_get_irq_coalescing(ptr nocapture noundef readonly %p, ptr noundef writeonly %irq_threshold, ptr noundef writeonly %irq_holdoff) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %irq_threshold, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %irq_threshold1 = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 10
  %0 = ptrtoint ptr %irq_threshold1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_threshold1, align 4
  %2 = ptrtoint ptr %irq_threshold to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %irq_threshold, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %irq_holdoff, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %irq_holdoff4 = getelementptr inbounds %struct.qbman_swp, ptr %p, i32 0, i32 11
  %3 = ptrtoint ptr %irq_holdoff4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq_holdoff4, align 4
  %5 = ptrtoint ptr %irq_holdoff to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %irq_holdoff, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @qbman_swp_enqueue_ptr, !1, !"qbman_swp_enqueue_ptr", i1 false, i1 false}
!1 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 143, i32 7}
!2 = !{ptr @qbman_swp_enqueue_multiple_ptr, !3, !"qbman_swp_enqueue_multiple_ptr", i1 false, i1 false}
!3 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 148, i32 7}
!4 = !{ptr @qbman_swp_enqueue_multiple_desc_ptr, !5, !"qbman_swp_enqueue_multiple_desc_ptr", i1 false, i1 false}
!5 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 156, i32 3}
!6 = !{ptr @qbman_swp_pull_ptr, !7, !"qbman_swp_pull_ptr", i1 false, i1 false}
!7 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 162, i32 7}
!8 = !{ptr @qbman_swp_dqrr_next_ptr, !9, !"qbman_swp_dqrr_next_ptr", i1 false, i1 false}
!9 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 165, i32 26}
!10 = !{ptr @qbman_swp_release_ptr, !11, !"qbman_swp_release_ptr", i1 false, i1 false}
!11 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 168, i32 7}
!12 = !{ptr @qbman_swp_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 257, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 320, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @qbman_swp_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @qbman_swp_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1209, i32 4}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @qbman_swp_dqrr_next_direct.__UNIQUE_ID_ddebug217, !22, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1301, i32 4}
!28 = !{ptr @qbman_swp_dqrr_next_mem_back.__UNIQUE_ID_ddebug218, !27, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1574, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @qbman_swp_acquire._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @qbman_swp_acquire._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1584, i32 3}
!36 = !{ptr @qbman_swp_acquire._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @qbman_swp_acquire._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1629, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @qbman_swp_alt_fq_state._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @qbman_swp_alt_fq_state._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1639, i32 3}
!45 = !{ptr @qbman_swp_alt_fq_state._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @qbman_swp_alt_fq_state._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1690, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @qbman_swp_CDAN_set._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @qbman_swp_CDAN_set._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1698, i32 3}
!54 = !{ptr @qbman_swp_CDAN_set._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @qbman_swp_CDAN_set._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1731, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @qbman_fq_query_state._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @qbman_fq_query_state._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1741, i32 3}
!63 = !{ptr @qbman_fq_query_state._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @qbman_fq_query_state._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1779, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @qbman_bp_query._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @qbman_bp_query._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1789, i32 3}
!72 = !{ptr @qbman_bp_query._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @qbman_bp_query._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1821, i32 3}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @qbman_swp_set_irq_coalescing._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @qbman_swp_set_irq_coalescing._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soc/fsl/dpio/qbman-portal.c", i32 1826, i32 3}
!81 = !{ptr @qbman_swp_set_irq_coalescing._entry.35, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @qbman_swp_set_irq_coalescing._entry_ptr.37, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/fsl/dpio/qbman-portal.h", i32 550, i32 2}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 5856511}
!95 = !{i64 2153530154}
!96 = !{i64 2153531042}
!97 = !{i64 2148821435}
!98 = !{i64 2148736144, i64 2148736176, i64 2148736205, i64 2148736239, i64 2148736270, i64 2148736293}
!99 = !{i64 2148821664}
!100 = !{i64 2148732959, i64 2148732985, i64 2148733014, i64 2148733048, i64 2148733079, i64 2148733102}
!101 = !{i64 2153532952}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2148333636, i64 2148333641, i64 2148333654, i64 2148333698, i64 2148333732, i64 2148333753}
!104 = !{i64 1232227}
!105 = !{i64 2153539042}
!106 = !{i64 5856093}
!107 = !{i64 2153530863}
!108 = !{i64 2153531313}
!109 = !{i64 2153533112}
!110 = !{i64 2153539378}
!111 = !{i64 2153529394}
!112 = !{i64 2153529490}
!113 = !{!"branch_weights", i32 1, i32 2000}
