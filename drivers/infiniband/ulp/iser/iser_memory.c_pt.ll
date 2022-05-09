; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/iser/iser_memory.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/iser/iser_memory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iscsi_iser_task = type { %struct.iser_tx_desc, ptr, i32, ptr, i32, [2 x i32], [2 x %struct.iser_mem_reg], [2 x %struct.iser_data_buf], [2 x %struct.iser_data_buf] }
%struct.iser_tx_desc = type { %struct.iser_ctrl, %struct.iscsi_hdr, i32, i64, [2 x %struct.ib_sge], i32, %struct.ib_cqe, i8, %struct.ib_reg_wr, %struct.ib_send_wr, %struct.ib_send_wr }
%struct.iser_ctrl = type <{ i8, [3 x i8], i32, i64, i32, i64 }>
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_cqe = type { ptr }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.163, ptr, i32, i32, i32, %union.anon.164 }
%union.anon.163 = type { i64 }
%union.anon.164 = type { i32 }
%struct.iser_mem_reg = type { %struct.ib_sge, i32, ptr }
%struct.iser_data_buf = type { ptr, i32, i32, i32 }
%struct.ib_conn = type { ptr, ptr, ptr, i32, ptr, %struct.iser_fr_pool, i8, %struct.ib_cqe }
%struct.iser_fr_pool = type { %struct.list_head, %struct.spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ib_mr_status = type { i32, %struct.ib_sig_err }
%struct.ib_sig_err = type { i32, i32, i32, i64, i32 }
%struct.iser_fr_desc = type { %struct.list_head, %struct.iser_reg_resources, i8, %struct.list_head }
%struct.iser_reg_resources = type { ptr, ptr, i8 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.iser_device = type { ptr, ptr, %struct.ib_event_handler, %struct.list_head, i32 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.134, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.134 = type { %struct.list_head }
%struct.ib_sig_attrs = type { i8, %struct.ib_sig_domain, %struct.ib_sig_domain, i32 }
%struct.ib_sig_domain = type { i32, %union.anon.135 }
%union.anon.135 = type { %struct.ib_t10_dif_domain }
%struct.ib_t10_dif_domain = type { i32, i16, i16, i16, i32, i8, i8, i8, i16 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.execute_work = type { %struct.work_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memreg\00", [25 x i8] zeroinitializer }, align 32
@iser_dma_map_task_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013iser: %s: dma_map_sg failed!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iser_dma_map_task_data\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/infiniband/ulp/iser/iser_memory.c\00", [54 x i8] zeroinitializer }, align 32
@iser_dma_map_task_data._entry_ptr = internal global ptr @iser_dma_map_task_data._entry, section ".printk_index", align 4
@iser_always_reg = external dso_local local_unnamed_addr global i8, align 1
@iser_debug_level = external dso_local local_unnamed_addr global i32, align 4
@iser_reg_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017iser: %s: Single DMA entry: lkey=0x%x, rkey=0x%x, addr=0x%llx, length=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iser_reg_dma\00", [19 x i8] zeroinitializer }, align 32
@iser_reg_dma._entry_ptr = internal global ptr @iser_reg_dma._entry, section ".printk_index", align 4
@iser_fast_reg_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013iser: %s: failed to map sg (%d/%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iser_fast_reg_mr\00", [47 x i8] zeroinitializer }, align 32
@iser_fast_reg_mr._entry_ptr = internal global ptr @iser_fast_reg_mr._entry, section ".printk_index", align 4
@iser_fast_reg_mr._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017iser: %s: lkey=0x%x rkey=0x%x addr=0x%llx length=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@iser_fast_reg_mr._entry_ptr.10 = internal global ptr @iser_fast_reg_mr._entry.8, section ".printk_index", align 4
@iser_reg_sig_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013iser: %s: failed to map PI sg (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iser_reg_sig_mr\00", [16 x i8] zeroinitializer }, align 32
@iser_reg_sig_mr._entry_ptr = internal global ptr @iser_reg_sig_mr._entry, section ".printk_index", align 4
@iser_reg_sig_mr._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017iser: %s: lkey=0x%x rkey=0x%x addr=0x%llx length=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@iser_reg_sig_mr._entry_ptr.15 = internal global ptr @iser_reg_sig_mr._entry.13, section ".printk_index", align 4
@iser_set_sig_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013iser: %s: Unsupported PI operation %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iser_set_sig_attrs\00", [45 x i8] zeroinitializer }, align 32
@iser_set_sig_attrs._entry_ptr = internal global ptr @iser_set_sig_attrs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 44, i32 20 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 85, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 119, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 301, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 324, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 253, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 276, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [45 x i8] c"../drivers/infiniband/ulp/iser/iser_memory.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 197, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @iser_dma_map_task_data._entry, ptr @iser_dma_map_task_data._entry_ptr, ptr @iser_fast_reg_mr._entry, ptr @iser_fast_reg_mr._entry.8, ptr @iser_fast_reg_mr._entry_ptr, ptr @iser_fast_reg_mr._entry_ptr.10, ptr @iser_reg_dma._entry, ptr @iser_reg_dma._entry_ptr, ptr @iser_reg_sig_mr._entry, ptr @iser_reg_sig_mr._entry.13, ptr @iser_reg_sig_mr._entry_ptr, ptr @iser_reg_sig_mr._entry_ptr.15, ptr @iser_set_sig_attrs._entry, ptr @iser_set_sig_attrs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_dma_map_task_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_reg_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_fast_reg_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_fast_reg_mr._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_reg_sig_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_reg_sig_mr._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_set_sig_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_reg_comp(ptr nocapture noundef readnone %cq, ptr noundef %wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iser_err_comp(ptr noundef %wc, ptr noundef nonnull @.str) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_err_comp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_dma_map_task_data(ptr nocapture noundef %iser_task, ptr nocapture noundef %data, i32 noundef %iser_dir, i32 noundef %dma_dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 5, i32 %iser_dir
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %arrayidx, align 4
  %iser_conn = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 1
  %1 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iser_conn, align 8
  %device = getelementptr inbounds %struct.ib_conn, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %size = getelementptr inbounds %struct.iser_data_buf, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 8
  %call2.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %12, ptr noundef %8, i32 noundef %10, i32 noundef %dma_dir, i32 noundef 0) #5
  %dma_nents = getelementptr inbounds %struct.iser_data_buf, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %dma_nents to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i.i, ptr %dma_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp = icmp eq i32 %call2.i.i, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge, !prof !45

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_dma_unmap_task_data(ptr nocapture noundef readonly %iser_task, ptr nocapture noundef readonly %data, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iser_conn = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 1
  %0 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iser_conn, align 8
  %device = getelementptr inbounds %struct.ib_conn, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %size = getelementptr inbounds %struct.iser_data_buf, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %7, i32 noundef %9, i32 noundef %dir, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_unreg_mem_fastreg(ptr nocapture noundef %iser_task, i32 noundef %cmd_dir) local_unnamed_addr #0 align 64 {
entry:
  %mr_status = alloca %struct.ib_mr_status, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mr_status) #5
  %0 = call ptr @memset(ptr %mr_status, i32 255, i32 40)
  %mem_h = getelementptr %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 6, i32 %cmd_dir, i32 2
  %1 = ptrtoint ptr %mem_h to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mem_h, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sig_protected = getelementptr inbounds %struct.iser_fr_desc, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %sig_protected to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sig_protected, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then4, !prof !47

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %sig_protected to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %sig_protected, align 4
  %sig_mr = getelementptr inbounds %struct.iser_fr_desc, ptr %2, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %sig_mr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sig_mr, align 4
  %call = call i32 @ib_check_mr_status(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %mr_status) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %iser_conn = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 1
  %8 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iser_conn, align 8
  %10 = ptrtoint ptr %mem_h to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem_h, align 4
  %fr_pool1.i = getelementptr inbounds %struct.ib_conn, ptr %9, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.ib_conn, ptr %9, i32 0, i32 5, i32 1
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %12 = ptrtoint ptr %fr_pool1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fr_pool1.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef %fr_pool1.i, ptr noundef %13) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.iser_reg_desc_put_fr.exit_crit_edge

if.end6.iser_reg_desc_put_fr.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %iser_reg_desc_put_fr.exit

if.end.i.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %11, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fr_pool1.i, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %fr_pool1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %11, ptr %fr_pool1.i, align 4
  br label %iser_reg_desc_put_fr.exit

iser_reg_desc_put_fr.exit:                        ; preds = %if.end.i.i.i, %if.end6.iser_reg_desc_put_fr.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #5
  %18 = ptrtoint ptr %mem_h to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %mem_h, align 4
  br label %cleanup

cleanup:                                          ; preds = %iser_reg_desc_put_fr.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_check_mr_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iser_reg_desc_put_fr(ptr noundef %ib_conn, ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fr_pool1 = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 5
  %lock = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 5, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %0 = ptrtoint ptr %fr_pool1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fr_pool1, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc, ptr noundef %fr_pool1, ptr noundef %1) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %desc, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %desc, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fr_pool1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %fr_pool1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %desc, ptr %fr_pool1, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_reg_mem_fastreg(ptr noundef %task, i32 noundef %dir, i1 noundef zeroext %all_imm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iser_conn = getelementptr inbounds %struct.iscsi_iser_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iser_conn, align 8
  %arrayidx = getelementptr %struct.iscsi_iser_task, ptr %task, i32 0, i32 7, i32 %dir
  %arrayidx2 = getelementptr %struct.iscsi_iser_task, ptr %task, i32 0, i32 6, i32 %dir
  %dma_nents = getelementptr %struct.iscsi_iser_task, ptr %task, i32 0, i32 7, i32 %dir, i32 3
  %2 = ptrtoint ptr %dma_nents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  br i1 %all_imm, label %land.lhs.true.land.end_crit_edge, label %lor.lhs.false

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @iser_always_reg to i32))
  %4 = load i8, ptr @iser_always_reg, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.land.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.end:                                         ; preds = %lor.lhs.false.land.end_crit_edge, %land.lhs.true.land.end_crit_edge
  %sc = getelementptr inbounds %struct.iscsi_iser_task, ptr %task, i32 0, i32 3
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 8
  %prot_op.i = getelementptr inbounds %struct.scsi_cmnd, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %prot_op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp4 = icmp eq i8 %8, 0
  br i1 %cmp4, label %if.end, label %land.end.if.then_crit_edge

land.end.if.then_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %land.end.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %fr_pool1.i = getelementptr inbounds %struct.ib_conn, ptr %1, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.ib_conn, ptr %1, i32 0, i32 5, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %9 = ptrtoint ptr %fr_pool1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fr_pool1.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.if.end.thread_crit_edge

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %if.end.thread

if.end:                                           ; preds = %land.end
  %sc9 = getelementptr inbounds %struct.iscsi_iser_task, ptr %task, i32 0, i32 3
  %17 = ptrtoint ptr %sc9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc9, align 8
  %prot_op.i64 = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %prot_op.i64 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %prot_op.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp12 = icmp eq i8 %20, 0
  br i1 %cmp12, label %if.then.i, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.thread:                                    ; preds = %if.end.i.i.i, %if.then.if.end.thread_crit_edge
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #5
  %mem_h = getelementptr %struct.iscsi_iser_task, ptr %task, i32 0, i32 6, i32 %dir, i32 2
  %23 = ptrtoint ptr %mem_h to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %10, ptr %mem_h, align 4
  %sc980 = getelementptr inbounds %struct.iscsi_iser_task, ptr %task, i32 0, i32 3
  %24 = ptrtoint ptr %sc980 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc980, align 8
  %prot_op.i6481 = getelementptr inbounds %struct.scsi_cmnd, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %prot_op.i6481 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %prot_op.i6481, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp1282 = icmp eq i8 %27, 0
  br i1 %cmp1282, label %if.end.i, label %if.end.thread.if.else_crit_edge

if.end.thread.if.else_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then.i:                                        ; preds = %if.end
  %28 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iser_conn, align 8
  %device1.i = getelementptr inbounds %struct.ib_conn, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device1.i, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %pd.i.i = getelementptr inbounds %struct.iser_device, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pd.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %lkey.i.i = getelementptr inbounds %struct.ib_sge, ptr %arrayidx2, i32 0, i32 2
  %38 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %lkey.i.i, align 4
  %39 = load ptr, ptr %pd.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ib_pd, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %unsafe_global_rkey.i.i = getelementptr inbounds %struct.ib_pd, ptr %39, i32 0, i32 5
  %42 = ptrtoint ptr %unsafe_global_rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %unsafe_global_rkey.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %.sink.i.i = phi i32 [ %43, %if.then.i.i ], [ 0, %if.then.i.if.end.i.i_crit_edge ]
  %44 = getelementptr %struct.iscsi_iser_task, ptr %task, i32 0, i32 6, i32 %dir, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink.i.i, ptr %44, align 8
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 3
  %46 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_address.i.i, align 4
  %conv.i.i = zext i32 %47 to i64
  %48 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv.i.i, ptr %arrayidx2, align 8
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 4
  %49 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_length.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.ib_sge, ptr %arrayidx2, i32 0, i32 1
  %51 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %length.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %52 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i.i = icmp sgt i32 %52, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i.cleanup_crit_edge, !prof !45

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %37, i32 noundef %.sink.i.i, i64 noundef %conv.i.i, i32 noundef %50) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end.thread
  %rsc.i = getelementptr inbounds %struct.iser_fr_desc, ptr %10, i32 0, i32 1
  %53 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iser_conn, align 8
  %reg_cqe.i.i = getelementptr inbounds %struct.ib_conn, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %rsc.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rsc.i, align 4
  %reg_wr.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8
  %mr_valid.i.i = getelementptr inbounds %struct.iser_fr_desc, ptr %10, i32 0, i32 1, i32 2
  %57 = ptrtoint ptr %mr_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i = load i8, ptr %mr_valid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i6.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i6.i, label %if.end.i.if.end.i9.i_crit_edge, label %if.then.i7.i

if.end.i.if.end.i9.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i9.i

if.then.i7.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %inv_wr.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10
  %opcode.i.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10, i32 4
  %58 = ptrtoint ptr %opcode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 7, ptr %opcode.i.i.i, align 8
  %59 = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %reg_cqe.i.i, ptr %59, align 8
  %rkey.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %56, i32 0, i32 3
  %61 = ptrtoint ptr %rkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rkey.i.i.i, align 4
  %ex.i.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10, i32 6
  %63 = ptrtoint ptr %ex.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %ex.i.i.i, align 8
  %send_flags.i.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10, i32 5
  %64 = ptrtoint ptr %send_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %send_flags.i.i.i, align 4
  %num_sge.i.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10, i32 3
  %65 = ptrtoint ptr %num_sge.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %num_sge.i.i.i, align 4
  %66 = ptrtoint ptr %inv_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %reg_wr.i.i, ptr %inv_wr.i.i, align 8
  br label %if.end.i9.i

if.end.i9.i:                                      ; preds = %if.then.i7.i, %if.end.i.if.end.i9.i_crit_edge
  %rkey.i.i = getelementptr inbounds %struct.ib_mr, ptr %56, i32 0, i32 3
  %67 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rkey.i.i, align 4
  %and1.i.i.i = and i32 %68, -256
  %conv.i8.i = add i32 %68, 1
  %lkey.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %56, i32 0, i32 2
  %69 = ptrtoint ptr %lkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lkey.i.i.i, align 8
  %and.i95.i.i = and i32 %70, -256
  %conv.i.i.i = and i32 %conv.i8.i, 255
  %or.i96.i.i = or i32 %and.i95.i.i, %conv.i.i.i
  store i32 %or.i96.i.i, ptr %lkey.i.i.i, align 8
  %or4.i.i.i = or i32 %conv.i.i.i, %and1.i.i.i
  store i32 %or4.i.i.i, ptr %rkey.i.i, align 4
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx, align 4
  %73 = ptrtoint ptr %dma_nents to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_nents, align 4
  %call3.i.i = tail call i32 @ib_map_mr_sg(ptr noundef %56, ptr noundef %72, i32 noundef %74, ptr noundef null, i32 noundef 4096) #5
  %75 = ptrtoint ptr %dma_nents to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_nents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %76)
  %cmp.not.i.i = icmp eq i32 %call3.i.i, %76
  br i1 %cmp.not.i.i, label %if.end13.i.i, label %do.end.i10.i, !prof !47

do.end.i10.i:                                     ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %call3.i.i, i32 noundef %76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp11.i.i = icmp slt i32 %call3.i.i, 0
  %spec.select = select i1 %cmp11.i.i, i32 %call3.i.i, i32 -22
  br label %err_reg

if.end13.i.i:                                     ; preds = %if.end.i9.i
  %send_wr.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 9
  %77 = ptrtoint ptr %reg_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %send_wr.i.i, ptr %reg_wr.i.i, align 8
  %opcode.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 0, i32 4
  %78 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 32, ptr %opcode.i.i, align 8
  %79 = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %reg_cqe.i.i, ptr %79, align 8
  %send_flags.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 0, i32 5
  %81 = ptrtoint ptr %send_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %send_flags.i.i, align 4
  %num_sge.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 0, i32 3
  %82 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %num_sge.i.i, align 4
  %mr19.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 1
  %83 = ptrtoint ptr %mr19.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %56, ptr %mr19.i.i, align 8
  %84 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rkey.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 2
  %86 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %key.i.i, align 4
  %access.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 3
  %87 = ptrtoint ptr %access.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 7, ptr %access.i.i, align 8
  %88 = ptrtoint ptr %mr_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load22.i.i = load i8, ptr %mr_valid.i.i, align 4
  %bf.set.i.i = or i8 %bf.load22.i.i, -128
  store i8 %bf.set.i.i, ptr %mr_valid.i.i, align 4
  %89 = ptrtoint ptr %lkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %lkey.i.i.i, align 8
  %lkey23.i.i = getelementptr inbounds %struct.ib_sge, ptr %arrayidx2, i32 0, i32 2
  %91 = ptrtoint ptr %lkey23.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %lkey23.i.i, align 4
  %92 = load i32, ptr %rkey.i.i, align 4
  %rkey25.i.i = getelementptr %struct.iscsi_iser_task, ptr %task, i32 0, i32 6, i32 %dir, i32 1
  %93 = ptrtoint ptr %rkey25.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %rkey25.i.i, align 8
  %iova.i.i = getelementptr inbounds %struct.ib_mr, ptr %56, i32 0, i32 4
  %94 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %iova.i.i, align 8
  %96 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %arrayidx2, align 8
  %length.i11.i = getelementptr inbounds %struct.ib_mr, ptr %56, i32 0, i32 5
  %97 = ptrtoint ptr %length.i11.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %length.i11.i, align 8
  %conv27.i.i = trunc i64 %98 to i32
  %length29.i.i = getelementptr inbounds %struct.ib_sge, ptr %arrayidx2, i32 0, i32 1
  %99 = ptrtoint ptr %length29.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv27.i.i, ptr %length29.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %100 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp31.i.i = icmp sgt i32 %100, 2
  br i1 %cmp31.i.i, label %do.end42.i.i, label %if.end13.i.i.cleanup_crit_edge, !prof !45

if.end13.i.i.cleanup_crit_edge:                   ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end42.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call51.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %90, i32 noundef %92, i64 noundef %95, i32 noundef %conv27.i.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end.thread.if.else_crit_edge, %if.end.if.else_crit_edge
  %sc986 = phi ptr [ %sc980, %if.end.thread.if.else_crit_edge ], [ %sc9, %if.end.if.else_crit_edge ]
  %desc.084 = phi ptr [ %10, %if.end.thread.if.else_crit_edge ], [ null, %if.end.if.else_crit_edge ]
  %arrayidx22 = getelementptr %struct.iscsi_iser_task, ptr %task, i32 0, i32 8, i32 %dir
  %101 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %iser_conn, align 8
  %reg_cqe.i = getelementptr inbounds %struct.ib_conn, ptr %102, i32 0, i32 7
  %sig_mr.i = getelementptr inbounds %struct.iser_fr_desc, ptr %desc.084, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %sig_mr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sig_mr.i, align 4
  %sig_attrs1.i = getelementptr inbounds %struct.ib_mr, ptr %104, i32 0, i32 11
  %105 = ptrtoint ptr %sig_attrs1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sig_attrs1.i, align 8
  %reg_wr.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8
  %107 = call ptr @memset(ptr %106, i32 0, i32 64)
  %108 = ptrtoint ptr %sc986 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sc986, align 8
  %prot_op.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %109, i32 0, i32 10
  %110 = ptrtoint ptr %prot_op.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %prot_op.i.i.i, align 4
  %112 = zext i8 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values)
  switch i8 %111, label %iser_set_sig_attrs.exit.i [
    i8 4, label %if.else.sw.bb.i.i_crit_edge
    i8 3, label %if.else.sw.bb.i.i_crit_edge89
    i8 1, label %if.else.sw.bb2.i.i_crit_edge
    i8 2, label %if.else.sw.bb2.i.i_crit_edge90
    i8 5, label %if.else.sw.bb10.i.i_crit_edge
    i8 6, label %if.else.sw.bb10.i.i_crit_edge91
  ]

if.else.sw.bb10.i.i_crit_edge91:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10.i.i

if.else.sw.bb10.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10.i.i

if.else.sw.bb2.i.i_crit_edge90:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i.i

if.else.sw.bb2.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i.i

if.else.sw.bb.i.i_crit_edge89:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.else.sw.bb.i.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.else.sw.bb.i.i_crit_edge, %if.else.sw.bb.i.i_crit_edge89
  %wire.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2
  %113 = ptrtoint ptr %wire.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %wire.i.i, align 4
  %device.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %109, i32 0, i32 1
  %114 = ptrtoint ptr %device.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device.i.i.i.i, align 4
  %sector_size.i.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %115, i32 0, i32 20
  %116 = ptrtoint ptr %sector_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sector_size.i.i.i.i, align 4
  %conv.i.i.i66 = trunc i32 %117 to i16
  %pi_interval.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 1
  %118 = ptrtoint ptr %pi_interval.i.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i.i.i66, ptr %pi_interval.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %109, i32 -192
  %119 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %120, null
  br i1 %tobool.not.i.i.i.i.i, label %sw.bb.i.i.t10_pi_ref_tag.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

sw.bb.i.i.t10_pi_ref_tag.exit.i.i.i_crit_edge:    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_ref_tag.exit.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %logical_block_size.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %120, i32 0, i32 37, i32 9
  %121 = ptrtoint ptr %logical_block_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %logical_block_size.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %122, 0
  %spec.select.i.i.i.i.i = select i1 %tobool2.not.i.i.i.i.i, i32 512, i32 %122
  br label %t10_pi_ref_tag.exit.i.i.i

t10_pi_ref_tag.exit.i.i.i:                        ; preds = %land.lhs.true.i.i.i.i.i, %sw.bb.i.i.t10_pi_ref_tag.exit.i.i.i_crit_edge
  %retval1.0.i.i.i.i.i = phi i32 [ 512, %sw.bb.i.i.t10_pi_ref_tag.exit.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i, %land.lhs.true.i.i.i.i.i ]
  %123 = tail call i32 @llvm.ctlz.i32(i32 %retval1.0.i.i.i.i.i, i1 false) #5, !range !48
  %sub.i.i.i.i.i = sub nsw i32 31, %123
  %interval_exp.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %120, i32 0, i32 18, i32 3
  %124 = ptrtoint ptr %interval_exp.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %interval_exp.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i.i.i.i = icmp eq i8 %125, 0
  %conv.i.i.i.i = zext i8 %125 to i32
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %sub.i.i.i.i.i, i32 %conv.i.i.i.i
  %__sector.i.i.i.i.i = getelementptr i8, ptr %109, i32 -152
  %126 = ptrtoint ptr %__sector.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %__sector.i.i.i.i.i, align 8
  %sub.i.i.i.i = add nsw i32 %spec.select.i.i.i.i, -9
  %sh_prom.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  %shr.i.i.i.i = lshr i64 %127, %sh_prom.i.i.i.i
  %conv7.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %ref_tag.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 4
  %128 = ptrtoint ptr %ref_tag.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv7.i.i.i.i, ptr %ref_tag.i.i.i, align 4
  %apptag_check_mask.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 8
  %129 = ptrtoint ptr %apptag_check_mask.i.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 -1, ptr %apptag_check_mask.i.i.i, align 4
  %app_escape.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 6
  %130 = ptrtoint ptr %app_escape.i.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %app_escape.i.i.i, align 1
  %ref_escape.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 7
  %131 = ptrtoint ptr %ref_escape.i.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %ref_escape.i.i.i, align 2
  %prot_flags.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %109, i32 0, i32 12
  %132 = ptrtoint ptr %prot_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %prot_flags.i.i.i, align 2
  %134 = and i8 %133, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i.i.i = icmp eq i8 %134, 0
  br i1 %tobool.not.i.i.i, label %t10_pi_ref_tag.exit.i.i.i.iser_set_dif_domain.exit.i.i_crit_edge, label %if.then.i.i.i

t10_pi_ref_tag.exit.i.i.i.iser_set_dif_domain.exit.i.i_crit_edge: ; preds = %t10_pi_ref_tag.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iser_set_dif_domain.exit.i.i

if.then.i.i.i:                                    ; preds = %t10_pi_ref_tag.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ref_remap.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 5
  %135 = ptrtoint ptr %ref_remap.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %ref_remap.i.i.i, align 4
  br label %iser_set_dif_domain.exit.i.i

iser_set_dif_domain.exit.i.i:                     ; preds = %if.then.i.i.i, %t10_pi_ref_tag.exit.i.i.i.iser_set_dif_domain.exit.i.i_crit_edge
  %sig.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1
  %136 = ptrtoint ptr %sig.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %sig.i.i, align 4
  br label %if.end.i68

sw.bb2.i.i:                                       ; preds = %if.else.sw.bb2.i.i_crit_edge, %if.else.sw.bb2.i.i_crit_edge90
  %mem5.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1
  %137 = ptrtoint ptr %mem5.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %mem5.i.i, align 4
  %device.i.i44.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %109, i32 0, i32 1
  %138 = ptrtoint ptr %device.i.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %device.i.i44.i.i, align 4
  %sector_size.i.i45.i.i = getelementptr inbounds %struct.scsi_device, ptr %139, i32 0, i32 20
  %140 = ptrtoint ptr %sector_size.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sector_size.i.i45.i.i, align 4
  %conv.i46.i.i = trunc i32 %141 to i16
  %pi_interval.i47.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 1
  %142 = ptrtoint ptr %pi_interval.i47.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i46.i.i, ptr %pi_interval.i47.i.i, align 4
  %add.ptr.i.i.i48.i.i = getelementptr i8, ptr %109, i32 -192
  %143 = ptrtoint ptr %add.ptr.i.i.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i.i.i48.i.i, align 8
  %tobool.not.i.i.i49.i.i = icmp eq ptr %144, null
  br i1 %tobool.not.i.i.i49.i.i, label %sw.bb2.i.i.t10_pi_ref_tag.exit.i71.i.i_crit_edge, label %land.lhs.true.i.i.i53.i.i

sw.bb2.i.i.t10_pi_ref_tag.exit.i71.i.i_crit_edge: ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_ref_tag.exit.i71.i.i

land.lhs.true.i.i.i53.i.i:                        ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %logical_block_size.i.i.i50.i.i = getelementptr inbounds %struct.request_queue, ptr %144, i32 0, i32 37, i32 9
  %145 = ptrtoint ptr %logical_block_size.i.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %logical_block_size.i.i.i50.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool2.not.i.i.i51.i.i = icmp eq i32 %146, 0
  %spec.select.i.i.i52.i.i = select i1 %tobool2.not.i.i.i51.i.i, i32 512, i32 %146
  br label %t10_pi_ref_tag.exit.i71.i.i

t10_pi_ref_tag.exit.i71.i.i:                      ; preds = %land.lhs.true.i.i.i53.i.i, %sw.bb2.i.i.t10_pi_ref_tag.exit.i71.i.i_crit_edge
  %retval1.0.i.i.i54.i.i = phi i32 [ 512, %sw.bb2.i.i.t10_pi_ref_tag.exit.i71.i.i_crit_edge ], [ %spec.select.i.i.i52.i.i, %land.lhs.true.i.i.i53.i.i ]
  %147 = tail call i32 @llvm.ctlz.i32(i32 %retval1.0.i.i.i54.i.i, i1 false) #5, !range !48
  %sub.i.i.i55.i.i = sub nsw i32 31, %147
  %interval_exp.i.i56.i.i = getelementptr inbounds %struct.request_queue, ptr %144, i32 0, i32 18, i32 3
  %148 = ptrtoint ptr %interval_exp.i.i56.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %interval_exp.i.i56.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i.i57.i.i = icmp eq i8 %149, 0
  %conv.i.i58.i.i = zext i8 %149 to i32
  %spec.select.i.i59.i.i = select i1 %tobool.not.i.i57.i.i, i32 %sub.i.i.i55.i.i, i32 %conv.i.i58.i.i
  %__sector.i.i.i60.i.i = getelementptr i8, ptr %109, i32 -152
  %150 = ptrtoint ptr %__sector.i.i.i60.i.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %__sector.i.i.i60.i.i, align 8
  %sub.i.i61.i.i = add nsw i32 %spec.select.i.i59.i.i, -9
  %sh_prom.i.i62.i.i = zext i32 %sub.i.i61.i.i to i64
  %shr.i.i63.i.i = lshr i64 %151, %sh_prom.i.i62.i.i
  %conv7.i.i64.i.i = trunc i64 %shr.i.i63.i.i to i32
  %ref_tag.i65.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 4
  %152 = ptrtoint ptr %ref_tag.i65.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv7.i.i64.i.i, ptr %ref_tag.i65.i.i, align 4
  %apptag_check_mask.i66.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 8
  %153 = ptrtoint ptr %apptag_check_mask.i66.i.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 -1, ptr %apptag_check_mask.i66.i.i, align 4
  %app_escape.i67.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 6
  %154 = ptrtoint ptr %app_escape.i67.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %app_escape.i67.i.i, align 1
  %ref_escape.i68.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 7
  %155 = ptrtoint ptr %ref_escape.i68.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %ref_escape.i68.i.i, align 2
  %prot_flags.i69.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %109, i32 0, i32 12
  %156 = ptrtoint ptr %prot_flags.i69.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %prot_flags.i69.i.i, align 2
  %158 = and i8 %157, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i70.i.i = icmp eq i8 %158, 0
  br i1 %tobool.not.i70.i.i, label %t10_pi_ref_tag.exit.i71.i.i.iser_set_dif_domain.exit74.i.i_crit_edge, label %if.then.i73.i.i

t10_pi_ref_tag.exit.i71.i.i.iser_set_dif_domain.exit74.i.i_crit_edge: ; preds = %t10_pi_ref_tag.exit.i71.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iser_set_dif_domain.exit74.i.i

if.then.i73.i.i:                                  ; preds = %t10_pi_ref_tag.exit.i71.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ref_remap.i72.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 5
  %159 = ptrtoint ptr %ref_remap.i72.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %ref_remap.i72.i.i, align 4
  br label %iser_set_dif_domain.exit74.i.i

iser_set_dif_domain.exit74.i.i:                   ; preds = %if.then.i73.i.i, %t10_pi_ref_tag.exit.i71.i.i.iser_set_dif_domain.exit74.i.i_crit_edge
  %160 = ptrtoint ptr %prot_flags.i69.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %prot_flags.i69.i.i, align 2
  %162 = lshr i8 %161, 4
  %.lobit43.i.i = and i8 %162, 1
  %163 = zext i8 %.lobit43.i.i to i32
  %sig8.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %sig8.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %sig8.i.i, align 4
  br label %if.end.i68

sw.bb10.i.i:                                      ; preds = %if.else.sw.bb10.i.i_crit_edge, %if.else.sw.bb10.i.i_crit_edge91
  %wire11.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2
  %165 = ptrtoint ptr %wire11.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %wire11.i.i, align 4
  %device.i.i75.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %109, i32 0, i32 1
  %166 = ptrtoint ptr %device.i.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %device.i.i75.i.i, align 4
  %sector_size.i.i76.i.i = getelementptr inbounds %struct.scsi_device, ptr %167, i32 0, i32 20
  %168 = ptrtoint ptr %sector_size.i.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %sector_size.i.i76.i.i, align 4
  %conv.i77.i.i = trunc i32 %169 to i16
  %pi_interval.i78.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 1
  %170 = ptrtoint ptr %pi_interval.i78.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv.i77.i.i, ptr %pi_interval.i78.i.i, align 4
  %add.ptr.i.i.i79.i.i = getelementptr i8, ptr %109, i32 -192
  %171 = ptrtoint ptr %add.ptr.i.i.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %add.ptr.i.i.i79.i.i, align 8
  %tobool.not.i.i.i80.i.i = icmp eq ptr %172, null
  br i1 %tobool.not.i.i.i80.i.i, label %sw.bb10.i.i.t10_pi_ref_tag.exit.i102.i.i_crit_edge, label %land.lhs.true.i.i.i84.i.i

sw.bb10.i.i.t10_pi_ref_tag.exit.i102.i.i_crit_edge: ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_ref_tag.exit.i102.i.i

land.lhs.true.i.i.i84.i.i:                        ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %logical_block_size.i.i.i81.i.i = getelementptr inbounds %struct.request_queue, ptr %172, i32 0, i32 37, i32 9
  %173 = ptrtoint ptr %logical_block_size.i.i.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %logical_block_size.i.i.i81.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool2.not.i.i.i82.i.i = icmp eq i32 %174, 0
  %spec.select.i.i.i83.i.i = select i1 %tobool2.not.i.i.i82.i.i, i32 512, i32 %174
  br label %t10_pi_ref_tag.exit.i102.i.i

t10_pi_ref_tag.exit.i102.i.i:                     ; preds = %land.lhs.true.i.i.i84.i.i, %sw.bb10.i.i.t10_pi_ref_tag.exit.i102.i.i_crit_edge
  %retval1.0.i.i.i85.i.i = phi i32 [ 512, %sw.bb10.i.i.t10_pi_ref_tag.exit.i102.i.i_crit_edge ], [ %spec.select.i.i.i83.i.i, %land.lhs.true.i.i.i84.i.i ]
  %175 = tail call i32 @llvm.ctlz.i32(i32 %retval1.0.i.i.i85.i.i, i1 false) #5, !range !48
  %sub.i.i.i86.i.i = sub nsw i32 31, %175
  %interval_exp.i.i87.i.i = getelementptr inbounds %struct.request_queue, ptr %172, i32 0, i32 18, i32 3
  %176 = ptrtoint ptr %interval_exp.i.i87.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %interval_exp.i.i87.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i.i88.i.i = icmp eq i8 %177, 0
  %conv.i.i89.i.i = zext i8 %177 to i32
  %spec.select.i.i90.i.i = select i1 %tobool.not.i.i88.i.i, i32 %sub.i.i.i86.i.i, i32 %conv.i.i89.i.i
  %__sector.i.i.i91.i.i = getelementptr i8, ptr %109, i32 -152
  %178 = ptrtoint ptr %__sector.i.i.i91.i.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %__sector.i.i.i91.i.i, align 8
  %sub.i.i92.i.i = add nsw i32 %spec.select.i.i90.i.i, -9
  %sh_prom.i.i93.i.i = zext i32 %sub.i.i92.i.i to i64
  %shr.i.i94.i.i = lshr i64 %179, %sh_prom.i.i93.i.i
  %conv7.i.i95.i.i = trunc i64 %shr.i.i94.i.i to i32
  %ref_tag.i96.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 4
  %180 = ptrtoint ptr %ref_tag.i96.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv7.i.i95.i.i, ptr %ref_tag.i96.i.i, align 4
  %apptag_check_mask.i97.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 8
  %181 = ptrtoint ptr %apptag_check_mask.i97.i.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 -1, ptr %apptag_check_mask.i97.i.i, align 4
  %app_escape.i98.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 6
  %182 = ptrtoint ptr %app_escape.i98.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %app_escape.i98.i.i, align 1
  %ref_escape.i99.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 7
  %183 = ptrtoint ptr %ref_escape.i99.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 1, ptr %ref_escape.i99.i.i, align 2
  %prot_flags.i100.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %109, i32 0, i32 12
  %184 = ptrtoint ptr %prot_flags.i100.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %prot_flags.i100.i.i, align 2
  %186 = and i8 %185, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i101.i.i = icmp eq i8 %186, 0
  br i1 %tobool.not.i101.i.i, label %t10_pi_ref_tag.exit.i102.i.i.iser_set_dif_domain.exit105.i.i_crit_edge, label %if.then.i104.i.i

t10_pi_ref_tag.exit.i102.i.i.iser_set_dif_domain.exit105.i.i_crit_edge: ; preds = %t10_pi_ref_tag.exit.i102.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iser_set_dif_domain.exit105.i.i

if.then.i104.i.i:                                 ; preds = %t10_pi_ref_tag.exit.i102.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ref_remap.i103.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1, i32 0, i32 5
  %187 = ptrtoint ptr %ref_remap.i103.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 1, ptr %ref_remap.i103.i.i, align 4
  br label %iser_set_dif_domain.exit105.i.i

iser_set_dif_domain.exit105.i.i:                  ; preds = %if.then.i104.i.i, %t10_pi_ref_tag.exit.i102.i.i.iser_set_dif_domain.exit105.i.i_crit_edge
  %sig13.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 2, i32 1
  %188 = ptrtoint ptr %sig13.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %sig13.i.i, align 4
  %mem15.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1
  %189 = ptrtoint ptr %mem15.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 1, ptr %mem15.i.i, align 4
  %190 = ptrtoint ptr %device.i.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %device.i.i75.i.i, align 4
  %sector_size.i.i107.i.i = getelementptr inbounds %struct.scsi_device, ptr %191, i32 0, i32 20
  %192 = ptrtoint ptr %sector_size.i.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %sector_size.i.i107.i.i, align 4
  %conv.i108.i.i = trunc i32 %193 to i16
  %pi_interval.i109.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 1
  %194 = ptrtoint ptr %pi_interval.i109.i.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv.i108.i.i, ptr %pi_interval.i109.i.i, align 4
  %195 = ptrtoint ptr %add.ptr.i.i.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %add.ptr.i.i.i79.i.i, align 8
  %tobool.not.i.i.i111.i.i = icmp eq ptr %196, null
  br i1 %tobool.not.i.i.i111.i.i, label %iser_set_dif_domain.exit105.i.i.t10_pi_ref_tag.exit.i133.i.i_crit_edge, label %land.lhs.true.i.i.i115.i.i

iser_set_dif_domain.exit105.i.i.t10_pi_ref_tag.exit.i133.i.i_crit_edge: ; preds = %iser_set_dif_domain.exit105.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_ref_tag.exit.i133.i.i

land.lhs.true.i.i.i115.i.i:                       ; preds = %iser_set_dif_domain.exit105.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %logical_block_size.i.i.i112.i.i = getelementptr inbounds %struct.request_queue, ptr %196, i32 0, i32 37, i32 9
  %197 = ptrtoint ptr %logical_block_size.i.i.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %logical_block_size.i.i.i112.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool2.not.i.i.i113.i.i = icmp eq i32 %198, 0
  %spec.select.i.i.i114.i.i = select i1 %tobool2.not.i.i.i113.i.i, i32 512, i32 %198
  br label %t10_pi_ref_tag.exit.i133.i.i

t10_pi_ref_tag.exit.i133.i.i:                     ; preds = %land.lhs.true.i.i.i115.i.i, %iser_set_dif_domain.exit105.i.i.t10_pi_ref_tag.exit.i133.i.i_crit_edge
  %retval1.0.i.i.i116.i.i = phi i32 [ 512, %iser_set_dif_domain.exit105.i.i.t10_pi_ref_tag.exit.i133.i.i_crit_edge ], [ %spec.select.i.i.i114.i.i, %land.lhs.true.i.i.i115.i.i ]
  %199 = tail call i32 @llvm.ctlz.i32(i32 %retval1.0.i.i.i116.i.i, i1 false) #5, !range !48
  %sub.i.i.i117.i.i = sub nsw i32 31, %199
  %interval_exp.i.i118.i.i = getelementptr inbounds %struct.request_queue, ptr %196, i32 0, i32 18, i32 3
  %200 = ptrtoint ptr %interval_exp.i.i118.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %interval_exp.i.i118.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool.not.i.i119.i.i = icmp eq i8 %201, 0
  %conv.i.i120.i.i = zext i8 %201 to i32
  %spec.select.i.i121.i.i = select i1 %tobool.not.i.i119.i.i, i32 %sub.i.i.i117.i.i, i32 %conv.i.i120.i.i
  %202 = ptrtoint ptr %__sector.i.i.i91.i.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %__sector.i.i.i91.i.i, align 8
  %sub.i.i123.i.i = add nsw i32 %spec.select.i.i121.i.i, -9
  %sh_prom.i.i124.i.i = zext i32 %sub.i.i123.i.i to i64
  %shr.i.i125.i.i = lshr i64 %203, %sh_prom.i.i124.i.i
  %conv7.i.i126.i.i = trunc i64 %shr.i.i125.i.i to i32
  %ref_tag.i127.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 4
  %204 = ptrtoint ptr %ref_tag.i127.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %conv7.i.i126.i.i, ptr %ref_tag.i127.i.i, align 4
  %apptag_check_mask.i128.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 8
  %205 = ptrtoint ptr %apptag_check_mask.i128.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 -1, ptr %apptag_check_mask.i128.i.i, align 4
  %app_escape.i129.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 6
  %206 = ptrtoint ptr %app_escape.i129.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %app_escape.i129.i.i, align 1
  %ref_escape.i130.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 7
  %207 = ptrtoint ptr %ref_escape.i130.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %ref_escape.i130.i.i, align 2
  %208 = ptrtoint ptr %prot_flags.i100.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %prot_flags.i100.i.i, align 2
  %210 = and i8 %209, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool.not.i132.i.i = icmp eq i8 %210, 0
  br i1 %tobool.not.i132.i.i, label %t10_pi_ref_tag.exit.i133.i.i.iser_set_dif_domain.exit136.i.i_crit_edge, label %if.then.i135.i.i

t10_pi_ref_tag.exit.i133.i.i.iser_set_dif_domain.exit136.i.i_crit_edge: ; preds = %t10_pi_ref_tag.exit.i133.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iser_set_dif_domain.exit136.i.i

if.then.i135.i.i:                                 ; preds = %t10_pi_ref_tag.exit.i133.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ref_remap.i134.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1, i32 0, i32 5
  %211 = ptrtoint ptr %ref_remap.i134.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 1, ptr %ref_remap.i134.i.i, align 4
  br label %iser_set_dif_domain.exit136.i.i

iser_set_dif_domain.exit136.i.i:                  ; preds = %if.then.i135.i.i, %t10_pi_ref_tag.exit.i133.i.i.iser_set_dif_domain.exit136.i.i_crit_edge
  %212 = ptrtoint ptr %prot_flags.i100.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %prot_flags.i100.i.i, align 2
  %214 = lshr i8 %213, 4
  %.lobit.i.i = and i8 %214, 1
  %215 = zext i8 %.lobit.i.i to i32
  %sig22.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %106, i32 0, i32 1, i32 1
  %216 = ptrtoint ptr %sig22.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %sig22.i.i, align 4
  br label %if.end.i68

iser_set_sig_attrs.exit.i:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv25.i.i = zext i8 %111 to i32
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %conv25.i.i) #8
  br label %err_reg

