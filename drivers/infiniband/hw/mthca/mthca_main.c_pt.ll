; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_main.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mthca_profile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.181 = type { i64, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.149, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.149 = type { ptr }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.173, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.176, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.172, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.172 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.163 }
%struct.anon.163 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i64, i64, i64, ptr, ptr, i16 }
%union.anon.176 = type { %struct.anon.178 }
%struct.anon.178 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.179 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.179 = type { ptr, ptr, %struct.mthca_buddy }
%struct.mthca_eq_table = type { %struct.mthca_alloc, ptr, i32, i32, [3 x %struct.mthca_eq], i64, ptr, i32, i32, i8 }
%struct.mthca_eq = type { ptr, i32, i32, i32, i16, i16, i32, i32, ptr, %struct.mthca_mr, [64 x i8] }
%struct.mthca_cq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_array = type { ptr }
%struct.mthca_srq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_qp_table = type { %struct.mthca_alloc, i32, i32, i32, %struct.spinlock, %struct.mthca_array, ptr, ptr, ptr }
%struct.mthca_av_table = type { ptr, i32, i64, ptr, %struct.mthca_alloc }
%struct.mthca_mcg_table = type { %struct.mutex, %struct.mthca_alloc, ptr }
%struct.mthca_catas_err = type { i64, ptr, i32, %struct.timer_list, %struct.list_head }
%struct.mthca_uar = type { i32, i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32, %struct.atomic_t, %struct.mthca_mr, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mthca_mr = type { %struct.ib_mr, ptr, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.150, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.150 = type { %struct.list_head }
%struct.mthca_dev_lim = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.182 }
%union.anon.182 = type { %struct.anon.184 }
%struct.anon.184 = type { i32, i32, i8, i32, i32, i64 }
%struct.mthca_init_hca_param = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mthca_adapter = type { i32, i32, i32, [64 x i8], i8 }

@__UNIQUE_ID_author496 = internal constant [30 x i8] c"ib_mthca.author=Roland Dreier\00", section ".modinfo", align 1
@__UNIQUE_ID_description497 = internal constant [62 x i8] c"ib_mthca.description=Mellanox InfiniBand HCA low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file498 = internal constant [51 x i8] c"ib_mthca.file=drivers/infiniband/hw/mthca/ib_mthca\00", section ".modinfo", align 1
@__UNIQUE_ID_license499 = internal constant [30 x i8] c"ib_mthca.license=Dual BSD/GPL\00", section ".modinfo", align 1
@mthca_debug_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_debug_level = internal constant [21 x i8] c"ib_mthca.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @mthca_debug_level } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype500 = internal constant [34 x i8] c"ib_mthca.parmtype=debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level501 = internal constant [54 x i8] c"ib_mthca.parm=debug_level:Enable debug tracing if > 0\00", section ".modinfo", align 1
@__param_str_msi_x = internal constant [15 x i8] c"ib_mthca.msi_x\00", align 1
@msi_x = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_msi_x = internal constant %struct.kernel_param { ptr @__param_str_msi_x, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @msi_x } }, section "__param", align 4
@__UNIQUE_ID_msi_xtype502 = internal constant [28 x i8] c"ib_mthca.parmtype=msi_x:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi_x503 = internal constant [52 x i8] c"ib_mthca.parm=msi_x:attempt to use MSI-X if nonzero\00", section ".modinfo", align 1
@__param_str_tune_pci = internal constant [18 x i8] c"ib_mthca.tune_pci\00", align 1
@tune_pci = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tune_pci = internal constant %struct.kernel_param { ptr @__param_str_tune_pci, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @tune_pci } }, section "__param", align 4
@__UNIQUE_ID_tune_pcitype504 = internal constant [31 x i8] c"ib_mthca.parmtype=tune_pci:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tune_pci505 = internal constant [82 x i8] c"ib_mthca.parm=tune_pci:increase PCI burst from the default set by BIOS if nonzero\00", section ".modinfo", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mthca_device_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@mthca_device_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mthca_device_mutex, i64 52), ptr getelementptr (i8, ptr @mthca_device_mutex, i64 52) }, ptr @mthca_device_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mthca_device_mutex\00", [45 x i8] zeroinitializer }, align 32
@__param_str_num_qp = internal constant [16 x i8] c"ib_mthca.num_qp\00", align 1
@hca_profile = internal global { %struct.mthca_profile, [52 x i8] } { %struct.mthca_profile { i32 65536, i32 4, i32 0, i32 65536, i32 8192, i32 131072, i32 1048576, i32 32768, i32 0, i32 262144, i32 262144 }, [52 x i8] zeroinitializer }, align 32
@__param_num_qp = internal constant %struct.kernel_param { ptr @__param_str_num_qp, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @hca_profile } }, section "__param", align 4
@__UNIQUE_ID_num_qptype506 = internal constant [29 x i8] c"ib_mthca.parmtype=num_qp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_qp507 = internal constant [51 x i8] c"ib_mthca.parm=num_qp:maximum number of QPs per HCA\00", section ".modinfo", align 1
@__param_str_rdb_per_qp = internal constant [20 x i8] c"ib_mthca.rdb_per_qp\00", align 1
@__param_rdb_per_qp = internal constant %struct.kernel_param { ptr @__param_str_rdb_per_qp, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr getelementptr (i8, ptr @hca_profile, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_rdb_per_qptype508 = internal constant [33 x i8] c"ib_mthca.parmtype=rdb_per_qp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rdb_per_qp509 = internal constant [54 x i8] c"ib_mthca.parm=rdb_per_qp:number of RDB buffers per QP\00", section ".modinfo", align 1
@__param_str_num_cq = internal constant [16 x i8] c"ib_mthca.num_cq\00", align 1
@__param_num_cq = internal constant %struct.kernel_param { ptr @__param_str_num_cq, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr getelementptr (i8, ptr @hca_profile, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_num_cqtype510 = internal constant [29 x i8] c"ib_mthca.parmtype=num_cq:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_cq511 = internal constant [51 x i8] c"ib_mthca.parm=num_cq:maximum number of CQs per HCA\00", section ".modinfo", align 1
@__param_str_num_mcg = internal constant [17 x i8] c"ib_mthca.num_mcg\00", align 1
@__param_num_mcg = internal constant %struct.kernel_param { ptr @__param_str_num_mcg, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr getelementptr (i8, ptr @hca_profile, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_num_mcgtype512 = internal constant [30 x i8] c"ib_mthca.parmtype=num_mcg:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_mcg513 = internal constant [65 x i8] c"ib_mthca.parm=num_mcg:maximum number of multicast groups per HCA\00", section ".modinfo", align 1
@__param_str_num_mpt = internal constant [17 x i8] c"ib_mthca.num_mpt\00", align 1
@__param_num_mpt = internal constant %struct.kernel_param { ptr @__param_str_num_mpt, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr getelementptr (i8, ptr @hca_profile, i64 20) } }, section "__param", align 4
@__UNIQUE_ID_num_mpttype514 = internal constant [30 x i8] c"ib_mthca.parmtype=num_mpt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_mpt515 = internal constant [80 x i8] c"ib_mthca.parm=num_mpt:maximum number of memory protection table entries per HCA\00", section ".modinfo", align 1
@__param_str_num_mtt = internal constant [17 x i8] c"ib_mthca.num_mtt\00", align 1
@__param_num_mtt = internal constant %struct.kernel_param { ptr @__param_str_num_mtt, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr getelementptr (i8, ptr @hca_profile, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_num_mtttype516 = internal constant [30 x i8] c"ib_mthca.parmtype=num_mtt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_mtt517 = internal constant [82 x i8] c"ib_mthca.parm=num_mtt:maximum number of memory translation table segments per HCA\00", section ".modinfo", align 1
@__param_str_num_udav = internal constant [18 x i8] c"ib_mthca.num_udav\00", align 1
@__param_num_udav = internal constant %struct.kernel_param { ptr @__param_str_num_udav, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr getelementptr (i8, ptr @hca_profile, i64 28) } }, section "__param", align 4
@__UNIQUE_ID_num_udavtype518 = internal constant [31 x i8] c"ib_mthca.parmtype=num_udav:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_udav519 = internal constant [68 x i8] c"ib_mthca.parm=num_udav:maximum number of UD address vectors per HCA\00", section ".modinfo", align 1
@__param_str_fmr_reserved_mtts = internal constant [27 x i8] c"ib_mthca.fmr_reserved_mtts\00", align 1
@__param_fmr_reserved_mtts = internal constant %struct.kernel_param { ptr @__param_str_fmr_reserved_mtts, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr getelementptr (i8, ptr @hca_profile, i64 40) } }, section "__param", align 4
@__UNIQUE_ID_fmr_reserved_mttstype520 = internal constant [40 x i8] c"ib_mthca.parmtype=fmr_reserved_mtts:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fmr_reserved_mtts521 = internal constant [93 x i8] c"ib_mthca.parm=fmr_reserved_mtts:number of memory translation table segments reserved for FMR\00", section ".modinfo", align 1
@__param_str_log_mtts_per_seg = internal constant [26 x i8] c"ib_mthca.log_mtts_per_seg\00", align 1
@log_mtts_per_seg = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_log_mtts_per_seg = internal constant %struct.kernel_param { ptr @__param_str_log_mtts_per_seg, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @log_mtts_per_seg } }, section "__param", align 4
@__UNIQUE_ID_log_mtts_per_segtype522 = internal constant [39 x i8] c"ib_mthca.parmtype=log_mtts_per_seg:int\00", section ".modinfo", align 1
@__UNIQUE_ID_log_mtts_per_seg523 = internal constant [76 x i8] c"ib_mthca.parm=log_mtts_per_seg:Log2 number of MTT entries per segment (1-5)\00", section ".modinfo", align 1
@mthca_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.16, ptr @mthca_pci_table, ptr @mthca_init_one, ptr @mthca_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ib_mthca__526_1260_mthca_init6 = internal global ptr @mthca_init, section ".initcall6.init", align 4
@__exitcall_mthca_cleanup = internal global ptr @mthca_cleanup, section ".exitcall.exit", align 4
@__mthca_init_one._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 904, ptr null, ptr null }, align 1
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ib_mthca: Initializing %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__mthca_init_one\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/infiniband/hw/mthca/mthca_main.c\00", [55 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr = internal global ptr @__mthca_init_one._entry, section ".printk_index", align 4
@__mthca_init_one._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 909, ptr @.str.7, ptr @.str.8 }, align 1
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot enable PCI device, aborting.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.9 = internal global ptr @__mthca_init_one._entry.5, section ".printk_index", align 4
@__mthca_init_one._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 919, ptr @.str.7, ptr @.str.8 }, align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Missing DCS, aborting.\0A\00", [40 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.12 = internal global ptr @__mthca_init_one._entry.10, section ".printk_index", align 4
@__mthca_init_one._entry.13 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 924, ptr @.str.7, ptr @.str.8 }, align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Missing UAR, aborting.\0A\00", [40 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.15 = internal global ptr @__mthca_init_one._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ib_mthca\00", [23 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 934, ptr @.str.7, ptr @.str.8 }, align 1
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot obtain PCI resources, aborting.\0A\00", [56 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.19 = internal global ptr @__mthca_init_one._entry.17, section ".printk_index", align 4
@__mthca_init_one._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 942, ptr @.str.22, ptr @.str.8 }, align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Warning: couldn't set 64-bit PCI DMA mask.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.23 = internal global ptr @__mthca_init_one._entry.20, section ".printk_index", align 4
@__mthca_init_one._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 945, ptr @.str.7, ptr @.str.8 }, align 1
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't set PCI DMA mask, aborting.\0A\00", [61 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.26 = internal global ptr @__mthca_init_one._entry.24, section ".printk_index", align 4
@__mthca_init_one._entry.27 = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 956, ptr @.str.7, ptr @.str.8 }, align 1
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Device struct alloc failed, aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.29 = internal global ptr @__mthca_init_one._entry.27, section ".printk_index", align 4
@mthca_hca_table = internal constant { [4 x %struct.anon.181], [32 x i8] } { [4 x %struct.anon.181] [%struct.anon.181 { i64 12885229568, i32 0 }, %struct.anon.181 { i64 17180393672, i32 128 }, %struct.anon.181 { i64 21475033088, i32 192 }, %struct.anon.181 { i64 4295098368, i32 448 }], [32 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 974, ptr @.str.7, ptr @.str.8 }, align 1
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to reset HCA, aborting.\0A\00", [32 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.32 = internal global ptr @__mthca_init_one._entry.30, section ".printk_index", align 4
@__mthca_init_one._entry.33 = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 980, ptr @.str.7, ptr @.str.8 }, align 1
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to init command interface, aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.35 = internal global ptr @__mthca_init_one._entry.33, section ".printk_index", align 4
@__mthca_init_one._entry.36 = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 998, ptr @.str.22, ptr @.str.8 }, align 1
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"HCA FW version %d.%d.%03d is old (%d.%d.%03d is current).\0A\00", [37 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.38 = internal global ptr @__mthca_init_one._entry.36, section ".printk_index", align 4
@__mthca_init_one._entry.39 = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 999, ptr @.str.22, ptr @.str.8 }, align 1
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"If you have problems, try updating your HCA FW.\0A\00", [47 x i8] zeroinitializer }, align 32
@__mthca_init_one._entry_ptr.41 = internal global ptr @__mthca_init_one._entry.39, section ".printk_index", align 4
@mthca_tune_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 145, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Couldn't set PCI-X max read count, aborting.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_tune_pci\00", [17 x i8] zeroinitializer }, align 32
@mthca_tune_pci._entry_ptr = internal global ptr @mthca_tune_pci._entry, section ".printk_index", align 4
@mthca_tune_pci._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 149, ptr @.str.46, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No PCI-X capability, not setting RBC.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mthca_tune_pci._entry_ptr.47 = internal global ptr @mthca_tune_pci._entry.44, section ".printk_index", align 4
@mthca_tune_pci._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.43, ptr @.str.4, i32 154, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Couldn't write PCI Express read request, aborting.\0A\00", [44 x i8] zeroinitializer }, align 32
@mthca_tune_pci._entry_ptr.50 = internal global ptr @mthca_tune_pci._entry.48, section ".printk_index", align 4
@mthca_tune_pci._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.43, ptr @.str.4, i32 159, ptr @.str.46, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"No PCI Express capability, not setting Max Read Request Size.\0A\00", [33 x i8] zeroinitializer }, align 32
@mthca_tune_pci._entry_ptr.53 = internal global ptr @mthca_tune_pci._entry.51, section ".printk_index", align 4
@mthca_init_hca._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 678, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"QUERY_ADAPTER command returned %d, aborting.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_init_hca\00", [17 x i8] zeroinitializer }, align 32
@mthca_init_hca._entry_ptr = internal global ptr @mthca_init_hca._entry, section ".printk_index", align 4
@mthca_init_arbel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 584, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"QUERY_FW command failed %d, aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mthca_init_arbel\00", [47 x i8] zeroinitializer }, align 32
@mthca_init_arbel._entry_ptr = internal global ptr @mthca_init_arbel._entry, section ".printk_index", align 4
@mthca_init_arbel._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.4, i32 590, ptr @.str.60, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No HCA-attached memory (running in MemFree mode)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mthca_init_arbel._entry_ptr.61 = internal global ptr @mthca_init_arbel._entry.58, section ".printk_index", align 4
@mthca_init_arbel._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.57, ptr @.str.4, i32 593, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ENABLE_LAM returned %d, aborting.\0A\00", [61 x i8] zeroinitializer }, align 32
@mthca_init_arbel._entry_ptr.64 = internal global ptr @mthca_init_arbel._entry.62, section ".printk_index", align 4
@mthca_init_arbel._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.57, ptr @.str.4, i32 599, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Loading FW returned %d, aborting.\0A\00", [61 x i8] zeroinitializer }, align 32
@mthca_init_arbel._entry_ptr.67 = internal global ptr @mthca_init_arbel._entry.65, section ".printk_index", align 4
@mthca_init_arbel._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.57, ptr @.str.4, i32 605, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"QUERY_DEV_LIM returned %d, aborting.\0A\00", [58 x i8] zeroinitializer }, align 32
@mthca_init_arbel._entry_ptr.70 = internal global ptr @mthca_init_arbel._entry.68, section ".printk_index", align 4
@mthca_init_arbel._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.57, ptr @.str.4, i32 627, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"INIT_HCA command returned %d, aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@mthca_init_arbel._entry_ptr.73 = internal global ptr @mthca_init_arbel._entry.71, section ".printk_index", align 4
@mthca_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 355, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't allocate FW area, aborting.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mthca_load_fw\00", [18 x i8] zeroinitializer }, align 32
@mthca_load_fw._entry_ptr = internal global ptr @mthca_load_fw._entry, section ".printk_index", align 4
@mthca_load_fw._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 361, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MAP_FA command returned %d, aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@mthca_load_fw._entry_ptr.78 = internal global ptr @mthca_load_fw._entry.76, section ".printk_index", align 4
@mthca_load_fw._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.4, i32 366, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RUN_FW command returned %d, aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@mthca_load_fw._entry_ptr.81 = internal global ptr @mthca_load_fw._entry.79, section ".printk_index", align 4
@mthca_dev_lim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 172, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"QUERY_DEV_LIM command returned %d, aborting.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mthca_dev_lim\00", [18 x i8] zeroinitializer }, align 32
@mthca_dev_lim._entry_ptr = internal global ptr @mthca_dev_lim._entry, section ".printk_index", align 4
@mthca_dev_lim._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.4, i32 178, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"HCA minimum page size of %d bigger than kernel PAGE_SIZE of %ld, aborting.\0A\00", [52 x i8] zeroinitializer }, align 32
@mthca_dev_lim._entry_ptr.86 = internal global ptr @mthca_dev_lim._entry.84, section ".printk_index", align 4
@mthca_dev_lim._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.4, i32 184, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"HCA has %d ports, but we only support %d, aborting.\0A\00", [43 x i8] zeroinitializer }, align 32
@mthca_dev_lim._entry_ptr.89 = internal global ptr @mthca_dev_lim._entry.87, section ".printk_index", align 4
@mthca_dev_lim._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.4, i32 192, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"HCA reported UAR size of 0x%x bigger than PCI resource 2 size of 0x%llx, aborting.\0A\00", [44 x i8] zeroinitializer }, align 32
@mthca_dev_lim._entry_ptr.92 = internal global ptr @mthca_dev_lim._entry.90, section ".printk_index", align 4
@mthca_init_icm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 390, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SET_ICM_SIZE command returned %d, aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_init_icm\00", [17 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr = internal global ptr @mthca_init_icm._entry, section ".printk_index", align 4
@mthca_init_icm._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.4, i32 396, ptr @.str.60, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%lld KB of HCA context requires %lld KB aux memory.\0A\00", [43 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.97 = internal global ptr @mthca_init_icm._entry.95, section ".printk_index", align 4
@mthca_init_icm._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.4, i32 401, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Couldn't allocate aux memory, aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.100 = internal global ptr @mthca_init_icm._entry.98, section ".printk_index", align 4
@mthca_init_icm._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.94, ptr @.str.4, i32 407, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MAP_ICM_AUX returned %d, aborting.\0A\00", [60 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.103 = internal global ptr @mthca_init_icm._entry.101, section ".printk_index", align 4
@mthca_init_icm._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.94, ptr @.str.4, i32 413, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to map EQ context memory, aborting.\0A\00", [52 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.106 = internal global ptr @mthca_init_icm._entry.104, section ".printk_index", align 4
@mthca_init_icm._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.94, ptr @.str.4, i32 427, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to map MTT context memory, aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.109 = internal global ptr @mthca_init_icm._entry.107, section ".printk_index", align 4
@mthca_init_icm._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.94, ptr @.str.4, i32 438, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to map MPT context memory, aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.112 = internal global ptr @mthca_init_icm._entry.110, section ".printk_index", align 4
@mthca_init_icm._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.94, ptr @.str.4, i32 449, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to map QP context memory, aborting.\0A\00", [52 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.115 = internal global ptr @mthca_init_icm._entry.113, section ".printk_index", align 4
@mthca_init_icm._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.94, ptr @.str.4, i32 460, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to map EQP context memory, aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.118 = internal global ptr @mthca_init_icm._entry.116, section ".printk_index", align 4
@mthca_init_icm._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.94, ptr @.str.4, i32 471, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to map RDB context memory, aborting\0A\00", [52 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.121 = internal global ptr @mthca_init_icm._entry.119, section ".printk_index", align 4
@mthca_init_icm._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.94, ptr @.str.4, i32 482, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to map CQ context memory, aborting.\0A\00", [52 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.124 = internal global ptr @mthca_init_icm._entry.122, section ".printk_index", align 4
@mthca_init_icm._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.94, ptr @.str.4, i32 496, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to map SRQ context memory, aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.127 = internal global ptr @mthca_init_icm._entry.125, section ".printk_index", align 4
@mthca_init_icm._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.94, ptr @.str.4, i32 515, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to map MCG context memory, aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@mthca_init_icm._entry_ptr.130 = internal global ptr @mthca_init_icm._entry.128, section ".printk_index", align 4
@mthca_init_tavor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.4, i32 297, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SYS_EN command returned %d, aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mthca_init_tavor\00", [47 x i8] zeroinitializer }, align 32
@mthca_init_tavor._entry_ptr = internal global ptr @mthca_init_tavor._entry, section ".printk_index", align 4
@mthca_init_tavor._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.4, i32 304, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"QUERY_FW command returned %d, aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@mthca_init_tavor._entry_ptr.135 = internal global ptr @mthca_init_tavor._entry.133, section ".printk_index", align 4
@mthca_init_tavor._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.132, ptr @.str.4, i32 309, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"QUERY_DDR command returned %d, aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@mthca_init_tavor._entry_ptr.138 = internal global ptr @mthca_init_tavor._entry.136, section ".printk_index", align 4
@mthca_init_tavor._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.132, ptr @.str.4, i32 315, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@mthca_init_tavor._entry_ptr.140 = internal global ptr @mthca_init_tavor._entry.139, section ".printk_index", align 4
@mthca_init_tavor._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.132, ptr @.str.4, i32 333, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@mthca_init_tavor._entry_ptr.142 = internal global ptr @mthca_init_tavor._entry.141, section ".printk_index", align 4
@mthca_setup_hca.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->doorbell_lock\00", [44 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.4, i32 703, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to initialize user access region table, aborting.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mthca_setup_hca\00", [16 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr = internal global ptr @mthca_setup_hca._entry, section ".printk_index", align 4
@mthca_setup_hca._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.4, i32 710, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to allocate driver access region, aborting.\0A\00", [44 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.148 = internal global ptr @mthca_setup_hca._entry.146, section ".printk_index", align 4
@mthca_setup_hca._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.4, i32 717, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Couldn't map kernel access region, aborting.\0A\00", [50 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.151 = internal global ptr @mthca_setup_hca._entry.149, section ".printk_index", align 4
@mthca_setup_hca._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.4, i32 725, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to initialize protection domain table, aborting.\0A\00", [39 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.154 = internal global ptr @mthca_setup_hca._entry.152, section ".printk_index", align 4
@mthca_setup_hca._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.145, ptr @.str.4, i32 732, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to initialize memory region table, aborting.\0A\00", [43 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.157 = internal global ptr @mthca_setup_hca._entry.155, section ".printk_index", align 4
@mthca_setup_hca._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.145, ptr @.str.4, i32 739, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create driver PD, aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.160 = internal global ptr @mthca_setup_hca._entry.158, section ".printk_index", align 4
@mthca_setup_hca._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.145, ptr @.str.4, i32 746, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to initialize event queue table, aborting.\0A\00", [45 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.163 = internal global ptr @mthca_setup_hca._entry.161, section ".printk_index", align 4
@mthca_setup_hca._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.145, ptr @.str.4, i32 753, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Failed to switch to event-driven firmware commands, aborting.\0A\00", [33 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.166 = internal global ptr @mthca_setup_hca._entry.164, section ".printk_index", align 4
@mthca_setup_hca._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.145, ptr @.str.4, i32 762, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"NOP command failed to generate interrupt (IRQ %d).\0A\00", [44 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.169 = internal global ptr @mthca_setup_hca._entry.167, section ".printk_index", align 4
@mthca_setup_hca._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.145, ptr @.str.4, i32 763, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Trying again with MSI-X disabled.\0A\00", [61 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.172 = internal global ptr @mthca_setup_hca._entry.170, section ".printk_index", align 4
@mthca_setup_hca._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.145, ptr @.str.4, i32 767, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"NOP command failed to generate interrupt (IRQ %d), aborting.\0A\00", [34 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.175 = internal global ptr @mthca_setup_hca._entry.173, section ".printk_index", align 4
@mthca_setup_hca._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.145, ptr @.str.4, i32 768, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BIOS or ACPI interrupt routing problem?\0A\00", [55 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.178 = internal global ptr @mthca_setup_hca._entry.176, section ".printk_index", align 4
@mthca_setup_hca._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.145, ptr @.str.4, i32 774, ptr @.str.60, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NOP command IRQ test passed\0A\00", [35 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.181 = internal global ptr @mthca_setup_hca._entry.179, section ".printk_index", align 4
@mthca_setup_hca._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.145, ptr @.str.4, i32 779, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Failed to initialize completion queue table, aborting.\0A\00", [40 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.184 = internal global ptr @mthca_setup_hca._entry.182, section ".printk_index", align 4
@mthca_setup_hca._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.145, ptr @.str.4, i32 786, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed to initialize shared receive queue table, aborting.\0A\00", [36 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.187 = internal global ptr @mthca_setup_hca._entry.185, section ".printk_index", align 4
@mthca_setup_hca._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.145, ptr @.str.4, i32 793, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to initialize queue pair table, aborting.\0A\00", [46 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.190 = internal global ptr @mthca_setup_hca._entry.188, section ".printk_index", align 4
@mthca_setup_hca._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.145, ptr @.str.4, i32 800, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to initialize address vector table, aborting.\0A\00", [42 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.193 = internal global ptr @mthca_setup_hca._entry.191, section ".printk_index", align 4
@mthca_setup_hca._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.145, ptr @.str.4, i32 807, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to initialize multicast group table, aborting.\0A\00", [41 x i8] zeroinitializer }, align 32
@mthca_setup_hca._entry_ptr.196 = internal global ptr @mthca_setup_hca._entry.194, section ".printk_index", align 4
@mthca_pci_table = internal constant { [11 x %struct.pci_device_id], [64 x i8] } { [11 x %struct.pci_device_id] [%struct.pci_device_id { i32 5555, i32 23108, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6247, i32 23108, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 25208, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 6247, i32 25208, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5555, i32 25218, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 6247, i32 25218, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5555, i32 25204, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 6247, i32 25204, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5555, i32 24204, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 6247, i32 24204, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@mthca_init_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mthca_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.4, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_init_one\00", [17 x i8] zeroinitializer }, align 32
@mthca_init_one._entry_ptr = internal global ptr @mthca_init_one._entry, section ".printk_index", align 4
@mthca_version = internal global { [63 x i8], [33 x i8] } { [63 x i8] c"ib_mthca: Mellanox InfiniBand HCA driver v1.0 (April 4, 2008)\0A\00", [33 x i8] zeroinitializer }, align 32
@mthca_init_one._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.198, ptr @.str.4, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ib_mthca: %s has invalid driver data %lx\0A\00", [52 x i8] zeroinitializer }, align 32
@mthca_init_one._entry_ptr.201 = internal global ptr @mthca_init_one._entry.199, section ".printk_index", align 4
@.str.202 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num_qp\00", [25 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rdb_per_qp\00", [21 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num_cq\00", [25 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"num_mcg\00", [24 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"num_mpt\00", [24 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"num_mtt\00", [24 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"num_udav\00", [23 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fmr_reserved_mtts\00", [46 x i8] zeroinitializer }, align 32
@mthca_validate_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.4, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014ib_mthca: Invalid fmr_reserved_mtts module parameter %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mthca_validate_profile\00", [41 x i8] zeroinitializer }, align 32
@mthca_validate_profile._entry_ptr = internal global ptr @mthca_validate_profile._entry, section ".printk_index", align 4
@mthca_validate_profile._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.211, ptr @.str.4, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014ib_mthca: (Must be smaller than num_mtt %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@mthca_validate_profile._entry_ptr.214 = internal global ptr @mthca_validate_profile._entry.212, section ".printk_index", align 4
@mthca_validate_profile._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.211, ptr @.str.4, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014ib_mthca: Corrected fmr_reserved_mtts to %d.\0A\00", [48 x i8] zeroinitializer }, align 32
@mthca_validate_profile._entry_ptr.217 = internal global ptr @mthca_validate_profile._entry.215, section ".printk_index", align 4
@mthca_validate_profile._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.211, ptr @.str.4, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014ib_mthca: bad log_mtts_per_seg (%d). Using default - %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mthca_validate_profile._entry_ptr.220 = internal global ptr @mthca_validate_profile._entry.218, section ".printk_index", align 4
@__mthca_check_profile_val._entry = internal constant %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.4, i32 1199, ptr null, ptr null }, align 1
@.str.221 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014ib_mthca: Invalid value %d for %s in module parameter.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__mthca_check_profile_val\00", [38 x i8] zeroinitializer }, align 32
@__mthca_check_profile_val._entry_ptr = internal global ptr @__mthca_check_profile_val._entry, section ".printk_index", align 4
@__mthca_check_profile_val._entry.223 = internal constant %struct.pi_entry { ptr @.str.224, ptr @.str.222, ptr @.str.4, i32 1200, ptr null, ptr null }, align 1
@.str.224 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014ib_mthca: Corrected %s to %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@__mthca_check_profile_val._entry_ptr.225 = internal global ptr @__mthca_check_profile_val._entry.223, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.226 = private unnamed_addr constant [18 x i8] c"mthca_debug_level\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 55, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant [6 x i8] c"msi_x\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 63, i32 12 }
@___asan_gen_.232 = private unnamed_addr constant [9 x i8] c"tune_pci\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 73, i32 12 }
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c"mthca_device_mutex\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 77, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant [12 x i8] c"hca_profile\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 89, i32 29 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"log_mtts_per_seg\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 128, i32 12 }
@___asan_gen_.250 = private unnamed_addr constant [13 x i8] c"mthca_driver\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1179, i32 26 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 903, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 908, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 919, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 924, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 931, i32 34 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 933, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 942, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 945, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 955, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [16 x i8] c"mthca_hca_table\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 883, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 974, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 980, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 993, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 999, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 144, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 149, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 153, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 158, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 678, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 584, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 590, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 593, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 599, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 605, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 627, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 355, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 361, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 366, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 171, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 176, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 182, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 189, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 390, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 394, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 401, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 407, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 413, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 427, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 438, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 449, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 460, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 471, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 482, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 495, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 515, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 297, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 303, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 309, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 315, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 333, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 698, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 702, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 709, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 716, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 724, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 731, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 738, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 745, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 752, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 760, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 763, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 765, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 768, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 774, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 778, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 785, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 792, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 799, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 806, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant [16 x i8] c"mthca_pci_table\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1153, i32 35 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1130, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant [14 x i8] c"mthca_version\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 132, i32 13 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1133, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1209, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1210, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1211, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1212, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1213, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1214, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1215, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1216, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1219, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1221, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1224, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1229, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1198, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.743 = private constant [44 x i8] c"../drivers/infiniband/hw/mthca/mthca_main.c\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1200, i32 3 }
@llvm.compiler.used = appending global [304 x ptr] [ptr @__UNIQUE_ID_author496, ptr @__UNIQUE_ID_debug_level501, ptr @__UNIQUE_ID_debug_leveltype500, ptr @__UNIQUE_ID_description497, ptr @__UNIQUE_ID_file498, ptr @__UNIQUE_ID_fmr_reserved_mtts521, ptr @__UNIQUE_ID_fmr_reserved_mttstype520, ptr @__UNIQUE_ID_license499, ptr @__UNIQUE_ID_log_mtts_per_seg523, ptr @__UNIQUE_ID_log_mtts_per_segtype522, ptr @__UNIQUE_ID_msi_x503, ptr @__UNIQUE_ID_msi_xtype502, ptr @__UNIQUE_ID_num_cq511, ptr @__UNIQUE_ID_num_cqtype510, ptr @__UNIQUE_ID_num_mcg513, ptr @__UNIQUE_ID_num_mcgtype512, ptr @__UNIQUE_ID_num_mpt515, ptr @__UNIQUE_ID_num_mpttype514, ptr @__UNIQUE_ID_num_mtt517, ptr @__UNIQUE_ID_num_mtttype516, ptr @__UNIQUE_ID_num_qp507, ptr @__UNIQUE_ID_num_qptype506, ptr @__UNIQUE_ID_num_udav519, ptr @__UNIQUE_ID_num_udavtype518, ptr @__UNIQUE_ID_rdb_per_qp509, ptr @__UNIQUE_ID_rdb_per_qptype508, ptr @__UNIQUE_ID_tune_pci505, ptr @__UNIQUE_ID_tune_pcitype504, ptr @__exitcall_mthca_cleanup, ptr @__initcall__kmod_ib_mthca__526_1260_mthca_init6, ptr @__mthca_check_profile_val._entry, ptr @__mthca_check_profile_val._entry.223, ptr @__mthca_check_profile_val._entry_ptr, ptr @__mthca_check_profile_val._entry_ptr.225, ptr @__mthca_init_one._entry, ptr @__mthca_init_one._entry.10, ptr @__mthca_init_one._entry.13, ptr @__mthca_init_one._entry.17, ptr @__mthca_init_one._entry.20, ptr @__mthca_init_one._entry.24, ptr @__mthca_init_one._entry.27, ptr @__mthca_init_one._entry.30, ptr @__mthca_init_one._entry.33, ptr @__mthca_init_one._entry.36, ptr @__mthca_init_one._entry.39, ptr @__mthca_init_one._entry.5, ptr @__mthca_init_one._entry_ptr, ptr @__mthca_init_one._entry_ptr.12, ptr @__mthca_init_one._entry_ptr.15, ptr @__mthca_init_one._entry_ptr.19, ptr @__mthca_init_one._entry_ptr.23, ptr @__mthca_init_one._entry_ptr.26, ptr @__mthca_init_one._entry_ptr.29, ptr @__mthca_init_one._entry_ptr.32, ptr @__mthca_init_one._entry_ptr.35, ptr @__mthca_init_one._entry_ptr.38, ptr @__mthca_init_one._entry_ptr.41, ptr @__mthca_init_one._entry_ptr.9, ptr @__param_debug_level, ptr @__param_fmr_reserved_mtts, ptr @__param_log_mtts_per_seg, ptr @__param_msi_x, ptr @__param_num_cq, ptr @__param_num_mcg, ptr @__param_num_mpt, ptr @__param_num_mtt, ptr @__param_num_qp, ptr @__param_num_udav, ptr @__param_rdb_per_qp, ptr @__param_tune_pci, ptr @mthca_cleanup, ptr @mthca_dev_lim._entry, ptr @mthca_dev_lim._entry.84, ptr @mthca_dev_lim._entry.87, ptr @mthca_dev_lim._entry.90, ptr @mthca_dev_lim._entry_ptr, ptr @mthca_dev_lim._entry_ptr.86, ptr @mthca_dev_lim._entry_ptr.89, ptr @mthca_dev_lim._entry_ptr.92, ptr @mthca_init_arbel._entry, ptr @mthca_init_arbel._entry.58, ptr @mthca_init_arbel._entry.62, ptr @mthca_init_arbel._entry.65, ptr @mthca_init_arbel._entry.68, ptr @mthca_init_arbel._entry.71, ptr @mthca_init_arbel._entry_ptr, ptr @mthca_init_arbel._entry_ptr.61, ptr @mthca_init_arbel._entry_ptr.64, ptr @mthca_init_arbel._entry_ptr.67, ptr @mthca_init_arbel._entry_ptr.70, ptr @mthca_init_arbel._entry_ptr.73, ptr @mthca_init_hca._entry, ptr @mthca_init_hca._entry_ptr, ptr @mthca_init_icm._entry, ptr @mthca_init_icm._entry.101, ptr @mthca_init_icm._entry.104, ptr @mthca_init_icm._entry.107, ptr @mthca_init_icm._entry.110, ptr @mthca_init_icm._entry.113, ptr @mthca_init_icm._entry.116, ptr @mthca_init_icm._entry.119, ptr @mthca_init_icm._entry.122, ptr @mthca_init_icm._entry.125, ptr @mthca_init_icm._entry.128, ptr @mthca_init_icm._entry.95, ptr @mthca_init_icm._entry.98, ptr @mthca_init_icm._entry_ptr, ptr @mthca_init_icm._entry_ptr.100, ptr @mthca_init_icm._entry_ptr.103, ptr @mthca_init_icm._entry_ptr.106, ptr @mthca_init_icm._entry_ptr.109, ptr @mthca_init_icm._entry_ptr.112, ptr @mthca_init_icm._entry_ptr.115, ptr @mthca_init_icm._entry_ptr.118, ptr @mthca_init_icm._entry_ptr.121, ptr @mthca_init_icm._entry_ptr.124, ptr @mthca_init_icm._entry_ptr.127, ptr @mthca_init_icm._entry_ptr.130, ptr @mthca_init_icm._entry_ptr.97, ptr @mthca_init_one._entry, ptr @mthca_init_one._entry.199, ptr @mthca_init_one._entry_ptr, ptr @mthca_init_one._entry_ptr.201, ptr @mthca_init_tavor._entry, ptr @mthca_init_tavor._entry.133, ptr @mthca_init_tavor._entry.136, ptr @mthca_init_tavor._entry.139, ptr @mthca_init_tavor._entry.141, ptr @mthca_init_tavor._entry_ptr, ptr @mthca_init_tavor._entry_ptr.135, ptr @mthca_init_tavor._entry_ptr.138, ptr @mthca_init_tavor._entry_ptr.140, ptr @mthca_init_tavor._entry_ptr.142, ptr @mthca_load_fw._entry, ptr @mthca_load_fw._entry.76, ptr @mthca_load_fw._entry.79, ptr @mthca_load_fw._entry_ptr, ptr @mthca_load_fw._entry_ptr.78, ptr @mthca_load_fw._entry_ptr.81, ptr @mthca_setup_hca._entry, ptr @mthca_setup_hca._entry.146, ptr @mthca_setup_hca._entry.149, ptr @mthca_setup_hca._entry.152, ptr @mthca_setup_hca._entry.155, ptr @mthca_setup_hca._entry.158, ptr @mthca_setup_hca._entry.161, ptr @mthca_setup_hca._entry.164, ptr @mthca_setup_hca._entry.167, ptr @mthca_setup_hca._entry.170, ptr @mthca_setup_hca._entry.173, ptr @mthca_setup_hca._entry.176, ptr @mthca_setup_hca._entry.179, ptr @mthca_setup_hca._entry.182, ptr @mthca_setup_hca._entry.185, ptr @mthca_setup_hca._entry.188, ptr @mthca_setup_hca._entry.191, ptr @mthca_setup_hca._entry.194, ptr @mthca_setup_hca._entry_ptr, ptr @mthca_setup_hca._entry_ptr.148, ptr @mthca_setup_hca._entry_ptr.151, ptr @mthca_setup_hca._entry_ptr.154, ptr @mthca_setup_hca._entry_ptr.157, ptr @mthca_setup_hca._entry_ptr.160, ptr @mthca_setup_hca._entry_ptr.163, ptr @mthca_setup_hca._entry_ptr.166, ptr @mthca_setup_hca._entry_ptr.169, ptr @mthca_setup_hca._entry_ptr.172, ptr @mthca_setup_hca._entry_ptr.175, ptr @mthca_setup_hca._entry_ptr.178, ptr @mthca_setup_hca._entry_ptr.181, ptr @mthca_setup_hca._entry_ptr.184, ptr @mthca_setup_hca._entry_ptr.187, ptr @mthca_setup_hca._entry_ptr.190, ptr @mthca_setup_hca._entry_ptr.193, ptr @mthca_setup_hca._entry_ptr.196, ptr @mthca_tune_pci._entry, ptr @mthca_tune_pci._entry.44, ptr @mthca_tune_pci._entry.48, ptr @mthca_tune_pci._entry.51, ptr @mthca_tune_pci._entry_ptr, ptr @mthca_tune_pci._entry_ptr.47, ptr @mthca_tune_pci._entry_ptr.50, ptr @mthca_tune_pci._entry_ptr.53, ptr @mthca_validate_profile._entry, ptr @mthca_validate_profile._entry.212, ptr @mthca_validate_profile._entry.215, ptr @mthca_validate_profile._entry.218, ptr @mthca_validate_profile._entry_ptr, ptr @mthca_validate_profile._entry_ptr.214, ptr @mthca_validate_profile._entry_ptr.217, ptr @mthca_validate_profile._entry_ptr.220, ptr @mthca_debug_level, ptr @msi_x, ptr @tune_pci, ptr @.str, ptr @mthca_device_mutex, ptr @.str.1, ptr @hca_profile, ptr @log_mtts_per_seg, ptr @mthca_driver, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @mthca_hca_table, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @mthca_setup_hca.__key, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @mthca_pci_table, ptr @.str.197, ptr @.str.198, ptr @mthca_version, ptr @.str.200, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.221, ptr @.str.222, ptr @.str.224], section "llvm.metadata"
@0 = internal global [173 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_x to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_pci to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_device_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hca_profile to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_mtts_per_seg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_hca_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_tune_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_tune_pci._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_tune_pci._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_tune_pci._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_hca._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_arbel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_arbel._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_arbel._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_arbel._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_arbel._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_arbel._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_load_fw._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_load_fw._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_dev_lim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_dev_lim._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_dev_lim._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_dev_lim._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_icm._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_tavor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_tavor._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_tavor._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_tavor._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_tavor._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_hca._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_pci_table to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_version to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_one._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_validate_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_validate_profile._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_validate_profile._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_validate_profile._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mthca_restart_one(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hca_type1 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hca_type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hca_type1, align 4
  tail call fastcc void @__mthca_remove_one(ptr noundef %pdev)
  %call2 = tail call fastcc i32 @__mthca_init_one(ptr noundef %pdev, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mthca_remove_one(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  tail call void @mthca_free_agents(ptr noundef nonnull %1) #6
  tail call void @mthca_unregister_device(ptr noundef nonnull %1) #6
  %limits = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not35 = icmp slt i32 %3, 1
  br i1 %cmp.not35, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %p.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.then.for.body_crit_edge ]
  %call1 = tail call i32 @mthca_CLOSE_IB(ptr noundef nonnull %1, i32 noundef %p.036) #6
  %inc = add i32 %p.036, 1
  %4 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %limits, align 8
  %cmp.not = icmp sgt i32 %inc, %5
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @mthca_cleanup_mcg_table(ptr noundef nonnull %1) #6
  tail call void @mthca_cleanup_av_table(ptr noundef nonnull %1) #6
  tail call void @mthca_cleanup_qp_table(ptr noundef nonnull %1) #6
  tail call void @mthca_cleanup_srq_table(ptr noundef nonnull %1) #6
  tail call void @mthca_cleanup_cq_table(ptr noundef nonnull %1) #6
  tail call void @mthca_cmd_use_polling(ptr noundef nonnull %1) #6
  tail call void @mthca_cleanup_eq_table(ptr noundef nonnull %1) #6
  %driver_pd = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 31
  tail call void @mthca_pd_free(ptr noundef nonnull %1, ptr noundef %driver_pd) #6
  tail call void @mthca_cleanup_mr_table(ptr noundef nonnull %1) #6
  tail call void @mthca_cleanup_pd_table(ptr noundef nonnull %1) #6
  %kar = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %kar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kar, align 4
  tail call void @iounmap(ptr noundef %7) #6
  %driver_uar = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 29
  tail call void @mthca_uar_free(ptr noundef nonnull %1, ptr noundef %driver_uar) #6
  tail call void @mthca_cleanup_uar_table(ptr noundef nonnull %1) #6
  tail call fastcc void @mthca_close_hca(ptr noundef nonnull %1)
  tail call void @mthca_cmd_cleanup(ptr noundef nonnull %1) #6
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mthca_flags, align 8
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.end.if.end_crit_edge, label %if.then3

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #6
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.end.if.end_crit_edge
  tail call void @ib_dealloc_device(ptr noundef nonnull %1) #6
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mthca_init_one(ptr noundef %pdev, i32 noundef %hca_type) unnamed_addr #0 align 64 {
entry:
  %dev_lim.i33.i = alloca %struct.mthca_dev_lim, align 8
  %profile.i34.i = alloca %struct.mthca_profile, align 4
  %init_hca.i35.i = alloca %struct.mthca_init_hca_param, align 8
  %aux_pages.i.i.i = alloca i64, align 8
  %dev_lim.i.i = alloca %struct.mthca_dev_lim, align 8
  %profile.i.i = alloca %struct.mthca_profile, align 4
  %init_hca.i.i = alloca %struct.mthca_init_hca_param, align 8
  %adapter.i = alloca %struct.mthca_adapter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %entry.pci_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i) #9
  %call2 = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end:                                           ; preds = %pci_name.exit
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.do.end18_crit_edge, label %lor.lhs.false

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

lor.lhs.false:                                    ; preds = %if.end
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %lor.lhs.false.do.end18_crit_edge, label %cond.end

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

cond.end:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %sub)
  %cmp14.not = icmp eq i32 %sub, 1048575
  br i1 %cmp14.not, label %if.end20, label %cond.end.do.end18_crit_edge

cond.end.do.end18_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end18:                                         ; preds = %cond.end.do.end18_crit_edge, %lor.lhs.false.do.end18_crit_edge, %if.end.do.end18_crit_edge
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.11) #9
  br label %err_disable_pdev

if.end20:                                         ; preds = %cond.end
  %flags23 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %10 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags23, align 4
  %and24 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.14) #9
  br label %err_disable_pdev

if.end31:                                         ; preds = %if.end20
  %flags34 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 3
  %12 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags34, align 4
  %call39 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.18) #9
  br label %err_disable_pdev

if.end46:                                         ; preds = %if.end31
  tail call void @pci_set_master(ptr noundef %pdev) #6
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev47, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end46.if.end64_crit_edge, label %do.end53

if.end46.if.end64_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end53:                                         ; preds = %if.end46
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev47, ptr noundef nonnull @.str.21) #9
  %call.i271 = tail call i32 @dma_set_mask(ptr noundef %dev47, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %cmp.i272 = icmp eq i32 %call.i271, 0
  br i1 %cmp.i272, label %do.end53.if.end64_crit_edge, label %do.end61

do.end53.if.end64_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end61:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.25) #9
  br label %err_free_res

if.end64:                                         ; preds = %do.end53.if.end64_crit_edge, %if.end46.if.end64_crit_edge
  %.sink = phi i64 [ -1, %if.end46.if.end64_crit_edge ], [ 4294967295, %do.end53.if.end64_crit_edge ]
  %call1.i273 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev47, i64 noundef %.sink) #6
  %dma_parms.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 22
  %14 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end64.dma_set_max_seg_size.exit_crit_edge, label %if.then.i276

if.end64.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_set_max_seg_size.exit

if.then.i276:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1073741824, ptr %15, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i276, %if.end64.dma_set_max_seg_size.exit_crit_edge
  %call67 = tail call ptr @_ib_alloc_device(i32 noundef 5960) #6
  %tobool69.not = icmp eq ptr %call67, null
  br i1 %tobool69.not, label %do.end73, label %if.end75

do.end73:                                         ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.28) #9
  br label %err_free_res

