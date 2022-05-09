; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/puda.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/puda.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irdma_puda_rsrc = type { %struct.irdma_sc_cq, %struct.irdma_sc_qp, %struct.irdma_sc_pd, ptr, ptr, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.irdma_virt_mem, i32, i32, i16, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, %struct.spinlock, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8 }
%struct.irdma_sc_cq = type { %struct.irdma_cq_uk, i64, i64, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i8, i8 }
%struct.irdma_cq_uk = type { ptr, ptr, ptr, ptr, i32, i32, %struct.irdma_ring, i8, i8 }
%struct.irdma_ring = type { i32, i32, i32 }
%struct.irdma_sc_qp = type <{ %struct.irdma_qp_uk, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, [4 x i8], %struct.irdma_pfpdu, i32, ptr, i64, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16, [3 x i8], i32, i32, i8, i8, [2 x i8], %struct.list_head }>
%struct.irdma_qp_uk = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irdma_ring, %struct.irdma_ring, %struct.irdma_ring, i32, i32, i32, i32, i32, i32, i32, %struct.irdma_wqe_uk_ops, i16, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8 }
%struct.irdma_wqe_uk_ops = type { ptr, ptr, ptr, ptr }
%struct.irdma_pfpdu = type { %struct.list_head, i32, i32, i32, i32, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.spinlock, ptr }
%struct.irdma_sc_pd = type { ptr, i32, i32 }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.irdma_virt_mem = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irdma_puda_buf = type { %struct.list_head, %struct.irdma_dma_mem, ptr, %struct.irdma_virt_mem, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i32, %struct.refcount_struct, i8, i8, i32, i32, [6 x i8], ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.irdma_puda_cmpl_info = type { ptr, i8, i8, i8, i16, i32, i32, i32, i32, i8, [6 x i8] }
%struct.irdma_sc_vsi = type { i16, ptr, ptr, i32, %struct.irdma_virt_mem, ptr, i32, %struct.irdma_virt_mem, ptr, i32, i16, i16, i8, i32, i8, [8 x %struct.irdma_qos], ptr, %struct.atomic_t, ptr, ptr, i8, i8 }
%struct.irdma_qos = type { %struct.list_head, %struct.mutex, i64, i32, i16, i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irdma_sc_dev = type { %struct.list_head, %struct.spinlock, [128 x i8], [32 x %struct.irdma_dma_mem], i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr], i32, [6 x i64], [6 x i64], [13 x i64], [33 x i64], [27 x i64], [51 x i64], %struct.irdma_hw_attrs, ptr, ptr, ptr, [1024 x ptr], ptr, ptr, %struct.irdma_hmc_fpm_misc, ptr, %struct.mutex, i16, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.irdma_hw_attrs = type { %struct.irdma_uk_attrs, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.irdma_uk_attrs = type { i64, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.irdma_hmc_fpm_misc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irdma_hw = type { ptr, ptr, ptr, %struct.irdma_hmc_info }
%struct.irdma_hmc_info = type { i32, i8, i16, ptr, %struct.irdma_virt_mem, %struct.irdma_hmc_sd_table, [8192 x i16] }
%struct.irdma_hmc_sd_table = type { %struct.irdma_virt_mem, i32, i32, ptr }
%struct.irdma_sq_uk_wr_trk_info = type { i64, i32, i16, [2 x i8] }
%struct.irdma_cqe = type { [4 x i64] }
%struct.irdma_qp_quanta = type { [4 x i64] }
%struct.irdma_puda_send_info = type { i64, i32, i32, i8, i8, i8, ptr }
%struct.irdma_sc_ceq = type { i32, i64, ptr, ptr, ptr, i32, i32, %struct.irdma_ring, i8, i8, i32, i8, ptr, ptr, i32, %struct.spinlock, i8 }
%struct.irdma_ccq_cqe_info = type { ptr, i64, i32, i16, i16, i8, i8 }
%struct.irdma_cq_init_info = type { ptr, i64, i64, i32, i32, i8, i32, i8, i8, i8, %struct.irdma_cq_uk_init_info, ptr }
%struct.irdma_cq_uk_init_info = type { ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.irdma_puda_rsrc_info = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.irdma_sc_ah = type { ptr, %struct.irdma_ah_info }
%struct.irdma_ah_info = type { ptr, i32, i32, [4 x i32], [4 x i32], i32, i32, i16, i8, i8, i8, [6 x i8], i8 }
%struct.irdma_sc_cqp = type { i32, i64, i64, ptr, ptr, ptr, %struct.irdma_dma_mem, %struct.irdma_ring, ptr, %struct.irdma_dcqcn_cc_params, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.irdma_dcqcn_cc_params = type { i8, i8, i8, i8, i16, i16, i16, i32, i32 }

@irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irdma\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_puda_poll_cmpl\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/infiniband/hw/irdma/puda.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PUDA: qp_type error\0A\00", [43 x i8] zeroinitializer }, align 32
@irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PUDA: RQ completion\0A\00", [43 x i8] zeroinitializer }, align 32
@irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PUDA: SQ completion\0A\00", [43 x i8] zeroinitializer }, align 32
@irdma_puda_send.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irdma_puda_send\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PUDA: PUDA SEND WQE\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@irdma_puda_send_buf.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irdma_puda_send_buf\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PUDA: adding to txpend\0A\00", [40 x i8] zeroinitializer }, align 32
@irdma_puda_send_buf.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PUDA: adding to puda_send\0A\00", [37 x i8] zeroinitializer }, align 32
@irdma_puda_dele_rsrc.__UNIQUE_ID_ddebug822 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_puda_dele_rsrc\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PUDA: error resource type = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@irdma_puda_dele_rsrc.__UNIQUE_ID_ddebug823 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PUDA: error no resources\0A\00", [38 x i8] zeroinitializer }, align 32
@irdma_puda_create_rsrc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rsrc->bufpool_lock\00", [44 x i8] zeroinitializer }, align 32
@irdma_puda_create_rsrc.__UNIQUE_ID_ddebug824 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"irdma_puda_create_rsrc\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PUDA: error qp_create type=%d, status=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@irdma_puda_create_rsrc.__UNIQUE_ID_ddebug825 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 1, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PUDA: error alloc_buf\0A\00", [41 x i8] zeroinitializer }, align 32
@irdma_ieq_process_fpdus.__UNIQUE_ID_ddebug846 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irdma_ieq_process_fpdus\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IEQ: error no buf\0A\00", [45 x i8] zeroinitializer }, align 32
@irdma_puda_poll_info.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_puda_poll_info\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PUDA: PUDA CQE\00", [17 x i8] zeroinitializer }, align 32
@irdma_puda_poll_info.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PUDA: PUDA EXT-CQE\00", [45 x i8] zeroinitializer }, align 32
@irdma_puda_poll_info.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PUDA: receive error\0A\00", [43 x i8] zeroinitializer }, align 32
@irdma_puda_free_qp.__UNIQUE_ID_ddebug818 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irdma_puda_free_qp\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"PUDA: error puda qp destroy wqe, status = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@irdma_puda_free_qp.__UNIQUE_ID_ddebug819 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"PUDA: error puda qp destroy failed, status = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@irdma_puda_free_cq.__UNIQUE_ID_ddebug820 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irdma_puda_free_cq\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PUDA: error ieq cq destroy\0A\00", [36 x i8] zeroinitializer }, align 32
@irdma_puda_free_cq.__UNIQUE_ID_ddebug821 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PUDA: error ieq qp destroy done\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@irdma_puda_cq_wqe.__UNIQUE_ID_ddebug817 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irdma_puda_cq_wqe\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PUDA: PUDA CREATE CQ\00", [43 x i8] zeroinitializer }, align 32
@irdma_puda_qp_setctx.__UNIQUE_ID_ddebug750 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_puda_qp_setctx\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PUDA: PUDA QP CONTEXT\00", [42 x i8] zeroinitializer }, align 32
@irdma_puda_qp_wqe.__UNIQUE_ID_ddebug776 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irdma_puda_qp_wqe\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PUDA: PUDA QP CREATE\00", [43 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@irdma_ieq_process_buf.__UNIQUE_ID_ddebug843 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irdma_ieq_process_buf\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEQ: error bad fpdu len\0A\00", [39 x i8] zeroinitializer }, align 32
@irdma_ieq_process_buf.__UNIQUE_ID_ddebug844 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 1, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ERR: IRDMA_ERR_MPA_CRC\0A\00", [40 x i8] zeroinitializer }, align 32
@irdma_ieq_process_buf.__UNIQUE_ID_ddebug845 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 1, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IEQ: IEQ TX BUFFER\00", [45 x i8] zeroinitializer }, align 32
@irdma_ieq_handle_partial.__UNIQUE_ID_ddebug841 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 1, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"irdma_ieq_handle_partial\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEQ: error bad crc\0A\00", [44 x i8] zeroinitializer }, align 32
@irdma_ieq_handle_partial.__UNIQUE_ID_ddebug842 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.42, i8 1, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@irdma_ieq_handle_exception.__UNIQUE_ID_ddebug847 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 1, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"irdma_ieq_handle_exception\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IEQ: IEQ RX BUFFER\00", [45 x i8] zeroinitializer }, align 32
@irdma_ieq_handle_exception.__UNIQUE_ID_ddebug848 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 1, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IEQ: restarting new partial\0A\00", [35 x i8] zeroinitializer }, align 32
@irdma_ieq_handle_exception.__UNIQUE_ID_ddebug849 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.48, i8 1, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IEQ: Q2 BUFFER\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 339, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 384, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 392, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 491, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 518, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 554, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 922, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 950, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1034, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1083, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1092, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1549, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 258, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 261, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 266, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 848, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 855, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 879, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 884, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 759, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 597, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 633, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 326, i32 6 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1459, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1476, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1509, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1406, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1610, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1622, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [38 x i8] c"../drivers/infiniband/hw/irdma/puda.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1627, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @irdma_puda_create_rsrc.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_puda_create_rsrc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irdma_puda_get_bufpool(ptr noundef %rsrc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bufpool = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 24
  %bufpool_lock = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 27
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock) #6
  %0 = ptrtoint ptr %bufpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bufpool, align 4
  %cmp.i.not.i = icmp eq ptr %1, %bufpool
  br i1 %cmp.i.not.i, label %entry.if.else_crit_edge, label %if.then.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.irdma_puda_get_listbuf.exit_crit_edge

if.then.i.irdma_puda_get_listbuf.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %irdma_puda_get_listbuf.exit

irdma_puda_get_listbuf.exit:                      ; preds = %if.end.i.i.i, %if.then.i.irdma_puda_get_listbuf.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %irdma_puda_get_listbuf.exit.if.else_crit_edge, label %if.then

irdma_puda_get_listbuf.exit.if.else_crit_edge:    ; preds = %irdma_puda_get_listbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %irdma_puda_get_listbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %avail_buf_count = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 26
  %10 = ptrtoint ptr %avail_buf_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %avail_buf_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %avail_buf_count, align 4
  %vsi = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 4
  %12 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vsi, align 8
  %vsi6 = getelementptr inbounds %struct.irdma_puda_buf, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %vsi6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %vsi6, align 4
  br label %if.end

if.else:                                          ; preds = %irdma_puda_get_listbuf.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %stats_buf_alloc_fail = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 31
  %15 = ptrtoint ptr %stats_buf_alloc_fail to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %stats_buf_alloc_fail, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %stats_buf_alloc_fail, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %buf.0.i17 = phi ptr [ null, %if.else ], [ %1, %if.then ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock, i32 noundef %call2) #6
  ret ptr %buf.0.i17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_puda_ret_bufpool(ptr noundef %rsrc, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %do_lpb = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 15
  %0 = ptrtoint ptr %do_lpb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %do_lpb, align 1
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %do_lpb, align 1
  %bufpool_lock = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 27
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock) #6
  %bufpool = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 24
  %1 = ptrtoint ptr %bufpool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bufpool, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef %bufpool, ptr noundef %2) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buf, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %buf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bufpool, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %bufpool to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %buf, ptr %bufpool, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock, i32 noundef %call2) #6
  %avail_buf_count = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 26
  %7 = ptrtoint ptr %avail_buf_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %avail_buf_count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %avail_buf_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_puda_poll_cmpl(ptr noundef %dev, ptr nocapture noundef %cq, ptr nocapture noundef writeonly %compl_err) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.irdma_puda_cmpl_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %info) #6
  %0 = call ptr @memset(ptr %info, i32 0, i32 36)
  %cq_type2 = getelementptr inbounds %struct.irdma_sc_cq, ptr %cq, i32 0, i32 10
  %1 = ptrtoint ptr %cq_type2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cq_type2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  %3 = and i8 %2, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch = icmp eq i8 %3, 2
  br i1 %switch, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %vsi = getelementptr inbounds %struct.irdma_sc_cq, ptr %cq, i32 0, i32 4
  %4 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi, align 4
  %ilq = getelementptr inbounds %struct.irdma_sc_vsi, ptr %5, i32 0, i32 5
  %ieq = getelementptr inbounds %struct.irdma_sc_vsi, ptr %5, i32 0, i32 8
  %cond.in = select i1 %cmp, ptr %ilq, ptr %ieq
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load ptr, ptr %cond.in, align 8
  %call16 = call fastcc i32 @irdma_puda_poll_info(ptr noundef %cq, ptr noundef nonnull %info)
  %compl_error = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 6
  %7 = ptrtoint ptr %compl_error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %compl_error, align 4
  %9 = ptrtoint ptr %compl_err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %compl_err, align 4
  %10 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call16, label %if.then.done_crit_edge [
    i32 -22, label %if.then.cleanup_crit_edge
    i32 0, label %if.end23
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_poll_cmpl, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !120

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call ptr @to_ibdev(ptr noundef %dev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug599, ptr noundef %call14, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end23:                                         ; preds = %if.then
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %tobool25.not = icmp eq ptr %12, null
  %tobool27.not = icmp eq ptr %cond, null
  %or.cond223 = select i1 %tobool25.not, i1 true, i1 %tobool27.not
  br i1 %or.cond223, label %if.end23.done_crit_edge, label %if.end29

if.end23.done_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end29:                                         ; preds = %if.end23
  %qp_id = getelementptr inbounds %struct.irdma_qp_uk, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %qp_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qp_id, align 4
  %qp_id30 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 12
  %15 = ptrtoint ptr %qp_id30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qp_id30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp31.not = icmp eq i32 %14, %16
  br i1 %cmp31.not, label %if.end34, label %if.end29.done_crit_edge

if.end29.done_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end34:                                         ; preds = %if.end29
  %q_type = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 1
  %17 = ptrtoint ptr %q_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %q_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp36 = icmp eq i8 %18, 0
  br i1 %cmp36, label %if.then38, label %do.body84

if.then38:                                        ; preds = %if.end34
  %rq_wrid_array = getelementptr inbounds %struct.irdma_qp_uk, ptr %12, i32 0, i32 5
  %19 = ptrtoint ptr %rq_wrid_array to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rq_wrid_array, align 4
  %wqe_idx = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 8
  %21 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wqe_idx, align 4
  %arrayidx = getelementptr i64, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx, align 8
  %conv39 = trunc i64 %24 to i32
  %25 = inttoptr i32 %conv39 to ptr
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %pa = getelementptr inbounds %struct.irdma_puda_buf, ptr %25, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pa, align 4
  %size = getelementptr inbounds %struct.irdma_puda_buf, ptr %25, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef 0) #6
  %call41 = call i32 @irdma_puda_get_tcpip_info(ptr noundef nonnull %info, ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end53, label %if.then43

if.then43:                                        ; preds = %if.then38
  %stats_rcvd_pkt_err = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 34
  %34 = ptrtoint ptr %stats_rcvd_pkt_err to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %stats_rcvd_pkt_err, align 8
  %inc = add i64 %35, 1
  store i64 %inc, ptr %stats_rcvd_pkt_err, align 8
  br i1 %cmp, label %if.then47, label %if.else50

if.then47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %qp48 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 1
  %36 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wqe_idx, align 4
  call fastcc void @irdma_ilq_putback_rcvbuf(ptr noundef %qp48, ptr noundef %25, i32 noundef %37)
  br label %done

if.else50:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  call void @irdma_puda_ret_bufpool(ptr noundef nonnull %cond, ptr noundef %25)
  %call51 = call fastcc i32 @irdma_puda_replenish_rq(ptr noundef nonnull %cond, i1 noundef zeroext false)
  br label %done

if.end53:                                         ; preds = %if.then38
  %stats_pkt_rcvd = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 32
  %38 = ptrtoint ptr %stats_pkt_rcvd to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %stats_pkt_rcvd, align 8
  %inc54 = add i64 %39, 1
  store i64 %inc54, ptr %stats_pkt_rcvd, align 8
  %40 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wqe_idx, align 4
  %compl_rxwqe_idx = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 18
  %42 = ptrtoint ptr %compl_rxwqe_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %compl_rxwqe_idx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_poll_cmpl, %if.then68)) #6
          to label %do.end72 [label %if.then68], !srcloc !120

if.then68:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %call69 = call ptr @to_ibdev(ptr noundef %dev) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug600, ptr noundef %call69, ptr noundef nonnull @.str.4) #6
  br label %do.end72

do.end72:                                         ; preds = %if.then68, %if.end53
  %receive = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 29
  %43 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %receive, align 8
  %vsi73 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 4
  %45 = ptrtoint ptr %vsi73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vsi73, align 8
  call void %44(ptr noundef %46, ptr noundef %25) #6
  br i1 %cmp, label %if.then77, label %if.else80

if.then77:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  %qp78 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 1
  %47 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wqe_idx, align 4
  call fastcc void @irdma_ilq_putback_rcvbuf(ptr noundef %qp78, ptr noundef %25, i32 noundef %48)
  br label %done

if.else80:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = call fastcc i32 @irdma_puda_replenish_rq(ptr noundef nonnull %cond, i1 noundef zeroext false)
  br label %done

do.body84:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_poll_cmpl, %if.then96)) #6
          to label %do.end100 [label %if.then96], !srcloc !120

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  %call97 = tail call ptr @to_ibdev(ptr noundef %dev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug601, ptr noundef %call97, ptr noundef nonnull @.str.5) #6
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %do.body84
  %sq_wrtrk_array = getelementptr inbounds %struct.irdma_qp_uk, ptr %12, i32 0, i32 4
  %49 = ptrtoint ptr %sq_wrtrk_array to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sq_wrtrk_array, align 4
  %wqe_idx101 = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 8
  %51 = ptrtoint ptr %wqe_idx101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wqe_idx101, align 4
  %arrayidx102 = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx102, align 8
  %conv103 = trunc i64 %54 to i32
  %55 = inttoptr i32 %conv103 to ptr
  %hw104 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  %56 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw104, align 8
  %device105 = getelementptr inbounds %struct.irdma_hw, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %device105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device105, align 4
  %pa107 = getelementptr inbounds %struct.irdma_puda_buf, ptr %55, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %pa107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pa107, align 4
  %size109 = getelementptr inbounds %struct.irdma_puda_buf, ptr %55, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %size109 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size109, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef 0) #6
  %size111 = getelementptr inbounds %struct.irdma_qp_uk, ptr %12, i32 0, i32 9, i32 2
  %64 = ptrtoint ptr %size111 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size111, align 4
  %rem = urem i32 %52, %65
  %tail = getelementptr inbounds %struct.irdma_qp_uk, ptr %12, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %rem, ptr %tail, align 4
  %xmit_complete = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 30
  %67 = ptrtoint ptr %xmit_complete to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xmit_complete, align 4
  %vsi113 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 4
  %69 = ptrtoint ptr %vsi113 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vsi113, align 8
  tail call void %68(ptr noundef %70, ptr noundef %55) #6
  %bufpool_lock = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 27
  %call120 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock) #6
  %tx_wqe_avail_cnt = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 21
  %71 = ptrtoint ptr %tx_wqe_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_wqe_avail_cnt, align 8
  %inc125 = add i32 %72, 1
  store i32 %inc125, ptr %tx_wqe_avail_cnt, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock, i32 noundef %call120) #6
  %txpend = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %cond, i32 0, i32 23
  %73 = ptrtoint ptr %txpend to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %txpend, align 4
  %cmp.i.not = icmp eq ptr %74, %txpend
  br i1 %cmp.i.not, label %do.end100.done_crit_edge, label %if.then129

do.end100.done_crit_edge:                         ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then129:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irdma_puda_send_buf(ptr noundef nonnull %cond, ptr noundef null)
  br label %done

done:                                             ; preds = %if.then129, %do.end100.done_crit_edge, %if.else80, %if.then77, %if.else50, %if.then47, %if.end29.done_crit_edge, %if.end23.done_crit_edge, %if.then.done_crit_edge
  %ret.0 = phi i32 [ %call41, %if.then47 ], [ %call41, %if.else50 ], [ 0, %if.then77 ], [ 0, %if.else80 ], [ 0, %do.end100.done_crit_edge ], [ 0, %if.then129 ], [ %call16, %if.then.done_crit_edge ], [ -10, %if.end23.done_crit_edge ], [ -10, %if.end29.done_crit_edge ]
  %cq_ring = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6
  %75 = ptrtoint ptr %cq_ring to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cq_ring, align 4
  %add = add i32 %76, 1
  %size133 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 2
  %77 = ptrtoint ptr %size133 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size133, align 4
  %rem134 = urem i32 %add, %78
  store i32 %rem134, ptr %cq_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem134)
  %tobool139.not = icmp eq i32 %rem134, 0
  br i1 %tobool139.not, label %if.then140, label %done.if.end146_crit_edge

done.if.end146_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.then140:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  %polarity = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 7
  %79 = ptrtoint ptr %polarity to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool141.not = icmp eq i8 %80, 0
  %conv144 = zext i1 %tobool141.not to i8
  %81 = ptrtoint ptr %polarity to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv144, ptr %polarity, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then140, %done.if.end146_crit_edge
  %tail148 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 1
  %82 = ptrtoint ptr %tail148 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tail148, align 4
  %add149 = add i32 %83, 1
  %rem152 = urem i32 %add149, %78
  store i32 %rem152, ptr %tail148, align 4
  %shadow_area = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 3
  %84 = ptrtoint ptr %shadow_area to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %shadow_area, align 4
  %conv157 = zext i32 %rem134 to i64
  %86 = call i64 @llvm.bswap.i64(i64 %conv157) #6
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %85, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %if.then13, %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end146 ], [ -10, %if.then13 ], [ %call16, %if.then.cleanup_crit_edge ], [ -10, %do.body ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_ibdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_ibdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_puda_poll_info(ptr nocapture noundef %cq, ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 8
  %cq_ring = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6
  %2 = ptrtoint ptr %cq_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_ring, align 8
  %arrayidx = getelementptr %struct.irdma_cqe, ptr %1, i32 %3
  %arrayidx.i = getelementptr i64, ptr %arrayidx, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #6
  %.lobit = lshr i64 %6, 63
  %7 = trunc i64 %.lobit to i32
  %polarity17 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 7
  %8 = ptrtoint ptr %polarity17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %polarity17, align 4
  %conv18 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv18)
  %cmp.not = icmp eq i32 %7, %conv18
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.irdma_sc_cq, ptr %cq, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %11, i32 0, i32 25, i32 0, i32 9
  %12 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp21 = icmp ugt i8 %13, 1
  %14 = and i64 %6, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool42 = icmp ne i64 %14, 0
  %ext_valid.0.off0 = select i1 %cmp21, i1 %tobool42, i1 false
  br i1 %ext_valid.0.off0, label %if.then46, label %if.end.do.body110_crit_edge

if.end.do.body110_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body110

if.then46:                                        ; preds = %if.end
  %add = add i32 %3, 1
  %size = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %rem = urem i32 %add, %16
  %arrayidx51 = getelementptr %struct.irdma_cqe, ptr %1, i32 %rem
  %arrayidx.i597 = getelementptr i64, ptr %arrayidx51, i32 3
  %17 = ptrtoint ptr %arrayidx.i597 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i597, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #6
  %shr71 = lshr i64 %19, 63
  %conv72 = trunc i64 %shr71 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool73.not = icmp eq i32 %rem, 0
  %xor = zext i1 %tobool73.not to i8
  %polarity.0 = xor i8 %conv72, %xor
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %polarity.0)
  %cmp81.not = icmp eq i8 %9, %polarity.0
  br i1 %cmp81.not, label %if.end84, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end84:                                         ; preds = %if.then46
  %20 = ptrtoint ptr %cq_ring to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rem, ptr %cq_ring, align 4
  br i1 %tobool73.not, label %if.then96, label %if.end84.if.end101_crit_edge

if.end84.if.end101_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then96:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool98.not = icmp eq i8 %9, 0
  %conv99 = zext i1 %tobool98.not to i8
  %21 = ptrtoint ptr %polarity17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv99, ptr %polarity17, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %if.end84.if.end101_crit_edge
  %tail = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail, align 4
  %add103 = add i32 %23, 1
  %rem106 = urem i32 %add103, %16
  store i32 %rem106, ptr %tail, align 4
  %extract = lshr i64 %19, 55
  %extract.t = trunc i64 %extract to i8
  br label %do.body110

do.body110:                                       ; preds = %if.end101, %if.end.do.body110_crit_edge
  %qword7.0.off55 = phi i8 [ %extract.t, %if.end101 ], [ 0, %if.end.do.body110_crit_edge ]
  %ext_cqe.0 = phi ptr [ %arrayidx51, %if.end101 ], [ null, %if.end.do.body110_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_poll_info.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_poll_info, %if.then119)) #6
          to label %do.end122 [label %if.then119], !srcloc !120

if.then119:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.22, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef %arrayidx, i32 noundef 32, i1 noundef zeroext false) #6
  br label %do.end122

do.end122:                                        ; preds = %if.then119, %do.body110
  br i1 %ext_valid.0.off0, label %do.body125, label %do.end122.do.end156_crit_edge

do.end122.do.end156_crit_edge:                    ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end156

do.body125:                                       ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_poll_info.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_poll_info, %if.then137)) #6
          to label %do.end156 [label %if.then137], !srcloc !120

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.23, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef %ext_cqe.0, i32 noundef 32, i1 noundef zeroext false) #6
  br label %do.end156

do.end156:                                        ; preds = %if.then137, %do.body125, %do.end122.do.end156_crit_edge
  %24 = and i64 %6, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool160.not = icmp eq i64 %24, 0
  br i1 %tobool160.not, label %if.end220, label %do.body164

