; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/i40iw_if.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/i40iw_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.auxiliary_device_id = type { [32 x i8], i32 }
%struct.auxiliary_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i40e_client = type { %struct.list_head, [10 x i8], %struct.i40e_client_version, i32, %struct.atomic_t, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i40e_client_version = type { i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.i40e_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i40e_auxiliary_device = type { %struct.auxiliary_device, ptr }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irdma_l2params = type { [8 x %struct.irdma_qos_tc_info], [8 x %struct.irdma_dcb_app_info], i32, [8 x i16], i16, [8 x i8], i8, i8, i8, i8 }
%struct.irdma_qos_tc_info = type { i64, i8, i8, i8, i8 }
%struct.irdma_dcb_app_info = type { i8, i8, i16 }
%struct.irdma_device = type { %struct.ib_device, ptr, ptr, ptr, %struct.irdma_sc_vsi, %struct.irdma_cm_core, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.229, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.229 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.214 }
%struct.anon.214 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irdma_sc_vsi = type { i16, ptr, ptr, i32, %struct.irdma_virt_mem, ptr, i32, %struct.irdma_virt_mem, ptr, i32, i16, i16, i8, i32, i8, [8 x %struct.irdma_qos], ptr, %struct.atomic_t, ptr, ptr, i8, i8 }
%struct.irdma_virt_mem = type { ptr, i32 }
%struct.irdma_qos = type { %struct.list_head, %struct.mutex, i64, i32, i16, i8, i8, i8, i8 }
%struct.irdma_cm_core = type { ptr, ptr, %struct.list_head, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.irdma_pci_f = type { i8, i8, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.irdma_sc_dev, ptr, ptr, %struct.irdma_hw, %struct.irdma_cqp, %struct.irdma_ccq, %struct.irdma_aeq, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, %struct.spinlock, %struct.mc_table_list, ptr, ptr, %struct.tasklet_struct, ptr, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.atomic_t, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.irdma_sc_vsi, ptr, %struct.irdma_gen_ops, ptr }
%struct.irdma_sc_dev = type { %struct.list_head, %struct.spinlock, [128 x i8], [32 x %struct.irdma_dma_mem], i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr], i32, [6 x i64], [6 x i64], [13 x i64], [33 x i64], [27 x i64], [51 x i64], %struct.irdma_hw_attrs, ptr, ptr, ptr, [1024 x ptr], ptr, ptr, %struct.irdma_hmc_fpm_misc, ptr, %struct.mutex, i16, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.irdma_hw_attrs = type { %struct.irdma_uk_attrs, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.irdma_uk_attrs = type { i64, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.irdma_hmc_fpm_misc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irdma_hw = type { ptr, ptr, ptr, %struct.irdma_hmc_info }
%struct.irdma_hmc_info = type { i32, i8, i16, ptr, %struct.irdma_virt_mem, %struct.irdma_hmc_sd_table, [8192 x i16] }
%struct.irdma_hmc_sd_table = type { %struct.irdma_virt_mem, i32, i32, ptr }
%struct.irdma_cqp = type { %struct.irdma_sc_cqp, %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.irdma_dma_mem, %struct.irdma_dma_mem, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.irdma_sc_cqp = type { i32, i64, i64, ptr, ptr, ptr, %struct.irdma_dma_mem, %struct.irdma_ring, ptr, %struct.irdma_dcqcn_cc_params, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.irdma_ring = type { i32, i32, i32 }
%struct.irdma_dcqcn_cc_params = type { i8, i8, i8, i8, i16, i16, i16, i32, i32 }
%struct.irdma_ccq = type { %struct.irdma_sc_cq, %struct.irdma_dma_mem, %struct.irdma_dma_mem }
%struct.irdma_sc_cq = type { %struct.irdma_cq_uk, i64, i64, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i8, i8 }
%struct.irdma_cq_uk = type { ptr, ptr, ptr, ptr, i32, i32, %struct.irdma_ring, i8, i8 }
%struct.irdma_aeq = type { %struct.irdma_sc_aeq, %struct.irdma_dma_mem, %struct.irdma_pble_alloc, i8 }
%struct.irdma_sc_aeq = type { i32, i64, ptr, ptr, ptr, i32, %struct.irdma_ring, i8, i32, i32, i8, i8 }
%struct.irdma_pble_alloc = type { i32, i32, %union.anon.285 }
%union.anon.285 = type { %struct.irdma_pble_level2 }
%struct.irdma_pble_level2 = type { %struct.irdma_pble_info, ptr, %struct.irdma_virt_mem, i32 }
%struct.irdma_pble_info = type { ptr, i32, i32, %struct.irdma_pble_chunkinfo }
%struct.irdma_pble_chunkinfo = type { ptr, i64, i64 }
%struct.mc_table_list = type { %struct.list_head, %struct.irdma_mc_table_info, %struct.irdma_mcast_grp_info }
%struct.irdma_mc_table_info = type { i32, [4 x i32], i8 }
%struct.irdma_mcast_grp_info = type <{ [6 x i8], i16, i8, i8, i16, i32, [4 x i32], i16, %struct.irdma_dma_mem, [2 x i8], [8 x %struct.irdma_mcast_grp_ctx_entry_info] }>
%struct.irdma_mcast_grp_ctx_entry_info = type { i32, i8, i16, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.286, i32 }
%union.anon.286 = type { ptr }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.irdma_gen_ops = type { ptr, ptr, ptr }
%struct.i40e_info = type { %struct.i40e_client_version, [6 x i8], ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, %struct.i40e_params, ptr, i16, ptr, i16, i16, i16, i32 }
%struct.i40e_params = type { %struct.i40e_qos_params, i16 }
%struct.i40e_qos_params = type { [8 x %struct.i40e_prio_qos_params] }
%struct.i40e_prio_qos_params = type { i16, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.200, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.200 = type { ptr }
%struct.i40e_ops = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gen_1\00", [26 x i8] zeroinitializer }, align 32
@i40iw_auxiliary_id_table = internal constant { [2 x %struct.auxiliary_device_id], [56 x i8] } { [2 x %struct.auxiliary_device_id] [%struct.auxiliary_device_id { [32 x i8] c"i40e.iwarp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.auxiliary_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@i40iw_auxiliary_drv = dso_local global { %struct.auxiliary_driver, [56 x i8] } { %struct.auxiliary_driver { ptr @i40iw_probe, ptr @i40iw_remove, ptr null, ptr null, ptr null, ptr @.str, %struct.device_driver zeroinitializer, ptr @i40iw_auxiliary_id_table }, [56 x i8] zeroinitializer }, align 32
@i40iw_client = internal global { %struct.i40e_client, [52 x i8] } { %struct.i40e_client { %struct.list_head zeroinitializer, [10 x i8] zeroinitializer, %struct.i40e_client_version zeroinitializer, i32 0, %struct.atomic_t zeroinitializer, i32 0, i8 0, ptr @i40e_ops }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irdma\00", [26 x i8] zeroinitializer }, align 32
@i40e_ops = internal constant { %struct.i40e_client_ops, [36 x i8] } { %struct.i40e_client_ops { ptr @i40iw_open, ptr @i40iw_close, ptr @i40iw_l2param_change, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i40iw_open.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i40iw_open\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/irdma/i40iw_if.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"INIT: Gen1 PF[%d] open success\0A\00", [32 x i8] zeroinitializer }, align 32
@i40iw_close.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i40iw_close\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"INIT: Gen1 PF[%d] close complete\0A\00", [62 x i8] zeroinitializer }, align 32
@str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"irdma\00\00\00\00\00\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 212, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant [25 x i8] c"i40iw_auxiliary_id_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 204, i32 41 }
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"i40iw_auxiliary_drv\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 211, i32 25 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"i40iw_client\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 176, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 188, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"i40e_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 170, i32 37 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 153, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [42 x i8] c"../drivers/infiniband/hw/irdma/i40iw_if.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 63, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @i40iw_auxiliary_id_table, ptr @i40iw_auxiliary_drv, ptr @i40iw_client, ptr @.str.1, ptr @i40e_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @str], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40iw_auxiliary_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40iw_auxiliary_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40iw_client to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40iw_probe(ptr nocapture noundef readonly %aux_dev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev = getelementptr inbounds %struct.i40e_auxiliary_device, ptr %aux_dev, i32 0, i32 1
  %0 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldev, align 8
  %2 = call ptr @memcpy(ptr getelementptr inbounds (%struct.i40e_client, ptr @i40iw_client, i32 0, i32 1), ptr @str, i32 10)
  tail call void @i40e_client_device_register(ptr noundef %1, ptr noundef nonnull @i40iw_client) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40iw_remove(ptr nocapture noundef readonly %aux_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev = getelementptr inbounds %struct.i40e_auxiliary_device, ptr %aux_dev, i32 0, i32 1
  %0 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldev, align 8
  tail call void @i40e_client_device_unregister(ptr noundef %1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_client_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40iw_open(ptr noundef %cdev_info, ptr nocapture noundef readnone %client) #0 align 64 {
entry:
  %l2params = alloca %struct.irdma_l2params, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %l2params) #4
  %0 = call ptr @memset(ptr %l2params, i32 0, i32 200)
  %call = tail call ptr @_ib_alloc_device(i32 noundef 6376) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 25136, i32 noundef 3520, i32 noundef 3) #7
  %rf2 = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %rf2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i.i.i, ptr %rf2, align 8
  %tobool4.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ib_dealloc_device(ptr noundef nonnull %call) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rdma_ver.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %rdma_ver.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %rdma_ver.i, align 4
  %gen_ops.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 70
  %3 = ptrtoint ptr %gen_ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @i40iw_request_reset, ptr %gen_ops.i, align 4
  %pcidev.i = getelementptr inbounds %struct.i40e_info, ptr %cdev_info, i32 0, i32 3
  %4 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev.i, align 4
  %pcidev2.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 43
  %6 = ptrtoint ptr %pcidev2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pcidev2.i, align 16
  %hw_addr.i = getelementptr inbounds %struct.i40e_info, ptr %cdev_info, i32 0, i32 5
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %hw.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 45
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %hw.i, align 8
  %cdev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 44
  %10 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cdev_info, ptr %cdev.i, align 4
  %msix_count.i = getelementptr inbounds %struct.i40e_info, ptr %cdev_info, i32 0, i32 12
  %11 = ptrtoint ptr %msix_count.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msix_count.i, align 4
  %conv.i = zext i16 %12 to i32
  %msix_count4.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %msix_count4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %msix_count4.i, align 8
  %msix_entries.i = getelementptr inbounds %struct.i40e_info, ptr %cdev_info, i32 0, i32 13
  %14 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msix_entries.i, align 4
  %msix_entries5.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 61
  %16 = ptrtoint ptr %msix_entries5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %msix_entries5.i, align 8
  %limits_sel.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 32
  %17 = ptrtoint ptr %limits_sel.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %limits_sel.i, align 8
  %protocol_used.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %protocol_used.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %protocol_used.i, align 16
  %iwdev6.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 71
  %19 = ptrtoint ptr %iwdev6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %iwdev6.i, align 8
  %init_state.i = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 18
  %20 = ptrtoint ptr %init_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %init_state.i, align 4
  %rcv_wnd.i = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 12
  %21 = ptrtoint ptr %rcv_wnd.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262140, ptr %rcv_wnd.i, align 8
  %rcv_wscale.i = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 15
  %22 = ptrtoint ptr %rcv_wscale.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %rcv_wscale.i, align 8
  %netdev.i = getelementptr inbounds %struct.i40e_info, ptr %cdev_info, i32 0, i32 2
  %23 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev.i, align 4
  %netdev7.i = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 2
  %25 = ptrtoint ptr %netdev7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %netdev7.i, align 4
  %vsi_num.i = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 14
  %26 = ptrtoint ptr %vsi_num.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %vsi_num.i, align 2
  %27 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rf2, align 8
  %call8 = tail call i32 @irdma_ctrl_init_hw(ptr noundef %28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.inc, label %if.end6.err_ctrl_init_crit_edge

if.end6.err_ctrl_init_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_ctrl_init

for.inc:                                          ; preds = %if.end6
  %params = getelementptr inbounds %struct.i40e_info, ptr %cdev_info, i32 0, i32 10
  %mtu = getelementptr inbounds %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool12.not = icmp eq i16 %30, 0
  %spec.select = select i1 %tobool12.not, i16 1500, i16 %30
  %mtu17 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 4
  %31 = ptrtoint ptr %mtu17 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %spec.select, ptr %mtu17, align 4
  %dcb = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 17
  %32 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %params, align 4
  %tc = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tc, align 2
  %arrayidx24 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 0
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx24, align 2
  %arrayidx25 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 0
  %37 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %33, ptr %arrayidx25, align 4
  %arrayidx.1 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.1, align 4
  %tc.1 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %tc.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tc.1, align 2
  %arrayidx24.1 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx24.1, align 1
  %arrayidx25.1 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %39, ptr %arrayidx25.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %33)
  %cmp27.1 = icmp eq i16 %33, -1
  br i1 %cmp27.1, label %for.inc.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %33)
  %cmp32.not.1 = icmp eq i16 %39, %33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %39)
  %cmp35.not.1 = icmp eq i16 %39, -1
  %or.cond.1 = or i1 %cmp32.not.1, %cmp35.not.1
  br i1 %or.cond.1, label %if.else.1.for.inc.1.thread_crit_edge, label %if.then37.1

if.else.1.for.inc.1.thread_crit_edge:             ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.thread

if.then37.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.1 = load i8, ptr %dcb, align 2
  %bf.set.1 = or i8 %bf.load.1, 32
  store i8 %bf.set.1, ptr %dcb, align 2
  br label %for.inc.1.thread

for.inc.1.thread:                                 ; preds = %if.then37.1, %if.else.1.for.inc.1.thread_crit_edge
  %arrayidx.296 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx.296 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.296, align 4
  %tc.297 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %tc.297 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tc.297, align 2
  %arrayidx24.298 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %arrayidx24.298 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx24.298, align 8
  %arrayidx25.299 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %arrayidx25.299 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %46, ptr %arrayidx25.299, align 8
  br label %if.else.2

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.2, align 4
  %tc.2 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %tc.2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tc.2, align 2
  %arrayidx24.2 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 2
  %55 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx24.2, align 8
  %arrayidx25.2 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %52, ptr %arrayidx25.2, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %39)
  %cmp27.2 = icmp eq i16 %39, -1
  br i1 %cmp27.2, label %for.inc.2, label %for.inc.1.if.else.2_crit_edge

for.inc.1.if.else.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.2

if.else.2:                                        ; preds = %for.inc.1.if.else.2_crit_edge, %for.inc.1.thread
  %57 = phi i16 [ %46, %for.inc.1.thread ], [ %52, %for.inc.1.if.else.2_crit_edge ]
  %last_qset.1.1101 = phi i16 [ %33, %for.inc.1.thread ], [ %39, %for.inc.1.if.else.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %last_qset.1.1101)
  %cmp32.not.2 = icmp eq i16 %57, %last_qset.1.1101
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %57)
  %cmp35.not.2 = icmp eq i16 %57, -1
  %or.cond.2 = or i1 %cmp32.not.2, %cmp35.not.2
  br i1 %or.cond.2, label %if.else.2.for.inc.2.thread_crit_edge, label %if.then37.2

if.else.2.for.inc.2.thread_crit_edge:             ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.thread

if.then37.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.2 = load i8, ptr %dcb, align 2
  %bf.set.2 = or i8 %bf.load.2, 32
  store i8 %bf.set.2, ptr %dcb, align 2
  br label %for.inc.2.thread

for.inc.2.thread:                                 ; preds = %if.then37.2, %if.else.2.for.inc.2.thread_crit_edge
  %arrayidx.3103 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx.3103 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.3103, align 4
  %tc.3104 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %tc.3104 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tc.3104, align 2
  %arrayidx24.3105 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 3
  %63 = ptrtoint ptr %arrayidx24.3105 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx24.3105, align 1
  %arrayidx25.3106 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 3
  %64 = ptrtoint ptr %arrayidx25.3106 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %60, ptr %arrayidx25.3106, align 2
  br label %if.else.3

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 3
  %65 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.3, align 4
  %tc.3 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %tc.3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tc.3, align 2
  %arrayidx24.3 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 3
  %69 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx24.3, align 1
  %arrayidx25.3 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %66, ptr %arrayidx25.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %cmp27.3 = icmp eq i16 %52, -1
  br i1 %cmp27.3, label %for.inc.3, label %for.inc.2.if.else.3_crit_edge

for.inc.2.if.else.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.3

if.else.3:                                        ; preds = %for.inc.2.if.else.3_crit_edge, %for.inc.2.thread
  %71 = phi i16 [ %60, %for.inc.2.thread ], [ %66, %for.inc.2.if.else.3_crit_edge ]
  %last_qset.1.2108 = phi i16 [ %last_qset.1.1101, %for.inc.2.thread ], [ %52, %for.inc.2.if.else.3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %last_qset.1.2108)
  %cmp32.not.3 = icmp eq i16 %71, %last_qset.1.2108
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %71)
  %cmp35.not.3 = icmp eq i16 %71, -1
  %or.cond.3 = or i1 %cmp32.not.3, %cmp35.not.3
  br i1 %or.cond.3, label %if.else.3.for.inc.3.thread_crit_edge, label %if.then37.3

if.else.3.for.inc.3.thread_crit_edge:             ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3.thread

if.then37.3:                                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.3 = load i8, ptr %dcb, align 2
  %bf.set.3 = or i8 %bf.load.3, 32
  store i8 %bf.set.3, ptr %dcb, align 2
  br label %for.inc.3.thread

for.inc.3.thread:                                 ; preds = %if.then37.3, %if.else.3.for.inc.3.thread_crit_edge
  %arrayidx.4110 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 4
  %73 = ptrtoint ptr %arrayidx.4110 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.4110, align 4
  %tc.4111 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %tc.4111 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %tc.4111, align 2
  %arrayidx24.4112 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 4
  %77 = ptrtoint ptr %arrayidx24.4112 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx24.4112, align 2
  %arrayidx25.4113 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 4
  %78 = ptrtoint ptr %arrayidx25.4113 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %74, ptr %arrayidx25.4113, align 4
  br label %if.else.4

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 4
  %79 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx.4, align 4
  %tc.4 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %tc.4 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tc.4, align 2
  %arrayidx24.4 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 4
  %83 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx24.4, align 2
  %arrayidx25.4 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 4
  %84 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %80, ptr %arrayidx25.4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %66)
  %cmp27.4 = icmp eq i16 %66, -1
  br i1 %cmp27.4, label %for.inc.4, label %for.inc.3.if.else.4_crit_edge

for.inc.3.if.else.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.4

if.else.4:                                        ; preds = %for.inc.3.if.else.4_crit_edge, %for.inc.3.thread
  %85 = phi i16 [ %74, %for.inc.3.thread ], [ %80, %for.inc.3.if.else.4_crit_edge ]
  %last_qset.1.3115 = phi i16 [ %last_qset.1.2108, %for.inc.3.thread ], [ %66, %for.inc.3.if.else.4_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %85, i16 %last_qset.1.3115)
  %cmp32.not.4 = icmp eq i16 %85, %last_qset.1.3115
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %85)
  %cmp35.not.4 = icmp eq i16 %85, -1
  %or.cond.4 = or i1 %cmp32.not.4, %cmp35.not.4
  br i1 %or.cond.4, label %if.else.4.for.inc.4.thread_crit_edge, label %if.then37.4

if.else.4.for.inc.4.thread_crit_edge:             ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4.thread

if.then37.4:                                      ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #6
  %86 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.4 = load i8, ptr %dcb, align 2
  %bf.set.4 = or i8 %bf.load.4, 32
  store i8 %bf.set.4, ptr %dcb, align 2
  br label %for.inc.4.thread

for.inc.4.thread:                                 ; preds = %if.then37.4, %if.else.4.for.inc.4.thread_crit_edge
  %arrayidx.5117 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 5
  %87 = ptrtoint ptr %arrayidx.5117 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.5117, align 4
  %tc.5118 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %tc.5118 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tc.5118, align 2
  %arrayidx24.5119 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 5
  %91 = ptrtoint ptr %arrayidx24.5119 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx24.5119, align 1
  %arrayidx25.5120 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 5
  %92 = ptrtoint ptr %arrayidx25.5120 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %88, ptr %arrayidx25.5120, align 2
  br label %if.else.5

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 5
  %93 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.5, align 4
  %tc.5 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 5, i32 1
  %95 = ptrtoint ptr %tc.5 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %tc.5, align 2
  %arrayidx24.5 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 5
  %97 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx24.5, align 1
  %arrayidx25.5 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 5
  %98 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %94, ptr %arrayidx25.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %80)
  %cmp27.5 = icmp eq i16 %80, -1
  br i1 %cmp27.5, label %for.inc.5, label %for.inc.4.if.else.5_crit_edge

for.inc.4.if.else.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.5

if.else.5:                                        ; preds = %for.inc.4.if.else.5_crit_edge, %for.inc.4.thread
  %99 = phi i16 [ %88, %for.inc.4.thread ], [ %94, %for.inc.4.if.else.5_crit_edge ]
  %last_qset.1.4122 = phi i16 [ %last_qset.1.3115, %for.inc.4.thread ], [ %80, %for.inc.4.if.else.5_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %last_qset.1.4122)
  %cmp32.not.5 = icmp eq i16 %99, %last_qset.1.4122
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %99)
  %cmp35.not.5 = icmp eq i16 %99, -1
  %or.cond.5 = or i1 %cmp32.not.5, %cmp35.not.5
  br i1 %or.cond.5, label %if.else.5.for.inc.5.thread_crit_edge, label %if.then37.5

if.else.5.for.inc.5.thread_crit_edge:             ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5.thread

if.then37.5:                                      ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #6
  %100 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.5 = load i8, ptr %dcb, align 2
  %bf.set.5 = or i8 %bf.load.5, 32
  store i8 %bf.set.5, ptr %dcb, align 2
  br label %for.inc.5.thread

for.inc.5.thread:                                 ; preds = %if.then37.5, %if.else.5.for.inc.5.thread_crit_edge
  %arrayidx.6124 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 6
  %101 = ptrtoint ptr %arrayidx.6124 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx.6124, align 4
  %tc.6125 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 6, i32 1
  %103 = ptrtoint ptr %tc.6125 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %tc.6125, align 2
  %arrayidx24.6126 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 6
  %105 = ptrtoint ptr %arrayidx24.6126 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx24.6126, align 4
  %arrayidx25.6127 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 6
  %106 = ptrtoint ptr %arrayidx25.6127 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %102, ptr %arrayidx25.6127, align 8
  br label %if.else.6

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 6
  %107 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx.6, align 4
  %tc.6 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 6, i32 1
  %109 = ptrtoint ptr %tc.6 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %tc.6, align 2
  %arrayidx24.6 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 6
  %111 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx24.6, align 4
  %arrayidx25.6 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 6
  %112 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %108, ptr %arrayidx25.6, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %94)
  %cmp27.6 = icmp eq i16 %94, -1
  br i1 %cmp27.6, label %for.inc.6, label %for.inc.5.if.else.6_crit_edge

for.inc.5.if.else.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.6

if.else.6:                                        ; preds = %for.inc.5.if.else.6_crit_edge, %for.inc.5.thread
  %113 = phi i16 [ %102, %for.inc.5.thread ], [ %108, %for.inc.5.if.else.6_crit_edge ]
  %last_qset.1.5129 = phi i16 [ %last_qset.1.4122, %for.inc.5.thread ], [ %94, %for.inc.5.if.else.6_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %113, i16 %last_qset.1.5129)
  %cmp32.not.6 = icmp eq i16 %113, %last_qset.1.5129
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %113)
  %cmp35.not.6 = icmp eq i16 %113, -1
  %or.cond.6 = or i1 %cmp32.not.6, %cmp35.not.6
  br i1 %or.cond.6, label %if.else.6.for.inc.6.thread_crit_edge, label %if.then37.6