if.end75:                                         ; preds = %dma_set_max_seg_size.exit
  %pdev76 = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 1
  %17 = ptrtoint ptr %pdev76 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pdev, ptr %pdev76, align 8
  %arrayidx77 = getelementptr [4 x %struct.anon.181], ptr @mthca_hca_table, i32 0, i32 %hca_type
  %flags78 = getelementptr [4 x %struct.anon.181], ptr @mthca_hca_table, i32 0, i32 %hca_type, i32 1
  %18 = ptrtoint ptr %flags78 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags78, align 8
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 3
  %and35 = lshr i32 %13, 8
  %20 = and i32 %and35, 2
  %21 = xor i32 %20, 2
  %22 = or i32 %19, %21
  %23 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mthca_flags, align 8
  %call83 = tail call i32 @mthca_reset(ptr noundef nonnull %call67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end91, label %do.end88

do.end88:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev76, align 8
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev90, ptr noundef nonnull @.str.31) #9
  br label %err_free_dev

if.end91:                                         ; preds = %if.end75
  %call92 = tail call i32 @mthca_cmd_init(ptr noundef nonnull %call67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end100, label %do.end97

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev76, align 8
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev99, ptr noundef nonnull @.str.34) #9
  br label %err_free_dev

if.end100:                                        ; preds = %if.end91
  %28 = load i32, ptr @tune_pci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i277 = icmp eq i32 %28, 0
  br i1 %tobool.not.i277, label %if.end100.if.end104_crit_edge, label %if.end.i