do.body164:                                       ; preds = %do.end156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_poll_info.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_poll_info, %if.then176)) #6
          to label %do.end196 [label %if.then176], !srcloc !120

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %call178 = tail call ptr @to_ibdev(ptr noundef %26) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_poll_info.__UNIQUE_ID_ddebug533, ptr noundef %call178, ptr noundef nonnull @.str.24) #6
  br label %do.end196

do.end196:                                        ; preds = %if.then176, %do.body164
  %27 = trunc i64 %6 to i32
  %compl_error = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 6
  %28 = ptrtoint ptr %compl_error to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %compl_error, align 4
  br label %cleanup

if.end220:                                        ; preds = %do.end156
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %30) #6
  %arrayidx.i598 = getelementptr i64, ptr %arrayidx, i32 2
  %32 = ptrtoint ptr %arrayidx.i598 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i598, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #6
  %and237 = lshr i64 %6, 62
  %35 = trunc i64 %and237 to i8
  %conv239 = and i8 %35, 1
  %q_type = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 1
  %36 = ptrtoint ptr %q_type to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv239, ptr %q_type, align 4
  %and256 = lshr i64 %34, 32
  %37 = trunc i64 %and256 to i32
  %conv258 = and i32 %37, 16777215
  %qp_id = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 7
  %38 = ptrtoint ptr %qp_id to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv258, ptr %qp_id, align 4
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %hw_rev262 = getelementptr inbounds %struct.irdma_sc_dev, ptr %40, i32 0, i32 25, i32 0, i32 9
  %41 = ptrtoint ptr %hw_rev262 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hw_rev262, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp264 = icmp ugt i8 %42, 1
  br i1 %cmp264, label %do.end281, label %if.end220.if.end287_crit_edge

if.end220.if.end287_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287

do.end281:                                        ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #8
  %ipv4 = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 9
  %43 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %ipv4, align 4
  %sh.diff589 = lshr i64 %6, 46
  %tr.sh.diff590 = trunc i64 %sh.diff589 to i8
  %bf.shl = and i8 %tr.sh.diff590, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ipv4, align 4
  br label %if.end287

if.end287:                                        ; preds = %do.end281, %if.end220.if.end287_crit_edge
  %arrayidx.i599 = getelementptr i64, ptr %arrayidx, i32 1
  %44 = ptrtoint ptr %arrayidx.i599 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx.i599, align 8
  %46 = tail call i64 @llvm.bswap.i64(i64 %45) #6
  %conv288 = trunc i64 %46 to i32
  %47 = inttoptr i32 %conv288 to ptr
  %48 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %info, align 4
  %and305 = lshr i64 %6, 32
  %49 = trunc i64 %and305 to i32
  %conv307 = and i32 %49, 32767
  %wqe_idx = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 8
  %50 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv307, ptr %wqe_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv239)
  %cmp310 = icmp eq i8 %conv239, 0
  br i1 %cmp310, label %if.then312, label %if.end287.cleanup_crit_edge

if.end287.cleanup_crit_edge:                      ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then312:                                       ; preds = %if.end287
  br i1 %ext_valid.0.off0, label %do.end329, label %if.then312.if.end422_crit_edge

if.then312.if.end422_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end422

do.end329:                                        ; preds = %if.then312
  %vlan_valid = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 9
  %51 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load334 = load i8, ptr %vlan_valid, align 4
  %bf.shl335 = and i8 %qword7.0.off55, 32
  %bf.clear336 = and i8 %bf.load334, -33
  %bf.set337 = or i8 %bf.clear336, %bf.shl335
  store i8 %bf.set337, ptr %vlan_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl335)
  %bf.cast.not = icmp eq i8 %bf.shl335, 0
  br i1 %bf.cast.not, label %do.end329.do.end377_crit_edge, label %if.then342

do.end329.do.end377_crit_edge:                    ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end377

if.then342:                                       ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i600 = getelementptr i64, ptr %ext_cqe.0, i32 2
  %52 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx.i600, align 8
  %54 = tail call i64 @llvm.bswap.i64(i64 %53) #6
  %shr360 = lshr i64 %54, 48
  %conv361 = trunc i64 %shr360 to i16
  %vlan = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 4
  %55 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv361, ptr %vlan, align 4
  br label %do.end377

do.end377:                                        ; preds = %if.then342, %do.end329.do.end377_crit_edge
  %bf.shl383 = and i8 %qword7.0.off55, 64
  %bf.clear384 = and i8 %bf.set337, -65
  %bf.set385 = or i8 %bf.clear384, %bf.shl383
  %56 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %bf.set385, ptr %vlan_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl383)
  %bf.cast391.not = icmp eq i8 %bf.shl383, 0
  br i1 %bf.cast391.not, label %do.end377.if.end422_crit_edge, label %if.then392

do.end377.if.end422_crit_edge:                    ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end422

if.then392:                                       ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i601 = getelementptr i64, ptr %ext_cqe.0, i32 2
  %57 = ptrtoint ptr %arrayidx.i601 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.i601, align 8
  %59 = tail call i64 @llvm.bswap.i64(i64 %58) #6
  %shr393 = lshr i64 %59, 40
  %conv395 = trunc i64 %shr393 to i8
  %smac = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 10
  %60 = ptrtoint ptr %smac to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv395, ptr %smac, align 1
  %shr397 = lshr i64 %59, 32
  %conv399 = trunc i64 %shr397 to i8
  %arrayidx401 = getelementptr %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 10, i32 1
  %61 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv399, ptr %arrayidx401, align 1
  %shr402 = lshr i64 %59, 24
  %conv404 = trunc i64 %shr402 to i8
  %arrayidx406 = getelementptr %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 10, i32 2
  %62 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv404, ptr %arrayidx406, align 1
  %shr407 = lshr i64 %59, 16
  %conv409 = trunc i64 %shr407 to i8
  %arrayidx411 = getelementptr %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 10, i32 3
  %63 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv409, ptr %arrayidx411, align 1
  %shr412 = lshr i64 %59, 8
  %conv414 = trunc i64 %shr412 to i8
  %arrayidx416 = getelementptr %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 10, i32 4
  %64 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv414, ptr %arrayidx416, align 1
  %conv418 = trunc i64 %59 to i8
  %arrayidx420 = getelementptr %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 10, i32 5
  %65 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv418, ptr %arrayidx420, align 1
  br label %if.end422

if.end422:                                        ; preds = %if.then392, %do.end377.if.end422_crit_edge, %if.then312.if.end422_crit_edge
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 8
  %hw_rev426 = getelementptr inbounds %struct.irdma_sc_dev, ptr %67, i32 0, i32 25, i32 0, i32 9
  %68 = ptrtoint ptr %hw_rev426 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %hw_rev426, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp428 = icmp eq i8 %69, 1
  br i1 %cmp428, label %do.end445, label %if.end422.do.end509_crit_edge

if.end422.do.end509_crit_edge:                    ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end509

do.end445:                                        ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_valid450 = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 9
  %70 = ptrtoint ptr %vlan_valid450 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load451 = load i8, ptr %vlan_valid450, align 4
  %sh.diff = lshr i64 %6, 45
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %bf.shl452 = and i8 %tr.sh.diff, 32
  %bf.clear453 = and i8 %bf.load451, -33
  %bf.set454 = or i8 %bf.clear453, %bf.shl452
  store i8 %bf.set454, ptr %vlan_valid450, align 4
  %and472 = lshr i64 %34, 16
  %71 = trunc i64 %and472 to i8
  %conv474 = and i8 %71, 3
  %l4proto = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 3
  %72 = ptrtoint ptr %l4proto to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv474, ptr %l4proto, align 2
  %73 = trunc i64 %34 to i8
  %conv493 = and i8 %73, 3
  %l3proto = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 2
  %74 = ptrtoint ptr %l3proto to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv493, ptr %l3proto, align 1
  br label %do.end509

do.end509:                                        ; preds = %do.end445, %if.end422.do.end509_crit_edge
  %conv513 = trunc i64 %31 to i32
  %payload_len = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 5
  %75 = ptrtoint ptr %payload_len to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv513, ptr %payload_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end509, %if.end287.cleanup_crit_edge, %do.end196, %if.then46.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -67, %do.end196 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then46.cleanup_crit_edge ], [ 0, %do.end509 ], [ 0, %if.end287.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_puda_get_tcpip_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_ilq_putback_rcvbuf(ptr nocapture noundef readonly %qp, ptr nocapture noundef readonly %buf, i32 noundef %wqe_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %pa = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pa, align 4
  %size = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef 0) #6
  %rq_base = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 1
  %10 = ptrtoint ptr %rq_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq_base, align 4
  %arrayidx = getelementptr %struct.irdma_qp_quanta, ptr %11, i32 %wqe_idx
  %arrayidx.i = getelementptr i64, ptr %arrayidx, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %15, i32 0, i32 25, i32 0, i32 9
  %16 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp = icmp ugt i8 %17, 1
  br i1 %cmp, label %if.then, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i61 = getelementptr i64, ptr %arrayidx, i32 1
  %18 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i61, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not = icmp eq i64 %13, 0
  %20 = and i64 %19, -129
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  %masksel = select i1 %tobool.not, i64 -9223372036854775808, i64 0
  %storemerge60 = or i64 %21, %masksel
  %22 = tail call i64 @llvm.bswap.i64(i64 %storemerge60) #6
  %23 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx.i61, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !121
  br label %if.end33

if.end33:                                         ; preds = %if.then, %entry.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool34.not = icmp eq i64 %13, 0
  %. = select i1 %tobool34.not, i64 128, i64 0
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %., ptr %arrayidx.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_puda_replenish_rq(ptr noundef %rsrc, i1 noundef zeroext %initial) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq_invalid_cnt = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 20
  %0 = ptrtoint ptr %rxq_invalid_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxq_invalid_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %bufpool.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 24
  %bufpool_lock.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 27
  %avail_buf_count.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 26
  %vsi.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 4
  %rx_wqe_idx = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 19
  %dev.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 3
  %rq_wrid_array.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 0, i32 5
  %rq_base.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 0, i32 1
  %uk_attrs.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 0, i32 2
  %rq_size = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %irdma_puda_post_recvbuf.exit.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %irdma_puda_post_recvbuf.exit.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %2 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %bufpool.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %bufpool.i
  br i1 %cmp.i.not.i.i, label %for.body.irdma_puda_get_bufpool.exit.thread_crit_edge, label %if.then.i.i

for.body.irdma_puda_get_bufpool.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_bufpool.exit.thread

if.then.i.i:                                      ; preds = %for.body
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.irdma_puda_get_listbuf.exit.i_crit_edge

if.then.i.i.irdma_puda_get_listbuf.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %irdma_puda_get_listbuf.exit.i

irdma_puda_get_listbuf.exit.i:                    ; preds = %if.end.i.i.i.i, %if.then.i.i.irdma_puda_get_listbuf.exit.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %irdma_puda_get_listbuf.exit.i.irdma_puda_get_bufpool.exit.thread_crit_edge, label %if.end

irdma_puda_get_listbuf.exit.i.irdma_puda_get_bufpool.exit.thread_crit_edge: ; preds = %irdma_puda_get_listbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_bufpool.exit.thread

irdma_puda_get_bufpool.exit.thread:               ; preds = %irdma_puda_get_listbuf.exit.i.irdma_puda_get_bufpool.exit.thread_crit_edge, %for.body.irdma_puda_get_bufpool.exit.thread_crit_edge
  %stats_buf_alloc_fail.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 31
  %12 = ptrtoint ptr %stats_buf_alloc_fail.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %stats_buf_alloc_fail.i, align 8
  %inc.i = add i64 %13, 1
  store i64 %inc.i, ptr %stats_buf_alloc_fail.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  br label %cleanup

if.end:                                           ; preds = %irdma_puda_get_listbuf.exit.i
  %14 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %avail_buf_count.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %avail_buf_count.i, align 4
  %16 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vsi.i, align 8
  %vsi6.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %3, i32 0, i32 19
  %18 = ptrtoint ptr %vsi6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %vsi6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  %19 = ptrtoint ptr %rx_wqe_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_wqe_idx, align 8
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %hw.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 8
  %device.i = getelementptr inbounds %struct.irdma_hw, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device.i, align 4
  %pa.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %3, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pa.i, align 4
  %size.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %3, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef 0) #6
  %31 = ptrtoint ptr %3 to i32
  %conv.i = zext i32 %31 to i64
  %32 = ptrtoint ptr %rq_wrid_array.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rq_wrid_array.i, align 4
  %arrayidx.i = getelementptr i64, ptr %33, i32 %20
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  %35 = ptrtoint ptr %rq_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rq_base.i, align 4
  %arrayidx4.i = getelementptr %struct.irdma_qp_quanta, ptr %36, i32 %20
  br i1 %initial, label %if.end.if.end.thread.i_crit_edge, label %if.end.i

if.end.if.end.thread.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread.i

if.end.i:                                         ; preds = %if.end
  %arrayidx.i.i = getelementptr i64, ptr %arrayidx4.i, i32 3
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool5.not.i = icmp eq i64 %38, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end.thread.i_crit_edge, label %if.end.i.irdma_puda_post_recvbuf.exit_crit_edge

if.end.i.irdma_puda_post_recvbuf.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_post_recvbuf.exit

if.end.i.if.end.thread.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end.i.if.end.thread.i_crit_edge, %if.end.if.end.thread.i_crit_edge
  br label %irdma_puda_post_recvbuf.exit

irdma_puda_post_recvbuf.exit:                     ; preds = %if.end.thread.i, %if.end.i.irdma_puda_post_recvbuf.exit_crit_edge
  %39 = phi i64 [ -9223372036854775808, %if.end.thread.i ], [ 0, %if.end.i.irdma_puda_post_recvbuf.exit_crit_edge ]
  %arrayidx.i106.i = getelementptr i64, ptr %arrayidx4.i, i32 2
  %40 = ptrtoint ptr %arrayidx.i106.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %arrayidx.i106.i, align 8
  %41 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pa.i, align 4
  %conv20.i = zext i32 %42 to i64
  %43 = tail call i64 @llvm.bswap.i64(i64 %conv20.i) #6
  %44 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx4.i, align 8
  %45 = ptrtoint ptr %uk_attrs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %uk_attrs.i, align 8
  %hw_rev.i = getelementptr inbounds %struct.irdma_uk_attrs, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hw_rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp.i = icmp eq i8 %48, 1
  %49 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i, align 4
  %conv53.i = zext i32 %50 to i64
  %shl85.i = shl nuw i64 %conv53.i, 32
  %and86.i = and i64 %shl85.i, 9223372032559808512
  %or.i = or i64 %and86.i, %39
  %or.sink.i = select i1 %cmp.i, i64 %conv53.i, i64 %or.i
  %51 = tail call i64 @llvm.bswap.i64(i64 %or.sink.i) #6
  %arrayidx.i108.i = getelementptr i64, ptr %arrayidx4.i, i32 1
  %52 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx.i108.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !122
  %53 = lshr exact i64 %39, 56
  %arrayidx.i109.i = getelementptr i64, ptr %arrayidx4.i, i32 3
  %54 = ptrtoint ptr %arrayidx.i109.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx.i109.i, align 8
  %55 = ptrtoint ptr %rx_wqe_idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_wqe_idx, align 8
  %add = add i32 %56, 1
  %57 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rq_size, align 4
  %rem = urem i32 %add, %58
  store i32 %rem, ptr %rx_wqe_idx, align 8
  %59 = ptrtoint ptr %rxq_invalid_cnt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rxq_invalid_cnt, align 4
  %dec = add i32 %60, -1
  store i32 %dec, ptr %rxq_invalid_cnt, align 4
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %irdma_puda_post_recvbuf.exit.cleanup_crit_edge, label %irdma_puda_post_recvbuf.exit.for.body_crit_edge

irdma_puda_post_recvbuf.exit.for.body_crit_edge:  ; preds = %irdma_puda_post_recvbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

irdma_puda_post_recvbuf.exit.cleanup_crit_edge:   ; preds = %irdma_puda_post_recvbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %irdma_puda_post_recvbuf.exit.cleanup_crit_edge, %irdma_puda_get_bufpool.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -64, %irdma_puda_get_bufpool.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %irdma_puda_post_recvbuf.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_puda_send_buf(ptr noundef %rsrc, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.irdma_puda_send_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #6
  %0 = getelementptr inbounds i8, ptr %info, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %bufpool_lock = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 27
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock) #6
  %tx_wqe_avail_cnt = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 21
  %2 = ptrtoint ptr %tx_wqe_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_wqe_avail_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %tobool5.not = icmp eq ptr %buf, null
  br i1 %tobool5.not, label %if.then27.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %txpend = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 23
  %4 = ptrtoint ptr %txpend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %txpend, align 4
  %cmp.i.not = icmp eq ptr %5, %txpend
  br i1 %cmp.i.not, label %if.end33.critedge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %txpend8 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 23, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef %7, ptr noundef %txpend8) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %prev.i, align 4
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %txpend8, ptr %buf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %buf, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock, i32 noundef %call2) #6
  %stats_sent_pkt_q = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 35
  %12 = ptrtoint ptr %stats_sent_pkt_q to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %stats_sent_pkt_q, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %stats_sent_pkt_q, align 8
  %type = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 9
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp10 = icmp eq i32 %15, 1
  br i1 %cmp10, label %do.body13, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body13:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_send_buf.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_send_buf, %if.then19)) #6
          to label %cleanup [label %if.then19], !srcloc !120

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call20 = tail call ptr @to_ibdev(ptr noundef %17) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_send_buf.__UNIQUE_ID_ddebug688, ptr noundef %call20, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.then27.critedge:                               ; preds = %lor.lhs.false
  %dec.c132 = add i32 %3, -1
  %18 = ptrtoint ptr %tx_wqe_avail_cnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dec.c132, ptr %tx_wqe_avail_cnt, align 8
  %txpend28 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 23
  %19 = ptrtoint ptr %txpend28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %txpend28, align 4
  %cmp.i.not.i = icmp eq ptr %20, %txpend28
  br i1 %cmp.i.not.i, label %if.then27.critedge.done_crit_edge, label %if.then.i

if.then27.critedge.done_crit_edge:                ; preds = %if.then27.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then.i:                                        ; preds = %if.then27.critedge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.irdma_puda_get_listbuf.exit_crit_edge

if.then.i.irdma_puda_get_listbuf.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %irdma_puda_get_listbuf.exit

irdma_puda_get_listbuf.exit:                      ; preds = %if.end.i.i.i, %if.then.i.irdma_puda_get_listbuf.exit_crit_edge
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %irdma_puda_get_listbuf.exit.done_crit_edge, label %irdma_puda_get_listbuf.exit.if.end33_crit_edge

irdma_puda_get_listbuf.exit.if.end33_crit_edge:   ; preds = %irdma_puda_get_listbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

irdma_puda_get_listbuf.exit.done_crit_edge:       ; preds = %irdma_puda_get_listbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end33.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dec.c = add i32 %3, -1
  %29 = ptrtoint ptr %tx_wqe_avail_cnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dec.c, ptr %tx_wqe_avail_cnt, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end33.critedge, %irdma_puda_get_listbuf.exit.if.end33_crit_edge
  %buf.addr.0 = phi ptr [ %20, %irdma_puda_get_listbuf.exit.if.end33_crit_edge ], [ %buf, %if.end33.critedge ]
  %scratch = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 6
  %30 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.addr.0, ptr %scratch, align 4
  %pa = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.addr.0, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pa, align 4
  %conv34 = zext i32 %32 to i64
  %33 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv34, ptr %info, align 8
  %totallen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.addr.0, i32 0, i32 12
  %34 = ptrtoint ptr %totallen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %totallen, align 4
  %len = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 1
  %36 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %len, align 8
  %tcphlen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.addr.0, i32 0, i32 10
  %37 = ptrtoint ptr %tcphlen to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tcphlen, align 4
  %tcplen = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 3
  %39 = ptrtoint ptr %tcplen to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %tcplen, align 8
  %ipv4 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.addr.0, i32 0, i32 15
  %40 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %ipv4, align 1
  %ipv435 = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 5
  %bf.load.lobit = and i8 %bf.load, -128
  %41 = ptrtoint ptr %ipv435 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load36 = load i8, ptr %ipv435, align 2
  %bf.clear = and i8 %bf.load36, 127
  %bf.set = or i8 %bf.clear, %bf.load.lobit
  store i8 %bf.set, ptr %ipv435, align 2
  %dev38 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 3
  %42 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev38, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %43, i32 0, i32 25, i32 0, i32 9
  %44 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp40 = icmp ugt i8 %45, 1
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %ah_id = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.addr.0, i32 0, i32 17
  %46 = ptrtoint ptr %ah_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ah_id, align 4
  %ah_id43 = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 2
  %48 = ptrtoint ptr %ah_id43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %ah_id43, align 4
  br label %if.end55

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %maclen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.addr.0, i32 0, i32 11
  %49 = ptrtoint ptr %maclen to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %maclen, align 1
  %maclen44 = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 4
  %51 = ptrtoint ptr %maclen44 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %maclen44, align 1
  %52 = shl i8 %bf.load, 1
  %bf.shl51 = and i8 %52, 64
  %bf.clear52 = and i8 %bf.set, -65
  %bf.set53 = or i8 %bf.clear52, %bf.shl51
  %53 = ptrtoint ptr %ipv435 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %bf.set53, ptr %ipv435, align 2
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then42
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %43, i32 0, i32 8
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 4
  %58 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pa, align 4
  %size = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.addr.0, i32 0, i32 1, i32 2
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef 0) #6
  %qp = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1
  %call60 = call i32 @irdma_puda_send(ptr noundef %qp, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else92, label %if.then62

if.then62:                                        ; preds = %if.end55
  %62 = ptrtoint ptr %tx_wqe_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_wqe_avail_cnt, align 8
  %inc64 = add i32 %63, 1
  store i32 %inc64, ptr %tx_wqe_avail_cnt, align 8
  %stats_sent_pkt_q65 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 35
  %64 = ptrtoint ptr %stats_sent_pkt_q65 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %stats_sent_pkt_q65, align 8
  %inc66 = add i64 %65, 1
  store i64 %inc66, ptr %stats_sent_pkt_q65, align 8
  %txpend68 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 23
  %66 = ptrtoint ptr %txpend68 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %txpend68, align 4
  %call.i.i136 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %buf.addr.0, ptr noundef %txpend68, ptr noundef %67) #6
  br i1 %call.i.i136, label %if.end.i.i138, label %if.then62.list_add.exit_crit_edge

if.then62.list_add.exit_crit_edge:                ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i138:                                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf.addr.0, ptr %prev1.i.i, align 4
  %69 = ptrtoint ptr %buf.addr.0 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %67, ptr %buf.addr.0, align 4
  %prev3.i.i137 = getelementptr inbounds %struct.list_head, ptr %buf.addr.0, i32 0, i32 1
  %70 = ptrtoint ptr %prev3.i.i137 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %txpend68, ptr %prev3.i.i137, align 4
  %71 = ptrtoint ptr %txpend68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %buf.addr.0, ptr %txpend68, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i138, %if.then62.list_add.exit_crit_edge
  %type69 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 9
  %72 = ptrtoint ptr %type69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp70 = icmp eq i32 %73, 1
  br i1 %cmp70, label %do.body73, label %list_add.exit.done_crit_edge

list_add.exit.done_crit_edge:                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.body73:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_send_buf.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_send_buf, %if.then85)) #6
          to label %done [label %if.then85], !srcloc !120

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev38, align 4
  %call87 = tail call ptr @to_ibdev(ptr noundef %75) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_send_buf.__UNIQUE_ID_ddebug689, ptr noundef %call87, ptr noundef nonnull @.str.11) #6
  br label %done

if.else92:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %stats_pkt_sent = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 33
  %76 = ptrtoint ptr %stats_pkt_sent to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %stats_pkt_sent, align 8
  %inc93 = add i64 %77, 1
  store i64 %inc93, ptr %stats_pkt_sent, align 8
  br label %done

done:                                             ; preds = %if.else92, %if.then85, %do.body73, %list_add.exit.done_crit_edge, %irdma_puda_get_listbuf.exit.done_crit_edge, %if.then27.critedge.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock, i32 noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then19, %do.body13, %list_add_tail.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_puda_send(ptr noundef %qp, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tcplen = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %tcplen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tcplen, align 8
  %2 = lshr i8 %1, 2
  %ipv4 = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %ipv4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %. = select i1 %bf.cast.not, i8 1, i8 3
  %sq_ring.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %4 = ptrtoint ptr %sq_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %swqe_polarity.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %6 = ptrtoint ptr %swqe_polarity.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %swqe_polarity.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  %conv.i = zext i1 %tobool1.not.i to i8
  %8 = ptrtoint ptr %swqe_polarity.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %swqe_polarity.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %size4.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size4.i, align 4
  %add.i = add i32 %10, %5
  %tail.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %add.i, %12
  %rem.i = urem i32 %sub.i, %10
  %sub14.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %sub14.i)
  %cmp.i = icmp eq i32 %rem.i, %sub14.i
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %irdma_puda_get_next_send_wqe.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

irdma_puda_get_next_send_wqe.exit:                ; preds = %if.end.i
  %add19.i = add i32 %5, 1
  %rem20.i = urem i32 %add19.i, %10
  %13 = ptrtoint ptr %sq_ring.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rem20.i, ptr %sq_ring.i, align 4
  %14 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qp, align 4
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %15, i32 %5
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %irdma_puda_get_next_send_wqe.exit.cleanup_crit_edge, label %if.end2

irdma_puda_get_next_send_wqe.exit.cleanup_crit_edge: ; preds = %irdma_puda_get_next_send_wqe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %irdma_puda_get_next_send_wqe.exit
  %scratch = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 6
  %16 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scratch, align 4
  %18 = ptrtoint ptr %17 to i32
  %conv3 = zext i32 %18 to i64
  %sq_wrtrk_array = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 4
  %19 = ptrtoint ptr %sq_wrtrk_array to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sq_wrtrk_array, align 8
  %arrayidx = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %20, i32 %5
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv3, ptr %arrayidx, align 8
  %dev = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 6
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %23, i32 0, i32 25, i32 0, i32 9
  %24 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp = icmp ugt i8 %25, 1
  br i1 %cmp, label %do.end39, label %do.end415