if.end.i68:                                       ; preds = %iser_set_dif_domain.exit136.i.i, %iser_set_dif_domain.exit74.i.i, %iser_set_dif_domain.exit.i.i
  %217 = ptrtoint ptr %sc986 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %sc986, align 8
  %219 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %106, align 1
  %prot_flags.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %218, i32 0, i32 12
  %220 = ptrtoint ptr %prot_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %prot_flags.i.i, align 2
  %222 = and i8 %221, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool.not.i.i67 = icmp eq i8 %222, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i67, i8 0, i8 15
  %223 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %spec.store.select.i.i, ptr %106, align 1
  %224 = ptrtoint ptr %prot_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %prot_flags.i.i, align 2
  %226 = and i8 %225, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool6.not.i.i = icmp eq i8 %226, 0
  br i1 %tobool6.not.i.i, label %if.end.i68.iser_set_prot_checks.exit.i_crit_edge, label %if.then7.i.i

if.end.i68.iser_set_prot_checks.exit.i_crit_edge: ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %iser_set_prot_checks.exit.i

if.then7.i.i:                                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #7
  %227 = or i8 %spec.store.select.i.i, -64
  %228 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %106, align 1
  br label %iser_set_prot_checks.exit.i

iser_set_prot_checks.exit.i:                      ; preds = %if.then7.i.i, %if.end.i68.iser_set_prot_checks.exit.i_crit_edge
  %mr_valid.i = getelementptr inbounds %struct.iser_fr_desc, ptr %desc.084, i32 0, i32 1, i32 2
  %229 = ptrtoint ptr %mr_valid.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %bf.load.i = load i8, ptr %mr_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i, label %iser_set_prot_checks.exit.i.if.end6.i_crit_edge, label %if.then4.i