if.end100.if.end104_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.end.i:                                         ; preds = %if.end100
  %29 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev76, align 8
  %call.i278 = tail call zeroext i8 @pci_find_capability(ptr noundef %30, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i278)
  %tobool1.not.i = icmp eq i8 %call.i278, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %31 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev76, align 8
  %call5.i = tail call i32 @pcix_get_max_mmrbc(ptr noundef %32) #6
  %call6.i = tail call i32 @pcix_set_mmrbc(ptr noundef %32, i32 noundef %call5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then2.i.if.end18.i_crit_edge, label %do.end.i

if.then2.i.if.end18.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev76, align 8
  %dev.i279 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i279, ptr noundef nonnull @.str.42) #9
  br label %err_cmd

if.else.i:                                        ; preds = %if.end.i
  %35 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mthca_flags, align 8
  %and.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %do.end14.i, label %if.else.i.if.end18.i_crit_edge

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

do.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev76, align 8
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16.i, ptr noundef nonnull @.str.45) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end14.i, %if.else.i.if.end18.i_crit_edge, %if.then2.i.if.end18.i_crit_edge
  %39 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev76, align 8
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 19
  %41 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.i.not.i = icmp eq i8 %42, 0
  br i1 %tobool.i.not.i, label %if.else31.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end18.i
  %call23.i = tail call i32 @pcie_set_readrq(ptr noundef %40, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then21.i.if.end104_crit_edge, label %do.end27.i

if.then21.i.if.end104_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

do.end27.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev76, align 8
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.49) #9
  br label %err_cmd

if.else31.i:                                      ; preds = %if.end18.i
  %45 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mthca_flags, align 8
  %and33.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else31.i.if.end104_crit_edge, label %do.end37.i

if.else31.i.if.end104_crit_edge:                  ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

do.end37.i:                                       ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39.i, ptr noundef nonnull @.str.52) #9
  br label %if.end104

if.end104:                                        ; preds = %do.end37.i, %if.else31.i.if.end104_crit_edge, %if.then21.i.if.end104_crit_edge, %if.end100.if.end104_crit_edge
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %adapter.i) #6
  %47 = call ptr @memset(ptr %adapter.i, i32 255, i32 80)
  %48 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mthca_flags, align 8
  %and.i.i = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i280 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i280, label %if.else.i285, label %if.then.i282

if.then.i282:                                     ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %dev_lim.i.i) #6
  %50 = call ptr @memset(ptr %dev_lim.i.i, i32 255, i32 240)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %profile.i.i) #6
  %51 = call ptr @memset(ptr %profile.i.i, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %init_hca.i.i) #6
  %52 = call ptr @memset(ptr %init_hca.i.i, i32 255, i32 120)
  %call.i.i = tail call i32 @mthca_QUERY_FW(ptr noundef nonnull %call67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i281 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i281, label %if.end.i.i283, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i282
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev76, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.56, i32 noundef %call.i.i) #9
  br label %mthca_init_arbel.exit.i

if.end.i.i283:                                    ; preds = %if.then.i282
  %call1.i.i = tail call i32 @mthca_ENABLE_LAM(ptr noundef nonnull %call67) #6
  %55 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i.i, label %do.end18.i.i [
    i32 -11, label %do.body3.i.i
    i32 0, label %if.end.i.i283.if.end22.i.i_crit_edge
  ]

if.end.i.i283.if.end22.i.i_crit_edge:             ; preds = %if.end.i.i283
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i.i

do.body3.i.i:                                     ; preds = %if.end.i.i283
  %56 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool4.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool4.not.i.i, label %do.body3.i.i.do.end13.i.i_crit_edge, label %do.end8.i.i

do.body3.i.i.do.end13.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i.i

do.end8.i.i:                                      ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev76, align 8
  %dev10.i.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.60, ptr noundef %dev10.i.i, ptr noundef nonnull @.str.59) #9
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %do.end8.i.i, %do.body3.i.i.do.end13.i.i_crit_edge
  %59 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mthca_flags, align 8
  %or.i.i = or i32 %60, 16
  store i32 %or.i.i, ptr %mthca_flags, align 8
  br label %if.end22.i.i

do.end18.i.i:                                     ; preds = %if.end.i.i283
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev76, align 8
  %dev20.i.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i.i, ptr noundef nonnull @.str.63, i32 noundef %call1.i.i) #9
  br label %mthca_init_arbel.exit.i

if.end22.i.i:                                     ; preds = %do.end13.i.i, %if.end.i.i283.if.end22.i.i_crit_edge
  %fw_pages.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 8, i32 0, i32 5
  %63 = ptrtoint ptr %fw_pages.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %fw_pages.i.i.i, align 8
  %conv.i.i.i = zext i16 %64 to i32
  %call.i.i.i = tail call ptr @mthca_alloc_icm(ptr noundef nonnull %call67, i32 noundef %conv.i.i.i, i32 noundef 1060034, i32 noundef 0) #6
  %fw_icm.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 8, i32 0, i32 3
  %65 = ptrtoint ptr %fw_icm.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i.i.i, ptr %fw_icm.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev76, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.74) #9
  br label %do.end28.i.i

if.end.i.i.i:                                     ; preds = %if.end22.i.i
  %call6.i.i.i = tail call i32 @mthca_MAP_FA(ptr noundef nonnull %call67, ptr noundef nonnull %call.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end14.i.i.i, label %do.end11.i.i.i

do.end11.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev76, align 8
  %dev13.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i, ptr noundef nonnull @.str.77, i32 noundef %call6.i.i.i) #9
  br label %err_free.i.i.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %call15.i.i.i = tail call i32 @mthca_RUN_FW(ptr noundef nonnull %call67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end31.i.i, label %do.end20.i.i.i

do.end20.i.i.i:                                   ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev76, align 8
  %dev22.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i.i.i, ptr noundef nonnull @.str.80, i32 noundef %call15.i.i.i) #9
  %call24.i.i.i = tail call i32 @mthca_UNMAP_FA(ptr noundef nonnull %call67) #6
  br label %err_free.i.i.i

err_free.i.i.i:                                   ; preds = %do.end20.i.i.i, %do.end11.i.i.i
  %err.0.i.i.i = phi i32 [ %call6.i.i.i, %do.end11.i.i.i ], [ %call15.i.i.i, %do.end20.i.i.i ]
  %72 = ptrtoint ptr %fw_icm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fw_icm.i.i.i, align 8
  tail call void @mthca_free_icm(ptr noundef nonnull %call67, ptr noundef %73, i32 noundef 0) #6
  br label %do.end28.i.i

do.end28.i.i:                                     ; preds = %err_free.i.i.i, %do.end.i.i.i
  %retval.0.i.ph.i.i = phi i32 [ -12, %do.end.i.i.i ], [ %err.0.i.i.i, %err_free.i.i.i ]
  %74 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev76, align 8
  %dev30.i.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i.i, ptr noundef nonnull @.str.66, i32 noundef %retval.0.i.ph.i.i) #9
  br label %err_disable.i.i

if.end31.i.i:                                     ; preds = %if.end14.i.i.i
  %call32.i.i = call fastcc i32 @mthca_dev_lim(ptr noundef nonnull %call67, ptr noundef nonnull %dev_lim.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end40.i.i, label %do.end37.i.i

do.end37.i.i:                                     ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev76, align 8
  %dev39.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i.i, ptr noundef nonnull @.str.69, i32 noundef %call32.i.i) #9
  br label %err_stop_fw.i.i

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %78 = call ptr @memcpy(ptr %profile.i.i, ptr @hca_profile, i32 44)
  %uar_size.i.i = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim.i.i, i32 0, i32 31
  %79 = ptrtoint ptr %uar_size.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %uar_size.i.i, align 4
  %div109.i.i = lshr i32 %80, 12
  %num_uar.i.i = getelementptr inbounds %struct.mthca_profile, ptr %profile.i.i, i32 0, i32 8
  %81 = ptrtoint ptr %num_uar.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div109.i.i, ptr %num_uar.i.i, align 4
  %num_udav.i.i = getelementptr inbounds %struct.mthca_profile, ptr %profile.i.i, i32 0, i32 7
  %82 = ptrtoint ptr %num_udav.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %num_udav.i.i, align 4
  %83 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mthca_flags, align 8
  %and.i32.i = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool42.not.i.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool42.not.i.i, label %if.end40.i.i.if.end44.i.i_crit_edge, label %if.then43.i.i