do.end39:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %ah_id = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %ah_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ah_id, align 4
  %swqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %28 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %swqe_polarity, align 1
  %conv41 = zext i8 %2 to i64
  %shl = shl nuw nsw i64 %conv41, 42
  %and42 = and i64 %shl, 65970697666560
  %30 = and i32 %27, 131071
  %and70 = zext i32 %30 to i64
  %or = or i64 %and42, %and70
  %conv117 = zext i8 %29 to i64
  %shl118 = shl i64 %conv117, 63
  %or88 = or i64 %shl118, %or
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %info, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32) #6
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx.i, align 8
  %len = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 1
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 8
  %37 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %swqe_polarity, align 1
  %conv147 = zext i32 %36 to i64
  %shl148 = shl nuw i64 %conv147, 32
  %and149 = and i64 %shl148, 9223372032559808512
  %conv179 = zext i8 %38 to i64
  %shl180 = shl i64 %conv179, 63
  %or182 = or i64 %shl180, %and149
  br label %if.end454

do.end415:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %swqe_polarity398 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %39 = ptrtoint ptr %swqe_polarity398 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %swqe_polarity398, align 1
  %41 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load357 = load i8, ptr %ipv4, align 2
  %42 = lshr i8 %bf.load357, 6
  %43 = zext i8 %42 to i64
  %shl387 = shl nuw nsw i64 %43, 44
  %and388 = and i64 %shl387, 17592186044416
  %maclen = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 4
  %44 = ptrtoint ptr %maclen to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %maclen, align 1
  %46 = lshr i8 %45, 1
  %47 = zext i8 %46 to i64
  %shl216 = shl nuw nsw i64 %47, 56
  %conv241 = select i1 %bf.cast.not, i64 2814749767106560, i64 1407374883553280
  %or244 = or i64 %shl216, %conv241
  %conv285 = zext i8 %. to i64
  %shl286 = shl nuw nsw i64 %conv285, 28
  %or261 = or i64 %or244, %shl286
  %conv312 = zext i8 %2 to i64
  %shl313 = shl nuw nsw i64 %conv312, 24
  %and314 = and i64 %shl313, 251658240
  %or288 = or i64 %or261, %and314
  %or315 = or i64 %or288, 1073741824
  %conv419 = zext i8 %40 to i64
  %shl420 = shl i64 %conv419, 63
  %or389 = or i64 %and388, %shl420
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %info, align 8
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #6
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx.i, align 8
  %len432 = getelementptr inbounds %struct.irdma_puda_send_info, ptr %info, i32 0, i32 1
  %52 = ptrtoint ptr %len432 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len432, align 8
  %conv451 = zext i32 %53 to i64
  br label %if.end454

if.end454:                                        ; preds = %do.end415, %do.end39
  %conv451.sink = phi i64 [ %conv451, %do.end415 ], [ %or182, %do.end39 ]
  %hdr.sroa.0.0 = phi i64 [ %or315, %do.end415 ], [ 0, %do.end39 ]
  %hdr.sroa.6.0.in = phi i64 [ %or389, %do.end415 ], [ %or88, %do.end39 ]
  %54 = tail call i64 @llvm.bswap.i64(i64 %conv451.sink) #6
  %arrayidx.i535 = getelementptr i64, ptr %arrayidx.i, i32 1
  %55 = ptrtoint ptr %arrayidx.i535 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx.i535, align 8
  %hdr.sroa.6.0 = or i64 %hdr.sroa.6.0.in, 4611686031312289792
  %56 = tail call i64 @llvm.bswap.i64(i64 %hdr.sroa.0.0) #6
  %arrayidx.i536 = getelementptr i64, ptr %arrayidx.i, i32 2
  %57 = ptrtoint ptr %arrayidx.i536 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx.i536, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !123
  %58 = tail call i64 @llvm.bswap.i64(i64 %hdr.sroa.6.0) #6
  %arrayidx.i537 = getelementptr i64, ptr %arrayidx.i, i32 3
  %59 = ptrtoint ptr %arrayidx.i537 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx.i537, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_send.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_send, %if.then463)) #6
          to label %do.end466 [label %if.then463], !srcloc !120

if.then463:                                       ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef nonnull %arrayidx.i, i32 noundef 32, i1 noundef zeroext false) #6
  br label %do.end466

do.end466:                                        ; preds = %if.then463, %if.end454
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end466, %irdma_puda_get_next_send_wqe.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end466 ], [ -20, %irdma_puda_get_next_send_wqe.exit.cleanup_crit_edge ], [ -20, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_uk_qp_post_wr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_puda_dele_rsrc(ptr nocapture noundef %vsi, i32 noundef %type, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ceq3 = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %ceq3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ceq3, align 4
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %type, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %ilq = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 5
  %5 = ptrtoint ptr %ilq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ilq, align 8
  %ilq_mem = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 4
  store ptr null, ptr %ilq, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %reg_cq = getelementptr inbounds %struct.irdma_sc_ceq, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %reg_cq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_cq, align 8
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.sw.epilog.sink.split_crit_edge

land.lhs.true.sw.epilog.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %ieq = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 8
  %9 = ptrtoint ptr %ieq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ieq, align 8
  %ieq_mem = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 7
  store ptr null, ptr %ieq, align 8
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %sw.bb6.sw.epilog_crit_edge, label %land.lhs.true9

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %sw.bb6
  %reg_cq10 = getelementptr inbounds %struct.irdma_sc_ceq, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %reg_cq10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_cq10, align 8
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %land.lhs.true9.sw.epilog_crit_edge, label %land.lhs.true9.sw.epilog.sink.split_crit_edge

land.lhs.true9.sw.epilog.sink.split_crit_edge:    ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_dele_rsrc.__UNIQUE_ID_ddebug822, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_dele_rsrc, %if.then19)) #6
          to label %cleanup [label %if.then19], !srcloc !120

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call ptr @to_ibdev(ptr noundef %1) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_dele_rsrc.__UNIQUE_ID_ddebug822, ptr noundef %call20, ptr noundef nonnull @.str.13, i32 noundef %type) #6
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %land.lhs.true9.sw.epilog.sink.split_crit_edge, %land.lhs.true.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %6, %land.lhs.true.sw.epilog.sink.split_crit_edge ], [ %10, %land.lhs.true9.sw.epilog.sink.split_crit_edge ]
  %vmem.0.ph = phi ptr [ %ilq_mem, %land.lhs.true.sw.epilog.sink.split_crit_edge ], [ %ieq_mem, %land.lhs.true9.sw.epilog.sink.split_crit_edge ]
  tail call void @irdma_sc_remove_cq_ctx(ptr noundef nonnull %3, ptr noundef %.sink) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true9.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %vmem.0 = phi ptr [ %ieq_mem, %land.lhs.true9.sw.epilog_crit_edge ], [ %ieq_mem, %sw.bb6.sw.epilog_crit_edge ], [ %ilq_mem, %land.lhs.true.sw.epilog_crit_edge ], [ %ilq_mem, %sw.bb.sw.epilog_crit_edge ], [ %vmem.0.ph, %sw.epilog.sink.split ]
  %rsrc.0 = phi ptr [ %10, %land.lhs.true9.sw.epilog_crit_edge ], [ %10, %sw.bb6.sw.epilog_crit_edge ], [ %6, %land.lhs.true.sw.epilog_crit_edge ], [ %6, %sw.bb.sw.epilog_crit_edge ], [ %.sink, %sw.epilog.sink.split ]
  %cmpl = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 8
  %13 = ptrtoint ptr %cmpl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmpl, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %14, label %do.body45 [
    i32 5, label %sw.bb22
    i32 2, label %sw.epilog.sw.bb23_crit_edge
    i32 1, label %sw.epilog.sw.bb31_crit_edge
  ]

sw.epilog.sw.bb31_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb31

sw.epilog.sw.bb23_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb23

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %hash_desc = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 22
  %16 = ptrtoint ptr %hash_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hash_desc, align 4
  tail call void @irdma_free_hash_desc(ptr noundef %17) #6
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.bb22, %sw.epilog.sw.bb23_crit_edge
  %qp = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 1
  tail call void @irdma_qp_rem_qos(ptr noundef %qp) #6
  br i1 %reset, label %sw.bb23.if.end26_crit_edge, label %if.then25

sw.bb23.if.end26_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @irdma_puda_free_qp(ptr noundef %rsrc.0)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %sw.bb23.if.end26_crit_edge
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %qpmem = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 6
  %size = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 8
  %24 = ptrtoint ptr %qpmem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qpmem, align 8
  %pa = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef %23, ptr noundef %25, i32 noundef %27, i32 noundef 0) #6
  %28 = ptrtoint ptr %qpmem to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %qpmem, align 8
  br label %sw.bb31

sw.bb31:                                          ; preds = %if.end26, %sw.epilog.sw.bb31_crit_edge
  br i1 %reset, label %sw.bb31.if.end34_crit_edge, label %if.then33

sw.bb31.if.end34_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then33:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @irdma_puda_free_cq(ptr noundef %rsrc.0)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %sw.bb31.if.end34_crit_edge
  %hw35 = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %hw35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw35, align 8
  %device36 = getelementptr inbounds %struct.irdma_hw, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device36, align 4
  %cqmem = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 5
  %size37 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %size37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size37, align 4
  %35 = ptrtoint ptr %cqmem to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cqmem, align 4
  %pa41 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %pa41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pa41, align 4
  tail call void @dma_free_attrs(ptr noundef %32, i32 noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef 0) #6
  %39 = ptrtoint ptr %cqmem to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %cqmem, align 4
  br label %sw.epilog63

do.body45:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_dele_rsrc.__UNIQUE_ID_ddebug823, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_dele_rsrc, %if.then57)) #6
          to label %sw.epilog63 [label %if.then57], !srcloc !120

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %dev58 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 3
  %40 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev58, align 4
  %call59 = tail call ptr @to_ibdev(ptr noundef %41) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_dele_rsrc.__UNIQUE_ID_ddebug823, ptr noundef %call59, ptr noundef nonnull @.str.14) #6
  br label %sw.epilog63

sw.epilog63:                                      ; preds = %if.then57, %do.body45, %if.end34
  %alloclist = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 28
  %42 = ptrtoint ptr %alloclist to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %alloclist, align 4
  %tobool64.not112 = icmp eq ptr %43, null
  br i1 %tobool64.not112, label %sw.epilog63.while.end_crit_edge, label %while.body.lr.ph

sw.epilog63.while.end_crit_edge:                  ; preds = %sw.epilog63
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %sw.epilog63
  %hw.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 8
  %alloc_buf_count = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc.0, i32 0, i32 25
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %buf.0113 = phi ptr [ %43, %while.body.lr.ph ], [ %45, %while.body.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0113, i32 0, i32 2
  %44 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %next, align 4
  %46 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw.i, align 8
  %device.i = getelementptr inbounds %struct.irdma_hw, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device.i, align 4
  %mem.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0113, i32 0, i32 1
  %pa.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0113, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pa.i, align 4
  %size.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0113, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef 0, i32 noundef 0) #6
  %54 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem.i, align 4
  tail call void @kfree(ptr noundef %55) #6
  %buf_mem.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0113, i32 0, i32 3
  %56 = ptrtoint ptr %buf_mem.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf_mem.i, align 4
  tail call void @kfree(ptr noundef %57) #6
  %58 = ptrtoint ptr %alloc_buf_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %alloc_buf_count, align 8
  %dec = add i32 %59, -1
  store i32 %dec, ptr %alloc_buf_count, align 8
  %tobool64.not = icmp eq ptr %45, null
  br i1 %tobool64.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %sw.epilog63.while.end_crit_edge
  %60 = ptrtoint ptr %vmem.0 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load ptr, ptr %vmem.0, align 1
  tail call void @kfree(ptr noundef %61) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then19, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_remove_cq_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_free_hash_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_qp_rem_qos(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_puda_free_qp(ptr noundef %rsrc) unnamed_addr #0 align 64 {
entry:
  %compl_info = alloca %struct.irdma_ccq_cqe_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %compl_info) #6
  %0 = call ptr @memset(ptr %compl_info, i32 255, i32 32)
  %dev1 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 3
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %ceq_valid = getelementptr inbounds %struct.irdma_sc_dev, ptr %2, i32 0, i32 38
  %3 = ptrtoint ptr %ceq_valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %ceq_valid, align 8
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %bf.cast.not = icmp eq i8 %4, 0
  %qp6 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1
  br i1 %bf.cast.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @irdma_cqp_qp_destroy_cmd(ptr noundef %2, ptr noundef %qp6) #6
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %ws_remove = getelementptr inbounds %struct.irdma_sc_dev, ptr %6, i32 0, i32 41
  %7 = ptrtoint ptr %ws_remove to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ws_remove, align 8
  %vsi = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsi, align 4
  %user_pri = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 31
  %11 = ptrtoint ptr %user_pri to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %user_pri, align 1
  tail call void %8(ptr noundef %10, i8 noundef zeroext %12) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @irdma_sc_qp_destroy(ptr noundef %qp6, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then18.critedge, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_free_qp.__UNIQUE_ID_ddebug818, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_free_qp, %if.then13)) #6
          to label %if.end40 [label %if.then13], !srcloc !120

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call ptr @to_ibdev(ptr noundef %2) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_free_qp.__UNIQUE_ID_ddebug818, ptr noundef %call14, ptr noundef nonnull @.str.26, i32 noundef %call7) #6
  br label %if.end40

if.then18.critedge:                               ; preds = %if.end
  %cqp = getelementptr inbounds %struct.irdma_sc_dev, ptr %2, i32 0, i32 27
  %13 = ptrtoint ptr %cqp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cqp, align 4
  %call19 = call i32 @irdma_sc_poll_for_cqp_op_done(ptr noundef %14, i8 noundef zeroext 2, ptr noundef nonnull %compl_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.critedge.if.end40_crit_edge, label %do.body22

if.then18.critedge.if.end40_crit_edge:            ; preds = %if.then18.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

do.body22:                                        ; preds = %if.then18.critedge
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_free_qp.__UNIQUE_ID_ddebug819, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_free_qp, %if.then34)) #6
          to label %if.end40 [label %if.then34], !srcloc !120

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call ptr @to_ibdev(ptr noundef %2) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_free_qp.__UNIQUE_ID_ddebug819, ptr noundef %call35, ptr noundef nonnull @.str.27, i32 noundef %call19) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %do.body22, %if.then18.critedge.if.end40_crit_edge, %if.then13, %do.body
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %ws_remove42 = getelementptr inbounds %struct.irdma_sc_dev, ptr %16, i32 0, i32 41
  %17 = ptrtoint ptr %ws_remove42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ws_remove42, align 8
  %vsi44 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %vsi44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vsi44, align 4
  %user_pri46 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 31
  %21 = ptrtoint ptr %user_pri46 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %user_pri46, align 1
  call void %18(ptr noundef %20, i8 noundef zeroext %22) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %compl_info) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_puda_free_cq(ptr noundef %rsrc) unnamed_addr #0 align 64 {
entry:
  %compl_info = alloca %struct.irdma_ccq_cqe_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %compl_info) #6
  %0 = call ptr @memset(ptr %compl_info, i32 255, i32 32)
  %dev1 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 3
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %ceq_valid = getelementptr inbounds %struct.irdma_sc_dev, ptr %2, i32 0, i32 38
  %3 = ptrtoint ptr %ceq_valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %ceq_valid, align 8
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %bf.cast.not = icmp eq i8 %4, 0
  br i1 %bf.cast.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irdma_cqp_cq_destroy_cmd(ptr noundef %2, ptr noundef %rsrc) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @irdma_sc_cq_destroy(ptr noundef %rsrc, i64 noundef 0, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then14.critedge, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_free_cq.__UNIQUE_ID_ddebug820, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_free_cq, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !120

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call ptr @to_ibdev(ptr noundef %2) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_free_cq.__UNIQUE_ID_ddebug820, ptr noundef %call10, ptr noundef nonnull @.str.29) #6
  br label %cleanup

if.then14.critedge:                               ; preds = %if.end
  %cqp = getelementptr inbounds %struct.irdma_sc_dev, ptr %2, i32 0, i32 27
  %5 = ptrtoint ptr %cqp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cqp, align 4
  %call15 = call i32 @irdma_sc_poll_for_cqp_op_done(ptr noundef %6, i8 noundef zeroext 5, ptr noundef nonnull %compl_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.critedge.cleanup_crit_edge, label %do.body18

if.then14.critedge.cleanup_crit_edge:             ; preds = %if.then14.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body18:                                        ; preds = %if.then14.critedge
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_free_cq.__UNIQUE_ID_ddebug821, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_free_cq, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !120

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = call ptr @to_ibdev(ptr noundef %2) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_free_cq.__UNIQUE_ID_ddebug821, ptr noundef %call31, ptr noundef nonnull @.str.30) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body18, %if.then14.critedge.cleanup_crit_edge, %if.then9, %do.body, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %compl_info) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_puda_create_rsrc(ptr noundef %vsi, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.irdma_cq_init_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %count = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %count, align 4
  %sq_size = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 7
  %3 = ptrtoint ptr %sq_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sq_size, align 4
  %mul = shl i32 %4, 4
  %rq_size = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 8
  %5 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rq_size, align 4
  %mul2 = shl i32 %6, 3
  %type = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ilq_mem = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ieq_mem = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %vmem.0 = phi ptr [ %ieq_mem, %sw.bb3 ], [ %ilq_mem, %sw.bb ]
  %add = add i32 %mul, 792
  %add4 = add i32 %add, %mul2
  %size = getelementptr inbounds %struct.irdma_virt_mem, ptr %vmem.0, i32 0, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %add4, ptr %size, align 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add4, i32 noundef 3520) #9
  %11 = ptrtoint ptr %vmem.0 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store ptr %call9.i.i, ptr %vmem.0, align 1
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %bufpool_lock = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %bufpool_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @irdma_puda_create_rsrc.__key, i16 noundef signext 3) #6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %13, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb10
    i32 2, label %sw.bb15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %vmem.0 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load ptr, ptr %vmem.0, align 1
  %ilq = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 5
  %17 = ptrtoint ptr %ilq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %ilq, align 8
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %ilq_count = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 3
  %20 = ptrtoint ptr %ilq_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ilq_count, align 4
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %receive13 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 29
  %23 = ptrtoint ptr %receive13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %receive13, align 16
  %xmit_complete = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 1
  %24 = ptrtoint ptr %xmit_complete to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xmit_complete, align 4
  br label %sw.epilog21

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  %ieq_count = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 6
  %28 = ptrtoint ptr %ieq_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ieq_count, align 4
  %29 = ptrtoint ptr %vmem.0 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load ptr, ptr %vmem.0, align 1
  %ieq = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 8
  %31 = ptrtoint ptr %ieq to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %ieq, align 8
  %receive18 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 29
  %32 = ptrtoint ptr %receive18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @irdma_ieq_receive, ptr %receive18, align 16
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %sw.bb15, %sw.bb10
  %irdma_ieq_tx_compl.sink = phi ptr [ @irdma_ieq_tx_compl, %sw.bb15 ], [ %25, %sw.bb10 ]
  %xmit_complete19 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 30
  %33 = ptrtoint ptr %xmit_complete19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %irdma_ieq_tx_compl.sink, ptr %xmit_complete19, align 4
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  %type23 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 9
  %36 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %type23, align 16
  %37 = ptrtoint ptr %vmem.0 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load ptr, ptr %vmem.0, align 1
  %add.ptr = getelementptr i8, ptr %38, i32 792
  %sq_wrtrk_array = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 16
  %39 = ptrtoint ptr %sq_wrtrk_array to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr, ptr %sq_wrtrk_array, align 4
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 %mul
  %rq_wrid_array = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 17
  %40 = ptrtoint ptr %rq_wrid_array to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr27, ptr %rq_wrid_array, align 16
  %bufpool = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 24
  %41 = ptrtoint ptr %bufpool to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %bufpool, ptr %bufpool, align 16
  %prev.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 24, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %bufpool, ptr %prev.i, align 4
  %txpend = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 23
  %43 = ptrtoint ptr %txpend to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %txpend, ptr %txpend, align 8
  %prev.i218 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 23, i32 1
  %44 = ptrtoint ptr %prev.i218 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %txpend, ptr %prev.i218, align 4
  %45 = ptrtoint ptr %sq_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sq_size, align 4
  %sub = add i32 %46, -1
  %tx_wqe_avail_cnt = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 21
  %47 = ptrtoint ptr %tx_wqe_avail_cnt to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub, ptr %tx_wqe_avail_cnt, align 32
  %sc_pd = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 2
  %pd_id = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 4
  %48 = ptrtoint ptr %pd_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pd_id, align 4
  %abi_ver = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 13
  %50 = ptrtoint ptr %abi_ver to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %abi_ver, align 4
  tail call void @irdma_sc_pd_init(ptr noundef %1, ptr noundef %sc_pd, i32 noundef %49, i32 noundef %51) #6
  %qp_id = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 6
  %52 = ptrtoint ptr %qp_id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qp_id, align 4
  %qp_id29 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 12
  %54 = ptrtoint ptr %qp_id29 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %qp_id29, align 4
  %cq_id = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 5
  %55 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cq_id, align 4
  %cq_id30 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 11
  %57 = ptrtoint ptr %cq_id30 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %cq_id30, align 8
  %58 = ptrtoint ptr %sq_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sq_size, align 4
  %sq_size32 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 13
  %60 = ptrtoint ptr %sq_size32 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %sq_size32, align 64
  %61 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rq_size, align 4
  %rq_size34 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 14
  %63 = ptrtoint ptr %rq_size34 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %rq_size34, align 4
  %add37 = add i32 %62, %59
  %cq_size = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 15
  %64 = ptrtoint ptr %cq_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add37, ptr %cq_size, align 8
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 25, i32 0, i32 9
  %65 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp = icmp ugt i8 %66, 1
  br i1 %cmp, label %if.then39, label %sw.epilog21.if.end48_crit_edge

sw.epilog21.if.end48_crit_edge:                   ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then39:                                        ; preds = %sw.epilog21
  %67 = ptrtoint ptr %type23 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %type23, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp41 = icmp eq i32 %68, 1
  br i1 %cmp41, label %if.then43, label %if.then39.if.end48_crit_edge

if.then39.if.end48_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rq_size, align 4
  %add46 = add i32 %70, %add37
  %71 = ptrtoint ptr %cq_size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add46, ptr %cq_size, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.then39.if.end48_crit_edge, %sw.epilog21.if.end48_crit_edge
  %buf_size = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 10
  %72 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %buf_size, align 4
  %buf_size49 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 10
  %74 = ptrtoint ptr %buf_size49 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %buf_size49, align 4
  %dev50 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %dev50 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %1, ptr %dev50, align 4
  %vsi51 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %vsi51 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %vsi, ptr %vsi51, align 8
  %stats_idx = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 11
  %77 = ptrtoint ptr %stats_idx to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %stats_idx, align 2
  %stats_idx52 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 42
  %79 = ptrtoint ptr %stats_idx52 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %stats_idx52, align 16
  %stats_idx_valid = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 12
  %80 = ptrtoint ptr %stats_idx_valid to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load = load i8, ptr %stats_idx_valid, align 1
  %stats_idx_valid53 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 43
  %81 = ptrtoint ptr %stats_idx_valid53 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load54 = load i8, ptr %stats_idx_valid53, align 1
  %82 = lshr i8 %bf.load, 1
  %bf.shl = and i8 %82, 64
  %bf.clear = and i8 %bf.load54, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %stats_idx_valid53, align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %info.i) #6
  %83 = call ptr @memset(ptr %info.i, i32 0, i32 80)
  %vsi3.i = getelementptr inbounds %struct.irdma_sc_cq, ptr %call9.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %vsi3.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %vsi, ptr %vsi3.i, align 4
  %85 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cq_size, align 8
  %mul.i = shl i32 %86, 5
  %add4.i = add i32 %mul.i, 319
  %and.i = and i32 %add4.i, -256
  %cqmem.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 5
  %size.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 5, i32 2
  %87 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and.i, ptr %size.i, align 4
  %hw.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 8
  %88 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw.i, align 8
  %device.i = getelementptr inbounds %struct.irdma_hw, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device.i, align 4
  %pa.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 5, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %91, i32 noundef %and.i, ptr noundef %pa.i, i32 noundef 3264, i32 noundef 0) #6
  %92 = ptrtoint ptr %cqmem.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i.i, ptr %cqmem.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end48.irdma_puda_cq_create.exit.thread_crit_edge, label %if.end.i

if.end48.irdma_puda_cq_create.exit.thread_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_cq_create.exit.thread