if.else.6.for.inc.6.thread_crit_edge:             ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6.thread

if.then37.6:                                      ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #6
  %114 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load.6 = load i8, ptr %dcb, align 2
  %bf.set.6 = or i8 %bf.load.6, 32
  store i8 %bf.set.6, ptr %dcb, align 2
  br label %for.inc.6.thread

for.inc.6.thread:                                 ; preds = %if.then37.6, %if.else.6.for.inc.6.thread_crit_edge
  %arrayidx.7131 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 7
  %115 = ptrtoint ptr %arrayidx.7131 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx.7131, align 4
  %tc.7132 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 7, i32 1
  %117 = ptrtoint ptr %tc.7132 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %tc.7132, align 2
  %arrayidx24.7133 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 7
  %119 = ptrtoint ptr %arrayidx24.7133 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx24.7133, align 1
  %arrayidx25.7134 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 7
  %120 = ptrtoint ptr %arrayidx25.7134 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %116, ptr %arrayidx25.7134, align 2
  br label %if.else.7

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 7
  %121 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx.7, align 4
  %tc.7 = getelementptr %struct.i40e_info, ptr %cdev_info, i32 0, i32 10, i32 0, i32 0, i32 7, i32 1
  %123 = ptrtoint ptr %tc.7 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %tc.7, align 2
  %arrayidx24.7 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 7
  %125 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx24.7, align 1
  %arrayidx25.7 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 3, i32 7
  %126 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %122, ptr %arrayidx25.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %108)
  %cmp27.7 = icmp eq i16 %108, -1
  br i1 %cmp27.7, label %for.inc.6.for.inc.7_crit_edge, label %for.inc.6.if.else.7_crit_edge