if.end40.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i.i

if.then43.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max_srqs.i.i = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim.i.i, i32 0, i32 5
  %85 = ptrtoint ptr %max_srqs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_srqs.i.i, align 4
  %num_srq.i.i = getelementptr inbounds %struct.mthca_profile, ptr %profile.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %num_srq.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %num_srq.i.i, align 4
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then43.i.i, %if.end40.i.i.if.end44.i.i_crit_edge
  %call45.i.i = call i64 @mthca_make_profile(ptr noundef nonnull %call67, ptr noundef nonnull %profile.i.i, ptr noundef nonnull %dev_lim.i.i, ptr noundef nonnull %init_hca.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call45.i.i)
  %cmp46.i.i = icmp slt i64 %call45.i.i, 0
  br i1 %cmp46.i.i, label %if.then47.i.i, label %if.end48.i.i

if.then47.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = trunc i64 %call45.i.i to i32
  br label %err_stop_fw.i.i

if.end48.i.i:                                     ; preds = %if.end44.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aux_pages.i.i.i) #6
  %88 = ptrtoint ptr %aux_pages.i.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 -1, ptr %aux_pages.i.i.i, align 8, !annotation !448
  %call.i110.i.i = call i32 @mthca_SET_ICM_SIZE(ptr noundef nonnull %call67, i64 noundef %call45.i.i, ptr noundef nonnull %aux_pages.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i.i)
  %tobool.not.i111.i.i = icmp eq i32 %call.i110.i.i, 0
  br i1 %tobool.not.i111.i.i, label %do.body1.i.i.i, label %do.end.i114.i.i

do.end.i114.i.i:                                  ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev76, align 8
  %dev.i113.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i113.i.i, ptr noundef nonnull @.str.93, i32 noundef %call.i110.i.i) #9
  br label %mthca_init_icm.exit.thread.i.i

do.body1.i.i.i:                                   ; preds = %if.end48.i.i
  %91 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool2.not.i.i.i = icmp eq i32 %91, 0
  br i1 %tobool2.not.i.i.i, label %do.body1.i.i.i.do.end11.i116.i.i_crit_edge, label %do.end6.i.i.i

do.body1.i.i.i.do.end11.i116.i.i_crit_edge:       ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i116.i.i

do.end6.i.i.i:                                    ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev76, align 8
  %dev8.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %shr.i.i.i = lshr i64 %call45.i.i, 10
  %94 = ptrtoint ptr %aux_pages.i.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %aux_pages.i.i.i, align 8
  %shl.i.i.i = shl i64 %95, 2
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.60, ptr noundef %dev8.i.i.i, ptr noundef nonnull @.str.96, i64 noundef %shr.i.i.i, i64 noundef %shl.i.i.i) #9
  br label %do.end11.i116.i.i

do.end11.i116.i.i:                                ; preds = %do.end6.i.i.i, %do.body1.i.i.i.do.end11.i116.i.i_crit_edge
  %96 = ptrtoint ptr %aux_pages.i.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %aux_pages.i.i.i, align 8
  %conv.i115.i.i = trunc i64 %97 to i32
  %call12.i.i.i = call ptr @mthca_alloc_icm(ptr noundef nonnull %call67, i32 noundef %conv.i115.i.i, i32 noundef 1060034, i32 noundef 0) #6
  %aux_icm.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 8, i32 0, i32 4
  %98 = ptrtoint ptr %aux_icm.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call12.i.i.i, ptr %aux_icm.i.i.i, align 4
  %tobool15.not.i.i.i = icmp eq ptr %call12.i.i.i, null
  br i1 %tobool15.not.i.i.i, label %do.end19.i.i.i, label %if.end22.i.i.i

do.end19.i.i.i:                                   ; preds = %do.end11.i116.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev76, align 8
  %dev21.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i.i.i, ptr noundef nonnull @.str.99) #9
  br label %mthca_init_icm.exit.thread.i.i

if.end22.i.i.i:                                   ; preds = %do.end11.i116.i.i
  %call25.i.i.i = call i32 @mthca_MAP_ICM_AUX(ptr noundef nonnull %call67, ptr noundef nonnull %call12.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %call25.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %if.end33.i.i.i, label %do.end30.i.i.i

do.end30.i.i.i:                                   ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev76, align 8
  %dev32.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i.i.i, ptr noundef nonnull @.str.102, i32 noundef %call25.i.i.i) #9
  br label %err_free_aux.i.i.i

if.end33.i.i.i:                                   ; preds = %if.end22.i.i.i
  %eqc_base.i.i.i = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca.i.i, i32 0, i32 6
  %103 = ptrtoint ptr %eqc_base.i.i.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %eqc_base.i.i.i, align 8
  %call34.i.i.i = call i32 @mthca_map_eq_icm(ptr noundef nonnull %call67, i64 noundef %104) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i.i)
  %tobool35.not.i.i.i = icmp eq i32 %call34.i.i.i, 0
  br i1 %tobool35.not.i.i.i, label %if.end42.i.i.i, label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev76, align 8
  %dev41.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41.i.i.i, ptr noundef nonnull @.str.105) #9
  br label %err_unmap_aux.i.i.i

if.end42.i.i.i:                                   ; preds = %if.end33.i.i.i
  %reserved_mtts.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 28
  %107 = ptrtoint ptr %reserved_mtts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %reserved_mtts.i.i.i, align 8
  %mtt_seg_size.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 26
  %109 = ptrtoint ptr %mtt_seg_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mtt_seg_size.i.i.i, align 8
  %mul.i.i.i = mul i32 %110, %108
  %add.i.i.i = add i32 %mul.i.i.i, 127
  %and.i.i.i = and i32 %add.i.i.i, -128
  %div.i.i.i = sdiv i32 %and.i.i.i, %110
  store i32 %div.i.i.i, ptr %reserved_mtts.i.i.i, align 8
  %mtt_base.i.i.i = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca.i.i, i32 0, i32 10
  %111 = ptrtoint ptr %mtt_base.i.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %mtt_base.i.i.i, align 8
  %num_mtt_segs.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 25
  %113 = ptrtoint ptr %num_mtt_segs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_mtt_segs.i.i.i, align 4
  %call56.i.i.i = call ptr @mthca_alloc_icm_table(ptr noundef nonnull %call67, i64 noundef %112, i32 noundef %110, i32 noundef %114, i32 noundef %div.i.i.i, i32 noundef 1, i32 noundef 0) #6
  %mtt_table.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 21, i32 5
  %115 = ptrtoint ptr %mtt_table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call56.i.i.i, ptr %mtt_table.i.i.i, align 8
  %tobool59.not.i.i.i = icmp eq ptr %call56.i.i.i, null
  br i1 %tobool59.not.i.i.i, label %do.end63.i.i.i, label %if.end66.i.i.i

do.end63.i.i.i:                                   ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev76, align 8
  %dev65.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65.i.i.i, ptr noundef nonnull @.str.108) #9
  br label %err_unmap_eq.i.i.i

if.end66.i.i.i:                                   ; preds = %if.end42.i.i.i
  %mpt_base.i.i.i = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca.i.i, i32 0, i32 9
  %118 = ptrtoint ptr %mpt_base.i.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %mpt_base.i.i.i, align 8
  %mpt_entry_sz.i.i.i = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim.i.i, i32 0, i32 50
  %120 = ptrtoint ptr %mpt_entry_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mpt_entry_sz.i.i.i, align 8
  %num_mpts.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 24
  %122 = ptrtoint ptr %num_mpts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_mpts.i.i.i, align 8
  %reserved_mrws.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 29
  %124 = ptrtoint ptr %reserved_mrws.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %reserved_mrws.i.i.i, align 4
  %call69.i.i.i = call ptr @mthca_alloc_icm_table(ptr noundef nonnull %call67, i64 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef 1, i32 noundef 1) #6
  %mpt_table.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 21, i32 6
  %126 = ptrtoint ptr %mpt_table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call69.i.i.i, ptr %mpt_table.i.i.i, align 4
  %tobool73.not.i.i.i = icmp eq ptr %call69.i.i.i, null
  br i1 %tobool73.not.i.i.i, label %do.end77.i.i.i, label %if.end80.i.i.i

do.end77.i.i.i:                                   ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev76, align 8
  %dev79.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79.i.i.i, ptr noundef nonnull @.str.111) #9
  br label %err_unmap_mtt.i.i.i

if.end80.i.i.i:                                   ; preds = %if.end66.i.i.i
  %129 = ptrtoint ptr %init_hca.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %init_hca.i.i, align 8
  %qpc_entry_sz.i.i.i = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim.i.i, i32 0, i32 43
  %131 = ptrtoint ptr %qpc_entry_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %qpc_entry_sz.i.i.i, align 4
  %num_qps.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 8
  %133 = ptrtoint ptr %num_qps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_qps.i.i.i, align 8
  %reserved_qps.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 12
  %135 = ptrtoint ptr %reserved_qps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %reserved_qps.i.i.i, align 8
  %call83.i.i.i = call ptr @mthca_alloc_icm_table(ptr noundef nonnull %call67, i64 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %136, i32 noundef 0, i32 noundef 0) #6
  %qp_table84.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 25, i32 6
  %137 = ptrtoint ptr %qp_table84.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call83.i.i.i, ptr %qp_table84.i.i.i, align 4
  %tobool87.not.i.i.i = icmp eq ptr %call83.i.i.i, null
  br i1 %tobool87.not.i.i.i, label %do.end91.i.i.i, label %if.end94.i.i.i

do.end91.i.i.i:                                   ; preds = %if.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev76, align 8
  %dev93.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93.i.i.i, ptr noundef nonnull @.str.114) #9
  br label %err_unmap_mpt.i.i.i

if.end94.i.i.i:                                   ; preds = %if.end80.i.i.i
  %eqpc_base.i.i.i = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca.i.i, i32 0, i32 4
  %140 = ptrtoint ptr %eqpc_base.i.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %eqpc_base.i.i.i, align 8
  %eqpc_entry_sz.i.i.i = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim.i.i, i32 0, i32 45
  %142 = ptrtoint ptr %eqpc_entry_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %eqpc_entry_sz.i.i.i, align 4
  %144 = ptrtoint ptr %num_qps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %num_qps.i.i.i, align 8
  %146 = ptrtoint ptr %reserved_qps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %reserved_qps.i.i.i, align 8
  %call99.i.i.i = call ptr @mthca_alloc_icm_table(ptr noundef nonnull %call67, i64 noundef %141, i32 noundef %143, i32 noundef %145, i32 noundef %147, i32 noundef 0, i32 noundef 0) #6
  %eqp_table.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 25, i32 7
  %148 = ptrtoint ptr %eqp_table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call99.i.i.i, ptr %eqp_table.i.i.i, align 8
  %tobool103.not.i.i.i = icmp eq ptr %call99.i.i.i, null
  br i1 %tobool103.not.i.i.i, label %do.end107.i.i.i, label %if.end110.i.i.i

do.end107.i.i.i:                                  ; preds = %if.end94.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdev76, align 8
  %dev109.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev109.i.i.i, ptr noundef nonnull @.str.117) #9
  br label %err_unmap_qp.i.i.i

if.end110.i.i.i:                                  ; preds = %if.end94.i.i.i
  %rdb_base.i.i.i = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca.i.i, i32 0, i32 7
  %151 = ptrtoint ptr %rdb_base.i.i.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %rdb_base.i.i.i, align 8
  %153 = ptrtoint ptr %num_qps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_qps.i.i.i, align 8
  %rdb_shift.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 25, i32 2
  %155 = ptrtoint ptr %rdb_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rdb_shift.i.i.i, align 4
  %shl114.i.i.i = shl i32 %154, %156
  %call115.i.i.i = call ptr @mthca_alloc_icm_table(ptr noundef nonnull %call67, i64 noundef %152, i32 noundef 32, i32 noundef %shl114.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %rdb_table.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 25, i32 8
  %157 = ptrtoint ptr %rdb_table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call115.i.i.i, ptr %rdb_table.i.i.i, align 4
  %tobool119.not.i.i.i = icmp eq ptr %call115.i.i.i, null
  br i1 %tobool119.not.i.i.i, label %do.end123.i.i.i, label %if.end126.i.i.i

do.end123.i.i.i:                                  ; preds = %if.end110.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %158 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdev76, align 8
  %dev125.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev125.i.i.i, ptr noundef nonnull @.str.120) #9
  br label %err_unmap_eqp.i.i.i

if.end126.i.i.i:                                  ; preds = %if.end110.i.i.i
  %cqc_base.i.i.i = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca.i.i, i32 0, i32 3
  %160 = ptrtoint ptr %cqc_base.i.i.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %cqc_base.i.i.i, align 8
  %cqc_entry_sz.i.i.i = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim.i.i, i32 0, i32 47
  %162 = ptrtoint ptr %cqc_entry_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cqc_entry_sz.i.i.i, align 4
  %num_cqs.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 19
  %164 = ptrtoint ptr %num_cqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %num_cqs.i.i.i, align 4
  %reserved_cqs.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 21
  %166 = ptrtoint ptr %reserved_cqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %reserved_cqs.i.i.i, align 4
  %call129.i.i.i = call ptr @mthca_alloc_icm_table(ptr noundef nonnull %call67, i64 noundef %161, i32 noundef %163, i32 noundef %165, i32 noundef %167, i32 noundef 0, i32 noundef 0) #6
  %table.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 23, i32 3
  %168 = ptrtoint ptr %table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call129.i.i.i, ptr %table.i.i.i, align 8
  %tobool132.not.i.i.i = icmp eq ptr %call129.i.i.i, null
  br i1 %tobool132.not.i.i.i, label %do.end136.i.i.i, label %if.end139.i.i.i

do.end136.i.i.i:                                  ; preds = %if.end126.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %169 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pdev76, align 8
  %dev138.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev138.i.i.i, ptr noundef nonnull @.str.123) #9
  br label %err_unmap_rdb.i.i.i

if.end139.i.i.i:                                  ; preds = %if.end126.i.i.i
  %171 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mthca_flags, align 8
  %and140.i.i.i = and i32 %172, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i.i.i)
  %tobool141.not.i.i.i = icmp eq i32 %and140.i.i.i, 0
  br i1 %tobool141.not.i.i.i, label %if.end139.i.i.i.if.end157.i.i.i_crit_edge, label %if.then142.i.i.i

if.end139.i.i.i.if.end157.i.i.i_crit_edge:        ; preds = %if.end139.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157.i.i.i

if.then142.i.i.i:                                 ; preds = %if.end139.i.i.i
  %srqc_base.i.i.i = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca.i.i, i32 0, i32 2
  %173 = ptrtoint ptr %srqc_base.i.i.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %srqc_base.i.i.i, align 8
  %srq_entry_sz.i.i.i = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim.i.i, i32 0, i32 48
  %175 = ptrtoint ptr %srq_entry_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %srq_entry_sz.i.i.i, align 8
  %num_srqs.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 13
  %177 = ptrtoint ptr %num_srqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %num_srqs.i.i.i, align 4
  %reserved_srqs.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 16
  %179 = ptrtoint ptr %reserved_srqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %reserved_srqs.i.i.i, align 8
  %call145.i.i.i = call ptr @mthca_alloc_icm_table(ptr noundef nonnull %call67, i64 noundef %174, i32 noundef %176, i32 noundef %178, i32 noundef %180, i32 noundef 0, i32 noundef 0) #6
  %table146.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 24, i32 3
  %181 = ptrtoint ptr %table146.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call145.i.i.i, ptr %table146.i.i.i, align 4
  %tobool149.not.i.i.i = icmp eq ptr %call145.i.i.i, null
  br i1 %tobool149.not.i.i.i, label %do.end153.i.i.i, label %if.then142.i.i.i.if.end157.i.i.i_crit_edge

if.then142.i.i.i.if.end157.i.i.i_crit_edge:       ; preds = %if.then142.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157.i.i.i

do.end153.i.i.i:                                  ; preds = %if.then142.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %182 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev76, align 8
  %dev155.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev155.i.i.i, ptr noundef nonnull @.str.126) #9
  br label %err_unmap_cq.i.i.i

if.end157.i.i.i:                                  ; preds = %if.then142.i.i.i.if.end157.i.i.i_crit_edge, %if.end139.i.i.i.if.end157.i.i.i_crit_edge
  %mc_base.i.i.i = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca.i.i, i32 0, i32 8
  %184 = ptrtoint ptr %mc_base.i.i.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %mc_base.i.i.i, align 8
  %num_mgms.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 31
  %186 = ptrtoint ptr %num_mgms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %num_mgms.i.i.i, align 4
  %num_amgms.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 18, i32 32
  %188 = ptrtoint ptr %num_amgms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %num_amgms.i.i.i, align 8
  %add160.i.i.i = add i32 %189, %187
  %call166.i.i.i = call ptr @mthca_alloc_icm_table(ptr noundef nonnull %call67, i64 noundef %185, i32 noundef 256, i32 noundef %add160.i.i.i, i32 noundef %add160.i.i.i, i32 noundef 0, i32 noundef 0) #6
  %table167.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 27, i32 2
  %190 = ptrtoint ptr %table167.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call166.i.i.i, ptr %table167.i.i.i, align 4
  %tobool170.not.i.i.i = icmp eq ptr %call166.i.i.i, null
  br i1 %tobool170.not.i.i.i, label %do.end174.i.i.i, label %if.end52.i.i

do.end174.i.i.i:                                  ; preds = %if.end157.i.i.i
  %191 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pdev76, align 8
  %dev176.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %192, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev176.i.i.i, ptr noundef nonnull @.str.129) #9
  %193 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %mthca_flags, align 8
  %and179.i.i.i = and i32 %194, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i.i.i)
  %tobool180.not.i.i.i = icmp eq i32 %and179.i.i.i, 0
  br i1 %tobool180.not.i.i.i, label %do.end174.i.i.i.err_unmap_cq.i.i.i_crit_edge, label %if.then181.i.i.i

do.end174.i.i.i.err_unmap_cq.i.i.i_crit_edge:     ; preds = %do.end174.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap_cq.i.i.i

if.then181.i.i.i:                                 ; preds = %do.end174.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %table183.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 24, i32 3
  %195 = ptrtoint ptr %table183.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %table183.i.i.i, align 4
  call void @mthca_free_icm_table(ptr noundef nonnull %call67, ptr noundef %196) #6
  br label %err_unmap_cq.i.i.i