if.end.i:                                         ; preds = %if.end48
  %93 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %1, ptr %info.i, align 8
  %94 = ptrtoint ptr %type23 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %type23, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp.i = icmp eq i32 %95, 1
  %conv.i = select i1 %cmp.i, i8 2, i8 3
  %type13.i = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info.i, i32 0, i32 9
  %96 = ptrtoint ptr %type13.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv.i, ptr %type13.i, align 2
  %97 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cq_size, align 8
  %shr.i = lshr i32 %98, 2
  %shadow_read_threshold.i = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info.i, i32 0, i32 4
  %99 = ptrtoint ptr %shadow_read_threshold.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shr.i, ptr %shadow_read_threshold.i, align 4
  %100 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pa.i, align 16
  %conv16.i = zext i32 %101 to i64
  %cq_base_pa.i = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info.i, i32 0, i32 1
  %102 = ptrtoint ptr %cq_base_pa.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv16.i, ptr %cq_base_pa.i, align 8
  %add18.i = add i32 %101, %mul.i
  %conv19.i = zext i32 %add18.i to i64
  %shadow_area_pa.i = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info.i, i32 0, i32 2
  %103 = ptrtoint ptr %shadow_area_pa.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv19.i, ptr %shadow_area_pa.i, align 8
  %cq_base.i = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info.i, i32 0, i32 10, i32 2
  %104 = ptrtoint ptr %cq_base.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i.i, ptr %cq_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %mul.i
  %shadow_area.i = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info.i, i32 0, i32 10, i32 3
  %105 = ptrtoint ptr %shadow_area.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr.i, ptr %shadow_area.i, align 8
  %cq_size23.i = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info.i, i32 0, i32 10, i32 4
  %106 = ptrtoint ptr %cq_size23.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %98, ptr %cq_size23.i, align 4
  %107 = ptrtoint ptr %cq_id30 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cq_id30, align 8
  %cq_id24.i = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info.i, i32 0, i32 10, i32 5
  %109 = ptrtoint ptr %cq_id24.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %cq_id24.i, align 8
  %ceqe_mask.i = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info.i, i32 0, i32 7
  %110 = ptrtoint ptr %ceqe_mask.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load.i = load i8, ptr %ceqe_mask.i, align 8
  %bf.set27.i = or i8 %bf.load.i, 96
  store i8 %bf.set27.i, ptr %ceqe_mask.i, align 8
  %111 = ptrtoint ptr %vsi51 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vsi51, align 8
  %vsi29.i = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info.i, i32 0, i32 11
  %113 = ptrtoint ptr %vsi29.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %vsi29.i, align 8
  %call30.i = call i32 @irdma_sc_cq_init(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %info.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end.i.if.then42.i_crit_edge

if.end.i.if.then42.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42.i

if.end33.i:                                       ; preds = %if.end.i
  %114 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev50, align 4
  %ceq_valid.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %115, i32 0, i32 38
  %116 = ptrtoint ptr %ceq_valid.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load35.i = load i8, ptr %ceq_valid.i, align 8
  %117 = and i8 %bf.load35.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %bf.cast.not.i = icmp eq i8 %117, 0
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  %call38.i = call i32 @irdma_cqp_cq_create_cmd(ptr noundef %1, ptr noundef nonnull %call9.i.i) #6
  br label %error.i

if.else.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  %call39.i = call fastcc i32 @irdma_puda_cq_wqe(ptr noundef %1, ptr noundef nonnull %call9.i.i) #6
  br label %error.i

error.i:                                          ; preds = %if.else.i, %if.then37.i
  %ret.0.i = phi i32 [ %call38.i, %if.then37.i ], [ %call39.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool41.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool41.not.i, label %if.then58, label %error.i.if.then42.i_crit_edge

error.i.if.then42.i_crit_edge:                    ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42.i

if.then42.i:                                      ; preds = %error.i.if.then42.i_crit_edge, %if.end.i.if.then42.i_crit_edge
  %ret.098.i = phi i32 [ %ret.0.i, %error.i.if.then42.i_crit_edge ], [ %call30.i, %if.end.i.if.then42.i_crit_edge ]
  %118 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw.i, align 8
  %device44.i = getelementptr inbounds %struct.irdma_hw, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %device44.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device44.i, align 4
  %122 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %size.i, align 4
  %124 = ptrtoint ptr %cqmem.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cqmem.i, align 4
  %126 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pa.i, align 16
  call void @dma_free_attrs(ptr noundef %121, i32 noundef %123, ptr noundef %125, i32 noundef %127, i32 noundef 0) #6
  %128 = ptrtoint ptr %cqmem.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %cqmem.i, align 4
  br label %irdma_puda_cq_create.exit.thread

irdma_puda_cq_create.exit.thread:                 ; preds = %if.then42.i, %if.end48.irdma_puda_cq_create.exit.thread_crit_edge
  %retval.0.i219.ph = phi i32 [ %ret.098.i, %if.then42.i ], [ -9, %if.end48.irdma_puda_cq_create.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %info.i) #6
  br label %do.body63

if.then58:                                        ; preds = %error.i
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %info.i) #6
  %cmpl = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 8
  %129 = ptrtoint ptr %cmpl to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %cmpl, align 4
  %qp1.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %sq_size32 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sq_size32, align 64
  %mul.i220 = shl i32 %131, 5
  %132 = ptrtoint ptr %rq_size34 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rq_size34, align 4
  %mul4.i = shl i32 %133, 5
  %add.i = add i32 %mul.i220, 4415
  %add7.i = add i32 %add.i, %mul4.i
  %and.i221 = and i32 %add7.i, -4096
  %qpmem.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 6
  %size.i222 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 6, i32 2
  %134 = ptrtoint ptr %size.i222 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %and.i221, ptr %size.i222, align 32
  %135 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev50, align 4
  %hw.i223 = getelementptr inbounds %struct.irdma_sc_dev, ptr %136, i32 0, i32 8
  %137 = ptrtoint ptr %hw.i223 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw.i223, align 8
  %device.i224 = getelementptr inbounds %struct.irdma_hw, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %device.i224 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %device.i224, align 4
  %pa.i225 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 6, i32 1
  %call.i.i226 = call ptr @dma_alloc_attrs(ptr noundef %140, i32 noundef %and.i221, ptr noundef %pa.i225, i32 noundef 3264, i32 noundef 0) #6
  %141 = ptrtoint ptr %qpmem.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i.i226, ptr %qpmem.i, align 8
  %tobool.not.i227 = icmp eq ptr %call.i.i226, null
  br i1 %tobool.not.i227, label %if.then58.do.body63_crit_edge, label %if.end.i233

if.then58.do.body63_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

if.end.i233:                                      ; preds = %if.then58
  %142 = ptrtoint ptr %size.i222 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %size.i222, align 32
  %144 = call ptr @memset(ptr %call.i.i226, i32 0, i32 %143)
  %145 = ptrtoint ptr %sq_size32 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %sq_size32, align 64
  %call19.i = call zeroext i8 @irdma_get_encoded_wqe_size(i32 noundef %146, i32 noundef 0) #6
  %hw_sq_size.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 23
  %147 = ptrtoint ptr %hw_sq_size.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %call19.i, ptr %hw_sq_size.i, align 4
  %148 = ptrtoint ptr %rq_size34 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rq_size34, align 4
  %call21.i = call zeroext i8 @irdma_get_encoded_wqe_size(i32 noundef %149, i32 noundef 0) #6
  %hw_rq_size.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 24
  %150 = ptrtoint ptr %hw_rq_size.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %call21.i, ptr %hw_rq_size.i, align 1
  %pd.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 8
  %151 = ptrtoint ptr %pd.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %sc_pd, ptr %pd.i, align 8
  %qp_type.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 21
  %152 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 2, ptr %qp_type.i, align 2
  %153 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev50, align 4
  %dev24.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 6
  %155 = ptrtoint ptr %dev24.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %dev24.i, align 16
  %back_qp.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 28
  %156 = ptrtoint ptr %back_qp.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call9.i.i, ptr %back_qp.i, align 32
  %157 = ptrtoint ptr %pa.i225 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %pa.i225, align 4
  %conv.i228 = zext i32 %158 to i64
  %sq_pa.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %159 = ptrtoint ptr %sq_pa.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %conv.i228, ptr %sq_pa.i, align 8
  %conv28.i = zext i32 %mul.i220 to i64
  %add29.i = add nuw nsw i64 %conv.i228, %conv28.i
  %rq_pa.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 2
  %160 = ptrtoint ptr %rq_pa.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %add29.i, ptr %rq_pa.i, align 16
  %161 = ptrtoint ptr %vsi51 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %vsi51, align 8
  %vsi30.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 7
  %163 = ptrtoint ptr %vsi30.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %162, ptr %vsi30.i, align 4
  %164 = ptrtoint ptr %qpmem.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %qpmem.i, align 8
  %166 = ptrtoint ptr %qp1.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %165, ptr %qp1.i, align 32
  %167 = ptrtoint ptr %sq_size32 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sq_size32, align 64
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %165, i32 %168
  %rq_base.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 1
  %169 = ptrtoint ptr %rq_base.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %arrayidx.i, ptr %rq_base.i, align 4
  %170 = ptrtoint ptr %rq_size34 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rq_size34, align 4
  %arrayidx36.i = getelementptr %struct.irdma_qp_quanta, ptr %arrayidx.i, i32 %171
  %shadow_area.i230 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 6
  %172 = ptrtoint ptr %shadow_area.i230 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %arrayidx36.i, ptr %shadow_area.i230, align 8
  %hw_attrs.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %154, i32 0, i32 25
  %uk_attrs38.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 2
  %173 = ptrtoint ptr %uk_attrs38.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %hw_attrs.i, ptr %uk_attrs38.i, align 8
  %conv40.i = zext i32 %mul4.i to i64
  %add41.i = add nuw nsw i64 %add29.i, %conv40.i
  %shadow_area_pa.i231 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 4
  %174 = ptrtoint ptr %shadow_area_pa.i231 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %add41.i, ptr %shadow_area_pa.i231, align 128
  %add.ptr.i232 = getelementptr i64, ptr %arrayidx36.i, i32 8
  %hw_host_ctx.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 9
  %175 = ptrtoint ptr %hw_host_ctx.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %add.ptr.i232, ptr %hw_host_ctx.i, align 4
  %add44.i = add nuw nsw i64 %add41.i, 64
  %hw_host_ctx_pa.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 3
  %176 = ptrtoint ptr %hw_host_ctx_pa.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %add44.i, ptr %hw_host_ctx_pa.i, align 8
  %push_idx.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 16
  %177 = ptrtoint ptr %push_idx.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 -1, ptr %push_idx.i, align 16
  %178 = ptrtoint ptr %qp_id29 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %qp_id29, align 4
  %qp_id45.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 12
  %180 = ptrtoint ptr %qp_id45.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %qp_id45.i, align 8
  %181 = ptrtoint ptr %sq_wrtrk_array to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %sq_wrtrk_array, align 4
  %sq_wrtrk_array46.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 4
  %183 = ptrtoint ptr %sq_wrtrk_array46.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %182, ptr %sq_wrtrk_array46.i, align 16
  %184 = ptrtoint ptr %rq_wrid_array to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rq_wrid_array, align 16
  %rq_wrid_array47.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 5
  %186 = ptrtoint ptr %rq_wrid_array47.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %185, ptr %rq_wrid_array47.i, align 4
  %sq_size49.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 14
  %187 = ptrtoint ptr %sq_size49.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %168, ptr %sq_size49.i, align 16
  %rq_size51.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 15
  %188 = ptrtoint ptr %rq_size51.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %171, ptr %rq_size51.i, align 4
  %sq_ring.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 9
  %189 = ptrtoint ptr %sq_ring.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %sq_ring.i, align 4
  %tail.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 9, i32 1
  %190 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %tail.i, align 8
  %size55.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 9, i32 2
  %191 = ptrtoint ptr %size55.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %168, ptr %size55.i, align 4
  %initial_ring.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 11
  %192 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %initial_ring.i, align 4
  %tail58.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 11, i32 1
  %193 = ptrtoint ptr %tail58.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %tail58.i, align 32
  %size61.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 11, i32 2
  %194 = ptrtoint ptr %size61.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %168, ptr %size61.i, align 4
  %rq_ring.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 10
  %195 = ptrtoint ptr %rq_ring.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %rq_ring.i, align 16
  %tail64.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 10, i32 1
  %196 = ptrtoint ptr %tail64.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %tail64.i, align 4
  %size67.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 10, i32 2
  %197 = ptrtoint ptr %size67.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %171, ptr %size67.i, align 8
  %198 = ptrtoint ptr %sc_pd to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sc_pd, align 8
  %wqe_alloc_db.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %199, i32 0, i32 10
  %200 = ptrtoint ptr %wqe_alloc_db.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %wqe_alloc_db.i, align 8
  %wqe_alloc_db70.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 3
  %202 = ptrtoint ptr %wqe_alloc_db70.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %201, ptr %wqe_alloc_db70.i, align 4
  %ws_add.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %154, i32 0, i32 40
  %203 = ptrtoint ptr %ws_add.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ws_add.i, align 4
  %user_pri.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 1, i32 31
  %205 = ptrtoint ptr %user_pri.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %user_pri.i, align 1
  %call73.i = call i32 %204(ptr noundef %162, i8 noundef zeroext %206) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end87.i, label %if.end.i233.cleanup.sink.split.i_crit_edge

if.end.i233.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end87.i:                                       ; preds = %if.end.i233
  call void @irdma_qp_add_qos(ptr noundef %qp1.i) #6
  call fastcc void @irdma_puda_qp_setctx(ptr noundef nonnull %call9.i.i) #6
  %207 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev50, align 4
  %ceq_valid.i234 = getelementptr inbounds %struct.irdma_sc_dev, ptr %208, i32 0, i32 38
  %209 = ptrtoint ptr %ceq_valid.i234 to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load.i235 = load i8, ptr %ceq_valid.i234, align 8
  %210 = and i8 %bf.load.i235, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %bf.cast.not.i236 = icmp eq i8 %210, 0
  br i1 %bf.cast.not.i236, label %if.else.i237, label %if.then89.i

if.then89.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  %call91.i = call i32 @irdma_cqp_qp_create_cmd(ptr noundef %208, ptr noundef %qp1.i) #6
  br label %if.end94.i

if.else.i237:                                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  %call93.i = call fastcc i32 @irdma_puda_qp_wqe(ptr noundef %208, ptr noundef %qp1.i) #6
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else.i237, %if.then89.i
  %ret.0.i238 = phi i32 [ %call91.i, %if.then89.i ], [ %call93.i, %if.else.i237 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i238)
  %tobool95.not.i = icmp eq i32 %ret.0.i238, 0
  br i1 %tobool95.not.i, label %if.end74, label %if.then96.i

if.then96.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @irdma_qp_rem_qos(ptr noundef %qp1.i) #6
  %211 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev50, align 4
  %ws_remove.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %212, i32 0, i32 41
  %213 = ptrtoint ptr %ws_remove.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ws_remove.i, align 8
  %215 = ptrtoint ptr %vsi30.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %vsi30.i, align 4
  %217 = ptrtoint ptr %user_pri.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %user_pri.i, align 1
  call void %214(ptr noundef %216, i8 noundef zeroext %218) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then96.i, %if.end.i233.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %ret.0.i238, %if.then96.i ], [ %call73.i, %if.end.i233.cleanup.sink.split.i_crit_edge ]
  %219 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev50, align 4
  %hw101.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %220, i32 0, i32 8
  %221 = ptrtoint ptr %hw101.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %hw101.i, align 8
  %device102.i = getelementptr inbounds %struct.irdma_hw, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %device102.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %device102.i, align 4
  %225 = ptrtoint ptr %size.i222 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %size.i222, align 32
  %227 = ptrtoint ptr %qpmem.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %qpmem.i, align 8
  %229 = ptrtoint ptr %pa.i225 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %pa.i225, align 4
  call void @dma_free_attrs(ptr noundef %224, i32 noundef %226, ptr noundef %228, i32 noundef %230, i32 noundef 0) #6
  %231 = ptrtoint ptr %qpmem.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr null, ptr %qpmem.i, align 8
  br label %do.body63

do.body63:                                        ; preds = %cleanup.sink.split.i, %if.then58.do.body63_crit_edge, %irdma_puda_cq_create.exit.thread
  %ret.0.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -9, %if.then58.do.body63_crit_edge ], [ %retval.0.i219.ph, %irdma_puda_cq_create.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_create_rsrc.__UNIQUE_ID_ddebug824, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_create_rsrc, %if.then68)) #6
          to label %error [label %if.then68], !srcloc !120

if.then68:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  %call69 = call ptr @to_ibdev(ptr noundef %1) #6
  %232 = ptrtoint ptr %type23 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %type23, align 16
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_create_rsrc.__UNIQUE_ID_ddebug824, ptr noundef %call69, ptr noundef nonnull @.str.17, i32 noundef %233, i32 noundef %ret.0.ph) #6
  br label %error

if.end74:                                         ; preds = %if.end94.i
  %234 = ptrtoint ptr %cmpl to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 2, ptr %cmpl, align 4
  %tx_buf_cnt = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info, i32 0, i32 9
  %235 = ptrtoint ptr %tx_buf_cnt to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %tx_buf_cnt, align 4
  %237 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %rq_size, align 4
  %add77 = add i32 %238, %236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add77)
  %cmp34.not.i = icmp eq i32 %add77, 0
  br i1 %cmp34.not.i, label %if.end74.if.end98_crit_edge, label %for.body.lr.ph.i

if.end74.if.end98_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

for.body.lr.ph.i:                                 ; preds = %if.end74
  %avail_buf_count.i.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 26
  %alloc_buf_count.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 25
  %alloclist.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc8.i, %for.inc.i.for.body.i_crit_edge ]
  %239 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev50, align 4
  %241 = ptrtoint ptr %buf_size49 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %buf_size49, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %243 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %243, i32 noundef 3520, i32 noundef 88) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.do.body81_crit_edge, label %if.end.i.i242

for.body.i.do.body81_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

if.end.i.i242:                                    ; preds = %for.body.i
  %conv.i241 = zext i16 %242 to i32
  %mem.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %call7.i.i.i.i, i32 0, i32 1
  %size4.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %call7.i.i.i.i, i32 0, i32 1, i32 2
  %244 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %conv.i241, ptr %size4.i.i, align 8
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i241, i32 noundef 3520) #9
  %245 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call9.i.i.i.i, ptr %mem.i.i, align 8
  %tobool12.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool12.not.i.i, label %if.end.i.i242.free_virt.i.i_crit_edge, label %if.end14.i.i

if.end.i.i242.free_virt.i.i_crit_edge:            ; preds = %if.end.i.i242
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_virt.i.i

if.end14.i.i:                                     ; preds = %if.end.i.i242
  %hw.i.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %240, i32 0, i32 8
  %246 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hw.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.irdma_hw, ptr %247, i32 0, i32 2
  %248 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %device.i.i, align 4
  %250 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %size4.i.i, align 8
  %call.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i.i) #6
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end14.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !124

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %249) #6
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %249, i32 0, i32 3
  %252 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %253, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i56.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i.i

if.end.i.i56.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %254 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %249, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i56.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %255, %if.end.i.i56.i.i ], [ %253, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #6
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @debug_dma_map_single(ptr noundef %249, ptr noundef nonnull %call9.i.i.i.i, i32 noundef %251) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %256 = load ptr, ptr @mem_map, align 4
  %257 = ptrtoint ptr %call9.i.i.i.i to i32
  %sub.i.i.i = add i32 %257, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %256, i32 %shr.i.i.i
  %and.i.i.i = and i32 %257, 3968
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %249, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %251, i32 noundef 0, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %pa.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %258 = ptrtoint ptr %pa.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %retval.0.i.i.i, ptr %pa.i.i, align 4
  %259 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %hw.i.i, align 8
  %device22.i.i = getelementptr inbounds %struct.irdma_hw, ptr %260, i32 0, i32 2
  %261 = ptrtoint ptr %device22.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %device22.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %262, i32 noundef %retval.0.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i243 = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i243, label %if.then27.i.i, label %if.end.i244

if.then27.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %263 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mem.i.i, align 8
  call void @kfree(ptr noundef %264) #6
  br label %free_virt.i.i

free_virt.i.i:                                    ; preds = %if.then27.i.i, %if.end.i.i242.free_virt.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #6
  br label %do.body81

if.end.i244:                                      ; preds = %dma_map_single_attrs.exit.i.i
  %buf_mem32.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %call7.i.i.i.i, i32 0, i32 3
  %265 = ptrtoint ptr %buf_mem32.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %call7.i.i.i.i, ptr %buf_mem32.i.i, align 8
  %size36.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %266 = ptrtoint ptr %size36.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 88, ptr %size36.i.i, align 4
  %do_lpb.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %call7.i.i.i.i, i32 0, i32 15
  %267 = ptrtoint ptr %do_lpb.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %bf.load.i.i = load i8, ptr %do_lpb.i.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, -33
  store i8 %bf.clear.i.i, ptr %do_lpb.i.i, align 1
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock) #6
  %268 = ptrtoint ptr %bufpool to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %bufpool, align 16
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %bufpool, ptr noundef %269) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i27.i, label %if.end.i244.irdma_puda_ret_bufpool.exit.i_crit_edge

if.end.i244.irdma_puda_ret_bufpool.exit.i_crit_edge: ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_ret_bufpool.exit.i

if.end.i.i.i27.i:                                 ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %271 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %269, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %272 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %bufpool, ptr %prev3.i.i.i.i, align 4
  %273 = ptrtoint ptr %bufpool to i32
  call void @__asan_store4_noabort(i32 %273)
  store volatile ptr %call7.i.i.i.i, ptr %bufpool, align 16
  br label %irdma_puda_ret_bufpool.exit.i

irdma_puda_ret_bufpool.exit.i:                    ; preds = %if.end.i.i.i27.i, %if.end.i244.irdma_puda_ret_bufpool.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock, i32 noundef %call2.i.i) #6
  %274 = ptrtoint ptr %avail_buf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %avail_buf_count.i.i, align 4
  %inc.i.i = add i32 %275, 1
  store i32 %inc.i.i, ptr %avail_buf_count.i.i, align 4
  %276 = ptrtoint ptr %alloc_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %alloc_buf_count.i, align 8
  %inc1.i = add i32 %277, 1
  store i32 %inc1.i, ptr %alloc_buf_count.i, align 8
  %278 = ptrtoint ptr %alloclist.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %alloclist.i, align 4
  %tobool2.not.i = icmp eq ptr %279, null
  store ptr %call7.i.i.i.i, ptr %alloclist.i, align 4
  br i1 %tobool2.not.i, label %irdma_puda_ret_bufpool.exit.i.for.inc.i_crit_edge, label %if.else.i245

irdma_puda_ret_bufpool.exit.i.for.inc.i_crit_edge: ; preds = %irdma_puda_ret_bufpool.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.else.i245:                                     ; preds = %irdma_puda_ret_bufpool.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %next.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %call7.i.i.i.i, i32 0, i32 2
  %280 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %279, ptr %next.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i245, %irdma_puda_ret_bufpool.exit.i.for.inc.i_crit_edge
  %inc8.i = add nuw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %add77
  br i1 %exitcond.not.i, label %for.inc.i.if.end98_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end98_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

do.body81:                                        ; preds = %free_virt.i.i, %for.body.i.do.body81_crit_edge
  %stats_buf_alloc_fail.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 31
  %281 = ptrtoint ptr %stats_buf_alloc_fail.i to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %stats_buf_alloc_fail.i, align 8
  %inc.i = add i64 %282, 1
  store i64 %inc.i, ptr %stats_buf_alloc_fail.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_create_rsrc.__UNIQUE_ID_ddebug825, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_create_rsrc, %if.then93)) #6
          to label %error [label %if.then93], !srcloc !120

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  %call94 = call ptr @to_ibdev(ptr noundef %1) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_create_rsrc.__UNIQUE_ID_ddebug825, ptr noundef %call94, ptr noundef nonnull @.str.18) #6
  br label %error

if.end98:                                         ; preds = %for.inc.i.if.end98_crit_edge, %if.end74.if.end98_crit_edge
  %alloc_buf_count9.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 25
  %283 = ptrtoint ptr %alloc_buf_count9.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %alloc_buf_count9.i, align 8
  %avail_buf_count.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 26
  %285 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %avail_buf_count.i, align 4
  %286 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %rq_size, align 4
  %rxq_invalid_cnt = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 20
  %288 = ptrtoint ptr %rxq_invalid_cnt to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %rxq_invalid_cnt, align 4
  %call100 = call fastcc i32 @irdma_puda_replenish_rq(ptr noundef nonnull %call9.i.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end98.error_crit_edge

if.end98.error_crit_edge:                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end103:                                        ; preds = %if.end98
  %289 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %290)
  %cmp105 = icmp eq i32 %290, 2
  br i1 %cmp105, label %if.then107, label %if.end103.if.end116_crit_edge