for.inc.6.if.else.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.else.7:                                        ; preds = %for.inc.6.if.else.7_crit_edge, %for.inc.6.thread
  %127 = phi i16 [ %116, %for.inc.6.thread ], [ %122, %for.inc.6.if.else.7_crit_edge ]
  %last_qset.1.6136 = phi i16 [ %last_qset.1.5129, %for.inc.6.thread ], [ %108, %for.inc.6.if.else.7_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %127, i16 %last_qset.1.6136)
  %cmp32.not.7 = icmp eq i16 %127, %last_qset.1.6136
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %127)
  %cmp35.not.7 = icmp eq i16 %127, -1
  %or.cond.7 = or i1 %cmp32.not.7, %cmp35.not.7
  br i1 %or.cond.7, label %if.else.7.for.inc.7_crit_edge, label %if.then37.7

if.else.7.for.inc.7_crit_edge:                    ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.then37.7:                                      ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #6
  %128 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load.7 = load i8, ptr %dcb, align 2
  %bf.set.7 = or i8 %bf.load.7, 32
  store i8 %bf.set.7, ptr %dcb, align 2
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then37.7, %if.else.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %call40 = call i32 @irdma_rt_init_hw(ptr noundef nonnull %call, ptr noundef nonnull %l2params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %for.inc.7.err_rt_init_crit_edge

for.inc.7.err_rt_init_crit_edge:                  ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_rt_init

if.end43:                                         ; preds = %for.inc.7
  %call44 = call i32 @irdma_ib_register_device(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body, label %err_ibreg

do.body:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40iw_open.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40iw_open, %if.then53)) #4
          to label %cleanup [label %if.then53], !srcloc !30