err_unmap_cq.i.i.i:                               ; preds = %if.then181.i.i.i, %do.end174.i.i.i.err_unmap_cq.i.i.i_crit_edge, %do.end153.i.i.i
  %197 = ptrtoint ptr %table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %table.i.i.i, align 8
  call void @mthca_free_icm_table(ptr noundef nonnull %call67, ptr noundef %198) #6
  br label %err_unmap_rdb.i.i.i

err_unmap_rdb.i.i.i:                              ; preds = %err_unmap_cq.i.i.i, %do.end136.i.i.i
  %199 = ptrtoint ptr %rdb_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rdb_table.i.i.i, align 4
  call void @mthca_free_icm_table(ptr noundef nonnull %call67, ptr noundef %200) #6
  br label %err_unmap_eqp.i.i.i

err_unmap_eqp.i.i.i:                              ; preds = %err_unmap_rdb.i.i.i, %do.end123.i.i.i
  %201 = ptrtoint ptr %eqp_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %eqp_table.i.i.i, align 8
  call void @mthca_free_icm_table(ptr noundef nonnull %call67, ptr noundef %202) #6
  br label %err_unmap_qp.i.i.i

err_unmap_qp.i.i.i:                               ; preds = %err_unmap_eqp.i.i.i, %do.end107.i.i.i
  %203 = ptrtoint ptr %qp_table84.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %qp_table84.i.i.i, align 4
  call void @mthca_free_icm_table(ptr noundef nonnull %call67, ptr noundef %204) #6
  br label %err_unmap_mpt.i.i.i

err_unmap_mpt.i.i.i:                              ; preds = %err_unmap_qp.i.i.i, %do.end91.i.i.i
  %205 = ptrtoint ptr %mpt_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mpt_table.i.i.i, align 4
  call void @mthca_free_icm_table(ptr noundef nonnull %call67, ptr noundef %206) #6
  br label %err_unmap_mtt.i.i.i

err_unmap_mtt.i.i.i:                              ; preds = %err_unmap_mpt.i.i.i, %do.end77.i.i.i
  %207 = ptrtoint ptr %mtt_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mtt_table.i.i.i, align 8
  call void @mthca_free_icm_table(ptr noundef nonnull %call67, ptr noundef %208) #6
  br label %err_unmap_eq.i.i.i

err_unmap_eq.i.i.i:                               ; preds = %err_unmap_mtt.i.i.i, %do.end63.i.i.i
  call void @mthca_unmap_eq_icm(ptr noundef nonnull %call67) #6
  br label %err_unmap_aux.i.i.i

err_unmap_aux.i.i.i:                              ; preds = %err_unmap_eq.i.i.i, %do.end39.i.i.i
  %err.7.i.i.i = phi i32 [ %call34.i.i.i, %do.end39.i.i.i ], [ -12, %err_unmap_eq.i.i.i ]
  %call197.i.i.i = call i32 @mthca_UNMAP_ICM_AUX(ptr noundef nonnull %call67) #6
  br label %err_free_aux.i.i.i

err_free_aux.i.i.i:                               ; preds = %err_unmap_aux.i.i.i, %do.end30.i.i.i
  %err.8.i.i.i = phi i32 [ %call25.i.i.i, %do.end30.i.i.i ], [ %err.7.i.i.i, %err_unmap_aux.i.i.i ]
  %209 = ptrtoint ptr %aux_icm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %aux_icm.i.i.i, align 4
  call void @mthca_free_icm(ptr noundef nonnull %call67, ptr noundef %210, i32 noundef 0) #6
  br label %mthca_init_icm.exit.thread.i.i

mthca_init_icm.exit.thread.i.i:                   ; preds = %err_free_aux.i.i.i, %do.end19.i.i.i, %do.end.i114.i.i
  %retval.0.i117.ph.i.i = phi i32 [ -12, %do.end19.i.i.i ], [ %err.8.i.i.i, %err_free_aux.i.i.i ], [ %call.i110.i.i, %do.end.i114.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aux_pages.i.i.i) #6
  br label %err_stop_fw.i.i

if.end52.i.i:                                     ; preds = %if.end157.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aux_pages.i.i.i) #6
  %call53.i.i = call i32 @mthca_INIT_HCA(ptr noundef nonnull %call67, ptr noundef nonnull %init_hca.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.end52.i.i.mthca_init_arbel.exit.i_crit_edge, label %do.end58.i.i

if.end52.i.i.mthca_init_arbel.exit.i_crit_edge:   ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mthca_init_arbel.exit.i

do.end58.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %211 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pdev76, align 8
  %dev60.i.i = getelementptr inbounds %struct.pci_dev, ptr %212, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60.i.i, ptr noundef nonnull @.str.72, i32 noundef %call53.i.i) #9
  call fastcc void @mthca_free_icms(ptr noundef nonnull %call67) #6
  br label %err_stop_fw.i.i

err_stop_fw.i.i:                                  ; preds = %do.end58.i.i, %mthca_init_icm.exit.thread.i.i, %if.then47.i.i, %do.end37.i.i
  %err.0.i.i = phi i32 [ %call32.i.i, %do.end37.i.i ], [ %conv.i.i, %if.then47.i.i ], [ %call53.i.i, %do.end58.i.i ], [ %retval.0.i117.ph.i.i, %mthca_init_icm.exit.thread.i.i ]
  %call62.i.i = call i32 @mthca_UNMAP_FA(ptr noundef nonnull %call67) #6
  %213 = ptrtoint ptr %fw_icm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %fw_icm.i.i.i, align 8
  call void @mthca_free_icm(ptr noundef nonnull %call67, ptr noundef %214, i32 noundef 0) #6
  br label %err_disable.i.i

err_disable.i.i:                                  ; preds = %err_stop_fw.i.i, %do.end28.i.i
  %err.1.i.i = phi i32 [ %retval.0.i.ph.i.i, %do.end28.i.i ], [ %err.0.i.i, %err_stop_fw.i.i ]
  %215 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %mthca_flags, align 8
  %and64.i.i = and i32 %216, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i.i)
  %tobool65.not.i.i = icmp eq i32 %and64.i.i, 0
  br i1 %tobool65.not.i.i, label %if.then66.i.i, label %err_disable.i.i.mthca_init_arbel.exit.i_crit_edge

err_disable.i.i.mthca_init_arbel.exit.i_crit_edge: ; preds = %err_disable.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mthca_init_arbel.exit.i

if.then66.i.i:                                    ; preds = %err_disable.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call67.i.i = call i32 @mthca_DISABLE_LAM(ptr noundef nonnull %call67) #6
  br label %mthca_init_arbel.exit.i

mthca_init_arbel.exit.i:                          ; preds = %if.then66.i.i, %err_disable.i.i.mthca_init_arbel.exit.i_crit_edge, %if.end52.i.i.mthca_init_arbel.exit.i_crit_edge, %do.end18.i.i, %do.end.i.i
  %retval.0.i.i284 = phi i32 [ %call.i.i, %do.end.i.i ], [ %call1.i.i, %do.end18.i.i ], [ 0, %if.end52.i.i.mthca_init_arbel.exit.i_crit_edge ], [ %err.1.i.i, %if.then66.i.i ], [ %err.1.i.i, %err_disable.i.i.mthca_init_arbel.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %init_hca.i.i) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %profile.i.i) #6
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %dev_lim.i.i) #6
  br label %if.end.i286

if.else.i285:                                     ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %dev_lim.i33.i) #6
  %217 = call ptr @memset(ptr %dev_lim.i33.i, i32 255, i32 240)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %profile.i34.i) #6
  %218 = call ptr @memset(ptr %profile.i34.i, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %init_hca.i35.i) #6
  %219 = call ptr @memset(ptr %init_hca.i35.i, i32 255, i32 120)
  %call.i36.i = tail call i32 @mthca_SYS_EN(ptr noundef nonnull %call67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool.not.i37.i, label %if.end.i42.i, label %do.end.i40.i

do.end.i40.i:                                     ; preds = %if.else.i285
  call void @__sanitizer_cov_trace_pc() #8
  %220 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %pdev76, align 8
  %dev.i39.i = getelementptr inbounds %struct.pci_dev, ptr %221, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i39.i, ptr noundef nonnull @.str.131, i32 noundef %call.i36.i) #9
  br label %mthca_init_tavor.exit.i

if.end.i42.i:                                     ; preds = %if.else.i285
  %call1.i41.i = tail call i32 @mthca_QUERY_FW(ptr noundef nonnull %call67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i41.i, 0
  br i1 %tobool2.not.i.i, label %if.end9.i.i, label %do.end6.i.i

do.end6.i.i:                                      ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  %222 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %pdev76, align 8
  %dev8.i.i = getelementptr inbounds %struct.pci_dev, ptr %223, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.134, i32 noundef %call1.i41.i) #9
  br label %err_disable.i51.i

if.end9.i.i:                                      ; preds = %if.end.i42.i
  %call10.i.i = tail call i32 @mthca_QUERY_DDR(ptr noundef nonnull %call67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end18.i.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %224 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pdev76, align 8
  %dev17.i.i = getelementptr inbounds %struct.pci_dev, ptr %225, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i.i, ptr noundef nonnull @.str.137, i32 noundef %call10.i.i) #9
  br label %err_disable.i51.i

if.end18.i.i:                                     ; preds = %if.end9.i.i
  %call19.i.i = call fastcc i32 @mthca_dev_lim(ptr noundef nonnull %call67, ptr noundef nonnull %dev_lim.i33.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end27.i.i, label %do.end24.i.i

do.end24.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %226 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pdev76, align 8
  %dev26.i.i = getelementptr inbounds %struct.pci_dev, ptr %227, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i.i, ptr noundef nonnull @.str.82, i32 noundef %call19.i.i) #9
  br label %err_disable.i51.i

if.end27.i.i:                                     ; preds = %if.end18.i.i
  %228 = call ptr @memcpy(ptr %profile.i34.i, ptr @hca_profile, i32 44)
  %uar_size.i43.i = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim.i33.i, i32 0, i32 31
  %229 = ptrtoint ptr %uar_size.i43.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %uar_size.i43.i, align 4
  %div72.i.i = lshr i32 %230, 12
  %num_uar.i44.i = getelementptr inbounds %struct.mthca_profile, ptr %profile.i34.i, i32 0, i32 8
  %231 = ptrtoint ptr %num_uar.i44.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %div72.i.i, ptr %num_uar.i44.i, align 4
  %uarc_size.i.i = getelementptr inbounds %struct.mthca_profile, ptr %profile.i34.i, i32 0, i32 9
  %232 = ptrtoint ptr %uarc_size.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %uarc_size.i.i, align 4
  %233 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %mthca_flags, align 8
  %and.i46.i = and i32 %234, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46.i)
  %tobool28.not.i.i = icmp eq i32 %and.i46.i, 0
  br i1 %tobool28.not.i.i, label %if.end27.i.i.if.end30.i.i_crit_edge, label %if.then29.i.i

if.end27.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i.i

if.then29.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max_srqs.i47.i = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim.i33.i, i32 0, i32 5
  %235 = ptrtoint ptr %max_srqs.i47.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %max_srqs.i47.i, align 4
  %num_srq.i48.i = getelementptr inbounds %struct.mthca_profile, ptr %profile.i34.i, i32 0, i32 2
  %237 = ptrtoint ptr %num_srq.i48.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %num_srq.i48.i, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then29.i.i, %if.end27.i.i.if.end30.i.i_crit_edge
  %call31.i.i = call i64 @mthca_make_profile(ptr noundef nonnull %call67, ptr noundef nonnull %profile.i34.i, ptr noundef nonnull %dev_lim.i33.i, ptr noundef nonnull %init_hca.i35.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call31.i.i)
  %cmp.i.i = icmp slt i64 %call31.i.i, 0
  br i1 %cmp.i.i, label %if.then32.i.i, label %if.end33.i.i

if.then32.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i49.i = trunc i64 %call31.i.i to i32
  br label %err_disable.i51.i

if.end33.i.i:                                     ; preds = %if.end30.i.i
  %call34.i.i = call i32 @mthca_INIT_HCA(ptr noundef nonnull %call67, ptr noundef nonnull %init_hca.i35.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end33.i.i.mthca_init_tavor.exit.i_crit_edge, label %do.end39.i.i

if.end33.i.i.mthca_init_tavor.exit.i_crit_edge:   ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mthca_init_tavor.exit.i

do.end39.i.i:                                     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %238 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %pdev76, align 8
  %dev41.i.i = getelementptr inbounds %struct.pci_dev, ptr %239, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41.i.i, ptr noundef nonnull @.str.72, i32 noundef %call34.i.i) #9
  br label %err_disable.i51.i

err_disable.i51.i:                                ; preds = %do.end39.i.i, %if.then32.i.i, %do.end24.i.i, %do.end15.i.i, %do.end6.i.i
  %err.0.i50.i = phi i32 [ %call1.i41.i, %do.end6.i.i ], [ %call10.i.i, %do.end15.i.i ], [ %call19.i.i, %do.end24.i.i ], [ %conv.i49.i, %if.then32.i.i ], [ %call34.i.i, %do.end39.i.i ]
  %call43.i.i = call i32 @mthca_SYS_DIS(ptr noundef nonnull %call67) #6
  br label %mthca_init_tavor.exit.i

mthca_init_tavor.exit.i:                          ; preds = %err_disable.i51.i, %if.end33.i.i.mthca_init_tavor.exit.i_crit_edge, %do.end.i40.i
  %retval.0.i52.i = phi i32 [ %call.i36.i, %do.end.i40.i ], [ %err.0.i50.i, %err_disable.i51.i ], [ 0, %if.end33.i.i.mthca_init_tavor.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %init_hca.i35.i) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %profile.i34.i) #6
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %dev_lim.i33.i) #6
  br label %if.end.i286

if.end.i286:                                      ; preds = %mthca_init_tavor.exit.i, %mthca_init_arbel.exit.i
  %err.0.i = phi i32 [ %retval.0.i.i284, %mthca_init_arbel.exit.i ], [ %retval.0.i52.i, %mthca_init_tavor.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool3.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i286.mthca_init_hca.exit.thread_crit_edge

if.end.i286.mthca_init_hca.exit.thread_crit_edge: ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #8
  br label %mthca_init_hca.exit.thread

if.end5.i:                                        ; preds = %if.end.i286
  %call6.i287 = call i32 @mthca_QUERY_ADAPTER(ptr noundef nonnull %call67, ptr noundef nonnull %adapter.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i287)
  %tobool7.not.i288 = icmp eq i32 %call6.i287, 0
  br i1 %tobool7.not.i288, label %if.end9.i, label %do.end.i291

do.end.i291:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %240 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %pdev76, align 8
  %dev.i290 = getelementptr inbounds %struct.pci_dev, ptr %241, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i290, ptr noundef nonnull @.str.54, i32 noundef %call6.i287) #9
  call fastcc void @mthca_close_hca(ptr noundef nonnull %call67) #6
  br label %mthca_init_hca.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %inta_pin.i = getelementptr inbounds %struct.mthca_adapter, ptr %adapter.i, i32 0, i32 4
  %242 = ptrtoint ptr %inta_pin.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %inta_pin.i, align 4
  %inta_pin10.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 22, i32 9
  %244 = ptrtoint ptr %inta_pin10.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %243, ptr %inta_pin10.i, align 4
  %245 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %mthca_flags, align 8
  %and.i54.i = and i32 %246, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %tobool12.not.i = icmp eq i32 %and.i54.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end9.i.if.end108_crit_edge

if.end9.i.if.end108_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %revision_id.i = getelementptr inbounds %struct.mthca_adapter, ptr %adapter.i, i32 0, i32 2
  %247 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %revision_id.i, align 4
  %rev_id.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 5
  %249 = ptrtoint ptr %rev_id.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %rev_id.i, align 8
  br label %if.end108

mthca_init_hca.exit.thread:                       ; preds = %do.end.i291, %if.end.i286.mthca_init_hca.exit.thread_crit_edge
  %retval.0.i292.ph = phi i32 [ %err.0.i, %if.end.i286.mthca_init_hca.exit.thread_crit_edge ], [ %call6.i287, %do.end.i291 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %adapter.i) #6
  br label %err_cmd

if.end108:                                        ; preds = %if.then13.i, %if.end9.i.if.end108_crit_edge
  %board_id.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 6
  %board_id15.i = getelementptr inbounds %struct.mthca_adapter, ptr %adapter.i, i32 0, i32 3
  %250 = call ptr @memcpy(ptr %board_id.i, ptr %board_id15.i, i32 64)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %adapter.i) #6
  %fw_ver = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 7
  %251 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %fw_ver, align 8
  %253 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %arrayidx77, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %252, i64 %254)
  %cmp110 = icmp ult i64 %252, %254
  br i1 %cmp110, label %do.end114, label %if.end108.if.end143_crit_edge

if.end108.if.end143_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  %255 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %pdev76, align 8
  %dev116 = getelementptr inbounds %struct.pci_dev, ptr %256, i32 0, i32 44
  %shr = lshr i64 %252, 32
  %conv = trunc i64 %shr to i32
  %257 = trunc i64 %252 to i32
  %258 = lshr i32 %257, 16
  %conv124 = and i32 %257, 65535
  %shr127 = lshr i64 %254, 32
  %conv128 = trunc i64 %shr127 to i32
  %259 = trunc i64 %254 to i32
  %260 = lshr i32 %259, 16
  %conv137 = and i32 %259, 65535
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev116, ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %258, i32 noundef %conv124, i32 noundef %conv128, i32 noundef %260, i32 noundef %conv137) #9
  %261 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pdev76, align 8
  %dev142 = getelementptr inbounds %struct.pci_dev, ptr %262, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev142, ptr noundef nonnull @.str.40) #9
  br label %if.end143

if.end143:                                        ; preds = %do.end114, %if.end108.if.end143_crit_edge
  %263 = load i32, ptr @msi_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool144.not = icmp eq i32 %263, 0
  br i1 %tobool144.not, label %if.end143.if.end150_crit_edge, label %land.lhs.true

if.end143.if.end150_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

land.lhs.true:                                    ; preds = %if.end143
  %264 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %pdev76, align 8
  %call.i.i294 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %265, i32 noundef 3, i32 noundef 3, i32 noundef 4, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i294)
  %cmp.i295 = icmp slt i32 %call.i.i294, 0
  br i1 %cmp.i295, label %land.lhs.true.if.end150_crit_edge, label %if.then147