if.end103.if.end116_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then107:                                       ; preds = %if.end103
  %hash_desc = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %call9.i.i, i32 0, i32 22
  %call108 = call i32 @irdma_init_hash_desc(ptr noundef %hash_desc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then110, label %if.then107.if.end116_crit_edge

if.then107.if.end116_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then110:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %291 = ptrtoint ptr %stats_idx_valid53 to i32
  call void @__asan_load1_noabort(i32 %291)
  %bf.load111 = load i8, ptr %stats_idx_valid53, align 1
  %bf.set113 = or i8 %bf.load111, -128
  store i8 %bf.set113, ptr %stats_idx_valid53, align 1
  %292 = ptrtoint ptr %cmpl to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 5, ptr %cmpl, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then110, %if.then107.if.end116_crit_edge, %if.end103.if.end116_crit_edge
  call void @irdma_sc_ccq_arm(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

error:                                            ; preds = %if.end98.error_crit_edge, %if.then93, %do.body81, %if.then68, %do.body63
  %ret.2 = phi i32 [ %ret.0.ph, %if.then68 ], [ -9, %if.then93 ], [ %call100, %if.end98.error_crit_edge ], [ %ret.0.ph, %do.body63 ], [ -9, %do.body81 ]
  %293 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %type, align 4
  call void @irdma_puda_dele_rsrc(ptr noundef %vsi, i32 noundef %294, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end116, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %error ], [ 0, %if.end116 ], [ -49, %entry.cleanup_crit_edge ], [ -9, %sw.epilog.cleanup_crit_edge ], [ -49, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_ieq_receive(ptr nocapture noundef readonly %vsi, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ieq1 = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 8
  %0 = ptrtoint ptr %ieq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieq1, align 8
  %compl_rxwqe_idx = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %compl_rxwqe_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compl_rxwqe_idx, align 4
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call ptr @irdma_ieq_get_qp(ptr noundef %5, ptr noundef %buf) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %stats_bad_qp_id = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %1, i32 0, i32 36
  %6 = ptrtoint ptr %stats_bad_qp_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stats_bad_qp_id, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %stats_bad_qp_id, align 8
  %do_lpb.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 15
  %8 = ptrtoint ptr %do_lpb.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %do_lpb.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %do_lpb.i, align 1
  %bufpool_lock.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %1, i32 0, i32 27
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %bufpool.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bufpool.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef %bufpool.i, ptr noundef %10) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.irdma_puda_ret_bufpool.exit_crit_edge

if.then.irdma_puda_ret_bufpool.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_ret_bufpool.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %buf, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bufpool.i, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %buf, ptr %bufpool.i, align 4
  br label %irdma_puda_ret_bufpool.exit

irdma_puda_ret_bufpool.exit:                      ; preds = %if.end.i.i.i, %if.then.irdma_puda_ret_bufpool.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  %avail_buf_count.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %avail_buf_count.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %avail_buf_count.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @irdma_ieq_handle_exception(ptr noundef %1, ptr noundef nonnull %call, ptr noundef %buf)
  br label %if.end

if.end:                                           ; preds = %if.else, %irdma_puda_ret_bufpool.exit
  %rxq_invalid_cnt = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %rxq_invalid_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxq_invalid_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not = icmp eq i32 %18, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rx_wqe_idx = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %rx_wqe_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %3, ptr %rx_wqe_idx, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %20 = ptrtoint ptr %rxq_invalid_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxq_invalid_cnt, align 4
  %inc6 = add i32 %21, 1
  store i32 %inc6, ptr %rxq_invalid_cnt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_ieq_tx_compl(ptr nocapture noundef readonly %vsi, ptr noundef %sqwrid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ieq1 = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 8
  %0 = ptrtoint ptr %ieq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieq1, align 8
  %do_lpb.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %sqwrid, i32 0, i32 15
  %2 = ptrtoint ptr %do_lpb.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %do_lpb.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %do_lpb.i, align 1
  %bufpool_lock.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %1, i32 0, i32 27
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %bufpool.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %1, i32 0, i32 24
  %3 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bufpool.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sqwrid, ptr noundef %bufpool.i, ptr noundef %4) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.irdma_puda_ret_bufpool.exit_crit_edge

entry.irdma_puda_ret_bufpool.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_ret_bufpool.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sqwrid, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %sqwrid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %sqwrid, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %sqwrid, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bufpool.i, ptr %prev3.i.i.i, align 4
  %8 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %sqwrid, ptr %bufpool.i, align 4
  br label %irdma_puda_ret_bufpool.exit

irdma_puda_ret_bufpool.exit:                      ; preds = %if.end.i.i.i, %entry.irdma_puda_ret_bufpool.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  %avail_buf_count.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %avail_buf_count.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %avail_buf_count.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_pd_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_init_hash_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_ccq_arm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_ieq_process_fpdus(ptr noundef %qp, ptr noundef %ieq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pfpdu1 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12
  %0 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pfpdu1, align 4
  %cmp.i.not73 = icmp eq ptr %1, %pfpdu1
  br i1 %cmp.i.not73, label %entry.do.end34_crit_edge, label %if.end.lr.ph

entry.do.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

if.end.lr.ph:                                     ; preds = %entry
  %rcv_nxt = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 1
  %mpa_crc_err = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 6
  %bufpool_lock.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 27
  %bufpool.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 24
  %avail_buf_count.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 26
  %crc_err = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 11
  %crc_err26 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 39
  %dev28 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %do.body.backedge.if.end_crit_edge, %if.end.lr.ph
  %2 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pfpdu1, align 4
  %cmp.i.not.i = icmp eq ptr %3, %pfpdu1
  br i1 %cmp.i.not.i, label %if.end.do.body6_crit_edge, label %if.then.i

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.then.i:                                        ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.irdma_puda_get_listbuf.exit_crit_edge

if.then.i.irdma_puda_get_listbuf.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %irdma_puda_get_listbuf.exit

irdma_puda_get_listbuf.exit:                      ; preds = %if.end.i.i.i, %if.then.i.irdma_puda_get_listbuf.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %irdma_puda_get_listbuf.exit.do.body6_crit_edge, label %if.end14

irdma_puda_get_listbuf.exit.do.body6_crit_edge:   ; preds = %irdma_puda_get_listbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

do.body6:                                         ; preds = %irdma_puda_get_listbuf.exit.do.body6_crit_edge, %if.end.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ieq_process_fpdus.__UNIQUE_ID_ddebug846, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ieq_process_fpdus, %if.then11)) #6
          to label %do.end34 [label %if.then11], !srcloc !120

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev28, align 4
  %call12 = tail call ptr @to_ibdev(ptr noundef %13) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ieq_process_fpdus.__UNIQUE_ID_ddebug846, ptr noundef %call12, ptr noundef nonnull @.str.20) #6
  br label %do.end34

if.end14:                                         ; preds = %irdma_puda_get_listbuf.exit
  %seqnum = getelementptr inbounds %struct.irdma_puda_buf, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %seqnum to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seqnum, align 4
  %16 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rcv_nxt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp eq i32 %15, %17
  br i1 %cmp.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end14
  %out_of_order = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 14
  %18 = ptrtoint ptr %out_of_order to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %out_of_order, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %out_of_order, align 8
  %20 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pfpdu1, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef %pfpdu1, ptr noundef %21) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.do.end34_crit_edge

if.then15.do.end34_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.le = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %3, align 4
  %24 = ptrtoint ptr %prev.i.i.le to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pfpdu1, ptr %prev.i.i.le, align 4
  %25 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %3, ptr %pfpdu1, align 4
  br label %do.end34

if.end16:                                         ; preds = %if.end14
  %call17 = tail call fastcc i32 @irdma_ieq_process_buf(ptr noundef %ieq, ptr noundef %pfpdu1, ptr noundef nonnull %3)
  %26 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call17, label %if.end16.do.end34_crit_edge [
    i32 -61, label %if.then19
    i32 0, label %do.body.backedge
  ]

if.end16.do.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

if.then19:                                        ; preds = %if.end16
  %27 = ptrtoint ptr %mpa_crc_err to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %mpa_crc_err, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mpa_crc_err, align 4
  %28 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %pfpdu1, align 4
  %cmp.i54.not72 = icmp eq ptr %29, %pfpdu1
  br i1 %cmp.i54.not72, label %if.then19.while.end_crit_edge, label %if.then19.while.body_crit_edge

if.then19.while.body_crit_edge:                   ; preds = %if.then19
  br label %while.body

if.then19.while.end_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %irdma_puda_ret_bufpool.exit.while.body_crit_edge, %if.then19.while.body_crit_edge
  %30 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %pfpdu1, align 4
  %cmp.i.not.i56 = icmp eq ptr %31, %pfpdu1
  br i1 %cmp.i.not.i56, label %while.body.irdma_puda_get_listbuf.exit65_crit_edge, label %if.then.i58

while.body.irdma_puda_get_listbuf.exit65_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit65

if.then.i58:                                      ; preds = %while.body
  %call.i.i.i57 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #6
  br i1 %call.i.i.i57, label %if.end.i.i.i61, label %if.then.i58.list_del.exit.i63_crit_edge

if.then.i58.list_del.exit.i63_crit_edge:          ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i63

if.end.i.i.i61:                                   ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i59, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %prev1.i.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i60, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i63

list_del.exit.i63:                                ; preds = %if.end.i.i.i61, %if.then.i58.list_del.exit.i63_crit_edge
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  %prev.i.i62 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i62 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i62, align 4
  br label %irdma_puda_get_listbuf.exit65

irdma_puda_get_listbuf.exit65:                    ; preds = %list_del.exit.i63, %while.body.irdma_puda_get_listbuf.exit65_crit_edge
  %buf.0.i64 = phi ptr [ null, %while.body.irdma_puda_get_listbuf.exit65_crit_edge ], [ %31, %list_del.exit.i63 ]
  %do_lpb.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0.i64, i32 0, i32 15
  %40 = ptrtoint ptr %do_lpb.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i = load i8, ptr %do_lpb.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %do_lpb.i, align 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %41 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bufpool.i, align 4
  %call.i.i.i66 = tail call zeroext i1 @__list_add_valid(ptr noundef %buf.0.i64, ptr noundef %bufpool.i, ptr noundef %42) #6
  br i1 %call.i.i.i66, label %if.end.i.i.i67, label %irdma_puda_get_listbuf.exit65.irdma_puda_ret_bufpool.exit_crit_edge

irdma_puda_get_listbuf.exit65.irdma_puda_ret_bufpool.exit_crit_edge: ; preds = %irdma_puda_get_listbuf.exit65
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_ret_bufpool.exit

if.end.i.i.i67:                                   ; preds = %irdma_puda_get_listbuf.exit65
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf.0.i64, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %buf.0.i64 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %buf.0.i64, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf.0.i64, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bufpool.i, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %buf.0.i64, ptr %bufpool.i, align 4
  br label %irdma_puda_ret_bufpool.exit

irdma_puda_ret_bufpool.exit:                      ; preds = %if.end.i.i.i67, %irdma_puda_get_listbuf.exit65.irdma_puda_ret_bufpool.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  %47 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %avail_buf_count.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %avail_buf_count.i, align 4
  %49 = ptrtoint ptr %crc_err to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %crc_err, align 8
  %inc25 = add i64 %50, 1
  store i64 %inc25, ptr %crc_err, align 8
  %51 = ptrtoint ptr %crc_err26 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %crc_err26, align 8
  %inc27 = add i64 %52, 1
  store i64 %inc27, ptr %crc_err26, align 8
  %53 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %pfpdu1, align 4
  %cmp.i54.not = icmp eq ptr %54, %pfpdu1
  br i1 %cmp.i54.not, label %irdma_puda_ret_bufpool.exit.while.end_crit_edge, label %irdma_puda_ret_bufpool.exit.while.body_crit_edge

irdma_puda_ret_bufpool.exit.while.body_crit_edge: ; preds = %irdma_puda_ret_bufpool.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

irdma_puda_ret_bufpool.exit.while.end_crit_edge:  ; preds = %irdma_puda_ret_bufpool.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %irdma_puda_ret_bufpool.exit.while.end_crit_edge, %if.then19.while.end_crit_edge
  %55 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev28, align 4
  tail call void @irdma_ieq_mpa_crc_ae(ptr noundef %56, ptr noundef %qp) #6
  br label %do.end34

do.body.backedge:                                 ; preds = %if.end16
  %57 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %pfpdu1, align 4
  %cmp.i.not = icmp eq ptr %58, %pfpdu1
  br i1 %cmp.i.not, label %do.body.backedge.do.end34_crit_edge, label %do.body.backedge.if.end_crit_edge

do.body.backedge.if.end_crit_edge:                ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.backedge.do.end34_crit_edge:              ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end34:                                         ; preds = %do.body.backedge.do.end34_crit_edge, %while.end, %if.end16.do.end34_crit_edge, %if.end.i.i, %if.then15.do.end34_crit_edge, %if.then11, %do.body6, %entry.do.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_ieq_process_buf(ptr noundef %ieq, ptr noundef %pfpdu, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen1 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 8
  %0 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %datalen1, align 4
  %data = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %seqnum2 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 16
  %4 = ptrtoint ptr %seqnum2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seqnum2, align 4
  %mem = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not291 = icmp eq i16 %1, 0
  br i1 %tobool.not291, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %marker_len1.i = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 7
  %rcv_start_seq.i = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 5
  %max_fpdu_data.i = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 3
  %check_crc = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 43
  %hash_desc = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 22
  %fpdu_processed = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 9
  %fpdu_processed48 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 37
  br label %while.body

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %while.body.lr.ph
  %datalen.0295 = phi i16 [ %1, %while.body.lr.ph ], [ %sub57, %if.end46.while.body_crit_edge ]
  %datap.0294 = phi ptr [ %3, %while.body.lr.ph ], [ %add.ptr, %if.end46.while.body_crit_edge ]
  %full.0293 = phi i16 [ 0, %while.body.lr.ph ], [ %inc, %if.end46.while.body_crit_edge ]
  %len.0292 = phi i16 [ 0, %while.body.lr.ph ], [ %add, %if.end46.while.body_crit_edge ]
  %8 = ptrtoint ptr %seqnum2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seqnum2, align 4
  %10 = ptrtoint ptr %marker_len1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %marker_len1.i, align 1
  %12 = ptrtoint ptr %rcv_start_seq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rcv_start_seq.i, align 8
  %sub.i = sub i32 %13, %9
  %and.i = and i32 %sub.i, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.body.if.end7.i_crit_edge

while.body.if.end7.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %14 = ptrtoint ptr %datap.0294 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %datap.0294, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.i = icmp eq i32 %15, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %land.lhs.true.i.do.body_crit_edge

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.then.i.if.end7.i_crit_edge, %while.body.if.end7.i_crit_edge
  %and.pn.i = phi i32 [ 512, %land.lhs.true.i.if.end7.i_crit_edge ], [ 512, %if.then.i.if.end7.i_crit_edge ], [ %and.i, %while.body.if.end7.i_crit_edge ]
  %total_len.0.shrunk.i = phi i8 [ %11, %land.lhs.true.i.if.end7.i_crit_edge ], [ 0, %if.then.i.if.end7.i_crit_edge ], [ 0, %while.body.if.end7.i_crit_edge ]
  %conv8.i = zext i8 %total_len.0.shrunk.i to i32
  %add.ptr.i = getelementptr i8, ptr %datap.0294, i32 %conv8.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %18 = add i16 %17, 9
  %19 = and i16 %18, -4
  %conv16.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %max_fpdu_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_fpdu_data.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv16.i)
  %cmp.i = icmp ult i32 %21, %conv16.i
  br i1 %cmp.i, label %if.end7.i.do.body_crit_edge, label %if.end19.i

if.end7.i.do.body_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end19.i:                                       ; preds = %if.end7.i
  %marker_seq.0.i = add i32 %and.pn.i, %9
  %22 = zext i8 %total_len.0.shrunk.i to i16
  %conv23.i = add i16 %19, %22
  %conv24.i = zext i16 %conv23.i to i32
  %add25.i = add i32 %9, %conv24.i
  %sub2661.i = sub i32 %marker_seq.0.i, %add25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2661.i)
  %cmp2762.i = icmp slt i32 %sub2661.i, 0
  br i1 %cmp2762.i, label %while.body.lr.ph.i, label %if.end19.i.irdma_ieq_get_fpdu_len.exit_crit_edge

if.end19.i.irdma_ieq_get_fpdu_len.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_ieq_get_fpdu_len.exit

while.body.lr.ph.i:                               ; preds = %if.end19.i
  %conv29.i = zext i8 %11 to i32
  %23 = zext i8 %11 to i16
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %total_len.165.i = phi i16 [ %conv23.i, %while.body.lr.ph.i ], [ %conv32.i, %while.body.i.while.body.i_crit_edge ]
  %end_seq.064.i = phi i32 [ %add25.i, %while.body.lr.ph.i ], [ %add34.i, %while.body.i.while.body.i_crit_edge ]
  %marker_seq.163.i = phi i32 [ %marker_seq.0.i, %while.body.lr.ph.i ], [ %add35.i, %while.body.i.while.body.i_crit_edge ]
  %conv32.i = add i16 %total_len.165.i, %23
  %add34.i = add i32 %end_seq.064.i, %conv29.i
  %add35.i = add i32 %marker_seq.163.i, 512
  %sub26.i = sub i32 %add35.i, %add34.i
  %cmp27.i = icmp slt i32 %sub26.i, 0
  br i1 %cmp27.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.irdma_ieq_get_fpdu_len.exit_crit_edge

while.body.i.irdma_ieq_get_fpdu_len.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_ieq_get_fpdu_len.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

irdma_ieq_get_fpdu_len.exit:                      ; preds = %while.body.i.irdma_ieq_get_fpdu_len.exit_crit_edge, %if.end19.i.irdma_ieq_get_fpdu_len.exit_crit_edge
  %retval.0.i220 = phi i16 [ %conv23.i, %if.end19.i.irdma_ieq_get_fpdu_len.exit_crit_edge ], [ %conv32.i, %while.body.i.irdma_ieq_get_fpdu_len.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i220)
  %tobool6.not = icmp eq i16 %retval.0.i220, 0
  br i1 %tobool6.not, label %irdma_ieq_get_fpdu_len.exit.do.body_crit_edge, label %if.end13

irdma_ieq_get_fpdu_len.exit.do.body_crit_edge:    ; preds = %irdma_ieq_get_fpdu_len.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %irdma_ieq_get_fpdu_len.exit.do.body_crit_edge, %if.end7.i.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ieq_process_buf.__UNIQUE_ID_ddebug843, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ieq_process_buf, %if.then11)) #6
          to label %do.end [label %if.then11], !srcloc !120

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call12 = tail call ptr @to_ibdev(ptr noundef %25) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ieq_process_buf.__UNIQUE_ID_ddebug843, ptr noundef %call12, ptr noundef nonnull @.str.40) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %26 = ptrtoint ptr %pfpdu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pfpdu, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef %pfpdu, ptr noundef %27) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %buf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pfpdu, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %pfpdu to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %buf, ptr %pfpdu, align 4
  br label %cleanup

if.end13:                                         ; preds = %irdma_ieq_get_fpdu_len.exit
  %conv15 = zext i16 %retval.0.i220 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %datalen.0295, i16 %retval.0.i220)
  %cmp = icmp ult i16 %datalen.0295, %retval.0.i220
  br i1 %cmp, label %while.end, label %if.end18

if.end18:                                         ; preds = %if.end13
  %add.ptr = getelementptr i8, ptr %datap.0294, i32 %conv15
  %32 = ptrtoint ptr %check_crc to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %check_crc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end18.if.end46_crit_edge, label %if.end24

if.end18.if.end46_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end24:                                         ; preds = %if.end18
  %add.ptr20 = getelementptr i8, ptr %add.ptr, i32 -4
  %33 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr20, align 4
  %35 = ptrtoint ptr %hash_desc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hash_desc, align 4
  %sub = add nsw i32 %conv15, -4
  %call23 = tail call i32 @irdma_ieq_check_mpacrc(ptr noundef %36, ptr noundef %datap.0294, i32 noundef %sub, i32 noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end24.if.end46_crit_edge, label %if.then26

if.end24.if.end46_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then26:                                        ; preds = %if.end24
  %37 = ptrtoint ptr %pfpdu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pfpdu, align 4
  %call.i.i221 = tail call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef %pfpdu, ptr noundef %38) #6
  br i1 %call.i.i221, label %if.end.i.i224, label %if.then26.list_add.exit225_crit_edge

if.then26.list_add.exit225_crit_edge:             ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit225

if.end.i.i224:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i222 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i222 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf, ptr %prev1.i.i222, align 4
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %buf, align 4
  %prev3.i.i223 = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i223 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %pfpdu, ptr %prev3.i.i223, align 4
  %42 = ptrtoint ptr %pfpdu to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %buf, ptr %pfpdu, align 4
  br label %list_add.exit225

list_add.exit225:                                 ; preds = %if.end.i.i224, %if.then26.list_add.exit225_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ieq_process_buf.__UNIQUE_ID_ddebug844, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ieq_process_buf, %if.then40)) #6
          to label %cleanup [label %if.then40], !srcloc !120

if.then40:                                        ; preds = %list_add.exit225
  call void @__sanitizer_cov_trace_pc() #8
  %dev41 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 3
  %43 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev41, align 4
  %call42 = tail call ptr @to_ibdev(ptr noundef %44) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ieq_process_buf.__UNIQUE_ID_ddebug844, ptr noundef %call42, ptr noundef nonnull @.str.41) #6
  br label %cleanup

if.end46:                                         ; preds = %if.end24.if.end46_crit_edge, %if.end18.if.end46_crit_edge
  %inc = add i16 %full.0293, 1
  %45 = ptrtoint ptr %fpdu_processed to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %fpdu_processed, align 8
  %inc47 = add i64 %46, 1
  store i64 %inc47, ptr %fpdu_processed, align 8
  %47 = ptrtoint ptr %fpdu_processed48 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %fpdu_processed48, align 8
  %inc49 = add i64 %48, 1
  store i64 %inc49, ptr %fpdu_processed48, align 8
  %add = add i16 %retval.0.i220, %len.0292
  %sub57 = sub i16 %datalen.0295, %retval.0.i220
  %tobool.not = icmp eq i16 %sub57, 0
  br i1 %tobool.not, label %while.end.thread, label %if.end46.while.body_crit_edge

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %full.0293)
  %tobool59.not = icmp eq i16 %full.0293, 0
  br i1 %tobool59.not, label %while.end.if.then123_crit_edge, label %while.end.if.then60_crit_edge

while.end.if.then60_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

while.end.if.then123_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then123

while.end.thread:                                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc)
  %phi.cmp = icmp eq i16 %inc, 0
  br i1 %phi.cmp, label %while.end.thread.cleanup_crit_edge, label %while.end.thread.if.then60_crit_edge

while.end.thread.if.then60_crit_edge:             ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

while.end.thread.cleanup_crit_edge:               ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then60:                                        ; preds = %while.end.thread.if.then60_crit_edge, %while.end.if.then60_crit_edge
  %len.0288 = phi i16 [ %add, %while.end.thread.if.then60_crit_edge ], [ %len.0292, %while.end.if.then60_crit_edge ]
  %datap.0281 = phi ptr [ %add.ptr, %while.end.thread.if.then60_crit_edge ], [ %datap.0294, %while.end.if.then60_crit_edge ]
  %datalen.0277 = phi i16 [ 0, %while.end.thread.if.then60_crit_edge ], [ %datalen.0295, %while.end.if.then60_crit_edge ]
  %bufpool.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 24
  %bufpool_lock.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 27
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %49 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %bufpool.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %50, %bufpool.i
  br i1 %cmp.i.not.i.i, label %if.then60.if.then63_crit_edge, label %if.then.i.i

if.then60.if.then63_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

if.then.i.i:                                      ; preds = %if.then60
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %50) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.irdma_puda_get_listbuf.exit.i_crit_edge

if.then.i.i.irdma_puda_get_listbuf.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i.i, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %irdma_puda_get_listbuf.exit.i

irdma_puda_get_listbuf.exit.i:                    ; preds = %if.end.i.i.i.i, %if.then.i.i.irdma_puda_get_listbuf.exit.i_crit_edge
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %tobool.not.i226 = icmp eq ptr %50, null
  br i1 %tobool.not.i226, label %irdma_puda_get_listbuf.exit.i.if.then63_crit_edge, label %if.end66

irdma_puda_get_listbuf.exit.i.if.then63_crit_edge: ; preds = %irdma_puda_get_listbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

if.then63:                                        ; preds = %irdma_puda_get_listbuf.exit.i.if.then63_crit_edge, %if.then60.if.then63_crit_edge
  %stats_buf_alloc_fail.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 31
  %59 = ptrtoint ptr %stats_buf_alloc_fail.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %stats_buf_alloc_fail.i, align 8
  %inc.i = add i64 %60, 1
  store i64 %inc.i, ptr %stats_buf_alloc_fail.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  %no_tx_bufs = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 12
  %61 = ptrtoint ptr %no_tx_bufs to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %no_tx_bufs, align 8
  %inc64 = add i64 %62, 1
  store i64 %inc64, ptr %no_tx_bufs, align 8
  %63 = ptrtoint ptr %pfpdu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pfpdu, align 4
  %call.i.i228 = tail call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef %pfpdu, ptr noundef %64) #6
  br i1 %call.i.i228, label %if.end.i.i231, label %if.then63.cleanup_crit_edge

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i231:                                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i229 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i229 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %buf, ptr %prev1.i.i229, align 4
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %64, ptr %buf, align 4
  %prev3.i.i230 = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i230 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %pfpdu, ptr %prev3.i.i230, align 4
  %68 = ptrtoint ptr %pfpdu to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %buf, ptr %pfpdu, align 4
  br label %cleanup

if.end66:                                         ; preds = %irdma_puda_get_listbuf.exit.i
  %avail_buf_count.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 26
  %69 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %avail_buf_count.i, align 4
  %dec.i = add i32 %70, -1
  store i32 %dec.i, ptr %avail_buf_count.i, align 4
  %vsi.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 4
  %71 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vsi.i, align 8
  %vsi6.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 19
  %73 = ptrtoint ptr %vsi6.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %vsi6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  %tcphlen.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 10
  %74 = ptrtoint ptr %tcphlen.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tcphlen.i, align 4
  %tcphlen1.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 10
  %76 = ptrtoint ptr %tcphlen1.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %tcphlen1.i, align 4
  %ipv4.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 15
  %77 = ptrtoint ptr %ipv4.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i = load i8, ptr %ipv4.i, align 1
  %ipv42.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 15
  %bf.load.lobit.i = and i8 %bf.load.i, -128
  %78 = ptrtoint ptr %ipv42.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load3.i = load i8, ptr %ipv42.i, align 1
  %bf.clear.i = and i8 %bf.load3.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.load.lobit.i
  store i8 %bf.set.i, ptr %ipv42.i, align 1
  %vsi.i233 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 19
  %79 = ptrtoint ptr %vsi.i233 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vsi.i233, align 4
  %dev.i = getelementptr inbounds %struct.irdma_sc_vsi, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  %hw_rev.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %82, i32 0, i32 25, i32 0, i32 9
  %83 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %hw_rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp.i234 = icmp ugt i8 %84, 1
  br i1 %cmp.i234, label %if.then.i235, label %if.else.i236

if.then.i235:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %hdrlen.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 14
  %85 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %75, ptr %hdrlen.i, align 4
  %conv7.i = zext i8 %75 to i32
  %86 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mem, align 4
  %add.ptr.i.i = getelementptr i8, ptr %87, i32 40
  %mem3.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 1
  %88 = ptrtoint ptr %mem3.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mem3.i.i, align 4
  %90 = call ptr @memcpy(ptr %89, ptr %add.ptr.i.i, i32 %conv7.i)
  br label %irdma_ieq_setup_tx_buf.exit

if.else.i236:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %maclen.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 11
  %91 = ptrtoint ptr %maclen.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %maclen.i, align 1
  %maclen8.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 11
  %93 = ptrtoint ptr %maclen8.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %maclen8.i, align 1
  %hdrlen9.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 14
  %94 = ptrtoint ptr %hdrlen9.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %hdrlen9.i, align 4
  %hdrlen10.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 14
  %96 = ptrtoint ptr %hdrlen10.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %hdrlen10.i, align 4
  %97 = load i8, ptr %hdrlen9.i, align 4
  %conv12.i = zext i8 %97 to i32
  %98 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mem, align 4
  %mem3.i29.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 1
  %100 = ptrtoint ptr %mem3.i29.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mem3.i29.i, align 4
  %102 = call ptr @memcpy(ptr %101, ptr %99, i32 %conv12.i)
  br label %irdma_ieq_setup_tx_buf.exit

irdma_ieq_setup_tx_buf.exit:                      ; preds = %if.else.i236, %if.then.i235
  %dev67 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 3
  %103 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev67, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %104, i32 0, i32 25, i32 0, i32 9
  %105 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp69 = icmp ugt i8 %106, 1
  br i1 %cmp69, label %if.then71, label %if.else