if.then53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %pcidev = getelementptr inbounds %struct.irdma_pci_f, ptr %28, i32 0, i32 43
  %129 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pcidev, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %devfn, align 4
  %and = and i32 %132, 7
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @i40iw_open.__UNIQUE_ID_ddebug682, ptr noundef nonnull %call, ptr noundef nonnull @.str.4, i32 noundef %and) #4
  br label %cleanup

err_ibreg:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  call void @irdma_rt_deinit_hw(ptr noundef nonnull %call) #4
  br label %err_rt_init

err_rt_init:                                      ; preds = %err_ibreg, %for.inc.7.err_rt_init_crit_edge
  %err.0 = phi i32 [ %call44, %err_ibreg ], [ -5, %for.inc.7.err_rt_init_crit_edge ]
  call void @irdma_ctrl_deinit_hw(ptr noundef %28) #4
  br label %err_ctrl_init

err_ctrl_init:                                    ; preds = %err_rt_init, %if.end6.err_ctrl_init_crit_edge
  %err.1 = phi i32 [ %err.0, %err_rt_init ], [ -5, %if.end6.err_ctrl_init_crit_edge ]
  %133 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rf2, align 8
  call void @kfree(ptr noundef %134) #4
  call void @ib_dealloc_device(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %err_ctrl_init, %if.then53, %do.body, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_ctrl_init ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then53 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %l2params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40iw_close(ptr nocapture noundef readonly %cdev_info, ptr nocapture noundef readnone %client, i1 noundef zeroext %reset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.i40e_info, ptr %cdev_info, i32 0, i32 2
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %call = tail call ptr @ib_device_get_by_netdev(ptr noundef %1, i32 noundef 9) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 53, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  br i1 %reset, label %if.then26, label %if.end23.if.end27_crit_edge

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %rf = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %3, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %3, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23.if.end27_crit_edge
  %iw_status = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 16
  %5 = ptrtoint ptr %iw_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %iw_status, align 1
  tail call void @irdma_port_ibevent(ptr noundef nonnull %call) #4
  tail call void @ib_unregister_device_and_put(ptr noundef nonnull %call) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40iw_close.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40iw_close, %if.then39)) #4
          to label %cleanup [label %if.then39], !srcloc !30