land.lhs.true.if.end150_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then147:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %266 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %pdev76, align 8
  %call2.i = call i32 @pci_irq_vector(ptr noundef %267, i32 noundef 0) #6
  %conv.i = trunc i32 %call2.i to i16
  %msi_x_vector.i = getelementptr %struct.mthca_dev, ptr %call67, i32 0, i32 22, i32 4, i32 2, i32 4
  %268 = ptrtoint ptr %msi_x_vector.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %conv.i, ptr %msi_x_vector.i, align 8
  %269 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %pdev76, align 8
  %call4.i = call i32 @pci_irq_vector(ptr noundef %270, i32 noundef 1) #6
  %conv5.i = trunc i32 %call4.i to i16
  %msi_x_vector9.i = getelementptr %struct.mthca_dev, ptr %call67, i32 0, i32 22, i32 4, i32 1, i32 4
  %271 = ptrtoint ptr %msi_x_vector9.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %conv5.i, ptr %msi_x_vector9.i, align 8
  %272 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %pdev76, align 8
  %call11.i = call i32 @pci_irq_vector(ptr noundef %273, i32 noundef 2) #6
  %conv12.i = trunc i32 %call11.i to i16
  %msi_x_vector16.i = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 22, i32 4, i32 0, i32 4
  %274 = ptrtoint ptr %msi_x_vector16.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %conv12.i, ptr %msi_x_vector16.i, align 8
  %275 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %mthca_flags, align 8
  %or149 = or i32 %276, 8
  store i32 %or149, ptr %mthca_flags, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %land.lhs.true.if.end150_crit_edge, %if.end143.if.end150_crit_edge
  %call151 = call fastcc i32 @mthca_setup_hca(ptr noundef nonnull %call67)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call151)
  %cmp152 = icmp eq i32 %call151, -16
  br i1 %cmp152, label %land.lhs.true154, label %if.end150.if.end162_crit_edge

if.end150.if.end162_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

land.lhs.true154:                                 ; preds = %if.end150
  %277 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %mthca_flags, align 8
  %and156 = and i32 %278, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %land.lhs.true154.err_close_crit_edge, label %if.then158