if.then71:                                        ; preds = %irdma_ieq_setup_tx_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %hdrlen = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 14
  %107 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %hdrlen, align 4
  %conv72 = zext i8 %108 to i32
  %conv73 = zext i16 %len.0288 to i32
  %109 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mem, align 4
  %conv.i = and i32 %sub.ptr.sub, 65535
  %add.ptr.i237 = getelementptr i8, ptr %110, i32 %conv.i
  %mem3.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 1
  %111 = ptrtoint ptr %mem3.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mem3.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %112, i32 %conv72
  %113 = call ptr @memcpy(ptr %add.ptr5.i, ptr %add.ptr.i237, i32 %conv73)
  %114 = load i8, ptr %hdrlen, align 4
  %conv75 = zext i8 %114 to i32
  %add77 = add nuw nsw i32 %conv75, %conv73
  %totallen = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 12
  %115 = ptrtoint ptr %totallen to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add77, ptr %totallen, align 4
  %ah = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 16
  %116 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ah, align 8
  %ah_idx = getelementptr inbounds %struct.irdma_sc_ah, ptr %117, i32 0, i32 1, i32 6
  %118 = ptrtoint ptr %ah_idx to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ah_idx, align 4
  %ah_id = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 17
  %120 = ptrtoint ptr %ah_id to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %ah_id, align 4
  br label %if.end86

if.else:                                          ; preds = %irdma_ieq_setup_tx_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %hdrlen78 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 14
  %121 = ptrtoint ptr %hdrlen78 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %hdrlen78, align 4
  %conv79 = zext i8 %122 to i32
  %conv80 = zext i16 %len.0288 to i32
  %123 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mem, align 4
  %conv.i239 = and i32 %sub.ptr.sub, 65535
  %add.ptr.i240 = getelementptr i8, ptr %124, i32 %conv.i239
  %mem3.i241 = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 1
  %125 = ptrtoint ptr %mem3.i241 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mem3.i241, align 4
  %add.ptr5.i242 = getelementptr i8, ptr %126, i32 %conv79
  %127 = call ptr @memcpy(ptr %add.ptr5.i242, ptr %add.ptr.i240, i32 %conv80)
  %128 = load i8, ptr %hdrlen78, align 4
  %conv82 = zext i8 %128 to i32
  %add84 = add nuw nsw i32 %conv82, %conv80
  %totallen85 = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 12
  %129 = ptrtoint ptr %totallen85 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add84, ptr %totallen85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then71
  %130 = ptrtoint ptr %seqnum2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %seqnum2, align 4
  tail call void @irdma_ieq_update_tcpip_info(ptr noundef nonnull %50, i16 noundef zeroext %len.0288, i32 noundef %131) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ieq_process_buf.__UNIQUE_ID_ddebug845, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ieq_process_buf, %if.then100)) #6
          to label %do.end106 [label %if.then100], !srcloc !120

if.then100:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %mem101 = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 1
  %132 = ptrtoint ptr %mem101 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mem101, align 4
  %totallen103 = getelementptr inbounds %struct.irdma_puda_buf, ptr %50, i32 0, i32 12
  %134 = ptrtoint ptr %totallen103 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %totallen103, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.42, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef %133, i32 noundef %135, i1 noundef zeroext false) #6
  br label %do.end106

do.end106:                                        ; preds = %if.then100, %if.end86
  %136 = ptrtoint ptr %ipv42.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load107 = load i8, ptr %ipv42.i, align 1
  %bf.set = or i8 %bf.load107, 32
  store i8 %bf.set, ptr %ipv42.i, align 1
  tail call void @irdma_puda_send_buf(ptr noundef %ieq, ptr noundef nonnull %50)
  br i1 %cmp, label %if.end113, label %if.then109

if.then109:                                       ; preds = %do.end106
  %137 = ptrtoint ptr %seqnum2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %seqnum2, align 4
  %conv111 = zext i16 %len.0288 to i32
  %add112 = add i32 %138, %conv111
  %rcv_nxt = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 1
  %139 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %add112, ptr %rcv_nxt, align 8
  %140 = ptrtoint ptr %ipv4.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load.i243 = load i8, ptr %ipv4.i, align 1
  %bf.clear.i244 = and i8 %bf.load.i243, -33
  store i8 %bf.clear.i244, ptr %ipv4.i, align 1
  %call2.i246 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %141 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bufpool.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef %bufpool.i, ptr noundef %142) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then109.irdma_puda_ret_bufpool.exit_crit_edge

if.then109.irdma_puda_ret_bufpool.exit_crit_edge: ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_ret_bufpool.exit

if.end.i.i.i:                                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %buf, ptr %prev1.i.i.i, align 4
  %144 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %142, ptr %buf, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %145 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %bufpool.i, ptr %prev3.i.i.i, align 4
  %146 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %buf, ptr %bufpool.i, align 4
  br label %irdma_puda_ret_bufpool.exit

irdma_puda_ret_bufpool.exit:                      ; preds = %if.end.i.i.i, %if.then109.irdma_puda_ret_bufpool.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i246) #6
  %147 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %avail_buf_count.i, align 4
  %inc.i249 = add i32 %148, 1
  store i32 %inc.i249, ptr %avail_buf_count.i, align 4
  br label %cleanup

if.end113:                                        ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %datap.0281, ptr %data, align 4
  %conv115 = zext i16 %len.0288 to i32
  %add116 = add i32 %5, %conv115
  %150 = ptrtoint ptr %seqnum2 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add116, ptr %seqnum2, align 4
  %151 = ptrtoint ptr %datalen1 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %datalen.0277, ptr %datalen1, align 4
  %rcv_nxt120 = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 1
  %152 = ptrtoint ptr %rcv_nxt120 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add116, ptr %rcv_nxt120, align 8
  br label %if.then123

if.then123:                                       ; preds = %if.end113, %while.end.if.then123_crit_edge
  %call124 = tail call fastcc i32 @irdma_ieq_handle_partial(ptr noundef %ieq, ptr noundef %pfpdu, ptr noundef %buf, i16 noundef zeroext %retval.0.i220)
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %irdma_puda_ret_bufpool.exit, %if.end.i.i231, %if.then63.cleanup_crit_edge, %while.end.thread.cleanup_crit_edge, %if.then40, %list_add.exit225, %if.end.i.i, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call124, %if.then123 ], [ 0, %irdma_puda_ret_bufpool.exit ], [ -61, %if.then40 ], [ -61, %do.end.cleanup_crit_edge ], [ -61, %if.end.i.i ], [ -61, %list_add.exit225 ], [ -62, %if.then63.cleanup_crit_edge ], [ -62, %if.end.i.i231 ], [ 0, %while.end.thread.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_ieq_mpa_crc_ae(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_ieq_cleanup_qp(ptr noundef %ieq, ptr noundef %qp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pfpdu1 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12
  %ah = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 16
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @irdma_puda_free_ah(ptr noundef %3, ptr noundef nonnull %1) #6
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ah, align 8
  %ah_buf = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 17
  %5 = ptrtoint ptr %ah_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ah_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %7 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pfpdu1, align 4
  %cmp.i.not24 = icmp eq ptr %8, %pfpdu1
  br i1 %cmp.i.not24, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %bufpool_lock.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 27
  %bufpool.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 24
  %avail_buf_count.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %irdma_puda_ret_bufpool.exit.while.body_crit_edge, %while.body.lr.ph
  %9 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pfpdu1, align 4
  %cmp.i.not.i = icmp eq ptr %10, %pfpdu1
  br i1 %cmp.i.not.i, label %while.body.irdma_puda_get_listbuf.exit_crit_edge, label %if.then.i

while.body.irdma_puda_get_listbuf.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit

if.then.i:                                        ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
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
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %irdma_puda_get_listbuf.exit

irdma_puda_get_listbuf.exit:                      ; preds = %list_del.exit.i, %while.body.irdma_puda_get_listbuf.exit_crit_edge
  %buf.0.i = phi ptr [ null, %while.body.irdma_puda_get_listbuf.exit_crit_edge ], [ %10, %list_del.exit.i ]
  %do_lpb.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0.i, i32 0, i32 15
  %19 = ptrtoint ptr %do_lpb.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %do_lpb.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %do_lpb.i, align 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %20 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bufpool.i, align 4
  %call.i.i.i22 = tail call zeroext i1 @__list_add_valid(ptr noundef %buf.0.i, ptr noundef %bufpool.i, ptr noundef %21) #6
  br i1 %call.i.i.i22, label %if.end.i.i.i23, label %irdma_puda_get_listbuf.exit.irdma_puda_ret_bufpool.exit_crit_edge

irdma_puda_get_listbuf.exit.irdma_puda_ret_bufpool.exit_crit_edge: ; preds = %irdma_puda_get_listbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_ret_bufpool.exit

if.end.i.i.i23:                                   ; preds = %irdma_puda_get_listbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf.0.i, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %buf.0.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %buf.0.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bufpool.i, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %buf.0.i, ptr %bufpool.i, align 4
  br label %irdma_puda_ret_bufpool.exit

irdma_puda_ret_bufpool.exit:                      ; preds = %if.end.i.i.i23, %irdma_puda_get_listbuf.exit.irdma_puda_ret_bufpool.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  %26 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %avail_buf_count.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %avail_buf_count.i, align 4
  %28 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %pfpdu1, align 4
  %cmp.i.not = icmp eq ptr %29, %pfpdu1
  br i1 %cmp.i.not, label %irdma_puda_ret_bufpool.exit.cleanup_crit_edge, label %irdma_puda_ret_bufpool.exit.while.body_crit_edge

irdma_puda_ret_bufpool.exit.while.body_crit_edge: ; preds = %irdma_puda_ret_bufpool.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

irdma_puda_ret_bufpool.exit.cleanup_crit_edge:    ; preds = %irdma_puda_ret_bufpool.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %irdma_puda_ret_bufpool.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_puda_free_ah(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_cqp_qp_destroy_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_qp_destroy(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_poll_for_cqp_op_done(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cqp_cq_destroy_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_cq_destroy(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_cq_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_cqp_cq_create_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_puda_cq_wqe(ptr nocapture noundef readonly %dev, ptr noundef %cq) unnamed_addr #0 align 64 {
entry:
  %wqe_idx.i = alloca i32, align 4
  %compl_info = alloca %struct.irdma_ccq_cqe_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %compl_info) #6
  %0 = call ptr @memset(ptr %compl_info, i32 255, i32 32)
  %cqp1 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %cqp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cqp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx.i) #6
  %3 = ptrtoint ptr %wqe_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %wqe_idx.i, align 4, !annotation !125
  %call.i = call ptr @irdma_sc_cqp_get_next_send_wqe_idx(ptr noundef %2, i64 noundef 0, ptr noundef nonnull %wqe_idx.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx.i) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cq_size = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 5
  %4 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cq_size, align 4
  %conv = zext i32 %5 to i64
  %6 = call i64 @llvm.bswap.i64(i64 %conv) #6
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %call.i, align 8
  %8 = ptrtoint ptr %cq to i32
  %shr = lshr i32 %8, 1
  %conv2 = zext i32 %shr to i64
  %9 = call i64 @llvm.bswap.i64(i64 %conv2) #6
  %arrayidx.i = getelementptr i64, ptr %call.i, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx.i, align 8
  %shadow_read_threshold = getelementptr inbounds %struct.irdma_sc_cq, ptr %cq, i32 0, i32 8
  %11 = ptrtoint ptr %shadow_read_threshold to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shadow_read_threshold, align 4
  %and20 = and i32 %12, 262143
  %conv21 = zext i32 %and20 to i64
  %13 = call i64 @llvm.bswap.i64(i64 %conv21) #6
  %arrayidx.i240 = getelementptr i64, ptr %call.i, i32 2
  %14 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx.i240, align 8
  %cq_pa = getelementptr inbounds %struct.irdma_sc_cq, ptr %cq, i32 0, i32 1
  %15 = ptrtoint ptr %cq_pa to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cq_pa, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16) #6
  %arrayidx.i241 = getelementptr i64, ptr %call.i, i32 4
  %18 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx.i241, align 8
  %shadow_area_pa = getelementptr inbounds %struct.irdma_sc_cq, ptr %cq, i32 0, i32 2
  %19 = ptrtoint ptr %shadow_area_pa to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %shadow_area_pa, align 8
  %21 = call i64 @llvm.bswap.i64(i64 %20) #6
  %arrayidx.i242 = getelementptr i64, ptr %call.i, i32 5
  %22 = ptrtoint ptr %arrayidx.i242 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx.i242, align 8
  %vsi = getelementptr inbounds %struct.irdma_sc_cq, ptr %cq, i32 0, i32 4
  %23 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vsi, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 8
  %tph_val = getelementptr inbounds %struct.irdma_sc_cq, ptr %cq, i32 0, i32 11
  %27 = ptrtoint ptr %tph_val to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tph_val, align 2
  %conv47 = zext i8 %28 to i64
  %conv77 = zext i16 %26 to i64
  %shl78 = shl nuw nsw i64 %conv77, 8
  %and79 = and i64 %shl78, 261888
  %or = or i64 %and79, %conv47
  %29 = call i64 @llvm.bswap.i64(i64 %or) #6
  %arrayidx.i243 = getelementptr i64, ptr %call.i, i32 7
  %30 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx.i243, align 8
  %polarity = getelementptr inbounds %struct.irdma_sc_cqp, ptr %2, i32 0, i32 18
  %31 = ptrtoint ptr %polarity to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %polarity, align 1
  %cq_id = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 4
  %33 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cq_id, align 8
  %conv81 = zext i32 %34 to i64
  %conv175 = zext i8 %32 to i64
  %shl176 = shl i64 %conv175, 63
  %or149 = or i64 %shl176, %conv81
  %or178 = or i64 %or149, 914806559211520
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !126
  %35 = call i64 @llvm.bswap.i64(i64 %or178) #6
  %arrayidx.i244 = getelementptr i64, ptr %call.i, i32 3
  %36 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx.i244, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_cq_wqe.__UNIQUE_ID_ddebug817, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_cq_wqe, %if.then185)) #6
          to label %do.end188 [label %if.then185], !srcloc !120

if.then185:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.32, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef nonnull %call.i, i32 noundef 64, i1 noundef zeroext false) #6
  br label %do.end188

do.end188:                                        ; preds = %if.then185, %if.end
  %37 = ptrtoint ptr %cqp1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cqp1, align 4
  call void @irdma_sc_cqp_post_sq(ptr noundef %38) #6
  %39 = ptrtoint ptr %cqp1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cqp1, align 4
  %call191 = call i32 @irdma_sc_poll_for_cqp_op_done(ptr noundef %40, i8 noundef zeroext 3, ptr noundef nonnull %compl_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.then193, label %do.end188.cleanup_crit_edge

do.end188.cleanup_crit_edge:                      ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then193:                                       ; preds = %do.end188
  %ceq194 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 29
  %41 = ptrtoint ptr %ceq194 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ceq194, align 4
  %tobool195.not = icmp eq ptr %42, null
  br i1 %tobool195.not, label %if.then193.cleanup_crit_edge, label %land.lhs.true

if.then193.cleanup_crit_edge:                     ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then193
  %reg_cq = getelementptr inbounds %struct.irdma_sc_ceq, ptr %42, i32 0, i32 13
  %43 = ptrtoint ptr %reg_cq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_cq, align 8
  %tobool196.not = icmp eq ptr %44, null
  br i1 %tobool196.not, label %land.lhs.true.cleanup_crit_edge, label %if.then197

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then197:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call198 = call i32 @irdma_sc_add_cq_ctx(ptr noundef nonnull %42, ptr noundef %cq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then197, %land.lhs.true.cleanup_crit_edge, %if.then193.cleanup_crit_edge, %do.end188.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -51, %entry.cleanup_crit_edge ], [ %call191, %do.end188.cleanup_crit_edge ], [ %call198, %if.then197 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then193.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %compl_info) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_cqp_post_sq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_add_cq_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irdma_sc_cqp_get_next_send_wqe_idx(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @irdma_get_encoded_wqe_size(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_qp_add_qos(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_puda_qp_setctx(ptr noundef %rsrc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qp1 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1
  %hw_host_ctx = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %hw_host_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_host_ctx, align 4
  %sq_pa = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %sq_pa to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sq_pa, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3) #6
  %arrayidx.i = getelementptr i64, ptr %1, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx.i, align 8
  %rq_pa = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %rq_pa to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rq_pa, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #6
  %arrayidx.i397 = getelementptr i64, ptr %1, i32 2
  %9 = ptrtoint ptr %arrayidx.i397 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx.i397, align 8
  %hw_rq_size = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 24
  %10 = ptrtoint ptr %hw_rq_size to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_rq_size, align 1
  %hw_sq_size = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 23
  %12 = ptrtoint ptr %hw_sq_size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_sq_size, align 4
  %conv16 = zext i8 %11 to i64
  %shl = shl nuw nsw i64 %conv16, 48
  %and17 = and i64 %shl, 4222124650659840
  %conv43 = zext i8 %13 to i64
  %shl44 = shl nuw nsw i64 %conv43, 52
  %and45 = and i64 %shl44, 67553994410557440
  %or = or i64 %and45, %and17
  %arrayidx.i398 = getelementptr i64, ptr %1, i32 3
  %14 = ptrtoint ptr %arrayidx.i398 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or, ptr %arrayidx.i398, align 8
  %buf_size = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 10
  %15 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %buf_size, align 4
  %conv71 = zext i16 %16 to i64
  %shl72 = shl nuw nsw i64 %conv71, 16
  %and73 = and i64 %shl72, 1073676288
  %17 = tail call i64 @llvm.bswap.i64(i64 %and73) #6
  %arrayidx.i399 = getelementptr i64, ptr %1, i32 6
  %18 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx.i399, align 8
  %arrayidx.i400 = getelementptr i64, ptr %1, i32 7
  %19 = ptrtoint ptr %arrayidx.i400 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %arrayidx.i400, align 8
  %dev = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %21, i32 0, i32 25, i32 0, i32 9
  %22 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp = icmp eq i8 %23, 1
  br i1 %cmp, label %if.then76, label %entry.do.end129_crit_edge

entry.do.end129_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129

if.then76:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i401 = getelementptr i64, ptr %1, i32 8
  %24 = ptrtoint ptr %arrayidx.i401 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 72057594037927936, ptr %arrayidx.i401, align 8
  br label %do.end129

do.end129:                                        ; preds = %if.then76, %entry.do.end129_crit_edge
  %cq_id = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 11
  %25 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cq_id, align 8
  %conv103 = zext i32 %26 to i64
  %and105 = and i64 %conv103, 524287
  %shl133 = shl nuw i64 %conv103, 32
  %and134 = and i64 %shl133, 2251795518717952
  %or135 = or i64 %and134, %and105
  %27 = tail call i64 @llvm.bswap.i64(i64 %or135) #6
  %arrayidx.i402 = getelementptr i64, ptr %1, i32 17
  %28 = ptrtoint ptr %arrayidx.i402 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx.i402, align 8
  %stats_idx = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 42
  %29 = ptrtoint ptr %stats_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %stats_idx, align 8
  %31 = and i8 %30, 127
  %and163 = zext i8 %31 to i64
  %32 = shl nuw nsw i64 %and163, 56
  %arrayidx.i403 = getelementptr i64, ptr %1, i32 18
  %33 = ptrtoint ptr %arrayidx.i403 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx.i403, align 8
  %stats_idx_valid = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 43
  %34 = ptrtoint ptr %stats_idx_valid to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %stats_idx_valid, align 1
  %35 = lshr i8 %bf.load, 6
  %36 = zext i8 %35 to i64
  %shl214 = shl nuw nsw i64 %36, 34
  %and215 = and i64 %shl214, 17179869184
  %or216 = or i64 %and215, 8589934592
  %arrayidx.i404 = getelementptr i64, ptr %1, i32 20
  %37 = ptrtoint ptr %arrayidx.i404 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or216, ptr %arrayidx.i404, align 8
  %38 = ptrtoint ptr %qp1 to i32
  %conv240 = zext i32 %38 to i64
  %39 = tail call i64 @llvm.bswap.i64(i64 %conv240) #6
  %arrayidx.i405 = getelementptr i64, ptr %1, i32 21
  %40 = ptrtoint ptr %arrayidx.i405 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx.i405, align 8
  %qs_handle = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 17
  %41 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %qs_handle, align 4
  %rq_tph_val = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 21
  %43 = ptrtoint ptr %rq_tph_val to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rq_tph_val, align 2
  %conv296 = zext i8 %44 to i64
  %shl297 = shl nuw nsw i64 %conv296, 8
  %sq_tph_val = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %rsrc, i32 0, i32 1, i32 20
  %45 = ptrtoint ptr %sq_tph_val to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sq_tph_val, align 1
  %conv268 = zext i8 %46 to i64
  %conv325 = zext i16 %42 to i64
  %shl326 = shl nuw nsw i64 %conv325, 16
  %and327 = and i64 %shl326, 67043328
  %or299 = or i64 %and327, %conv268
  %or328 = or i64 %or299, %shl297
  %47 = tail call i64 @llvm.bswap.i64(i64 %or328) #6
  %arrayidx.i406 = getelementptr i64, ptr %1, i32 22
  %48 = ptrtoint ptr %arrayidx.i406 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx.i406, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_qp_setctx.__UNIQUE_ID_ddebug750, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_qp_setctx, %if.then334)) #6
          to label %do.end337 [label %if.then334], !srcloc !120

if.then334:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.34, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef %1, i32 noundef 256, i1 noundef zeroext false) #6
  br label %do.end337

do.end337:                                        ; preds = %if.then334, %do.end129
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_cqp_qp_create_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_puda_qp_wqe(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %qp) unnamed_addr #0 align 64 {
entry:
  %wqe_idx.i = alloca i32, align 4
  %compl_info = alloca %struct.irdma_ccq_cqe_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %compl_info) #6
  %0 = call ptr @memset(ptr %compl_info, i32 255, i32 32)
  %cqp1 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %cqp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cqp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx.i) #6
  %3 = ptrtoint ptr %wqe_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %wqe_idx.i, align 4, !annotation !125
  %call.i = call ptr @irdma_sc_cqp_get_next_send_wqe_idx(ptr noundef %2, i64 noundef 0, ptr noundef nonnull %wqe_idx.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx.i) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_host_ctx_pa = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 3
  %4 = ptrtoint ptr %hw_host_ctx_pa to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %hw_host_ctx_pa, align 8
  %6 = call i64 @llvm.bswap.i64(i64 %5) #6
  %arrayidx.i = getelementptr i64, ptr %call.i, i32 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx.i, align 8
  %shadow_area_pa = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 4
  %8 = ptrtoint ptr %shadow_area_pa to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %shadow_area_pa, align 8
  %10 = call i64 @llvm.bswap.i64(i64 %9) #6
  %arrayidx.i117 = getelementptr i64, ptr %call.i, i32 5
  %11 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx.i117, align 8
  %polarity = getelementptr inbounds %struct.irdma_sc_cqp, ptr %2, i32 0, i32 18
  %12 = ptrtoint ptr %polarity to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %polarity, align 1
  %qp_id = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %14 = ptrtoint ptr %qp_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qp_id, align 8
  %conv = zext i32 %15 to i64
  %conv87 = zext i8 %13 to i64
  %shl = shl i64 %conv87, 63
  %or64 = or i64 %shl, %conv
  %or89 = or i64 %or64, 2306546696655470592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !127
  %16 = call i64 @llvm.bswap.i64(i64 %or89) #6
  %arrayidx.i118 = getelementptr i64, ptr %call.i, i32 3
  %17 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx.i118, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_qp_wqe.__UNIQUE_ID_ddebug776, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_qp_wqe, %if.then96)) #6
          to label %do.end99 [label %if.then96], !srcloc !120

if.then96:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.36, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef nonnull %call.i, i32 noundef 40, i1 noundef zeroext false) #6
  br label %do.end99

do.end99:                                         ; preds = %if.then96, %if.end
  call void @irdma_sc_cqp_post_sq(ptr noundef %2) #6
  %18 = ptrtoint ptr %cqp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cqp1, align 4
  %call101 = call i32 @irdma_sc_poll_for_cqp_op_done(ptr noundef %19, i8 noundef zeroext 0, ptr noundef nonnull %compl_info) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call101, %do.end99 ], [ -51, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %compl_info) #6
  ret i32 %retval.0
}

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
declare dso_local i32 @irdma_ieq_check_mpacrc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_ieq_update_tcpip_info(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_ieq_handle_partial(ptr noundef %ieq, ptr noundef %pfpdu, ptr noundef %buf, i16 noundef zeroext %fpdu_len) unnamed_addr #0 align 64 {
entry:
  %pbufl = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %seqnum1 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 16
  %0 = ptrtoint ptr %seqnum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seqnum1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pbufl) #6
  %2 = getelementptr inbounds %struct.list_head, ptr %pbufl, i32 0, i32 1
  %partials_handled = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 41
  %3 = ptrtoint ptr %partials_handled to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %partials_handled, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %partials_handled, align 8
  %5 = ptrtoint ptr %pbufl to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %pbufl, ptr %pbufl, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pbufl, ptr %2, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef nonnull %pbufl, ptr noundef nonnull %pbufl) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %2, align 4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pbufl, ptr %buf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pbufl, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %pbufl to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %buf, ptr %pbufl, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %datalen.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 8
  %11 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %datalen.i, align 4
  %conv1.i = zext i16 %12 to i32
  %sub.i = sub i16 %fpdu_len, %12
  %13 = ptrtoint ptr %seqnum1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seqnum1, align 4
  %add.i = add i32 %14, %conv1.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i.do.body.i_crit_edge, %list_add.exit
  %nextseqnum.0.i = phi i32 [ %add.i, %list_add.exit ], [ %nextseqnum.1.i, %if.end8.i.do.body.i_crit_edge ]
  %plen.0.i = phi i16 [ %sub.i, %list_add.exit ], [ %plen.1.i, %if.end8.i.do.body.i_crit_edge ]
  %15 = ptrtoint ptr %pfpdu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %pfpdu, align 4
  %cmp.i.not.i.i = icmp eq ptr %16, %pfpdu
  br i1 %cmp.i.not.i.i, label %do.body.i.error_crit_edge, label %if.then.i.i

do.body.i.error_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.then.i.i:                                      ; preds = %do.body.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.irdma_puda_get_listbuf.exit.i_crit_edge

if.then.i.i.irdma_puda_get_listbuf.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %irdma_puda_get_listbuf.exit.i

irdma_puda_get_listbuf.exit.i:                    ; preds = %if.end.i.i.i.i, %if.then.i.i.irdma_puda_get_listbuf.exit.i_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %irdma_puda_get_listbuf.exit.i.error_crit_edge, label %if.end.i