if.then39:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %pcidev = getelementptr inbounds %struct.i40e_info, ptr %cdev_info, i32 0, i32 3
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn, align 4
  %and = and i32 %9, 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @i40iw_close.__UNIQUE_ID_ddebug681, ptr noundef nonnull @.str.6, i32 noundef %and) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end27, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40iw_l2param_change(ptr nocapture noundef readonly %cdev_info, ptr nocapture noundef readnone %client, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %l2params = alloca %struct.irdma_l2params, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %l2params) #4
  %0 = call ptr @memset(ptr %l2params, i32 0, i32 200)
  %netdev = getelementptr inbounds %struct.i40e_info, ptr %cdev_info, i32 0, i32 2
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %call = tail call ptr @ib_device_get_by_netdev(ptr noundef %2, i32 noundef 9) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsi = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 4
  %mtu = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 4, i32 10
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mtu, align 8
  %mtu2 = getelementptr inbounds %struct.i40e_params, ptr %params, i32 0, i32 1
  %5 = ptrtoint ptr %mtu2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mtu2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp.not = icmp eq i16 %4, %6
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mtu_changed = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 9
  %7 = ptrtoint ptr %mtu_changed to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %mtu_changed, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %mtu_changed, align 1
  %mtu7 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 4
  %8 = ptrtoint ptr %mtu7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %6, ptr %mtu7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  call void @irdma_change_l2params(ptr noundef %vsi, ptr noundef nonnull %l2params) #4
  call void @ib_device_put(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %l2params) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_ib_alloc_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dealloc_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_ctrl_init_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_rt_init_hw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_ib_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_ibdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_rt_deinit_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_ctrl_deinit_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40iw_request_reset(ptr nocapture noundef readonly %rf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 44
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %ops = getelementptr inbounds %struct.i40e_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %request_reset = getelementptr inbounds %struct.i40e_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %request_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request_reset, align 4
  tail call void %5(ptr noundef %1, ptr noundef nonnull @i40iw_client, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_device_get_by_netdev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_port_ibevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_device_and_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_change_l2params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_client_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/i40iw_if.c", i32 212, i32 10}
!2 = !{ptr @i40iw_auxiliary_drv, !3, !"i40iw_auxiliary_drv", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/irdma/i40iw_if.c", i32 211, i32 25}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/irdma/i40iw_if.c", i32 188, i32 29}
!6 = !{ptr @i40iw_client, !7, !"i40iw_client", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/i40iw_if.c", i32 176, i32 27}
!8 = !{ptr @i40e_ops, !9, !"i40e_ops", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/irdma/i40iw_if.c", i32 170, i32 37}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/irdma/i40iw_if.c", i32 153, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @i40iw_open.__UNIQUE_ID_ddebug682, !11, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/irdma/i40iw_if.c", i32 63, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @i40iw_close.__UNIQUE_ID_ddebug681, !16, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!19 = !{ptr @i40iw_auxiliary_id_table, !20, !"i40iw_auxiliary_id_table", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/irdma/i40iw_if.c", i32 204, i32 41}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148851141, i64 2148851146, i64 2148851159, i64 2148851203, i64 2148851237, i64 2148851258}
!31 = !{!"branch_weights", i32 1, i32 2000}