land.lhs.true154.err_close_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.then158:                                       ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #8
  call void @pci_free_irq_vectors(ptr noundef %pdev) #6
  %279 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %mthca_flags, align 8
  %and160 = and i32 %280, -9
  store i32 %and160, ptr %mthca_flags, align 8
  %call161 = call fastcc i32 @mthca_setup_hca(ptr noundef nonnull %call67)
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %if.end150.if.end162_crit_edge
  %err.0 = phi i32 [ %call161, %if.then158 ], [ %call151, %if.end150.if.end162_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool163.not = icmp eq i32 %err.0, 0
  br i1 %tobool163.not, label %if.end165, label %if.end162.err_close_crit_edge

if.end162.err_close_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.end165:                                        ; preds = %if.end162
  %call166 = call i32 @mthca_register_device(ptr noundef nonnull %call67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end169, label %if.end165.err_cleanup_crit_edge

if.end165.err_cleanup_crit_edge:                  ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup

if.end169:                                        ; preds = %if.end165
  %call170 = call i32 @mthca_create_agents(ptr noundef nonnull %call67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end173, label %err_unregister

if.end173:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %281 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call67, ptr %driver_data.i.i, align 4
  %hca_type174 = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 2
  %282 = ptrtoint ptr %hca_type174 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %hca_type, ptr %hca_type174, align 4
  %active = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 37
  %283 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 1, ptr %active, align 2
  br label %cleanup

err_unregister:                                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  call void @mthca_unregister_device(ptr noundef nonnull %call67) #6
  br label %err_cleanup

err_cleanup:                                      ; preds = %err_unregister, %if.end165.err_cleanup_crit_edge
  %err.1 = phi i32 [ %call166, %if.end165.err_cleanup_crit_edge ], [ %call170, %err_unregister ]
  call void @mthca_cleanup_mcg_table(ptr noundef nonnull %call67) #6
  call void @mthca_cleanup_av_table(ptr noundef nonnull %call67) #6
  call void @mthca_cleanup_qp_table(ptr noundef nonnull %call67) #6
  call void @mthca_cleanup_srq_table(ptr noundef nonnull %call67) #6
  call void @mthca_cleanup_cq_table(ptr noundef nonnull %call67) #6
  call void @mthca_cmd_use_polling(ptr noundef nonnull %call67) #6
  call void @mthca_cleanup_eq_table(ptr noundef nonnull %call67) #6
  %driver_pd = getelementptr inbounds %struct.mthca_dev, ptr %call67, i32 0, i32 31
  call void @mthca_pd_free(ptr noundef nonnull %call67, ptr noundef %driver_pd) #6
  call void @mthca_cleanup_mr_table(ptr noundef nonnull %call67) #6
  call void @mthca_cleanup_pd_table(ptr noundef nonnull %call67) #6
  call void @mthca_cleanup_uar_table(ptr noundef nonnull %call67) #6
  br label %err_close

err_close:                                        ; preds = %err_cleanup, %if.end162.err_close_crit_edge, %land.lhs.true154.err_close_crit_edge
  %err.2 = phi i32 [ %err.0, %if.end162.err_close_crit_edge ], [ %err.1, %err_cleanup ], [ -16, %land.lhs.true154.err_close_crit_edge ]
  %284 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %mthca_flags, align 8
  %and176 = and i32 %285, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %err_close.if.end179_crit_edge, label %if.then178

err_close.if.end179_crit_edge:                    ; preds = %err_close
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179

if.then178:                                       ; preds = %err_close
  call void @__sanitizer_cov_trace_pc() #8
  call void @pci_free_irq_vectors(ptr noundef %pdev) #6
  br label %if.end179

if.end179:                                        ; preds = %if.then178, %err_close.if.end179_crit_edge
  call fastcc void @mthca_close_hca(ptr noundef nonnull %call67)
  br label %err_cmd

err_cmd:                                          ; preds = %if.end179, %mthca_init_hca.exit.thread, %do.end27.i, %do.end.i
  %err.3 = phi i32 [ %err.2, %if.end179 ], [ -19, %do.end.i ], [ -19, %do.end27.i ], [ %retval.0.i292.ph, %mthca_init_hca.exit.thread ]
  call void @mthca_cmd_cleanup(ptr noundef nonnull %call67) #6
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_cmd, %do.end97, %do.end88
  %err.4 = phi i32 [ %call83, %do.end88 ], [ %call92, %do.end97 ], [ %err.3, %err_cmd ]
  call void @ib_dealloc_device(ptr noundef nonnull %call67) #6
  br label %err_free_res

err_free_res:                                     ; preds = %err_free_dev, %do.end73, %do.end61
  %err.5 = phi i32 [ %call.i271, %do.end61 ], [ %err.4, %err_free_dev ], [ -12, %do.end73 ]
  call void @pci_release_regions(ptr noundef %pdev) #6
  br label %err_disable_pdev

err_disable_pdev:                                 ; preds = %err_free_res, %do.end44, %do.end29, %do.end18
  %err.6 = phi i32 [ -19, %do.end18 ], [ %call39, %do.end44 ], [ %err.5, %err_free_res ], [ -19, %do.end29 ]
  call void @pci_disable_device(ptr noundef %pdev) #6
  %driver_data.i.i298 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %286 = ptrtoint ptr %driver_data.i.i298 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr null, ptr %driver_data.i.i298, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pdev, %if.end173, %do.end5
  %retval.0 = phi i32 [ %call2, %do.end5 ], [ %err.6, %err_disable_pdev ], [ 0, %if.end173 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mthca_cleanup() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @mthca_driver) #6
  tail call void @mthca_catas_cleanup() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_catas_cleanup() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mthca_validate_profile() #10
  %call = tail call i32 @mthca_catas_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @mthca_driver, ptr noundef null, ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mthca_catas_cleanup() #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_agents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_CLOSE_IB(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cleanup_mcg_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cleanup_av_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cleanup_qp_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cleanup_srq_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cleanup_cq_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cmd_use_polling(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cleanup_eq_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_pd_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cleanup_mr_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cleanup_pd_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_uar_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cleanup_uar_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mthca_close_hca(ptr noundef %mdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mthca_CLOSE_HCA(ptr noundef %mdev, i32 noundef 0) #6
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @mthca_free_icms(ptr noundef %mdev)
  %call2 = tail call i32 @mthca_UNMAP_FA(ptr noundef %mdev) #6
  %fw_icm = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 3
  %2 = ptrtoint ptr %fw_icm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_icm, align 8
  tail call void @mthca_free_icm(ptr noundef %mdev, ptr noundef %3, i32 noundef 0) #6
  %4 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mthca_flags.i, align 8
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @mthca_DISABLE_LAM(ptr noundef %mdev) #6
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @mthca_SYS_DIS(ptr noundef %mdev) #6
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4, %if.then.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cmd_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dealloc_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_CLOSE_HCA(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mthca_free_icms(ptr noundef %mdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 27, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  tail call void @mthca_free_icm_table(ptr noundef %mdev, ptr noundef %1) #6
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 3
  %2 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mthca_flags, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %table1 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 24, i32 3
  %4 = ptrtoint ptr %table1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table1, align 4
  tail call void @mthca_free_icm_table(ptr noundef %mdev, ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %table2 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 23, i32 3
  %6 = ptrtoint ptr %table2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %table2, align 8
  tail call void @mthca_free_icm_table(ptr noundef %mdev, ptr noundef %7) #6
  %rdb_table = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 25, i32 8
  %8 = ptrtoint ptr %rdb_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdb_table, align 4
  tail call void @mthca_free_icm_table(ptr noundef %mdev, ptr noundef %9) #6
  %eqp_table = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 25, i32 7
  %10 = ptrtoint ptr %eqp_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eqp_table, align 8
  tail call void @mthca_free_icm_table(ptr noundef %mdev, ptr noundef %11) #6
  %qp_table5 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 25, i32 6
  %12 = ptrtoint ptr %qp_table5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp_table5, align 4
  tail call void @mthca_free_icm_table(ptr noundef %mdev, ptr noundef %13) #6
  %mpt_table = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 21, i32 6
  %14 = ptrtoint ptr %mpt_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mpt_table, align 4
  tail call void @mthca_free_icm_table(ptr noundef %mdev, ptr noundef %15) #6
  %mtt_table = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 21, i32 5
  %16 = ptrtoint ptr %mtt_table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mtt_table, align 8
  tail call void @mthca_free_icm_table(ptr noundef %mdev, ptr noundef %17) #6
  tail call void @mthca_unmap_eq_icm(ptr noundef %mdev) #6
  %call = tail call i32 @mthca_UNMAP_ICM_AUX(ptr noundef %mdev) #6
  %aux_icm = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 4
  %18 = ptrtoint ptr %aux_icm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aux_icm, align 4
  tail call void @mthca_free_icm(ptr noundef %mdev, ptr noundef %19, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_UNMAP_FA(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_icm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_DISABLE_LAM(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_SYS_DIS(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_icm_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_unmap_eq_icm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_UNMAP_ICM_AUX(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_ib_alloc_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_cmd_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_setup_hca(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %doorbell_lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %doorbell_lock, ptr noundef nonnull @.str.143, ptr noundef nonnull @mthca_setup_hca.__key, i16 noundef signext 3) #6
  %call1 = tail call i32 @mthca_init_uar_table(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.144) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_uar = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 29
  %call6 = tail call i32 @mthca_uar_alloc(ptr noundef %dev, ptr noundef %driver_uar) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev12 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev12, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.147) #9
  br label %err_uar_table_free

if.end14:                                         ; preds = %if.end
  %4 = ptrtoint ptr %driver_uar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_uar, align 8
  %shl = shl i32 %5, 12
  %call16 = tail call ptr @ioremap(i32 noundef %shl, i32 noundef 4096) #6
  %kar = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %kar to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call16, ptr %kar, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %pdev23 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev23, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.150) #9
  br label %err_uar_free

if.end25:                                         ; preds = %if.end14
  %call26 = tail call i32 @mthca_init_pd_table(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %pdev32 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev32, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.153) #9
  br label %err_kar_unmap

if.end34:                                         ; preds = %if.end25
  %call35 = tail call i32 @mthca_init_mr_table(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %pdev41 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %pdev41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev41, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.156) #9
  br label %err_pd_table_free

if.end43:                                         ; preds = %if.end34
  %driver_pd = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 31
  %call44 = tail call i32 @mthca_pd_alloc(ptr noundef %dev, i32 noundef 1, ptr noundef %driver_pd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %pdev50 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev50, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.159) #9
  br label %err_mr_table_free

if.end52:                                         ; preds = %if.end43
  %call53 = tail call i32 @mthca_init_eq_table(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end61, label %do.end58

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %pdev59 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev59, align 8
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.162) #9
  br label %err_pd_free

if.end61:                                         ; preds = %if.end52
  %call62 = tail call i32 @mthca_cmd_use_events(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end70, label %do.end67

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %pdev68 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %17 = ptrtoint ptr %pdev68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev68, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69, ptr noundef nonnull @.str.165) #9
  br label %err_eq_table_free

if.end70:                                         ; preds = %if.end61
  %call71 = tail call i32 @mthca_NOP(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body99, label %if.then73

if.then73:                                        ; preds = %if.end70
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %19 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mthca_flags, align 8
  %and = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool74.not = icmp eq i32 %and, 0
  %pdev89 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %21 = ptrtoint ptr %pdev89 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev89, align 8
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  br i1 %tobool74.not, label %do.end88, label %do.end78

do.end78:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %msi_x_vector = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 0, i32 4
  %23 = ptrtoint ptr %msi_x_vector to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %msi_x_vector, align 8
  %conv = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev90, ptr noundef nonnull @.str.168, i32 noundef %conv) #9
  %25 = ptrtoint ptr %pdev89 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev89, align 8
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev85, ptr noundef nonnull @.str.171) #9
  br label %err_cmd_poll

do.end88:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 46
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev90, ptr noundef nonnull @.str.174, i32 noundef %28) #9
  %29 = ptrtoint ptr %pdev89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev89, align 8
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96, ptr noundef nonnull @.str.177) #9
  br label %err_cmd_poll

do.body99:                                        ; preds = %if.end70
  %31 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool100.not = icmp eq i32 %31, 0
  br i1 %tobool100.not, label %do.body99.do.end109_crit_edge, label %do.end104

do.body99.do.end109_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end109

do.end104:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  %pdev105 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %32 = ptrtoint ptr %pdev105 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev105, align 8
  %dev106 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.60, ptr noundef %dev106, ptr noundef nonnull @.str.180) #9
  br label %do.end109

do.end109:                                        ; preds = %do.end104, %do.body99.do.end109_crit_edge
  %call110 = tail call i32 @mthca_init_cq_table(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end118, label %do.end115

do.end115:                                        ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #8
  %pdev116 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %34 = ptrtoint ptr %pdev116 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev116, align 8
  %dev117 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev117, ptr noundef nonnull @.str.183) #9
  br label %err_cmd_poll

if.end118:                                        ; preds = %do.end109
  %call119 = tail call i32 @mthca_init_srq_table(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end127, label %do.end124

do.end124:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %pdev125 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %36 = ptrtoint ptr %pdev125 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev125, align 8
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev126, ptr noundef nonnull @.str.186) #9
  br label %err_cq_table_free

if.end127:                                        ; preds = %if.end118
  %call128 = tail call i32 @mthca_init_qp_table(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end136, label %do.end133

do.end133:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  %pdev134 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %38 = ptrtoint ptr %pdev134 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev134, align 8
  %dev135 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev135, ptr noundef nonnull @.str.189) #9
  br label %err_srq_table_free

if.end136:                                        ; preds = %if.end127
  %call137 = tail call i32 @mthca_init_av_table(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end145, label %do.end142

do.end142:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  %pdev143 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %40 = ptrtoint ptr %pdev143 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev143, align 8
  %dev144 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev144, ptr noundef nonnull @.str.192) #9
  br label %err_qp_table_free

if.end145:                                        ; preds = %if.end136
  %call146 = tail call i32 @mthca_init_mcg_table(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end145.cleanup_crit_edge, label %do.end151

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end151:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  %pdev152 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %42 = ptrtoint ptr %pdev152 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev152, align 8
  %dev153 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev153, ptr noundef nonnull @.str.195) #9
  tail call void @mthca_cleanup_av_table(ptr noundef %dev) #6
  br label %err_qp_table_free

err_qp_table_free:                                ; preds = %do.end151, %do.end142
  %err.0 = phi i32 [ %call137, %do.end142 ], [ %call146, %do.end151 ]
  tail call void @mthca_cleanup_qp_table(ptr noundef %dev) #6
  br label %err_srq_table_free

err_srq_table_free:                               ; preds = %err_qp_table_free, %do.end133
  %err.1 = phi i32 [ %call128, %do.end133 ], [ %err.0, %err_qp_table_free ]
  tail call void @mthca_cleanup_srq_table(ptr noundef %dev) #6
  br label %err_cq_table_free

err_cq_table_free:                                ; preds = %err_srq_table_free, %do.end124
  %err.2 = phi i32 [ %call119, %do.end124 ], [ %err.1, %err_srq_table_free ]
  tail call void @mthca_cleanup_cq_table(ptr noundef %dev) #6
  br label %err_cmd_poll

err_cmd_poll:                                     ; preds = %err_cq_table_free, %do.end115, %do.end88, %do.end78
  %err.3 = phi i32 [ %call71, %do.end78 ], [ %call71, %do.end88 ], [ %call110, %do.end115 ], [ %err.2, %err_cq_table_free ]
  tail call void @mthca_cmd_use_polling(ptr noundef %dev) #6
  br label %err_eq_table_free

err_eq_table_free:                                ; preds = %err_cmd_poll, %do.end67
  %err.4 = phi i32 [ %call62, %do.end67 ], [ %err.3, %err_cmd_poll ]
  tail call void @mthca_cleanup_eq_table(ptr noundef %dev) #6
  br label %err_pd_free

err_pd_free:                                      ; preds = %err_eq_table_free, %do.end58
  %err.5 = phi i32 [ %call53, %do.end58 ], [ %err.4, %err_eq_table_free ]
  tail call void @mthca_pd_free(ptr noundef %dev, ptr noundef %driver_pd) #6
  br label %err_mr_table_free

err_mr_table_free:                                ; preds = %err_pd_free, %do.end49
  %err.6 = phi i32 [ %call44, %do.end49 ], [ %err.5, %err_pd_free ]
  tail call void @mthca_cleanup_mr_table(ptr noundef %dev) #6
  br label %err_pd_table_free

err_pd_table_free:                                ; preds = %err_mr_table_free, %do.end40
  %err.7 = phi i32 [ %call35, %do.end40 ], [ %err.6, %err_mr_table_free ]
  tail call void @mthca_cleanup_pd_table(ptr noundef %dev) #6
  br label %err_kar_unmap

err_kar_unmap:                                    ; preds = %err_pd_table_free, %do.end31
  %err.8 = phi i32 [ %call26, %do.end31 ], [ %err.7, %err_pd_table_free ]
  %44 = ptrtoint ptr %kar to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %kar, align 4
  tail call void @iounmap(ptr noundef %45) #6
  br label %err_uar_free

err_uar_free:                                     ; preds = %err_kar_unmap, %do.end22
  %err.9 = phi i32 [ %err.8, %err_kar_unmap ], [ -12, %do.end22 ]
  tail call void @mthca_uar_free(ptr noundef %dev, ptr noundef %driver_uar) #6
  br label %err_uar_table_free

err_uar_table_free:                               ; preds = %err_uar_free, %do.end11
  %err.10 = phi i32 [ %call6, %do.end11 ], [ %err.9, %err_uar_free ]
  tail call void @mthca_cleanup_uar_table(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %err_uar_table_free, %if.end145.cleanup_crit_edge, %do.end4
  %retval.0 = phi i32 [ %call1, %do.end4 ], [ %err.10, %err_uar_table_free ], [ 0, %if.end145.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_create_agents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcix_set_mmrbc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcix_get_max_mmrbc(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_QUERY_ADAPTER(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_QUERY_FW(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_ENABLE_LAM(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_dev_lim(ptr noundef %mdev, ptr noundef %dev_lim) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @log_mtts_per_seg, align 4
  %mul = shl i32 8, %0
  %limits = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18
  %mtt_seg_size = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 26
  %1 = ptrtoint ptr %mtt_seg_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mul, ptr %mtt_seg_size, align 8
  %call = tail call i32 @mthca_QUERY_DEV_LIM(ptr noundef %mdev, ptr noundef %dev_lim) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_page_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 32
  %4 = ptrtoint ptr %min_page_sz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_page_sz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp = icmp ugt i32 %5, 4096
  br i1 %cmp, label %do.end4, label %if.end8

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev5 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 1
  %6 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev5, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.85, i32 noundef %5, i32 noundef 4096) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %num_ports = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 25
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp9 = icmp sgt i32 %9, 2
  br i1 %cmp9, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %pdev14 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 1
  %10 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev14, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.88, i32 noundef %9, i32 noundef 2) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %uar_size = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 31
  %12 = ptrtoint ptr %uar_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uar_size, align 4
  %pdev18 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 1
  %14 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev18, align 8
  %end = getelementptr %struct.pci_dev, ptr %15, i32 0, i32 47, i32 2, i32 1
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp27.not = icmp eq i32 %13, 0
  br i1 %cmp27.not, label %cond.end.if.end54_crit_edge, label %cond.end.cond.end52_crit_edge

cond.end.cond.end52_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end52

cond.end.if.end54_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

cond.end.thread:                                  ; preds = %if.end17
  %arrayidx = getelementptr %struct.pci_dev, ptr %15, i32 0, i32 47, i32 2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %17, 1
  %add = sub i32 %sub, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp27282 = icmp ugt i32 %13, %add
  br i1 %cmp27282, label %cond.false41, label %cond.end.thread.if.end54_crit_edge

cond.end.thread.if.end54_crit_edge:               ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

cond.false41:                                     ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 8
  %add51 = sub i32 %sub, %21
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false41, %cond.end.cond.end52_crit_edge
  %cond53 = phi i32 [ %add51, %cond.false41 ], [ 0, %cond.end.cond.end52_crit_edge ]
  %dev33285 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %conv = zext i32 %cond53 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33285, ptr noundef nonnull @.str.91, i32 noundef %13, i64 noundef %conv) #9
  br label %cleanup

if.end54:                                         ; preds = %cond.end.thread.if.end54_crit_edge, %cond.end.if.end54_crit_edge
  %22 = ptrtoint ptr %limits to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %9, ptr %limits, align 8
  %max_vl = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 24
  %23 = ptrtoint ptr %max_vl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_vl, align 8
  %vl_cap = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %vl_cap to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %vl_cap, align 4
  %max_mtu = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 22
  %26 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_mtu, align 8
  %mtu_cap = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 2
  %28 = ptrtoint ptr %mtu_cap to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %mtu_cap, align 8
  %max_gids = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 26
  %29 = ptrtoint ptr %max_gids to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_gids, align 8
  %gid_table_len = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 3
  %31 = ptrtoint ptr %gid_table_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %gid_table_len, align 4
  %max_pkeys = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 28
  %32 = ptrtoint ptr %max_pkeys to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_pkeys, align 8
  %pkey_table_len = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 4
  %34 = ptrtoint ptr %pkey_table_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %pkey_table_len, align 8
  %local_ca_ack_delay = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 21
  %35 = ptrtoint ptr %local_ca_ack_delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %local_ca_ack_delay, align 4
  %local_ca_ack_delay63 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 5
  %37 = ptrtoint ptr %local_ca_ack_delay63 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %local_ca_ack_delay63, align 4
  %max_sg = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 33
  %38 = ptrtoint ptr %max_sg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_sg, align 4
  %max_desc_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 34
  %40 = ptrtoint ptr %max_desc_sz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_desc_sz, align 8
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 3
  %sub68 = add i32 %41, -64
  %div278 = lshr i32 %sub68, 4
  %42 = tail call i32 @llvm.smin.i32(i32 %39, i32 %div278)
  %max_sg76 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 7
  %43 = ptrtoint ptr %max_sg76 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %max_sg76, align 4
  %max_qp_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 1
  %44 = ptrtoint ptr %max_qp_sz to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_qp_sz, align 4
  %max_wqes = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 9
  %46 = ptrtoint ptr %max_wqes to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %max_wqes, align 4
  %max_requester_per_qp = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 18
  %47 = ptrtoint ptr %max_requester_per_qp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_requester_per_qp, align 8
  %max_qp_init_rdma = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 11
  %49 = ptrtoint ptr %max_qp_init_rdma to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %max_qp_init_rdma, align 4
  %reserved_qps = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 2
  %50 = ptrtoint ptr %reserved_qps to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reserved_qps, align 8
  %reserved_qps80 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 12
  %52 = ptrtoint ptr %reserved_qps80 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %reserved_qps80, align 8
  %53 = ptrtoint ptr %dev_lim to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dev_lim, align 8
  %max_srq_wqes = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 14
  %55 = ptrtoint ptr %max_srq_wqes to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %max_srq_wqes, align 8
  %reserved_srqs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 4
  %56 = ptrtoint ptr %reserved_srqs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reserved_srqs, align 8
  %reserved_srqs83 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 16
  %58 = ptrtoint ptr %reserved_srqs83 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %reserved_srqs83, align 8
  %reserved_eecs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 6
  %59 = ptrtoint ptr %reserved_eecs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reserved_eecs, align 8
  %reserved_eecs85 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 18
  %61 = ptrtoint ptr %reserved_eecs85 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %reserved_eecs85, align 8
  %62 = ptrtoint ptr %max_desc_sz to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_desc_sz, align 8
  %max_desc_sz88 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 10
  %64 = ptrtoint ptr %max_desc_sz88 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %max_desc_sz88, align 8
  %call89 = tail call i32 @mthca_max_srq_sge(ptr noundef %mdev) #6
  %max_srq_sge = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 15
  %65 = ptrtoint ptr %max_srq_sge to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call89, ptr %max_srq_sge, align 4
  %max_cq_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 8
  %66 = ptrtoint ptr %max_cq_sz to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_cq_sz, align 8
  %sub91 = add i32 %67, -1
  %max_cqes = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 20
  %68 = ptrtoint ptr %max_cqes to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub91, ptr %max_cqes, align 8
  %reserved_cqs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 9
  %69 = ptrtoint ptr %reserved_cqs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reserved_cqs, align 4
  %reserved_cqs94 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 21
  %71 = ptrtoint ptr %reserved_cqs94 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %reserved_cqs94, align 4
  %reserved_eqs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 12
  %72 = ptrtoint ptr %reserved_eqs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reserved_eqs, align 8
  %reserved_eqs96 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 23
  %74 = ptrtoint ptr %reserved_eqs96 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %reserved_eqs96, align 4
  %reserved_mtts = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 14
  %75 = ptrtoint ptr %reserved_mtts to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reserved_mtts, align 8
  %reserved_mtts98 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 28
  %77 = ptrtoint ptr %reserved_mtts98 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %reserved_mtts98, align 8
  %reserved_mrws = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 16
  %78 = ptrtoint ptr %reserved_mrws to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reserved_mrws, align 8
  %reserved_mrws100 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 29
  %80 = ptrtoint ptr %reserved_mrws100 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %reserved_mrws100, align 4
  %reserved_uars = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 30
  %81 = ptrtoint ptr %reserved_uars to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %reserved_uars, align 8
  %reserved_uars102 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 30
  %83 = ptrtoint ptr %reserved_uars102 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %reserved_uars102, align 8
  %reserved_pds = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 38
  %84 = ptrtoint ptr %reserved_pds to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %reserved_pds, align 8
  %reserved_pds104 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 35
  %86 = ptrtoint ptr %reserved_pds104 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %reserved_pds104, align 4
  %max_port_width = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 23
  %87 = ptrtoint ptr %max_port_width to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_port_width, align 4
  %conv105 = trunc i32 %88 to i8
  %port_width_cap = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 39
  %89 = ptrtoint ptr %port_width_cap to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv105, ptr %port_width_cap, align 2
  %90 = ptrtoint ptr %min_page_sz to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %min_page_sz, align 8
  %neg = sub i32 0, %91
  %page_size_cap = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 36
  %92 = ptrtoint ptr %page_size_cap to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %neg, ptr %page_size_cap, align 8
  %flags = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 29
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags, align 4
  %flags111 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 37
  %95 = ptrtoint ptr %flags111 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %flags111, align 4
  %stat_rate_support = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 27
  %96 = ptrtoint ptr %stat_rate_support to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %stat_rate_support, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool112.not = icmp eq i16 %97, 0
  br i1 %tobool112.not, label %if.else, label %if.then113

if.then113:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %stat_rate_support116 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 38
  %98 = ptrtoint ptr %stat_rate_support116 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %stat_rate_support116, align 8
  br label %if.end125

if.else:                                          ; preds = %if.end54
  %99 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mthca_flags.i, align 8
  %and = and i32 %100, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool117.not = icmp eq i32 %and, 0
  %stat_rate_support123 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 18, i32 38
  br i1 %tobool117.not, label %if.else121, label %if.then118

if.then118:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %stat_rate_support123 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 15, ptr %stat_rate_support123, align 8
  br label %if.end125

if.else121:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %stat_rate_support123 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 3, ptr %stat_rate_support123, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.else121, %if.then118, %if.then113
  %device_cap_flags = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 4
  %103 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 7200, ptr %device_cap_flags, align 4
  %104 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags, align 4
  %and127 = and i32 %105, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  %spec.store.select = select i1 %tobool128.not, i32 7200, i32 7202
  %106 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %spec.store.select, ptr %device_cap_flags, align 4
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags, align 4
  %and133 = and i32 %108, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end125.if.end138_crit_edge, label %if.then135

if.end125.if.end138_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.then135:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %or137 = or i32 %spec.store.select, 4
  %109 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or137, ptr %device_cap_flags, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.end125.if.end138_crit_edge
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags, align 4
  %and140 = and i32 %111, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end138.if.end145_crit_edge, label %if.then142

if.end138.if.end145_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %device_cap_flags, align 4
  %or144 = or i32 %113, 8
  store i32 %or144, ptr %device_cap_flags, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.end138.if.end145_crit_edge
  %114 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags, align 4
  %and147 = and i32 %115, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end145.if.end152_crit_edge, label %if.then149

if.end145.if.end152_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then149:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %device_cap_flags, align 4
  %or151 = or i32 %117, 16
  store i32 %or151, ptr %device_cap_flags, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %if.end145.if.end152_crit_edge
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags, align 4
  %and154 = and i32 %119, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end152.if.end159_crit_edge, label %if.then156

if.end152.if.end159_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %device_cap_flags, align 4
  %or158 = or i32 %121, 64
  store i32 %or158, ptr %device_cap_flags, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end152.if.end159_crit_edge
  %122 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags, align 4
  %and161 = and i32 %123, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end159.if.end166_crit_edge, label %if.then163

if.end159.if.end166_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166

if.then163:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mthca_flags.i, align 8
  %or165 = or i32 %125, 4
  store i32 %or165, ptr %mthca_flags.i, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.end159.if.end166_crit_edge
  %126 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mthca_flags.i, align 8
  %and.i280 = and i32 %127, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i280)
  %tobool168.not = icmp eq i32 %and.i280, 0
  br i1 %tobool168.not, label %if.end166.cleanup_crit_edge, label %if.then169

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then169:                                       ; preds = %if.end166
  %128 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %flags, align 4
  %and171 = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.then169.cleanup_crit_edge, label %if.then173

if.then169.cleanup_crit_edge:                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then173:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %device_cap_flags, align 4
  %or175 = or i32 %131, 262144
  store i32 %or175, ptr %device_cap_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then173, %if.then169.cleanup_crit_edge, %if.end166.cleanup_crit_edge, %cond.end52, %do.end13, %do.end4, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -19, %do.end4 ], [ -19, %do.end13 ], [ -19, %cond.end52 ], [ 0, %if.then169.cleanup_crit_edge ], [ 0, %if.then173 ], [ 0, %if.end166.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mthca_make_profile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_INIT_HCA(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_alloc_icm(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_MAP_FA(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_RUN_FW(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_QUERY_DEV_LIM(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_max_srq_sge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_SET_ICM_SIZE(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_MAP_ICM_AUX(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_map_eq_icm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_alloc_icm_table(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_SYS_EN(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_QUERY_DDR(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_init_uar_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_uar_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_init_pd_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_init_mr_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_pd_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_init_eq_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_cmd_use_events(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_NOP(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_init_cq_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_init_srq_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_init_qp_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_init_av_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_init_mcg_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mthca_device_mutex, i32 noundef 0) #6
  %.b27 = load i1, ptr @mthca_init_one.__already_done, align 1
  br i1 %.b27, label %entry.if.end_crit_edge, label %if.then, !prof !449

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mthca_init_one.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @mthca_version) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %do.end15, label %if.end20

do.end15:                                         ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end15.pci_name.exit_crit_edge

do.end15.pci_name.exit_crit_edge:                 ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end15.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %do.end15.pci_name.exit_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef %retval.0.i.i, i32 noundef %1) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call fastcc i32 @__mthca_init_one(ptr noundef %pdev, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %pci_name.exit
  %retval.0 = phi i32 [ -19, %pci_name.exit ], [ %call22, %if.end20 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mthca_device_mutex) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mthca_remove_one(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mthca_device_mutex, i32 noundef 0) #6
  tail call fastcc void @__mthca_remove_one(ptr noundef %pdev)
  tail call void @mutex_unlock(ptr noundef nonnull @mthca_device_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mthca_validate_profile() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__mthca_check_profile_val(ptr noundef nonnull @.str.202, ptr noundef nonnull @hca_profile, i32 noundef 65536) #10
  tail call fastcc void @__mthca_check_profile_val(ptr noundef nonnull @.str.203, ptr noundef getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 1), i32 noundef 4) #10
  tail call fastcc void @__mthca_check_profile_val(ptr noundef nonnull @.str.204, ptr noundef getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 3), i32 noundef 65536) #10
  tail call fastcc void @__mthca_check_profile_val(ptr noundef nonnull @.str.205, ptr noundef getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 4), i32 noundef 8192) #10
  tail call fastcc void @__mthca_check_profile_val(ptr noundef nonnull @.str.206, ptr noundef getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 5), i32 noundef 131072) #10
  tail call fastcc void @__mthca_check_profile_val(ptr noundef nonnull @.str.207, ptr noundef getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 6), i32 noundef 1048576) #10
  tail call fastcc void @__mthca_check_profile_val(ptr noundef nonnull @.str.208, ptr noundef getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 7), i32 noundef 32768) #10
  tail call fastcc void @__mthca_check_profile_val(ptr noundef nonnull @.str.209, ptr noundef getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 10), i32 noundef 262144) #10
  %0 = load i32, ptr getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 10), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp slt i32 %0, %1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %0) #9
  %2 = load i32, ptr getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 6), align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %2) #9
  %3 = load i32, ptr getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 6), align 4
  %div = sdiv i32 %3, 2
  store i32 %div, ptr getelementptr inbounds (%struct.mthca_profile, ptr @hca_profile, i32 0, i32 10), align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i32 noundef %div) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = load i32, ptr @log_mtts_per_seg, align 4
  %5 = add i32 %4, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %5)
  %6 = icmp ult i32 %5, -5
  br i1 %6, label %do.end13, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i32 noundef %4, i32 noundef 3) #9
  store i32 3, ptr @log_mtts_per_seg, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_catas_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mthca_check_profile_val(ptr noundef %name, ptr nocapture noundef %pval, i32 noundef %pval_default) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.if.end_crit_edge, label %cond.false16

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.false16:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i44 = add nsw i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i44)
  %tobool.not.i.i.i = icmp eq i32 %sub.i44, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i44, i1 true) #6, !range !450
  %sub.i.i.i = sub nuw nsw i32 32, %2
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  br label %if.end

if.end:                                           ; preds = %cond.false16, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %pval_default, %entry.if.end_crit_edge ], [ %shl.i, %cond.false16 ]
  %3 = ptrtoint ptr %pval to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge, ptr %pval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %storemerge)
  %cmp20.not = icmp eq i32 %1, %storemerge
  br i1 %cmp20.not, label %if.end.if.end29_crit_edge, label %do.end

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, i32 noundef %1, ptr noundef %name) #9
  %4 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pval, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef %name, i32 noundef %5) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end.if.end29_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !28, !30, !31, !33, !35, !36, !38, !40, !41, !43, !45, !46, !48, !50, !51, !53, !55, !56, !58, !60, !61, !63, !65, !66, !68, !70, !71, !73, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !99, !100, !101, !102, !103, !105, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !304, !305, !307, !308, !310, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !385, !387, !388, !389, !390, !391, !393, !394, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !416, !417, !418, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !435, !437, !438}
!llvm.module.flags = !{!439, !440, !441, !442, !443, !444, !445, !446}
!llvm.ident = !{!447}