irdma_puda_get_listbuf.exit.i.error_crit_edge:    ; preds = %irdma_puda_get_listbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end.i:                                         ; preds = %irdma_puda_get_listbuf.exit.i
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %16, ptr noundef %26, ptr noundef nonnull %pbufl) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %16, ptr %2, align 4
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pbufl, ptr %16, align 4
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %16, ptr %26, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  %seqnum5.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %16, i32 0, i32 16
  %31 = ptrtoint ptr %seqnum5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seqnum5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %nextseqnum.0.i)
  %cmp.not.i = icmp eq i32 %32, %nextseqnum.0.i
  br i1 %cmp.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %bad_seq_num.i = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 10
  %33 = ptrtoint ptr %bad_seq_num.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bad_seq_num.i, align 8
  %inc.i = add i64 %34, 1
  store i64 %inc.i, ptr %bad_seq_num.i, align 8
  br label %error

if.end8.i:                                        ; preds = %list_add_tail.exit.i
  %datalen9.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %16, i32 0, i32 8
  %35 = ptrtoint ptr %datalen9.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %datalen9.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %plen.0.i, i16 %36)
  %cmp12.not.i = icmp ugt i16 %plen.0.i, %36
  %narrow.i = select i1 %cmp12.not.i, i16 %36, i16 0
  %add23.i = zext i16 %narrow.i to i32
  %nextseqnum.1.i = add i32 %nextseqnum.0.i, %add23.i
  %plen.1.i = sub i16 %plen.0.i, %narrow.i
  br i1 %cmp12.not.i, label %if.end8.i.do.body.i_crit_edge, label %if.end

if.end8.i.do.body.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end:                                           ; preds = %if.end8.i
  %bufpool.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 24
  %bufpool_lock.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 27
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %37 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %bufpool.i, align 4
  %cmp.i.not.i.i103 = icmp eq ptr %38, %bufpool.i
  br i1 %cmp.i.not.i.i103, label %if.end.if.then5_crit_edge, label %if.then.i.i105

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then.i.i105:                                   ; preds = %if.end
  %call.i.i.i.i104 = call zeroext i1 @__list_del_entry_valid(ptr noundef %38) #6
  br i1 %call.i.i.i.i104, label %if.end.i.i.i.i108, label %if.then.i.i105.irdma_puda_get_listbuf.exit.i111_crit_edge

if.then.i.i105.irdma_puda_get_listbuf.exit.i111_crit_edge: ; preds = %if.then.i.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit.i111

if.end.i.i.i.i108:                                ; preds = %if.then.i.i105
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i106 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i.i106, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %prev1.i.i.i.i.i107 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i.i107, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %irdma_puda_get_listbuf.exit.i111

irdma_puda_get_listbuf.exit.i111:                 ; preds = %if.end.i.i.i.i108, %if.then.i.i105.irdma_puda_get_listbuf.exit.i111_crit_edge
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  %prev.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i109, align 4
  %tobool.not.i110 = icmp eq ptr %38, null
  br i1 %tobool.not.i110, label %irdma_puda_get_listbuf.exit.i111.if.then5_crit_edge, label %if.end7

irdma_puda_get_listbuf.exit.i111.if.then5_crit_edge: ; preds = %irdma_puda_get_listbuf.exit.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %irdma_puda_get_listbuf.exit.i111.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %stats_buf_alloc_fail.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 31
  %47 = ptrtoint ptr %stats_buf_alloc_fail.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %stats_buf_alloc_fail.i, align 8
  %inc.i112 = add i64 %48, 1
  store i64 %inc.i112, ptr %stats_buf_alloc_fail.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  %no_tx_bufs = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 12
  %49 = ptrtoint ptr %no_tx_bufs to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %no_tx_bufs, align 8
  %inc6 = add i64 %50, 1
  store i64 %inc6, ptr %no_tx_bufs, align 8
  br label %error

if.end7:                                          ; preds = %irdma_puda_get_listbuf.exit.i111
  %avail_buf_count.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 26
  %51 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %avail_buf_count.i, align 4
  %dec.i = add i32 %52, -1
  store i32 %dec.i, ptr %avail_buf_count.i, align 4
  %vsi.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 4
  %53 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vsi.i, align 8
  %vsi6.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 19
  %55 = ptrtoint ptr %vsi6.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %vsi6.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  %56 = ptrtoint ptr %pbufl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %pbufl, align 4
  %cmp.i.not.i.i114 = icmp eq ptr %57, %pbufl
  br i1 %cmp.i.not.i.i114, label %if.end7.irdma_ieq_compl_pfpdu.exit_crit_edge, label %if.then.i.i116

if.end7.irdma_ieq_compl_pfpdu.exit_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_ieq_compl_pfpdu.exit

if.then.i.i116:                                   ; preds = %if.end7
  %call.i.i.i.i115 = call zeroext i1 @__list_del_entry_valid(ptr noundef %57) #6
  br i1 %call.i.i.i.i115, label %if.end.i.i.i.i119, label %if.then.i.i116.irdma_puda_get_listbuf.exit.i122_crit_edge

if.then.i.i116.irdma_puda_get_listbuf.exit.i122_crit_edge: ; preds = %if.then.i.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit.i122

if.end.i.i.i.i119:                                ; preds = %if.then.i.i116
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i117 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i.i117, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  %prev1.i.i.i.i.i118 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i.i118, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %irdma_puda_get_listbuf.exit.i122

irdma_puda_get_listbuf.exit.i122:                 ; preds = %if.end.i.i.i.i119, %if.then.i.i116.irdma_puda_get_listbuf.exit.i122_crit_edge
  %64 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %57, align 4
  %prev.i.i.i120 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i120, align 4
  %tobool.not.i121 = icmp eq ptr %57, null
  br i1 %tobool.not.i121, label %irdma_puda_get_listbuf.exit.i122.irdma_ieq_compl_pfpdu.exit_crit_edge, label %if.end.i125

irdma_puda_get_listbuf.exit.i122.irdma_ieq_compl_pfpdu.exit_crit_edge: ; preds = %irdma_puda_get_listbuf.exit.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_ieq_compl_pfpdu.exit

if.end.i125:                                      ; preds = %irdma_puda_get_listbuf.exit.i122
  %seqnum.i123 = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 16
  %66 = ptrtoint ptr %seqnum.i123 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %seqnum.i123, align 4
  %conv.i = zext i16 %fpdu_len to i32
  %add.i124 = add i32 %67, %conv.i
  %tcphlen.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 10
  %68 = ptrtoint ptr %tcphlen.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tcphlen.i.i, align 4
  %tcphlen1.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 10
  %70 = ptrtoint ptr %tcphlen1.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %tcphlen1.i.i, align 4
  %ipv4.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 15
  %71 = ptrtoint ptr %ipv4.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i.i = load i8, ptr %ipv4.i.i, align 1
  %ipv42.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 15
  %bf.load.lobit.i.i = and i8 %bf.load.i.i, -128
  %72 = ptrtoint ptr %ipv42.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load3.i.i = load i8, ptr %ipv42.i.i, align 1
  %bf.clear.i.i = and i8 %bf.load3.i.i, 127
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.load.lobit.i.i
  store i8 %bf.set.i.i, ptr %ipv42.i.i, align 1
  %vsi.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 19
  %73 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vsi.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.irdma_sc_vsi, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i.i, align 4
  %hw_rev.i.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %76, i32 0, i32 25, i32 0, i32 9
  %77 = ptrtoint ptr %hw_rev.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %hw_rev.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp.i.i = icmp ugt i8 %78, 1
  br i1 %cmp.i.i, label %if.then.i123.i, label %if.else.i.i

if.then.i123.i:                                   ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #8
  %hdrlen.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 14
  %79 = ptrtoint ptr %hdrlen.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %69, ptr %hdrlen.i.i, align 4
  %conv7.i.i = zext i8 %69 to i32
  %mem.i.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 1
  %80 = ptrtoint ptr %mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mem.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %81, i32 40
  %mem3.i.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 1
  %82 = ptrtoint ptr %mem3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mem3.i.i.i, align 4
  %84 = call ptr @memcpy(ptr %83, ptr %add.ptr.i.i.i, i32 %conv7.i.i)
  br label %irdma_ieq_setup_tx_buf.exit.i

if.else.i.i:                                      ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #8
  %maclen.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 11
  %85 = ptrtoint ptr %maclen.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %maclen.i.i, align 1
  %maclen8.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 11
  %87 = ptrtoint ptr %maclen8.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %maclen8.i.i, align 1
  %hdrlen9.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 14
  %88 = ptrtoint ptr %hdrlen9.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hdrlen9.i.i, align 4
  %hdrlen10.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 14
  %90 = ptrtoint ptr %hdrlen10.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %hdrlen10.i.i, align 4
  %91 = load i8, ptr %hdrlen9.i.i, align 4
  %conv12.i.i = zext i8 %91 to i32
  %mem.i28.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 1
  %92 = ptrtoint ptr %mem.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mem.i28.i.i, align 4
  %mem3.i29.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 1
  %94 = ptrtoint ptr %mem3.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mem3.i29.i.i, align 4
  %96 = call ptr @memcpy(ptr %95, ptr %93, i32 %conv12.i.i)
  br label %irdma_ieq_setup_tx_buf.exit.i

irdma_ieq_setup_tx_buf.exit.i:                    ; preds = %if.else.i.i, %if.then.i123.i
  %97 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vsi.i.i, align 4
  %dev.i = getelementptr inbounds %struct.irdma_sc_vsi, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 4
  %hw_rev.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %100, i32 0, i32 25, i32 0, i32 9
  %101 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %hw_rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %102)
  %cmp.i = icmp ugt i8 %102, 1
  br i1 %cmp.i, label %if.then3.i, label %if.else.i126

if.then3.i:                                       ; preds = %irdma_ieq_setup_tx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %hdrlen.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 14
  %103 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %hdrlen.i, align 4
  %conv6.i = zext i8 %104 to i32
  %add8.i = add nuw nsw i32 %conv6.i, %conv.i
  %totallen.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 12
  %105 = ptrtoint ptr %totallen.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add8.i, ptr %totallen.i, align 4
  %mem.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 1
  %106 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %107, i32 %conv6.i
  br label %if.end23.i

if.else.i126:                                     ; preds = %irdma_ieq_setup_tx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %hdrlen10.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 14
  %108 = ptrtoint ptr %hdrlen10.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %hdrlen10.i, align 4
  %conv13.i = zext i8 %109 to i32
  %add15.i = add nuw nsw i32 %conv13.i, %conv.i
  %totallen16.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 12
  %110 = ptrtoint ptr %totallen16.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add15.i, ptr %totallen16.i, align 4
  %mem17.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 1
  %111 = ptrtoint ptr %mem17.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mem17.i, align 4
  %113 = load i8, ptr %hdrlen10.i, align 4
  %conv20.i = zext i8 %113 to i32
  %add.ptr21.i = getelementptr i8, ptr %112, i32 %conv20.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i126, %if.then3.i
  %add.ptr21.sink.i = phi ptr [ %add.ptr.i, %if.then3.i ], [ %add.ptr21.i, %if.else.i126 ]
  %txoffset.0.in.i = phi i8 [ %104, %if.then3.i ], [ %109, %if.else.i126 ]
  %114 = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 7
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %add.ptr21.sink.i, ptr %114, align 4
  %txoffset.0.i = zext i8 %txoffset.0.in.i to i16
  %data24.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 7
  %116 = ptrtoint ptr %data24.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data24.i, align 4
  %mem25.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 1
  %118 = ptrtoint ptr %mem25.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mem25.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %117 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %119 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %datalen165.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %57, i32 0, i32 8
  %120 = ptrtoint ptr %datalen165.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %datalen165.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %121, i16 %fpdu_len)
  %cmp30.not166.i = icmp ult i16 %121, %fpdu_len
  br i1 %cmp30.not166.i, label %if.end43.lr.ph.i, label %if.end23.i.if.then32.i_crit_edge

if.end23.i.if.then32.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

if.end43.lr.ph.i:                                 ; preds = %if.end23.i
  %mem3.i127.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 1
  br label %if.end43.i

if.then32.loopexit.i:                             ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i = zext i16 %sub55.i to i32
  br label %if.then32.i

if.then32.i:                                      ; preds = %if.then32.loopexit.i, %if.end23.i.if.then32.i_crit_edge
  %conv29.pre-phi.i = phi i32 [ %.pre.i, %if.then32.loopexit.i ], [ %conv.i, %if.end23.i.if.then32.i_crit_edge ]
  %fpdu_len.addr.0.lcssa.i = phi i16 [ %sub55.i, %if.then32.loopexit.i ], [ %fpdu_len, %if.end23.i.if.then32.i_crit_edge ]
  %buf.0.lcssa.i = phi ptr [ %150, %if.then32.loopexit.i ], [ %57, %if.end23.i.if.then32.i_crit_edge ]
  %txoffset.1.lcssa.i = phi i16 [ %add50.i, %if.then32.loopexit.i ], [ %txoffset.0.i, %if.end23.i.if.then32.i_crit_edge ]
  %bufoffset.0.in.lcssa.i = phi i32 [ %sub.ptr.sub66.i, %if.then32.loopexit.i ], [ %sub.ptr.sub.i, %if.end23.i.if.then32.i_crit_edge ]
  %datalen.lcssa.i = phi ptr [ %datalen.i128, %if.then32.loopexit.i ], [ %datalen165.i, %if.end23.i.if.then32.i_crit_edge ]
  %conv33.i = zext i16 %txoffset.1.lcssa.i to i32
  %mem.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0.lcssa.i, i32 0, i32 1
  %122 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mem.i.i, align 4
  %conv.i.i = and i32 %bufoffset.0.in.lcssa.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %123, i32 %conv.i.i
  %mem3.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 1
  %124 = ptrtoint ptr %mem3.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mem3.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %125, i32 %conv33.i
  %126 = call ptr @memcpy(ptr %add.ptr5.i.i, ptr %add.ptr.i.i, i32 %conv29.pre-phi.i)
  %127 = ptrtoint ptr %datalen.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %datalen.lcssa.i, align 4
  %sub.i127 = sub i16 %128, %fpdu_len.addr.0.lcssa.i
  store i16 %sub.i127, ptr %datalen.lcssa.i, align 4
  %data40.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0.lcssa.i, i32 0, i32 7
  %129 = ptrtoint ptr %data40.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data40.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %130, i32 %conv29.pre-phi.i
  store ptr %add.ptr41.i, ptr %data40.i, align 4
  %seqnum42.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0.lcssa.i, i32 0, i32 16
  %131 = ptrtoint ptr %seqnum42.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add.i124, ptr %seqnum42.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %128, i16 %fpdu_len.addr.0.lcssa.i)
  %tobool69.not.i = icmp eq i16 %128, %fpdu_len.addr.0.lcssa.i
  br i1 %tobool69.not.i, label %if.else71.i, label %if.then70.i

if.end43.i:                                       ; preds = %if.end60.i.if.end43.i_crit_edge, %if.end43.lr.ph.i
  %132 = phi i16 [ %121, %if.end43.lr.ph.i ], [ %164, %if.end60.i.if.end43.i_crit_edge ]
  %datalen171.i = phi ptr [ %datalen165.i, %if.end43.lr.ph.i ], [ %datalen.i128, %if.end60.i.if.end43.i_crit_edge ]
  %bufoffset.0.in170.i = phi i32 [ %sub.ptr.sub.i, %if.end43.lr.ph.i ], [ %sub.ptr.sub66.i, %if.end60.i.if.end43.i_crit_edge ]
  %txoffset.1169.i = phi i16 [ %txoffset.0.i, %if.end43.lr.ph.i ], [ %add50.i, %if.end60.i.if.end43.i_crit_edge ]
  %buf.0168.i = phi ptr [ %57, %if.end43.lr.ph.i ], [ %150, %if.end60.i.if.end43.i_crit_edge ]
  %fpdu_len.addr.0167.i = phi i16 [ %fpdu_len, %if.end43.lr.ph.i ], [ %sub55.i, %if.end60.i.if.end43.i_crit_edge ]
  %conv28.i = zext i16 %132 to i32
  %conv44.i = zext i16 %txoffset.1169.i to i32
  %mem.i124.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0168.i, i32 0, i32 1
  %133 = ptrtoint ptr %mem.i124.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mem.i124.i, align 4
  %conv.i125.i = and i32 %bufoffset.0.in170.i, 65535
  %add.ptr.i126.i = getelementptr i8, ptr %134, i32 %conv.i125.i
  %135 = ptrtoint ptr %mem3.i127.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mem3.i127.i, align 4
  %add.ptr5.i128.i = getelementptr i8, ptr %136, i32 %conv44.i
  %137 = call ptr @memcpy(ptr %add.ptr5.i128.i, ptr %add.ptr.i126.i, i32 %conv28.i)
  %138 = ptrtoint ptr %datalen171.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %datalen171.i, align 4
  %do_lpb.i.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0168.i, i32 0, i32 15
  %140 = ptrtoint ptr %do_lpb.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load.i129.i = load i8, ptr %do_lpb.i.i, align 1
  %bf.clear.i130.i = and i8 %bf.load.i129.i, -33
  store i8 %bf.clear.i130.i, ptr %do_lpb.i.i, align 1
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %141 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bufpool.i, align 4
  %call.i.i.i131.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %buf.0168.i, ptr noundef %bufpool.i, ptr noundef %142) #6
  br i1 %call.i.i.i131.i, label %if.end.i.i.i132.i, label %if.end43.i.irdma_puda_ret_bufpool.exit.i_crit_edge

if.end43.i.irdma_puda_ret_bufpool.exit.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_ret_bufpool.exit.i

if.end.i.i.i132.i:                                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %buf.0168.i, ptr %prev1.i.i.i.i, align 4
  %144 = ptrtoint ptr %buf.0168.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %142, ptr %buf.0168.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf.0168.i, i32 0, i32 1
  %145 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %bufpool.i, ptr %prev3.i.i.i.i, align 4
  %146 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %buf.0168.i, ptr %bufpool.i, align 4
  br label %irdma_puda_ret_bufpool.exit.i

irdma_puda_ret_bufpool.exit.i:                    ; preds = %if.end.i.i.i132.i, %if.end43.i.irdma_puda_ret_bufpool.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i.i) #6
  %147 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %avail_buf_count.i, align 4
  %inc.i.i = add i32 %148, 1
  store i32 %inc.i.i, ptr %avail_buf_count.i, align 4
  %149 = ptrtoint ptr %pbufl to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile ptr, ptr %pbufl, align 4
  %cmp.i.not.i133.i = icmp eq ptr %150, %pbufl
  br i1 %cmp.i.not.i133.i, label %irdma_puda_ret_bufpool.exit.i.irdma_ieq_compl_pfpdu.exit_crit_edge, label %if.then.i135.i

irdma_puda_ret_bufpool.exit.i.irdma_ieq_compl_pfpdu.exit_crit_edge: ; preds = %irdma_puda_ret_bufpool.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_ieq_compl_pfpdu.exit

if.then.i135.i:                                   ; preds = %irdma_puda_ret_bufpool.exit.i
  %call.i.i.i134.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %150) #6
  br i1 %call.i.i.i134.i, label %if.end.i.i.i138.i, label %if.then.i135.i.irdma_puda_get_listbuf.exit142.i_crit_edge

if.then.i135.i.irdma_puda_get_listbuf.exit142.i_crit_edge: ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_get_listbuf.exit142.i

if.end.i.i.i138.i:                                ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i136.i = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %prev.i.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %prev.i.i.i136.i, align 4
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %150, align 4
  %prev1.i.i.i.i137.i = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %prev1.i.i.i.i137.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %152, ptr %prev1.i.i.i.i137.i, align 4
  %156 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %154, ptr %152, align 4
  br label %irdma_puda_get_listbuf.exit142.i

irdma_puda_get_listbuf.exit142.i:                 ; preds = %if.end.i.i.i138.i, %if.then.i135.i.irdma_puda_get_listbuf.exit142.i_crit_edge
  %157 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr inttoptr (i32 256 to ptr), ptr %150, align 4
  %prev.i.i139.i = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  %158 = ptrtoint ptr %prev.i.i139.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i139.i, align 4
  %tobool58.not.i = icmp eq ptr %150, null
  br i1 %tobool58.not.i, label %irdma_puda_get_listbuf.exit142.i.irdma_ieq_compl_pfpdu.exit_crit_edge, label %if.end60.i

irdma_puda_get_listbuf.exit142.i.irdma_ieq_compl_pfpdu.exit_crit_edge: ; preds = %irdma_puda_get_listbuf.exit142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_ieq_compl_pfpdu.exit

if.end60.i:                                       ; preds = %irdma_puda_get_listbuf.exit142.i
  %sub55.i = sub i16 %fpdu_len.addr.0167.i, %139
  %add50.i = add i16 %139, %txoffset.1169.i
  %data61.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %150, i32 0, i32 7
  %159 = ptrtoint ptr %data61.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data61.i, align 4
  %mem62.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %150, i32 0, i32 1
  %161 = ptrtoint ptr %mem62.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mem62.i, align 4
  %sub.ptr.lhs.cast64.i = ptrtoint ptr %160 to i32
  %sub.ptr.rhs.cast65.i = ptrtoint ptr %162 to i32
  %sub.ptr.sub66.i = sub i32 %sub.ptr.lhs.cast64.i, %sub.ptr.rhs.cast65.i
  %datalen.i128 = getelementptr inbounds %struct.irdma_puda_buf, ptr %150, i32 0, i32 8
  %163 = ptrtoint ptr %datalen.i128 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %datalen.i128, align 4
  %cmp30.not.i = icmp ult i16 %164, %sub55.i
  br i1 %cmp30.not.i, label %if.end60.i.if.end43.i_crit_edge, label %if.then32.loopexit.i

if.end60.i.if.end43.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then70.i:                                      ; preds = %if.then32.i
  %165 = ptrtoint ptr %pfpdu to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pfpdu, align 4
  %call.i.i.i129 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %buf.0.lcssa.i, ptr noundef %pfpdu, ptr noundef %166) #6
  br i1 %call.i.i.i129, label %if.end.i.i.i130, label %if.then70.i.irdma_ieq_compl_pfpdu.exit_crit_edge

if.then70.i.irdma_ieq_compl_pfpdu.exit_crit_edge: ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_ieq_compl_pfpdu.exit

if.end.i.i.i130:                                  ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %buf.0.lcssa.i, ptr %prev1.i.i.i, align 4
  %168 = ptrtoint ptr %buf.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %166, ptr %buf.0.lcssa.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf.0.lcssa.i, i32 0, i32 1
  %169 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %pfpdu, ptr %prev3.i.i.i, align 4
  %170 = ptrtoint ptr %pfpdu to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %buf.0.lcssa.i, ptr %pfpdu, align 4
  br label %irdma_ieq_compl_pfpdu.exit

if.else71.i:                                      ; preds = %if.then32.i
  %do_lpb.i143.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf.0.lcssa.i, i32 0, i32 15
  %171 = ptrtoint ptr %do_lpb.i143.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %bf.load.i144.i = load i8, ptr %do_lpb.i143.i, align 1
  %bf.clear.i145.i = and i8 %bf.load.i144.i, -33
  store i8 %bf.clear.i145.i, ptr %do_lpb.i143.i, align 1
  %call2.i147.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %172 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bufpool.i, align 4
  %call.i.i.i149.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %buf.0.lcssa.i, ptr noundef %bufpool.i, ptr noundef %173) #6
  br i1 %call.i.i.i149.i, label %if.end.i.i.i152.i, label %if.else71.i.irdma_puda_ret_bufpool.exit155.i_crit_edge

if.else71.i.irdma_puda_ret_bufpool.exit155.i_crit_edge: ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_ret_bufpool.exit155.i

if.end.i.i.i152.i:                                ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i150.i = getelementptr inbounds %struct.list_head, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %prev1.i.i.i150.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %buf.0.lcssa.i, ptr %prev1.i.i.i150.i, align 4
  %175 = ptrtoint ptr %buf.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %173, ptr %buf.0.lcssa.i, align 4
  %prev3.i.i.i151.i = getelementptr inbounds %struct.list_head, ptr %buf.0.lcssa.i, i32 0, i32 1
  %176 = ptrtoint ptr %prev3.i.i.i151.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %bufpool.i, ptr %prev3.i.i.i151.i, align 4
  %177 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %buf.0.lcssa.i, ptr %bufpool.i, align 4
  br label %irdma_puda_ret_bufpool.exit155.i

irdma_puda_ret_bufpool.exit155.i:                 ; preds = %if.end.i.i.i152.i, %if.else71.i.irdma_puda_ret_bufpool.exit155.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i147.i) #6
  %178 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %avail_buf_count.i, align 4
  %inc.i154.i = add i32 %179, 1
  store i32 %inc.i154.i, ptr %avail_buf_count.i, align 4
  br label %irdma_ieq_compl_pfpdu.exit

irdma_ieq_compl_pfpdu.exit:                       ; preds = %irdma_puda_ret_bufpool.exit155.i, %if.end.i.i.i130, %if.then70.i.irdma_ieq_compl_pfpdu.exit_crit_edge, %irdma_puda_get_listbuf.exit142.i.irdma_ieq_compl_pfpdu.exit_crit_edge, %irdma_puda_ret_bufpool.exit.i.irdma_ieq_compl_pfpdu.exit_crit_edge, %irdma_puda_get_listbuf.exit.i122.irdma_ieq_compl_pfpdu.exit_crit_edge, %if.end7.irdma_ieq_compl_pfpdu.exit_crit_edge
  call void @irdma_ieq_update_tcpip_info(ptr noundef nonnull %38, i16 noundef zeroext %fpdu_len, i32 noundef %1) #6
  %conv = zext i16 %fpdu_len to i32
  %check_crc = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 43
  %180 = ptrtoint ptr %check_crc to i32
  call void @__asan_load1_noabort(i32 %180)
  %bf.load = load i8, ptr %check_crc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %irdma_ieq_compl_pfpdu.exit.do.body24_crit_edge, label %if.then9

irdma_ieq_compl_pfpdu.exit.do.body24_crit_edge:   ; preds = %irdma_ieq_compl_pfpdu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

if.then9:                                         ; preds = %irdma_ieq_compl_pfpdu.exit
  %data = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 7
  %181 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %182, i32 %conv
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 -4
  %183 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %add.ptr8, align 4
  %hash_desc = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 22
  %185 = ptrtoint ptr %hash_desc to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hash_desc, align 4
  %sub = add nsw i32 %conv, -4
  %call12 = call i32 @irdma_ieq_check_mpacrc(ptr noundef %186, ptr noundef %182, i32 noundef %sub, i32 noundef %184) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then9.do.body24_crit_edge, label %do.body