iser_set_prot_checks.exit.i.if.end6.i_crit_edge:  ; preds = %iser_set_prot_checks.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then4.i:                                       ; preds = %iser_set_prot_checks.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %inv_wr.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10
  %opcode.i.i69 = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10, i32 4
  %230 = ptrtoint ptr %opcode.i.i69 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 7, ptr %opcode.i.i69, align 8
  %231 = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10, i32 1
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %reg_cqe.i, ptr %231, align 8
  %rkey.i.i70 = getelementptr inbounds %struct.ib_mr, ptr %104, i32 0, i32 3
  %233 = ptrtoint ptr %rkey.i.i70 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %rkey.i.i70, align 4
  %ex.i.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10, i32 6
  %235 = ptrtoint ptr %ex.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %ex.i.i, align 8
  %send_flags.i.i71 = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10, i32 5
  %236 = ptrtoint ptr %send_flags.i.i71 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %send_flags.i.i71, align 4
  %num_sge.i.i72 = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 10, i32 3
  %237 = ptrtoint ptr %num_sge.i.i72 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %num_sge.i.i72, align 4
  %238 = ptrtoint ptr %inv_wr.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %reg_wr.i, ptr %inv_wr.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %iser_set_prot_checks.exit.i.if.end6.i_crit_edge
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %104, i32 0, i32 3
  %239 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %rkey.i, align 4
  %and1.i.i = and i32 %240, -256
  %conv.i = add i32 %240, 1
  %lkey.i.i73 = getelementptr inbounds %struct.ib_mr, ptr %104, i32 0, i32 2
  %241 = ptrtoint ptr %lkey.i.i73 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %lkey.i.i73, align 8
  %and.i101.i = and i32 %242, -256
  %conv.i.i74 = and i32 %conv.i, 255
  %or.i102.i = or i32 %and.i101.i, %conv.i.i74
  store i32 %or.i102.i, ptr %lkey.i.i73, align 8
  %or4.i.i = or i32 %conv.i.i74, %and1.i.i
  store i32 %or4.i.i, ptr %rkey.i, align 4
  %243 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arrayidx, align 4
  %245 = ptrtoint ptr %dma_nents to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %dma_nents, align 4
  %247 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx22, align 4
  %dma_nents9.i = getelementptr %struct.iscsi_iser_task, ptr %task, i32 0, i32 8, i32 %dir, i32 3
  %249 = ptrtoint ptr %dma_nents9.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %dma_nents9.i, align 4
  %call10.i = tail call i32 @ib_map_mr_sg_pi(ptr noundef %104, ptr noundef %244, i32 noundef %246, ptr noundef null, ptr noundef %248, i32 noundef %250, ptr noundef null, i32 noundef 4096) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end18.i, label %do.end.i, !prof !47

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %251 = ptrtoint ptr %dma_nents to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %dma_nents, align 4
  %253 = ptrtoint ptr %dma_nents9.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %dma_nents9.i, align 4
  %add.i = add i32 %254, %252
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %add.i) #8
  br label %err_reg