!0 = !{ptr @__UNIQUE_ID_author496, !1, !"__UNIQUE_ID_author496", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_description497, !3, !"__UNIQUE_ID_description497", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 50, i32 1}
!4 = !{ptr @__UNIQUE_ID_file498, !5, !"__UNIQUE_ID_file498", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 51, i32 1}
!6 = !{ptr @__UNIQUE_ID_license499, !5, !"__UNIQUE_ID_license499", i1 false, i1 false}
!7 = !{ptr @mthca_debug_level, !8, !"mthca_debug_level", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 55, i32 5}
!9 = !{ptr @__param_debug_level, !10, !"__param_debug_level", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 56, i32 1}
!11 = !{ptr @__UNIQUE_ID_debug_leveltype500, !10, !"__UNIQUE_ID_debug_leveltype500", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_debug_level501, !13, !"__UNIQUE_ID_debug_level501", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 57, i32 1}
!14 = !{ptr @__param_msi_x, !15, !"__param_msi_x", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 64, i32 1}
!16 = !{ptr @__UNIQUE_ID_msi_xtype502, !15, !"__UNIQUE_ID_msi_xtype502", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_msi_x503, !18, !"__UNIQUE_ID_msi_x503", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 65, i32 1}
!19 = !{ptr @__param_tune_pci, !20, !"__param_tune_pci", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 74, i32 1}
!21 = !{ptr @__UNIQUE_ID_tune_pcitype504, !20, !"__UNIQUE_ID_tune_pcitype504", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_tune_pci505, !23, !"__UNIQUE_ID_tune_pci505", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 75, i32 1}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 77, i32 1}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mthca_device_mutex, !25, !"mthca_device_mutex", i1 false, i1 false}
!28 = !{ptr @__param_num_qp, !29, !"__param_num_qp", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 101, i32 1}
!30 = !{ptr @__UNIQUE_ID_num_qptype506, !29, !"__UNIQUE_ID_num_qptype506", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_num_qp507, !32, !"__UNIQUE_ID_num_qp507", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 102, i32 1}
!33 = !{ptr @__param_rdb_per_qp, !34, !"__param_rdb_per_qp", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 104, i32 1}
!35 = !{ptr @__UNIQUE_ID_rdb_per_qptype508, !34, !"__UNIQUE_ID_rdb_per_qptype508", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_rdb_per_qp509, !37, !"__UNIQUE_ID_rdb_per_qp509", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 105, i32 1}
!38 = !{ptr @__param_num_cq, !39, !"__param_num_cq", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 107, i32 1}
!40 = !{ptr @__UNIQUE_ID_num_cqtype510, !39, !"__UNIQUE_ID_num_cqtype510", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_num_cq511, !42, !"__UNIQUE_ID_num_cq511", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 108, i32 1}
!43 = !{ptr @__param_num_mcg, !44, !"__param_num_mcg", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 110, i32 1}
!45 = !{ptr @__UNIQUE_ID_num_mcgtype512, !44, !"__UNIQUE_ID_num_mcgtype512", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_num_mcg513, !47, !"__UNIQUE_ID_num_mcg513", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 111, i32 1}
!48 = !{ptr @__param_num_mpt, !49, !"__param_num_mpt", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 113, i32 1}
!50 = !{ptr @__UNIQUE_ID_num_mpttype514, !49, !"__UNIQUE_ID_num_mpttype514", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_num_mpt515, !52, !"__UNIQUE_ID_num_mpt515", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 114, i32 1}
!53 = !{ptr @__param_num_mtt, !54, !"__param_num_mtt", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 117, i32 1}
!55 = !{ptr @__UNIQUE_ID_num_mtttype516, !54, !"__UNIQUE_ID_num_mtttype516", i1 false, i1 false}
!56 = !{ptr @__UNIQUE_ID_num_mtt517, !57, !"__UNIQUE_ID_num_mtt517", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 118, i32 1}
!58 = !{ptr @__param_num_udav, !59, !"__param_num_udav", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 121, i32 1}
!60 = !{ptr @__UNIQUE_ID_num_udavtype518, !59, !"__UNIQUE_ID_num_udavtype518", i1 false, i1 false}
!61 = !{ptr @__UNIQUE_ID_num_udav519, !62, !"__UNIQUE_ID_num_udav519", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 122, i32 1}
!63 = !{ptr @__param_fmr_reserved_mtts, !64, !"__param_fmr_reserved_mtts", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 124, i32 1}
!65 = !{ptr @__UNIQUE_ID_fmr_reserved_mttstype520, !64, !"__UNIQUE_ID_fmr_reserved_mttstype520", i1 false, i1 false}
!66 = !{ptr @__UNIQUE_ID_fmr_reserved_mtts521, !67, !"__UNIQUE_ID_fmr_reserved_mtts521", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 125, i32 1}
!68 = !{ptr @__param_log_mtts_per_seg, !69, !"__param_log_mtts_per_seg", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 129, i32 1}
!70 = !{ptr @__UNIQUE_ID_log_mtts_per_segtype522, !69, !"__UNIQUE_ID_log_mtts_per_segtype522", i1 false, i1 false}
!71 = !{ptr @__UNIQUE_ID_log_mtts_per_seg523, !72, !"__UNIQUE_ID_log_mtts_per_seg523", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 130, i32 1}
!73 = !{ptr @__initcall__kmod_ib_mthca__526_1260_mthca_init6, !74, !"__initcall__kmod_ib_mthca__526_1260_mthca_init6", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1260, i32 1}
!75 = !{ptr @__exitcall_mthca_cleanup, !76, !"__exitcall_mthca_cleanup", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1261, i32 1}
!77 = !{ptr @__param_str_debug_level, !10, !"__param_str_debug_level", i1 false, i1 false}
!78 = !{ptr @__param_str_msi_x, !15, !"__param_str_msi_x", i1 false, i1 false}
!79 = !{ptr @msi_x, !80, !"msi_x", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 63, i32 12}
!81 = !{ptr @__param_str_tune_pci, !20, !"__param_str_tune_pci", i1 false, i1 false}
!82 = !{ptr @tune_pci, !83, !"tune_pci", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 73, i32 12}
!84 = !{ptr @__param_str_num_qp, !29, !"__param_str_num_qp", i1 false, i1 false}
!85 = !{ptr @hca_profile, !86, !"hca_profile", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 89, i32 29}
!87 = !{ptr @__param_str_rdb_per_qp, !34, !"__param_str_rdb_per_qp", i1 false, i1 false}
!88 = !{ptr @__param_str_num_cq, !39, !"__param_str_num_cq", i1 false, i1 false}
!89 = !{ptr @__param_str_num_mcg, !44, !"__param_str_num_mcg", i1 false, i1 false}
!90 = !{ptr @__param_str_num_mpt, !49, !"__param_str_num_mpt", i1 false, i1 false}
!91 = !{ptr @__param_str_num_mtt, !54, !"__param_str_num_mtt", i1 false, i1 false}
!92 = !{ptr @__param_str_num_udav, !59, !"__param_str_num_udav", i1 false, i1 false}
!93 = !{ptr @__param_str_fmr_reserved_mtts, !64, !"__param_str_fmr_reserved_mtts", i1 false, i1 false}
!94 = !{ptr @__param_str_log_mtts_per_seg, !69, !"__param_str_log_mtts_per_seg", i1 false, i1 false}
!95 = !{ptr @log_mtts_per_seg, !96, !"log_mtts_per_seg", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 128, i32 12}
!97 = !{ptr @.str.2, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 903, i32 2}
!99 = !{ptr @.str.3, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.4, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @__mthca_init_one._entry, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @__mthca_init_one._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.6, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 908, i32 3}
!105 = !{ptr @.str.7, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.8, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @__mthca_init_one._entry.5, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @__mthca_init_one._entry_ptr.9, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.11, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 919, i32 3}
!111 = !{ptr @__mthca_init_one._entry.10, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @__mthca_init_one._entry_ptr.12, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.14, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 924, i32 3}
!115 = !{ptr @__mthca_init_one._entry.13, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @__mthca_init_one._entry_ptr.15, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.16, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 931, i32 34}
!119 = !{ptr @.str.18, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 933, i32 3}
!121 = !{ptr @__mthca_init_one._entry.17, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @__mthca_init_one._entry_ptr.19, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.21, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 942, i32 3}
!125 = !{ptr @.str.22, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @__mthca_init_one._entry.20, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @__mthca_init_one._entry_ptr.23, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.25, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 945, i32 4}
!130 = !{ptr @__mthca_init_one._entry.24, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @__mthca_init_one._entry_ptr.26, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.28, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 955, i32 3}
!134 = !{ptr @__mthca_init_one._entry.27, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @__mthca_init_one._entry_ptr.29, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.31, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 974, i32 3}
!138 = !{ptr @__mthca_init_one._entry.30, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @__mthca_init_one._entry_ptr.32, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.34, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 980, i32 3}
!142 = !{ptr @__mthca_init_one._entry.33, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @__mthca_init_one._entry_ptr.35, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.37, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 993, i32 3}
!146 = !{ptr @__mthca_init_one._entry.36, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @__mthca_init_one._entry_ptr.38, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.40, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 999, i32 3}
!150 = !{ptr @__mthca_init_one._entry.39, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @__mthca_init_one._entry_ptr.41, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @mthca_hca_table, !153, !"mthca_hca_table", i1 false, i1 false}
!153 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 883, i32 3}
!154 = !{ptr @.str.42, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 144, i32 4}
!156 = !{ptr @.str.43, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @mthca_tune_pci._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @mthca_tune_pci._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.45, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 149, i32 3}
!161 = !{ptr @.str.46, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mthca_tune_pci._entry.44, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @mthca_tune_pci._entry_ptr.47, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.49, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 153, i32 4}
!166 = !{ptr @mthca_tune_pci._entry.48, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @mthca_tune_pci._entry_ptr.50, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.52, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 158, i32 3}
!170 = !{ptr @mthca_tune_pci._entry.51, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @mthca_tune_pci._entry_ptr.53, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.54, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 678, i32 3}
!174 = !{ptr @.str.55, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @mthca_init_hca._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @mthca_init_hca._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.56, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 584, i32 3}
!179 = !{ptr @.str.57, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @mthca_init_arbel._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @mthca_init_arbel._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.59, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 590, i32 3}
!184 = !{ptr @.str.60, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @mthca_init_arbel._entry.58, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @mthca_init_arbel._entry_ptr.61, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.63, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 593, i32 3}
!189 = !{ptr @mthca_init_arbel._entry.62, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @mthca_init_arbel._entry_ptr.64, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.66, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 599, i32 3}
!193 = !{ptr @mthca_init_arbel._entry.65, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @mthca_init_arbel._entry_ptr.67, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.69, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 605, i32 3}
!197 = !{ptr @mthca_init_arbel._entry.68, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @mthca_init_arbel._entry_ptr.70, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.72, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 627, i32 3}
!201 = !{ptr @mthca_init_arbel._entry.71, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @mthca_init_arbel._entry_ptr.73, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.74, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 355, i32 3}
!205 = !{ptr @.str.75, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @mthca_load_fw._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @mthca_load_fw._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.77, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 361, i32 3}
!210 = !{ptr @mthca_load_fw._entry.76, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @mthca_load_fw._entry_ptr.78, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.80, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 366, i32 3}
!214 = !{ptr @mthca_load_fw._entry.79, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @mthca_load_fw._entry_ptr.81, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.82, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 171, i32 3}
!218 = !{ptr @.str.83, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @mthca_dev_lim._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @mthca_dev_lim._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.85, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 176, i32 3}
!223 = !{ptr @mthca_dev_lim._entry.84, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @mthca_dev_lim._entry_ptr.86, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.88, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 182, i32 3}
!227 = !{ptr @mthca_dev_lim._entry.87, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @mthca_dev_lim._entry_ptr.89, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.91, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 189, i32 3}
!231 = !{ptr @mthca_dev_lim._entry.90, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @mthca_dev_lim._entry_ptr.92, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.93, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 390, i32 3}
!235 = !{ptr @.str.94, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @mthca_init_icm._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @mthca_init_icm._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.96, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 394, i32 2}
!240 = !{ptr @mthca_init_icm._entry.95, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @mthca_init_icm._entry_ptr.97, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.99, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 401, i32 3}
!244 = !{ptr @mthca_init_icm._entry.98, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @mthca_init_icm._entry_ptr.100, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.102, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 407, i32 3}
!248 = !{ptr @mthca_init_icm._entry.101, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @mthca_init_icm._entry_ptr.103, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 413, i32 3}
!252 = !{ptr @mthca_init_icm._entry.104, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @mthca_init_icm._entry_ptr.106, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.108, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 427, i32 3}
!256 = !{ptr @mthca_init_icm._entry.107, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @mthca_init_icm._entry_ptr.109, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.111, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 438, i32 3}
!260 = !{ptr @mthca_init_icm._entry.110, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @mthca_init_icm._entry_ptr.112, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.114, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 449, i32 3}
!264 = !{ptr @mthca_init_icm._entry.113, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @mthca_init_icm._entry_ptr.115, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 460, i32 3}
!268 = !{ptr @mthca_init_icm._entry.116, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @mthca_init_icm._entry_ptr.118, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.120, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 471, i32 3}
!272 = !{ptr @mthca_init_icm._entry.119, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @mthca_init_icm._entry_ptr.121, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.123, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 482, i32 3}
!276 = !{ptr @mthca_init_icm._entry.122, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @mthca_init_icm._entry_ptr.124, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.126, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 495, i32 4}
!280 = !{ptr @mthca_init_icm._entry.125, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @mthca_init_icm._entry_ptr.127, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.129, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 515, i32 3}
!284 = !{ptr @mthca_init_icm._entry.128, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @mthca_init_icm._entry_ptr.130, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 297, i32 3}
!288 = !{ptr @.str.132, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @mthca_init_tavor._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @mthca_init_tavor._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.134, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 303, i32 3}
!293 = !{ptr @mthca_init_tavor._entry.133, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @mthca_init_tavor._entry_ptr.135, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.137, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 309, i32 3}
!297 = !{ptr @mthca_init_tavor._entry.136, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @mthca_init_tavor._entry_ptr.138, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @mthca_init_tavor._entry.139, !300, !"_entry", i1 false, i1 false}
!300 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 315, i32 3}
!301 = !{ptr @mthca_init_tavor._entry_ptr.140, !300, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @mthca_init_tavor._entry.141, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 333, i32 3}
!304 = !{ptr @mthca_init_tavor._entry_ptr.142, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @mthca_setup_hca.__key, !306, !"__key", i1 false, i1 false}
!306 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 698, i32 2}
!307 = !{ptr @.str.143, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.144, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 702, i32 3}
!310 = !{ptr @.str.145, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @mthca_setup_hca._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @mthca_setup_hca._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.147, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 709, i32 3}
!315 = !{ptr @mthca_setup_hca._entry.146, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @mthca_setup_hca._entry_ptr.148, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.150, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 716, i32 3}
!319 = !{ptr @mthca_setup_hca._entry.149, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @mthca_setup_hca._entry_ptr.151, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.153, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 724, i32 3}
!323 = !{ptr @mthca_setup_hca._entry.152, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @mthca_setup_hca._entry_ptr.154, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.156, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 731, i32 3}
!327 = !{ptr @mthca_setup_hca._entry.155, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @mthca_setup_hca._entry_ptr.157, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.159, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 738, i32 3}
!331 = !{ptr @mthca_setup_hca._entry.158, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @mthca_setup_hca._entry_ptr.160, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.162, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 745, i32 3}
!335 = !{ptr @mthca_setup_hca._entry.161, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @mthca_setup_hca._entry_ptr.163, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.165, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 752, i32 3}
!339 = !{ptr @mthca_setup_hca._entry.164, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @mthca_setup_hca._entry_ptr.166, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.168, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 760, i32 4}
!343 = !{ptr @mthca_setup_hca._entry.167, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @mthca_setup_hca._entry_ptr.169, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.171, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 763, i32 4}
!347 = !{ptr @mthca_setup_hca._entry.170, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @mthca_setup_hca._entry_ptr.172, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.174, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 765, i32 4}
!351 = !{ptr @mthca_setup_hca._entry.173, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @mthca_setup_hca._entry_ptr.175, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.177, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 768, i32 4}
!355 = !{ptr @mthca_setup_hca._entry.176, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @mthca_setup_hca._entry_ptr.178, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.180, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 774, i32 2}
!359 = !{ptr @mthca_setup_hca._entry.179, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @mthca_setup_hca._entry_ptr.181, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.183, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 778, i32 3}
!363 = !{ptr @mthca_setup_hca._entry.182, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @mthca_setup_hca._entry_ptr.184, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.186, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 785, i32 3}
!367 = !{ptr @mthca_setup_hca._entry.185, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @mthca_setup_hca._entry_ptr.187, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.189, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 792, i32 3}
!371 = !{ptr @mthca_setup_hca._entry.188, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @mthca_setup_hca._entry_ptr.190, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.192, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 799, i32 3}
!375 = !{ptr @mthca_setup_hca._entry.191, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @mthca_setup_hca._entry_ptr.193, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.195, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 806, i32 3}
!379 = !{ptr @mthca_setup_hca._entry.194, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @mthca_setup_hca._entry_ptr.196, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @mthca_driver, !382, !"mthca_driver", i1 false, i1 false}
!382 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1179, i32 26}
!383 = !{ptr @mthca_pci_table, !384, !"mthca_pci_table", i1 false, i1 false}
!384 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1153, i32 35}
!385 = distinct !{null, !386, !"__already_done", i1 false, i1 false}
!386 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1130, i32 2}
!387 = !{ptr @.str.197, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.198, !386, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @mthca_init_one._entry, !386, !"_entry", i1 false, i1 false}
!390 = !{ptr @mthca_init_one._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.200, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1133, i32 3}
!393 = !{ptr @mthca_init_one._entry.199, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @mthca_init_one._entry_ptr.201, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @mthca_version, !396, !"mthca_version", i1 false, i1 false}
!396 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 132, i32 13}
!397 = !{ptr @.str.202, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1209, i32 2}
!399 = !{ptr @.str.203, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1210, i32 2}
!401 = !{ptr @.str.204, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1211, i32 2}
!403 = !{ptr @.str.205, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1212, i32 2}
!405 = !{ptr @.str.206, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1213, i32 2}
!407 = !{ptr @.str.207, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1214, i32 2}
!409 = !{ptr @.str.208, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1215, i32 2}
!411 = !{ptr @.str.209, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1216, i32 2}
!413 = !{ptr @.str.210, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1219, i32 3}
!415 = !{ptr @.str.211, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @mthca_validate_profile._entry, !414, !"_entry", i1 false, i1 false}
!417 = !{ptr @mthca_validate_profile._entry_ptr, !414, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.213, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1221, i32 3}
!420 = !{ptr @mthca_validate_profile._entry.212, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @mthca_validate_profile._entry_ptr.214, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.216, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1224, i32 3}
!424 = !{ptr @mthca_validate_profile._entry.215, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @mthca_validate_profile._entry_ptr.217, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.219, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1229, i32 3}
!428 = !{ptr @mthca_validate_profile._entry.218, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @mthca_validate_profile._entry_ptr.220, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.221, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1198, i32 3}
!432 = !{ptr @.str.222, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @__mthca_check_profile_val._entry, !431, !"_entry", i1 false, i1 false}
!434 = !{ptr @__mthca_check_profile_val._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.224, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/infiniband/hw/mthca/mthca_main.c", i32 1200, i32 3}
!437 = !{ptr @__mthca_check_profile_val._entry.223, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @__mthca_check_profile_val._entry_ptr.225, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{i32 1, !"wchar_size", i32 2}
!440 = !{i32 1, !"min_enum_size", i32 4}
!441 = !{i32 8, !"branch-target-enforcement", i32 0}
!442 = !{i32 8, !"sign-return-address", i32 0}
!443 = !{i32 8, !"sign-return-address-all", i32 0}
!444 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!445 = !{i32 7, !"uwtable", i32 1}
!446 = !{i32 7, !"frame-pointer", i32 2}
!447 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!448 = !{!"auto-init"}
!449 = !{!"branch_weights", i32 2000, i32 1}
!450 = !{i32 0, i32 33}