if.then9.do.body24_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

do.body:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ieq_handle_partial.__UNIQUE_ID_ddebug841, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ieq_handle_partial, %if.then19)) #6
          to label %error [label %if.then19], !srcloc !120

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 3
  %187 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev, align 4
  %call20 = call ptr @to_ibdev(ptr noundef %188) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ieq_handle_partial.__UNIQUE_ID_ddebug841, ptr noundef %call20, ptr noundef nonnull @.str.44) #6
  br label %error

do.body24:                                        ; preds = %if.then9.do.body24_crit_edge, %irdma_ieq_compl_pfpdu.exit.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ieq_handle_partial.__UNIQUE_ID_ddebug842, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ieq_handle_partial, %if.then36)) #6
          to label %do.end39 [label %if.then36], !srcloc !120

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %mem = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 1
  %189 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mem, align 4
  %totallen = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 12
  %191 = ptrtoint ptr %totallen to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %totallen, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.42, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef %190, i32 noundef %192, i1 noundef zeroext false) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24
  %dev40 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 3
  %193 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev40, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %194, i32 0, i32 25, i32 0, i32 9
  %195 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %196)
  %cmp = icmp ugt i8 %196, 1
  br i1 %cmp, label %if.then43, label %do.end39.if.end44_crit_edge

do.end39.if.end44_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then43:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %ah = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 16
  %197 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ah, align 8
  %ah_idx = getelementptr inbounds %struct.irdma_sc_ah, ptr %198, i32 0, i32 1, i32 6
  %199 = ptrtoint ptr %ah_idx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ah_idx, align 4
  %ah_id = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 17
  %201 = ptrtoint ptr %ah_id to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %ah_id, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %do.end39.if.end44_crit_edge
  %do_lpb = getelementptr inbounds %struct.irdma_puda_buf, ptr %38, i32 0, i32 15
  %202 = ptrtoint ptr %do_lpb to i32
  call void @__asan_load1_noabort(i32 %202)
  %bf.load45 = load i8, ptr %do_lpb, align 1
  %bf.set = or i8 %bf.load45, 32
  store i8 %bf.set, ptr %do_lpb, align 1
  call void @irdma_puda_send_buf(ptr noundef %ieq, ptr noundef nonnull %38)
  %add = add i32 %1, %conv
  %rcv_nxt = getelementptr inbounds %struct.irdma_pfpdu, ptr %pfpdu, i32 0, i32 1
  %203 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %add, ptr %rcv_nxt, align 8
  br label %cleanup

error:                                            ; preds = %if.then19, %do.body, %if.then5, %if.then7.i, %irdma_puda_get_listbuf.exit.i.error_crit_edge, %do.body.i.error_crit_edge
  %txbuf.0 = phi ptr [ %38, %if.then19 ], [ null, %if.then5 ], [ %38, %do.body ], [ null, %if.then7.i ], [ null, %do.body.i.error_crit_edge ], [ null, %irdma_puda_get_listbuf.exit.i.error_crit_edge ]
  %status.1 = phi i32 [ %call12, %if.then19 ], [ -62, %if.then5 ], [ %call12, %do.body ], [ -63, %if.then7.i ], [ -64, %do.body.i.error_crit_edge ], [ -64, %irdma_puda_get_listbuf.exit.i.error_crit_edge ]
  %204 = ptrtoint ptr %pbufl to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile ptr, ptr %pbufl, align 4
  %cmp.i131.not159 = icmp eq ptr %205, %pbufl
  br i1 %cmp.i131.not159, label %error.while.end_crit_edge, label %error.while.body_crit_edge

error.while.body_crit_edge:                       ; preds = %error
  br label %while.body

error.while.end_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %list_move.exit.while.body_crit_edge, %error.while.body_crit_edge
  %206 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %2, align 4
  %call.i.i133 = call zeroext i1 @__list_del_entry_valid(ptr noundef %207) #6
  br i1 %call.i.i133, label %if.end.i.i136, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i136:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i134 = getelementptr inbounds %struct.list_head, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %prev.i.i134 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %prev.i.i134, align 4
  %210 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %207, align 4
  %prev1.i.i.i135 = getelementptr inbounds %struct.list_head, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %prev1.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %209, ptr %prev1.i.i.i135, align 4
  %213 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %213)
  store volatile ptr %211, ptr %209, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i136, %while.body.__list_del_entry.exit.i_crit_edge
  %214 = ptrtoint ptr %pfpdu to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pfpdu, align 4
  %call.i.i.i137 = call zeroext i1 @__list_add_valid(ptr noundef %207, ptr noundef %pfpdu, ptr noundef %215) #6
  br i1 %call.i.i.i137, label %if.end.i.i.i139, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move.exit

if.end.i.i.i139:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %207, ptr %prev1.i.i2.i, align 4
  %217 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %215, ptr %207, align 4
  %prev3.i.i.i138 = getelementptr inbounds %struct.list_head, ptr %207, i32 0, i32 1
  %218 = ptrtoint ptr %prev3.i.i.i138 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %pfpdu, ptr %prev3.i.i.i138, align 4
  %219 = ptrtoint ptr %pfpdu to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %207, ptr %pfpdu, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i139, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %220 = ptrtoint ptr %pbufl to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile ptr, ptr %pbufl, align 4
  %cmp.i131.not = icmp eq ptr %221, %pbufl
  br i1 %cmp.i131.not, label %list_move.exit.while.end_crit_edge, label %list_move.exit.while.body_crit_edge

list_move.exit.while.body_crit_edge:              ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

list_move.exit.while.end_crit_edge:               ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %list_move.exit.while.end_crit_edge, %error.while.end_crit_edge
  %tobool54.not = icmp eq ptr %txbuf.0, null
  br i1 %tobool54.not, label %while.end.cleanup_crit_edge, label %if.then55

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then55:                                        ; preds = %while.end
  %do_lpb.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %txbuf.0, i32 0, i32 15
  %222 = ptrtoint ptr %do_lpb.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %bf.load.i = load i8, ptr %do_lpb.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %do_lpb.i, align 1
  %bufpool_lock.i140 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 27
  %call2.i141 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i140) #6
  %bufpool.i142 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 24
  %223 = ptrtoint ptr %bufpool.i142 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %bufpool.i142, align 4
  %call.i.i.i143 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %txbuf.0, ptr noundef %bufpool.i142, ptr noundef %224) #6
  br i1 %call.i.i.i143, label %if.end.i.i.i146, label %if.then55.irdma_puda_ret_bufpool.exit_crit_edge

if.then55.irdma_puda_ret_bufpool.exit_crit_edge:  ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_ret_bufpool.exit

if.end.i.i.i146:                                  ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i144 = getelementptr inbounds %struct.list_head, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %prev1.i.i.i144 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %txbuf.0, ptr %prev1.i.i.i144, align 4
  %226 = ptrtoint ptr %txbuf.0 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %224, ptr %txbuf.0, align 4
  %prev3.i.i.i145 = getelementptr inbounds %struct.list_head, ptr %txbuf.0, i32 0, i32 1
  %227 = ptrtoint ptr %prev3.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %bufpool.i142, ptr %prev3.i.i.i145, align 4
  %228 = ptrtoint ptr %bufpool.i142 to i32
  call void @__asan_store4_noabort(i32 %228)
  store volatile ptr %txbuf.0, ptr %bufpool.i142, align 4
  br label %irdma_puda_ret_bufpool.exit

irdma_puda_ret_bufpool.exit:                      ; preds = %if.end.i.i.i146, %if.then55.irdma_puda_ret_bufpool.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i140, i32 noundef %call2.i141) #6
  %avail_buf_count.i147 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 26
  %229 = ptrtoint ptr %avail_buf_count.i147 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %avail_buf_count.i147, align 4
  %inc.i148 = add i32 %230, 1
  store i32 %inc.i148, ptr %avail_buf_count.i147, align 4
  br label %cleanup

cleanup:                                          ; preds = %irdma_puda_ret_bufpool.exit, %while.end.cleanup_crit_edge, %if.end44
  %retval.0 = phi i32 [ 0, %if.end44 ], [ %status.1, %irdma_puda_ret_bufpool.exit ], [ %status.1, %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pbufl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irdma_ieq_get_qp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_ieq_handle_exception(ptr noundef %ieq, ptr noundef %qp, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %ah_info.i = alloca %struct.irdma_ah_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pfpdu1 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12
  %hw_host_ctx2 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 9
  %0 = ptrtoint ptr %hw_host_ctx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_host_ctx2, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 23
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %q2_buf = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 14
  %4 = ptrtoint ptr %q2_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q2_buf, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 64
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %hw_rev4 = getelementptr inbounds %struct.irdma_sc_dev, ptr %9, i32 0, i32 25, i32 0, i32 9
  %10 = ptrtoint ptr %hw_rev4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_rev4, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ieq_handle_exception.__UNIQUE_ID_ddebug847, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ieq_handle_exception, %if.then)) #6
          to label %do.body8 [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mem = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem, align 4
  %totallen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 12
  %14 = ptrtoint ptr %totallen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %totallen, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.46, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef %13, i32 noundef %15, i1 noundef zeroext false) #6
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 18
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %total_ieq_bufs = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 8
  %16 = ptrtoint ptr %total_ieq_bufs to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %total_ieq_bufs, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %total_ieq_bufs, align 8
  %mpa_crc_err = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 6
  %18 = ptrtoint ptr %mpa_crc_err to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %mpa_crc_err, align 4
  %19 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %bf.cast.not = icmp eq i8 %19, 0
  br i1 %bf.cast.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %crc_err = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 11
  %20 = ptrtoint ptr %crc_err to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %crc_err, align 8
  %inc17 = add i64 %21, 1
  store i64 %inc17, ptr %crc_err, align 8
  br label %error

if.end18:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast21.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast21.not, label %if.end18.do.body54_crit_edge, label %land.lhs.true

if.end18.do.body54_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

land.lhs.true:                                    ; preds = %if.end18
  %fps23 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %fps23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fps23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %23)
  %cmp24.not = icmp eq i32 %7, %23
  br i1 %cmp24.not, label %if.end48, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @irdma_ieq_cleanup_qp(ptr noundef %ieq, ptr noundef %qp)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ieq_handle_exception.__UNIQUE_ID_ddebug848, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ieq_handle_exception, %if.then39)) #6
          to label %do.end44 [label %if.then39], !srcloc !120

if.then39:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %dev40 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 3
  %24 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev40, align 4
  %call41 = tail call ptr @to_ibdev(ptr noundef %25) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ieq_handle_exception.__UNIQUE_ID_ddebug848, ptr noundef %call41, ptr noundef nonnull @.str.47) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %if.then26
  %26 = ptrtoint ptr %mpa_crc_err to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load46 = load i8, ptr %mpa_crc_err, align 4
  %bf.clear47 = and i8 %bf.load46, 127
  store i8 %bf.clear47, ptr %mpa_crc_err, align 4
  br label %do.body54

if.end48:                                         ; preds = %land.lhs.true
  %27 = ptrtoint ptr %mpa_crc_err to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load50.pr = load i8, ptr %mpa_crc_err, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load50.pr)
  %bf.cast52.not = icmp sgt i8 %bf.load50.pr, -1
  br i1 %bf.cast52.not, label %if.end48.do.body54_crit_edge, label %if.end48.if.end88_crit_edge

if.end48.if.end88_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.end48.do.body54_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

do.body54:                                        ; preds = %if.end48.do.body54_crit_edge, %do.end44, %if.end18.do.body54_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ieq_handle_exception.__UNIQUE_ID_ddebug849, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ieq_handle_exception, %if.then66)) #6
          to label %do.end70 [label %if.then66], !srcloc !120

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %q2_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %q2_buf, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.48, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef %29, i32 noundef 128, i1 noundef zeroext false) #6
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %do.body54
  %rcv_nxt = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %7, ptr %rcv_nxt, align 8
  %fps71 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 2
  %31 = ptrtoint ptr %fps71 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %7, ptr %fps71, align 4
  %32 = ptrtoint ptr %mpa_crc_err to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load73 = load i8, ptr %mpa_crc_err, align 4
  %bf.set75 = or i8 %bf.load73, -128
  store i8 %bf.set75, ptr %mpa_crc_err, align 4
  %ipv4 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 15
  %33 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load76 = load i8, ptr %ipv4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load76)
  %bf.cast78.not = icmp sgt i8 %bf.load76, -1
  %vsi81 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 4
  %34 = ptrtoint ptr %vsi81 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vsi81, align 8
  %mtu82 = getelementptr inbounds %struct.irdma_sc_vsi, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %mtu82 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mtu82, align 8
  %conv83 = zext i16 %37 to i32
  %. = select i1 %bf.cast78.not, i32 -60, i32 -40
  %sub84 = add nsw i32 %., %conv83
  %max_fpdu_data = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 3
  %38 = ptrtoint ptr %max_fpdu_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub84, ptr %max_fpdu_data, align 8
  %pmode_count = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 15
  %39 = ptrtoint ptr %pmode_count to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %pmode_count, align 8
  %inc85 = add i64 %40, 1
  store i64 %inc85, ptr %pmode_count, align 8
  %pmode_count86 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 40
  %41 = ptrtoint ptr %pmode_count86 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %pmode_count86, align 8
  %inc87 = add i64 %42, 1
  store i64 %inc87, ptr %pmode_count86, align 8
  %43 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %pfpdu1, ptr %pfpdu1, align 4
  %prev.i = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %pfpdu1, ptr %prev.i, align 4
  %seqnum.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 16
  %45 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %seqnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %46)
  %cmp.i = icmp ugt i32 %7, %46
  br i1 %cmp.i, label %if.then.i, label %do.end70.if.end88_crit_edge

do.end70.if.end88_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then.i:                                        ; preds = %do.end70
  %sub.i = sub i32 %7, %46
  %datalen.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 8
  %47 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %datalen.i, align 4
  %conv.i = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp2.i = icmp ugt i32 %sub.i, %conv.i
  br i1 %cmp2.i, label %if.then.i.if.end88_crit_edge, label %if.end.i

if.then.i.if.end88_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 7
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 %sub.i
  store ptr %add.ptr.i, ptr %data.i, align 4
  %51 = trunc i32 %sub.i to i16
  %conv10.i = sub i16 %48, %51
  %52 = ptrtoint ptr %datalen.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv10.i, ptr %datalen.i, align 4
  %53 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %7, ptr %seqnum.i, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end.i, %if.then.i.if.end88_crit_edge, %do.end70.if.end88_crit_edge, %if.end48.if.end88_crit_edge
  %seqnum = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 16
  %54 = ptrtoint ptr %seqnum to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %seqnum, align 4
  %rcv_nxt89 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 1
  %56 = ptrtoint ptr %rcv_nxt89 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rcv_nxt89, align 8
  %sub90 = sub i32 %55, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub90)
  %cmp91.not = icmp ult i32 %3, %sub90
  br i1 %cmp91.not, label %if.then93, label %if.end97

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %bad_seq_num = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 10
  %58 = ptrtoint ptr %bad_seq_num to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %bad_seq_num, align 8
  %inc94 = add i64 %59, 1
  store i64 %inc94, ptr %bad_seq_num, align 8
  %bad_seq_num95 = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 38
  %60 = ptrtoint ptr %bad_seq_num95 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %bad_seq_num95, align 8
  %inc96 = add i64 %61, 1
  store i64 %inc96, ptr %bad_seq_num95, align 8
  br label %error

if.end97:                                         ; preds = %if.end88
  %62 = ptrtoint ptr %pfpdu1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %pfpdu1, align 4
  %cmp.i210.not = icmp eq ptr %63, %pfpdu1
  br i1 %cmp.i210.not, label %if.end97.if.end106_crit_edge, label %if.then100

if.end97.if.end106_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then100:                                       ; preds = %if.end97
  %nextseqnum = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 4
  %64 = ptrtoint ptr %nextseqnum to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nextseqnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %65)
  %cmp102.not = icmp eq i32 %55, %65
  br i1 %cmp102.not, label %if.then100.if.end106_crit_edge, label %if.then104

if.then100.if.end106_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then104:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irdma_send_ieq_ack(ptr noundef %qp) #6
  br label %error

if.end106:                                        ; preds = %if.then100.if.end106_crit_edge, %if.end97.if.end106_crit_edge
  %prev.i212 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i212 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i212, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef %67, ptr noundef %pfpdu1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end106.list_add_tail.exit_crit_edge

if.end106.list_add_tail.exit_crit_edge:           ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %prev.i212 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf, ptr %prev.i212, align 4
  %69 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %pfpdu1, ptr %buf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %70 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %buf, ptr %67, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end106.list_add_tail.exit_crit_edge
  %72 = ptrtoint ptr %seqnum to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %seqnum, align 4
  %datalen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 8
  %74 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %datalen, align 4
  %conv108 = zext i16 %75 to i32
  %add = add i32 %73, %conv108
  %nextseqnum109 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 4
  %76 = ptrtoint ptr %nextseqnum109 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add, ptr %nextseqnum109, align 4
  %lastrcv_buf = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 19
  %77 = ptrtoint ptr %lastrcv_buf to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf, ptr %lastrcv_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp111 = icmp ugt i8 %11, 1
  br i1 %cmp111, label %land.lhs.true113, label %if.end121

land.lhs.true113:                                 ; preds = %list_add_tail.exit
  %ah = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 16
  %78 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ah, align 8
  %tobool114.not = icmp eq ptr %79, null
  br i1 %tobool114.not, label %if.then115, label %land.lhs.true113.if.else_crit_edge

land.lhs.true113.if.else_crit_edge:               ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then115:                                       ; preds = %land.lhs.true113
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ah_info.i) #6
  %80 = call ptr @memset(ptr %ah_info.i, i32 0, i32 64)
  %ah_buf.i = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 17
  %81 = ptrtoint ptr %ah_buf.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %buf, ptr %ah_buf.i, align 4
  call void @irdma_puda_ieq_get_ah_info(ptr noundef %qp, ptr noundef nonnull %ah_info.i) #6
  %vsi.i = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 7
  %82 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vsi.i, align 4
  %dev.i = getelementptr inbounds %struct.irdma_sc_vsi, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i, align 4
  %call.i = call i32 @irdma_puda_create_ah(ptr noundef %85, ptr noundef nonnull %ah_info.i, i1 noundef zeroext false, i32 noundef 2, ptr noundef %qp, ptr noundef %ah) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ah_info.i) #6
  %86 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ah, align 8
  %tobool118.not = icmp eq ptr %87, null
  br i1 %tobool118.not, label %if.then115.error_crit_edge, label %if.then115.cleanup_crit_edge

if.then115.cleanup_crit_edge:                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then115.error_crit_edge:                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end121:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp123 = icmp eq i8 %11, 1
  br i1 %cmp123, label %if.end121.exit.sink.split_crit_edge, label %if.end121.if.else_crit_edge

if.end121.if.else_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end121.exit.sink.split_crit_edge:              ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.sink.split

if.else:                                          ; preds = %if.end121.if.else_crit_edge, %land.lhs.true113.if.else_crit_edge
  %ah126 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 16
  %88 = ptrtoint ptr %ah126 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ah126, align 8
  %tobool127.not = icmp eq ptr %89, null
  br i1 %tobool127.not, label %if.else.cleanup_crit_edge, label %land.lhs.true128

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true128:                                 ; preds = %if.else
  %ah_valid = getelementptr inbounds %struct.irdma_sc_ah, ptr %89, i32 0, i32 1, i32 12
  %90 = ptrtoint ptr %ah_valid to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load130 = load i8, ptr %ah_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load130)
  %bf.cast132.not = icmp sgt i8 %bf.load130, -1
  br i1 %bf.cast132.not, label %land.lhs.true128.cleanup_crit_edge, label %land.lhs.true128.exit.sink.split_crit_edge

land.lhs.true128.exit.sink.split_crit_edge:       ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.sink.split

land.lhs.true128.cleanup_crit_edge:               ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

exit.sink.split:                                  ; preds = %land.lhs.true128.exit.sink.split_crit_edge, %if.end121.exit.sink.split_crit_edge
  tail call void @irdma_ieq_process_fpdus(ptr noundef %qp, ptr noundef %ieq)
  br label %cleanup

error:                                            ; preds = %if.then115.error_crit_edge, %if.then104, %if.then93, %if.then16
  %do_lpb.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 15
  %91 = ptrtoint ptr %do_lpb.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load.i = load i8, ptr %do_lpb.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %do_lpb.i, align 1
  %bufpool_lock.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 27
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bufpool_lock.i) #6
  %bufpool.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 24
  %92 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bufpool.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef %bufpool.i, ptr noundef %93) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %error.irdma_puda_ret_bufpool.exit_crit_edge

error.irdma_puda_ret_bufpool.exit_crit_edge:      ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_puda_ret_bufpool.exit

if.end.i.i.i:                                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %buf, ptr %prev1.i.i.i, align 4
  %95 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %93, ptr %buf, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %96 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %bufpool.i, ptr %prev3.i.i.i, align 4
  %97 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %buf, ptr %bufpool.i, align 4
  br label %irdma_puda_ret_bufpool.exit

irdma_puda_ret_bufpool.exit:                      ; preds = %if.end.i.i.i, %error.irdma_puda_ret_bufpool.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bufpool_lock.i, i32 noundef %call2.i) #6
  %avail_buf_count.i = getelementptr inbounds %struct.irdma_puda_rsrc, ptr %ieq, i32 0, i32 26
  %98 = ptrtoint ptr %avail_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %avail_buf_count.i, align 4
  %inc.i = add i32 %99, 1
  store i32 %inc.i, ptr %avail_buf_count.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %irdma_puda_ret_bufpool.exit, %exit.sink.split, %land.lhs.true128.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then115.cleanup_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_send_ieq_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_puda_ieq_get_ah_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_puda_create_ah(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !99, !101, !103, !104, !105, !107, !108, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 339, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug599, !1, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 384, i32 3}
!8 = !{ptr @irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug600, !7, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 392, i32 3}
!11 = !{ptr @irdma_puda_poll_cmpl.__UNIQUE_ID_ddebug601, !10, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 491, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @irdma_puda_send.__UNIQUE_ID_ddebug687, !13, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 518, i32 4}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @irdma_puda_send_buf.__UNIQUE_ID_ddebug688, !18, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 554, i32 4}
!23 = !{ptr @irdma_puda_send_buf.__UNIQUE_ID_ddebug689, !22, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 922, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @irdma_puda_dele_rsrc.__UNIQUE_ID_ddebug822, !25, !"__UNIQUE_ID_ddebug822", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 950, i32 3}
!30 = !{ptr @irdma_puda_dele_rsrc.__UNIQUE_ID_ddebug823, !29, !"__UNIQUE_ID_ddebug823", i1 false, i1 false}
!31 = !{ptr @irdma_puda_create_rsrc.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1034, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1083, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @irdma_puda_create_rsrc.__UNIQUE_ID_ddebug824, !35, !"__UNIQUE_ID_ddebug824", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1092, i32 3}
!40 = !{ptr @irdma_puda_create_rsrc.__UNIQUE_ID_ddebug825, !39, !"__UNIQUE_ID_ddebug825", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1549, i32 4}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @irdma_ieq_process_fpdus.__UNIQUE_ID_ddebug846, !42, !"__UNIQUE_ID_ddebug846", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 258, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @irdma_puda_poll_info.__UNIQUE_ID_ddebug526, !46, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 261, i32 3}
!51 = !{ptr @irdma_puda_poll_info.__UNIQUE_ID_ddebug527, !50, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 266, i32 3}
!54 = !{ptr @irdma_puda_poll_info.__UNIQUE_ID_ddebug533, !53, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 848, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @irdma_puda_free_qp.__UNIQUE_ID_ddebug818, !56, !"__UNIQUE_ID_ddebug818", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 855, i32 4}
!61 = !{ptr @irdma_puda_free_qp.__UNIQUE_ID_ddebug819, !60, !"__UNIQUE_ID_ddebug819", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 879, i32 3}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @irdma_puda_free_cq.__UNIQUE_ID_ddebug820, !63, !"__UNIQUE_ID_ddebug820", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 884, i32 4}
!68 = !{ptr @irdma_puda_free_cq.__UNIQUE_ID_ddebug821, !67, !"__UNIQUE_ID_ddebug821", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 759, i32 2}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @irdma_puda_cq_wqe.__UNIQUE_ID_ddebug817, !70, !"__UNIQUE_ID_ddebug817", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 597, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @irdma_puda_qp_setctx.__UNIQUE_ID_ddebug750, !74, !"__UNIQUE_ID_ddebug750", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 633, i32 2}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @irdma_puda_qp_wqe.__UNIQUE_ID_ddebug776, !78, !"__UNIQUE_ID_ddebug776", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1459, i32 4}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @irdma_ieq_process_buf.__UNIQUE_ID_ddebug843, !86, !"__UNIQUE_ID_ddebug843", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1476, i32 4}
!91 = !{ptr @irdma_ieq_process_buf.__UNIQUE_ID_ddebug844, !90, !"__UNIQUE_ID_ddebug844", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1509, i32 3}
!94 = !{ptr @irdma_ieq_process_buf.__UNIQUE_ID_ddebug845, !93, !"__UNIQUE_ID_ddebug845", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1406, i32 4}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @irdma_ieq_handle_partial.__UNIQUE_ID_ddebug841, !96, !"__UNIQUE_ID_ddebug841", i1 false, i1 false}
!99 = !{ptr @irdma_ieq_handle_partial.__UNIQUE_ID_ddebug842, !100, !"__UNIQUE_ID_ddebug842", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1411, i32 2}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1610, i32 2}
!103 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @irdma_ieq_handle_exception.__UNIQUE_ID_ddebug847, !102, !"__UNIQUE_ID_ddebug847", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1622, i32 3}
!107 = !{ptr @irdma_ieq_handle_exception.__UNIQUE_ID_ddebug848, !106, !"__UNIQUE_ID_ddebug848", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/hw/irdma/puda.c", i32 1627, i32 3}
!110 = !{ptr @irdma_ieq_handle_exception.__UNIQUE_ID_ddebug849, !109, !"__UNIQUE_ID_ddebug849", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148534070, i64 2148534075, i64 2148534088, i64 2148534132, i64 2148534166, i64 2148534187}
!121 = !{i64 2160384207}
!122 = !{i64 2158413918}
!123 = !{i64 2159470971}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{!"auto-init"}
!126 = !{i64 2160325881}
!127 = !{i64 2160089887}