if.end18.i:                                       ; preds = %if.end6.i
  %255 = call ptr @memset(ptr %reg_wr.i, i32 0, i32 56)
  %send_wr.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 9
  %256 = ptrtoint ptr %reg_wr.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %send_wr.i, ptr %reg_wr.i, align 8
  %opcode.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 0, i32 4
  %257 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 33, ptr %opcode.i, align 8
  %258 = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 0, i32 1
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %reg_cqe.i, ptr %258, align 8
  %mr24.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 1
  %260 = ptrtoint ptr %mr24.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %104, ptr %mr24.i, align 8
  %261 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %rkey.i, align 4
  %key.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 2
  %263 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %key.i, align 4
  %access.i = getelementptr inbounds %struct.iser_tx_desc, ptr %task, i32 0, i32 8, i32 3
  %264 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 7, ptr %access.i, align 8
  %265 = ptrtoint ptr %mr_valid.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %bf.load27.i = load i8, ptr %mr_valid.i, align 4
  %bf.set.i = or i8 %bf.load27.i, -128
  store i8 %bf.set.i, ptr %mr_valid.i, align 4
  %266 = ptrtoint ptr %lkey.i.i73 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %lkey.i.i73, align 8
  %lkey28.i = getelementptr inbounds %struct.ib_sge, ptr %arrayidx2, i32 0, i32 2
  %268 = ptrtoint ptr %lkey28.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %lkey28.i, align 4
  %269 = load i32, ptr %rkey.i, align 4
  %rkey30.i = getelementptr %struct.iscsi_iser_task, ptr %task, i32 0, i32 6, i32 %dir, i32 1
  %270 = ptrtoint ptr %rkey30.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %rkey30.i, align 8
  %iova.i = getelementptr inbounds %struct.ib_mr, ptr %104, i32 0, i32 4
  %271 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %iova.i, align 8
  %273 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %272, ptr %arrayidx2, align 8
  %length.i = getelementptr inbounds %struct.ib_mr, ptr %104, i32 0, i32 5
  %274 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %length.i, align 8
  %conv32.i = trunc i64 %275 to i32
  %length34.i = getelementptr inbounds %struct.ib_sge, ptr %arrayidx2, i32 0, i32 1
  %276 = ptrtoint ptr %length34.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %conv32.i, ptr %length34.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %277 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %277)
  %cmp.i = icmp sgt i32 %277, 2
  br i1 %cmp.i, label %do.end46.i, label %if.end18.i.if.end32_crit_edge, !prof !45

if.end18.i.if.end32_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

do.end46.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %267, i32 noundef %269, i64 noundef %272, i32 noundef %conv32.i) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end46.i, %if.end18.i.if.end32_crit_edge
  %sig_protected = getelementptr inbounds %struct.iser_fr_desc, ptr %desc.084, i32 0, i32 2
  %278 = ptrtoint ptr %sig_protected to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 1, ptr %sig_protected, align 4
  br label %cleanup

err_reg:                                          ; preds = %do.end.i, %iser_set_sig_attrs.exit.i, %do.end.i10.i
  %desc.083 = phi ptr [ %desc.084, %iser_set_sig_attrs.exit.i ], [ %desc.084, %do.end.i ], [ %10, %do.end.i10.i ]
  %err.0 = phi i32 [ -22, %iser_set_sig_attrs.exit.i ], [ %call10.i, %do.end.i ], [ %spec.select, %do.end.i10.i ]
  %tobool34.not = icmp eq ptr %desc.083, null
  br i1 %tobool34.not, label %err_reg.cleanup_crit_edge, label %if.then35

err_reg.cleanup_crit_edge:                        ; preds = %err_reg
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then35:                                        ; preds = %err_reg
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @iser_reg_desc_put_fr(ptr noundef %1, ptr noundef nonnull %desc.083)
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %err_reg.cleanup_crit_edge, %if.end32, %do.end42.i.i, %if.end13.i.i.cleanup_crit_edge, %do.end.i.i, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ %err.0, %if.then35 ], [ %err.0, %err_reg.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %do.end.i.i ], [ 0, %do.end42.i.i ], [ 0, %if.end13.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_map_mr_sg_pi(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/iser/iser_memory.c", i32 44, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/iser/iser_memory.c", i32 85, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @iser_dma_map_task_data._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @iser_dma_map_task_data._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/ulp/iser/iser_memory.c", i32 119, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @iser_reg_dma._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @iser_reg_dma._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/ulp/iser/iser_memory.c", i32 301, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @iser_fast_reg_mr._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @iser_fast_reg_mr._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/ulp/iser/iser_memory.c", i32 324, i32 2}
!20 = !{ptr @iser_fast_reg_mr._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @iser_fast_reg_mr._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/ulp/iser/iser_memory.c", i32 253, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @iser_reg_sig_mr._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @iser_reg_sig_mr._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/ulp/iser/iser_memory.c", i32 276, i32 2}
!29 = !{ptr @iser_reg_sig_mr._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @iser_reg_sig_mr._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/ulp/iser/iser_memory.c", i32 197, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @iser_set_sig_attrs._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @iser_set_sig_attrs._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i8 0, i8 2}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i32 0, i32 33}
