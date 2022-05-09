; ModuleID = '/llk/IR_all_yes/drivers/scsi/csiostor/csio_rnode.c_pt.bc'
source_filename = "../drivers/scsi/csiostor/csio_rnode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.csio_sm = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.csio_rnode = type { %struct.csio_sm, ptr, i32, %struct.list_head, i32, i16, i8, i8, i32, ptr, %struct.csio_service_parms, ptr, i32, i32, i32, %struct.csio_rnode_stats }
%struct.csio_service_parms = type { %struct.fc_els_csp, [8 x i8], [8 x i8], [4 x %struct.fc_els_cssp], [16 x i8] }
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.80, i32 }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.csio_rnode_stats = type { i32, i32, i32, i32, i32, [27 x i32], [10 x i32], i32, i32, i32, i32 }
%struct.csio_lnode = type { %struct.csio_sm, ptr, i8, i8, i16, i32, i32, %struct.list_head, ptr, ptr, [6 x i8], i32, %struct.csio_service_parms, i32, i32, i16, i8, i8, %struct.list_head, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, %struct.fc_host_statistics, %struct.csio_lnode_stats, %struct.csio_lnode_params }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.csio_lnode_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [27 x i32], [7 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_lnode_params = type { i32, i32, i32 }
%struct.csio_hw = type { %struct.csio_sm, %struct.spinlock, %struct.csio_scsim, %struct.csio_wrm, ptr, ptr, i32, i32, [4 x [128 x %struct.csio_scsi_qset]], [4 x %struct.csio_scsi_cpu_info], i32, i32, %struct.csio_mgmtm, %struct.csio_mbm, i32, ptr, %struct.list_head, i32, i32, %struct.work_struct, %struct.list_head, %struct.list_head, [32 x i8], [16 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i8, i16, i32, %struct.csio_vpd, i8, i32, i8, i8, i8, i8, i32, [4 x %struct.csio_pport], %struct.csio_hw_params, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.csio_fcoe_res_info, ptr, [514 x %struct.csio_msix_entries], ptr, %struct.csio_hw_stats }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.csio_scsim = type { ptr, i8, i8, i16, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.csio_scsi_stats }
%struct.csio_scsi_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_wrm = type { i32, ptr, i32, i32, [128 x ptr], i32, %struct.csio_sge }
%struct.csio_sge = type { i32, i32, i32, [16 x i32], [6 x i16], [4 x i8] }
%struct.csio_scsi_qset = type { i32, i32, i32 }
%struct.csio_scsi_cpu_info = type { i16 }
%struct.csio_mgmtm = type { ptr, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.csio_mgmtm_stats }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.csio_mgmtm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_mbm = type { i32, i32, %struct.timer_list, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.csio_mbm_stats }
%struct.csio_mbm_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.csio_vpd = type { i32, [17 x i8], [17 x i8], [17 x i8] }
%struct.csio_pport = type { i16, i16, i8, i8, i16, [6 x i8], i8, i8, i8, i8, %struct.link_config }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.csio_hw_params = type { i32, i32, %struct.pci_params, i32 }
%struct.pci_params = type { i16, i16, i32, i16, i8 }
%struct.csio_fcoe_res_info = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_msix_entries = type { ptr, [24 x i8] }
%struct.csio_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], i64, i32 }
%struct.fcoe_rdev_entry = type { i32, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, [8 x i8], [8 x i8], i16, [3 x i8], [3 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }

@csio_confirm_rnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 328, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%x:%x ssni:%x already active on vnpi:%x\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csio_confirm_rnode\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/csiostor/csio_rnode.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csio_confirm_rnode._entry_ptr = internal global ptr @csio_confirm_rnode._entry, section ".printk_index", align 4
@csio_confirm_rnode._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%x:%x rnode is alreadyactive ssni:x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@csio_confirm_rnode._entry_ptr.7 = internal global ptr @csio_confirm_rnode._entry.5, section ".printk_index", align 4
@csio_confirm_rnode._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 403, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%x:%x rnode is already active wwpn:%llx ssni:x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@csio_confirm_rnode._entry_ptr.10 = internal global ptr @csio_confirm_rnode._entry.8, section ".printk_index", align 4
@fwevt_to_rnevt = internal constant { [27 x i32], [52 x i8] } { [27 x i32] [i32 0, i32 1, i32 0, i32 3, i32 5, i32 2, i32 0, i32 4, i32 6, i32 0, i32 5, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 0, i32 0, i32 0, i32 5], [52 x i8] zeroinitializer }, align 32
@csio_rnode_fwevt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 876, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%x:%x ssni:x%x Unhandled FW Rdev event: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"csio_rnode_fwevt_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@csio_rnode_fwevt_handler._entry_ptr = internal global ptr @csio_rnode_fwevt_handler._entry, section ".printk_index", align 4
@csio_rn_verify_rparams._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 460, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%x:%x ssni:x%x invalid fabric portid\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csio_rn_verify_rparams\00", [41 x i8] zeroinitializer }, align 32
@csio_rn_verify_rparams._entry_ptr = internal global ptr @csio_rn_verify_rparams._entry, section ".printk_index", align 4
@csio_rn_verify_rparams._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 473, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@csio_rn_verify_rparams._entry_ptr.17 = internal global ptr @csio_rn_verify_rparams._entry.16, section ".printk_index", align 4
@csio_rn_verify_rparams._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 509, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%x:%x ssni:x%x invalid rport type recv x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@csio_rn_verify_rparams._entry_ptr.20 = internal global ptr @csio_rn_verify_rparams._entry.18, section ".printk_index", align 4
@csio_rn_verify_rparams._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 521, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%x:%x ssni:x%x invalid wwnn received from rport did:x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@csio_rn_verify_rparams._entry_ptr.23 = internal global ptr @csio_rn_verify_rparams._entry.21, section ".printk_index", align 4
@csio_rn_verify_rparams._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.2, i32 530, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%x:%x ssni:x%x invalid wwpn received from rport did:x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@csio_rn_verify_rparams._entry_ptr.26 = internal global ptr @csio_rn_verify_rparams._entry.24, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 5, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 7]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 5, i64 3, i64 5]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 7, i64 8, i64 9]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 326, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 362, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 399, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"fwevt_to_rnevt\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 55, i32 24 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 875, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 459, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 472, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 508, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 517, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [38 x i8] c"../drivers/scsi/csiostor/csio_rnode.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 526, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @csio_confirm_rnode._entry, ptr @csio_confirm_rnode._entry.5, ptr @csio_confirm_rnode._entry.8, ptr @csio_confirm_rnode._entry_ptr, ptr @csio_confirm_rnode._entry_ptr.10, ptr @csio_confirm_rnode._entry_ptr.7, ptr @csio_rn_verify_rparams._entry, ptr @csio_rn_verify_rparams._entry.16, ptr @csio_rn_verify_rparams._entry.18, ptr @csio_rn_verify_rparams._entry.21, ptr @csio_rn_verify_rparams._entry.24, ptr @csio_rn_verify_rparams._entry_ptr, ptr @csio_rn_verify_rparams._entry_ptr.17, ptr @csio_rn_verify_rparams._entry_ptr.20, ptr @csio_rn_verify_rparams._entry_ptr.23, ptr @csio_rn_verify_rparams._entry_ptr.26, ptr @csio_rnode_fwevt_handler._entry, ptr @csio_rnode_fwevt_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @fwevt_to_rnevt, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.19, ptr @.str.22, ptr @.str.25], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_confirm_rnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_confirm_rnode._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_confirm_rnode._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwevt_to_rnevt to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_rnode_fwevt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_rn_verify_rparams._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_rn_verify_rparams._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_rn_verify_rparams._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_rn_verify_rparams._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_rn_verify_rparams._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @csio_is_rnode_ready(ptr nocapture noundef readonly %rn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_state.i.i, align 4
  %cmp.i = icmp eq ptr %1, @csio_rns_ready
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_rns_ready(ptr noundef %rn, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnp, align 4
  %arrayidx = getelementptr %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 6, i32 %evt
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %evt, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge34
    i32 2, label %entry.sw.bb3_crit_edge
    i32 4, label %entry.sw.bb3_crit_edge35
    i32 7, label %sw.bb6
    i32 5, label %sw.bb7
    i32 8, label %sw.bb9
    i32 9, label %sw.bb11
  ]

entry.sw.bb3_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge34
  %n_evt_drop = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 4
  %5 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_evt_drop, align 4
  %inc2 = add i32 %6, 1
  store i32 %inc2, ptr %n_evt_drop, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge35
  %rdev_entry = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 9
  %7 = ptrtoint ptr %rdev_entry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev_entry, align 4
  %call = tail call fastcc i32 @csio_rn_verify_rparams(ptr noundef %1, ptr noundef %rn, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb3
  %9 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lnp, align 4
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwp.i, align 4
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %12, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  tail call void @csio_reg_rnode(ptr noundef %rn) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %role.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %13 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %role.i, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %n_scsi_tgts.i = getelementptr inbounds %struct.csio_lnode, ptr %10, i32 0, i32 24
  %15 = ptrtoint ptr %n_scsi_tgts.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_scsi_tgts.i, align 8
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %n_scsi_tgts.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %nport_id.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 4
  %17 = ptrtoint ptr %nport_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nport_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777210, i32 %18)
  %cmp.i = icmp eq i32 %18, 16777210
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @csio_ln_fdmi_start(ptr noundef %10, ptr noundef %rn) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %n_err_inval = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %n_err_inval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_err_inval, align 4
  %inc5 = add i32 %20, 1
  store i32 %inc5, ptr %n_err_inval, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %21 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @csio_rns_offline, ptr %sm_state.i, align 4
  tail call fastcc void @__csio_unreg_rnode(ptr noundef %rn)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm_state.i31 = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %22 = ptrtoint ptr %sm_state.i31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @csio_rns_offline, ptr %sm_state.i31, align 4
  tail call fastcc void @__csio_unreg_rnode(ptr noundef %rn)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm_state.i32 = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %23 = ptrtoint ptr %sm_state.i32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @csio_rns_uninit, ptr %sm_state.i32, align 4
  tail call fastcc void @__csio_unreg_rnode(ptr noundef %rn)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm_state.i33 = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %24 = ptrtoint ptr %sm_state.i33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @csio_rns_disappeared, ptr %sm_state.i33, align 4
  tail call fastcc void @__csio_unreg_rnode(ptr noundef %rn)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %n_evt_unexp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 3
  %25 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_evt_unexp, align 4
  %inc14 = add i32 %26, 1
  store i32 %inc14, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb6, %if.else, %if.then2.i, %if.end.i.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @csio_rnode_lookup_portid(ptr noundef readonly %ln, i32 noundef %portid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rnhead1 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ %rnhead1, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %rnhead1
  br i1 %cmp.i.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %nport_id = getelementptr inbounds %struct.csio_rnode, ptr %tmp.0, i32 0, i32 4
  %1 = ptrtoint ptr %nport_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nport_id, align 4
  %cmp = icmp eq i32 %2, %portid
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %tmp.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_put_rnode(ptr nocapture readnone %ln, ptr noundef %rn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnp.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %lnp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnp.i, align 4
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rn) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.csio_free_rnode.exit_crit_edge

entry.csio_free_rnode.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %csio_free_rnode.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %rn, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i.i, align 4
  %6 = ptrtoint ptr %rn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rn, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %csio_free_rnode.exit

csio_free_rnode.exit:                             ; preds = %if.end.i.i.i.i, %entry.csio_free_rnode.exit_crit_edge
  %10 = ptrtoint ptr %rn to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %rn, ptr %rn, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %rn, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rn, ptr %prev.i3.i.i.i, align 4
  %12 = ptrtoint ptr %lnp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lnp.i, align 4
  %n_rnode_free.i = getelementptr inbounds %struct.csio_lnode, ptr %13, i32 0, i32 29, i32 13
  %14 = ptrtoint ptr %n_rnode_free.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_rnode_free.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %n_rnode_free.i, align 4
  %rnode_mempool.i = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 45
  %16 = ptrtoint ptr %rnode_mempool.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rnode_mempool.i, align 8
  tail call void @mempool_free(ptr noundef %rn, ptr noundef %17) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @csio_confirm_rnode(ptr noundef %ln, i32 noundef %rdev_flowid, ptr noundef %rdevp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %r_id = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 16
  %rd_xfer_rdy_to_rport_type = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 8
  %0 = ptrtoint ptr %rd_xfer_rdy_to_rport_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rd_xfer_rdy_to_rport_type, align 4
  %2 = and i8 %1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %2)
  %cmp = icmp eq i8 %2, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rnhead1.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %tmp.0.in.i = phi ptr [ %rnhead1.i, %if.end ], [ %tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %rnhead1.i
  br i1 %cmp.i.not.i, label %for.cond.i.if.then4_crit_edge, label %for.body.i

for.cond.i.if.then4_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

for.body.i:                                       ; preds = %for.cond.i
  %flowid4.i = getelementptr inbounds %struct.csio_rnode, ptr %tmp.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %flowid4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flowid4.i, align 4
  %cmp.i = icmp eq i32 %5, %rdev_flowid
  br i1 %cmp.i, label %csio_rn_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

csio_rn_lookup.exit:                              ; preds = %for.body.i
  %flowid4.i.le = getelementptr inbounds %struct.csio_rnode, ptr %tmp.0.i, i32 0, i32 2
  %tobool.not = icmp eq ptr %tmp.0.i, null
  br i1 %tobool.not, label %csio_rn_lookup.exit.if.then4_crit_edge, label %if.else

csio_rn_lookup.exit.if.then4_crit_edge:           ; preds = %csio_rn_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %csio_rn_lookup.exit.if.then4_crit_edge, %for.cond.i.if.then4_crit_edge
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %6 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwp.i, align 4
  %sln_head.i = getelementptr inbounds %struct.csio_hw, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %sln_head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp1.045.i = load ptr, ptr %sln_head.i, align 4
  %cmp.i.not46.i = icmp eq ptr %tmp1.045.i, %sln_head.i
  br i1 %cmp.i.not46.i, label %if.then4.if.end12_crit_edge, label %if.then4.for.body.i177_crit_edge

if.then4.for.body.i177_crit_edge:                 ; preds = %if.then4
  br label %for.body.i177

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.body.i177:                                    ; preds = %for.inc20.i.for.body.i177_crit_edge, %if.then4.for.body.i177_crit_edge
  %tmp1.047.i = phi ptr [ %tmp1.0.i, %for.inc20.i.for.body.i177_crit_edge ], [ %tmp1.045.i, %if.then4.for.body.i177_crit_edge ]
  %cmp.i176 = icmp eq ptr %tmp1.047.i, %ln
  br i1 %cmp.i176, label %for.body.i177.for.inc20.i_crit_edge, label %if.end.i

for.body.i177.for.inc20.i_crit_edge:              ; preds = %for.body.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

if.end.i:                                         ; preds = %for.body.i177
  %rnhead2.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp1.047.i, i32 0, i32 22
  %9 = ptrtoint ptr %rnhead2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.042.i = load ptr, ptr %rnhead2.i, align 4
  %cmp.i38.not43.i = icmp eq ptr %tmp.042.i, %rnhead2.i
  br i1 %cmp.i38.not43.i, label %if.end.i.for.inc20.i_crit_edge, label %if.end.i.for.body10.i_crit_edge

if.end.i.for.body10.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body10.i

if.end.i.for.inc20.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %if.end.i.for.body10.i_crit_edge
  %tmp.044.i = phi ptr [ %tmp.0.i178, %for.inc.i.for.body10.i_crit_edge ], [ %tmp.042.i, %if.end.i.for.body10.i_crit_edge ]
  %sm_state.i.i.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.044.i, i32 0, i32 1
  %10 = ptrtoint ptr %sm_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sm_state.i.i.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %11, @csio_rns_ready
  br i1 %cmp.i.i.not.i, label %if.then13.i, label %for.body10.i.for.inc.i_crit_edge

for.body10.i.for.inc.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then13.i:                                      ; preds = %for.body10.i
  %flowid.i = getelementptr inbounds %struct.csio_rnode, ptr %tmp.044.i, i32 0, i32 2
  %12 = ptrtoint ptr %flowid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flowid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %rdev_flowid)
  %cmp14.i = icmp eq i32 %13, %rdev_flowid
  br i1 %cmp14.i, label %do.end, label %if.then13.i.for.inc.i_crit_edge

if.then13.i.for.inc.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then13.i.for.inc.i_crit_edge, %for.body10.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %tmp.044.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.0.i178 = load ptr, ptr %tmp.044.i, align 4
  %cmp.i38.not.i = icmp eq ptr %tmp.0.i178, %rnhead2.i
  br i1 %cmp.i38.not.i, label %for.inc.i.for.inc20.i_crit_edge, label %for.inc.i.for.body10.i_crit_edge

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.inc.i.for.inc20.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %for.inc.i.for.inc20.i_crit_edge, %if.end.i.for.inc20.i_crit_edge, %for.body.i177.for.inc20.i_crit_edge
  %15 = ptrtoint ptr %tmp1.047.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp1.0.i = load ptr, ptr %tmp1.047.i, align 4
  %cmp.i.not.i179 = icmp eq ptr %tmp1.0.i, %sln_head.i
  br i1 %cmp.i.not.i179, label %for.inc20.i.if.end12_crit_edge, label %for.inc20.i.for.body.i177_crit_edge

for.inc20.i.for.body.i177_crit_edge:              ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i177

for.inc20.i.if.end12_crit_edge:                   ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end:                                           ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %vnp_flowid16.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp1.047.i, i32 0, i32 14
  %16 = ptrtoint ptr %vnp_flowid16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vnp_flowid16.i, align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %dev_num = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %20 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_num, align 4
  %shr8 = lshr i32 %21, 16
  %and11 = and i32 %21, 65535
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %shr8, i32 noundef %and11, i32 noundef %rdev_flowid, i32 noundef %17) #10
  br label %cleanup

if.end12:                                         ; preds = %for.inc20.i.if.end12_crit_edge, %if.then4.if.end12_crit_edge
  %wwpn = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 13
  br label %for.cond.i185

for.cond.i185:                                    ; preds = %for.body.i186.for.cond.i185_crit_edge, %if.end12
  %tmp.0.in.i182 = phi ptr [ %rnhead1.i, %if.end12 ], [ %tmp.0.i183, %for.body.i186.for.cond.i185_crit_edge ]
  %22 = ptrtoint ptr %tmp.0.in.i182 to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.0.i183 = load ptr, ptr %tmp.0.in.i182, align 4
  %cmp.i.not.i184 = icmp eq ptr %tmp.0.i183, %rnhead1.i
  br i1 %cmp.i.not.i184, label %for.cond.i185.for.cond.i.i.preheader_crit_edge, label %for.body.i186

for.cond.i185.for.cond.i.i.preheader_crit_edge:   ; preds = %for.cond.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

for.body.i186:                                    ; preds = %for.cond.i185
  %wwpn4.i = getelementptr inbounds %struct.csio_rnode, ptr %tmp.0.i183, i32 0, i32 10, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %wwpn4.i, ptr noundef dereferenceable(8) %wwpn, i32 8) #11
  %tobool6.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool6.not.i, label %csio_rn_lookup_wwpn.exit, label %for.body.i186.for.cond.i185_crit_edge

for.body.i186.for.cond.i185_crit_edge:            ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i185

csio_rn_lookup_wwpn.exit:                         ; preds = %for.body.i186
  %tobool14.not = icmp eq ptr %tmp.0.i183, null
  br i1 %tobool14.not, label %csio_rn_lookup_wwpn.exit.for.cond.i.i.preheader_crit_edge, label %csio_rn_lookup_wwpn.exit.found_rnode_crit_edge

csio_rn_lookup_wwpn.exit.found_rnode_crit_edge:   ; preds = %csio_rn_lookup_wwpn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %found_rnode

csio_rn_lookup_wwpn.exit.for.cond.i.i.preheader_crit_edge: ; preds = %csio_rn_lookup_wwpn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

if.else:                                          ; preds = %csio_rn_lookup.exit
  %trunc = trunc i8 %1 to i5
  %23 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.27)
  switch i5 %trunc, label %if.end65 [
    i5 1, label %if.else.if.then19_crit_edge
    i5 2, label %if.else.if.then19_crit_edge269
    i5 3, label %if.else.if.then19_crit_edge270
    i5 6, label %if.else.if.then19_crit_edge271
  ]

if.else.if.then19_crit_edge271:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.else.if.then19_crit_edge270:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.else.if.then19_crit_edge269:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.else.if.then19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %if.else.if.then19_crit_edge, %if.else.if.then19_crit_edge269, %if.else.if.then19_crit_edge270, %if.else.if.then19_crit_edge271
  %24 = ptrtoint ptr %r_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %r_id, align 4
  %shr20 = lshr i32 %25, 8
  br label %for.cond.i194

for.cond.i194:                                    ; preds = %for.body.i196.for.cond.i194_crit_edge, %if.then19
  %tmp.0.in.i191 = phi ptr [ %rnhead1.i, %if.then19 ], [ %tmp.0.i192, %for.body.i196.for.cond.i194_crit_edge ]
  %26 = ptrtoint ptr %tmp.0.in.i191 to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.0.i192 = load ptr, ptr %tmp.0.in.i191, align 4
  %cmp.i.not.i193 = icmp eq ptr %tmp.0.i192, %rnhead1.i
  br i1 %cmp.i.not.i193, label %for.cond.i194.alloc_rnode.sink.split_crit_edge, label %for.body.i196

for.cond.i194.alloc_rnode.sink.split_crit_edge:   ; preds = %for.cond.i194
  call void @__sanitizer_cov_trace_pc() #9
  br label %alloc_rnode.sink.split

for.body.i196:                                    ; preds = %for.cond.i194
  %nport_id.i = getelementptr inbounds %struct.csio_rnode, ptr %tmp.0.i192, i32 0, i32 4
  %27 = ptrtoint ptr %nport_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nport_id.i, align 4
  %cmp.i195 = icmp eq i32 %28, %shr20
  br i1 %cmp.i195, label %csio_rnode_lookup_portid.exit, label %for.body.i196.for.cond.i194_crit_edge

for.body.i196.for.cond.i194_crit_edge:            ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i194

csio_rnode_lookup_portid.exit:                    ; preds = %for.body.i196
  %cmp23 = icmp eq ptr %tmp.0.i192, null
  br i1 %cmp23, label %csio_rnode_lookup_portid.exit.alloc_rnode.sink.split_crit_edge, label %if.end26

csio_rnode_lookup_portid.exit.alloc_rnode.sink.split_crit_edge: ; preds = %csio_rnode_lookup_portid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %alloc_rnode.sink.split

if.end26:                                         ; preds = %csio_rnode_lookup_portid.exit
  %wwpn27 = getelementptr inbounds %struct.csio_rnode, ptr %tmp.0.i192, i32 0, i32 10, i32 1
  %wwpn29 = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 13
  %bcmp175 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %wwpn27, ptr noundef dereferenceable(8) %wwpn29, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp175)
  %tobool32.not = icmp eq i32 %bcmp175, 0
  br i1 %tobool32.not, label %if.then33, label %if.end26.alloc_rnode.sink.split_crit_edge

if.end26.alloc_rnode.sink.split_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %alloc_rnode.sink.split

if.then33:                                        ; preds = %if.end26
  %cmp34 = icmp eq ptr %tmp.0.i, %tmp.0.i192
  br i1 %cmp34, label %if.then33.found_rnode_crit_edge, label %if.end37

if.then33.found_rnode_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %found_rnode

if.end37:                                         ; preds = %if.then33
  %sm_state.i.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.0.i, i32 0, i32 1
  %29 = ptrtoint ptr %sm_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sm_state.i.i.i, align 4
  %cmp.i.i.not = icmp eq ptr %30, @csio_rns_ready
  br i1 %cmp.i.i.not, label %do.end43, label %if.end37.found_rnode.sink.split_crit_edge

if.end37.found_rnode.sink.split_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %found_rnode.sink.split

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %hwp44 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %31 = ptrtoint ptr %hwp44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwp44, align 4
  %pdev45 = getelementptr inbounds %struct.csio_hw, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %pdev45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev45, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %dev_num47 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %35 = ptrtoint ptr %dev_num47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dev_num47, align 4
  %shr48 = lshr i32 %36, 16
  %and51 = and i32 %36, 65535
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev46, ptr noundef nonnull @.str.6, i32 noundef %shr48, i32 noundef %and51, i32 noundef %rdev_flowid) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/csiostor/csio_rnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 366, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

if.end65:                                         ; preds = %if.else
  %wwpn67 = getelementptr inbounds %struct.csio_rnode, ptr %tmp.0.i, i32 0, i32 10, i32 1
  %wwpn69 = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 13
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %wwpn67, ptr noundef dereferenceable(8) %wwpn69, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool72.not = icmp eq i32 %bcmp, 0
  br i1 %tobool72.not, label %if.end65.found_rnode_crit_edge, label %if.end65.for.cond.i202_crit_edge

if.end65.for.cond.i202_crit_edge:                 ; preds = %if.end65
  br label %for.cond.i202

if.end65.found_rnode_crit_edge:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %found_rnode

for.cond.i202:                                    ; preds = %for.body.i206.for.cond.i202_crit_edge, %if.end65.for.cond.i202_crit_edge
  %tmp.0.in.i199 = phi ptr [ %tmp.0.i200, %for.body.i206.for.cond.i202_crit_edge ], [ %rnhead1.i, %if.end65.for.cond.i202_crit_edge ]
  %37 = ptrtoint ptr %tmp.0.in.i199 to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp.0.i200 = load ptr, ptr %tmp.0.in.i199, align 4
  %cmp.i.not.i201 = icmp eq ptr %tmp.0.i200, %rnhead1.i
  br i1 %cmp.i.not.i201, label %for.cond.i202.if.else82_crit_edge, label %for.body.i206

for.cond.i202.if.else82_crit_edge:                ; preds = %for.cond.i202
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else82

for.body.i206:                                    ; preds = %for.cond.i202
  %wwpn4.i203 = getelementptr inbounds %struct.csio_rnode, ptr %tmp.0.i200, i32 0, i32 10, i32 1
  %bcmp.i204 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %wwpn4.i203, ptr noundef dereferenceable(8) %wwpn69, i32 8) #11
  %tobool6.not.i205 = icmp eq i32 %bcmp.i204, 0
  br i1 %tobool6.not.i205, label %csio_rn_lookup_wwpn.exit208, label %for.body.i206.for.cond.i202_crit_edge

for.body.i206.for.cond.i202_crit_edge:            ; preds = %for.body.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i202

csio_rn_lookup_wwpn.exit208:                      ; preds = %for.body.i206
  %cmp78.not = icmp eq ptr %tmp.0.i200, null
  br i1 %cmp78.not, label %csio_rn_lookup_wwpn.exit208.if.else82_crit_edge, label %csio_rn_lookup_wwpn.exit208.found_rnode.sink.split_crit_edge

csio_rn_lookup_wwpn.exit208.found_rnode.sink.split_crit_edge: ; preds = %csio_rn_lookup_wwpn.exit208
  call void @__sanitizer_cov_trace_pc() #9
  br label %found_rnode.sink.split

csio_rn_lookup_wwpn.exit208.if.else82_crit_edge:  ; preds = %csio_rn_lookup_wwpn.exit208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else82

if.else82:                                        ; preds = %csio_rn_lookup_wwpn.exit208.if.else82_crit_edge, %for.cond.i202.if.else82_crit_edge
  %sm_state.i.i.i209 = getelementptr inbounds %struct.csio_sm, ptr %tmp.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %sm_state.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sm_state.i.i.i209, align 4
  %cmp.i.i210.not = icmp eq ptr %39, @csio_rns_ready
  br i1 %cmp.i.i210.not, label %do.end88, label %if.else82.alloc_rnode.sink.split_crit_edge

if.else82.alloc_rnode.sink.split_crit_edge:       ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  br label %alloc_rnode.sink.split

do.end88:                                         ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  %hwp89 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %40 = ptrtoint ptr %hwp89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hwp89, align 4
  %pdev90 = getelementptr inbounds %struct.csio_hw, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %pdev90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev90, align 8
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %dev_num92 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %44 = ptrtoint ptr %dev_num92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dev_num92, align 4
  %shr93 = lshr i32 %45, 16
  %and96 = and i32 %45, 65535
  %46 = ptrtoint ptr %wwpn67 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %wwpn67, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev91, ptr noundef nonnull @.str.9, i32 noundef %shr93, i32 noundef %and96, i64 noundef %47, i32 noundef %rdev_flowid) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/csiostor/csio_rnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 404, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

found_rnode.sink.split:                           ; preds = %csio_rn_lookup_wwpn.exit208.found_rnode.sink.split_crit_edge, %if.end37.found_rnode.sink.split_crit_edge
  %rn.0.ph = phi ptr [ %tmp.0.i192, %if.end37.found_rnode.sink.split_crit_edge ], [ %tmp.0.i200, %csio_rn_lookup_wwpn.exit208.found_rnode.sink.split_crit_edge ]
  %48 = ptrtoint ptr %flowid4.i.le to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %flowid4.i.le, align 4
  br label %found_rnode

found_rnode:                                      ; preds = %found_rnode.sink.split, %if.end65.found_rnode_crit_edge, %if.then33.found_rnode_crit_edge, %csio_rn_lookup_wwpn.exit.found_rnode_crit_edge
  %rn.0 = phi ptr [ %tmp.0.i, %if.then33.found_rnode_crit_edge ], [ %tmp.0.i, %if.end65.found_rnode_crit_edge ], [ %tmp.0.i183, %csio_rn_lookup_wwpn.exit.found_rnode_crit_edge ], [ %rn.0.ph, %found_rnode.sink.split ]
  %flowid114 = getelementptr inbounds %struct.csio_rnode, ptr %rn.0, i32 0, i32 2
  %49 = ptrtoint ptr %flowid114 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %rdev_flowid, ptr %flowid114, align 4
  %rdev_entry = getelementptr inbounds %struct.csio_rnode, ptr %rn.0, i32 0, i32 9
  %50 = ptrtoint ptr %rdev_entry to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %rdevp, ptr %rdev_entry, align 4
  %n_rnode_match = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 7
  %51 = ptrtoint ptr %n_rnode_match to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_rnode_match, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %n_rnode_match, align 4
  br label %cleanup

alloc_rnode.sink.split:                           ; preds = %if.else82.alloc_rnode.sink.split_crit_edge, %if.end26.alloc_rnode.sink.split_crit_edge, %csio_rnode_lookup_portid.exit.alloc_rnode.sink.split_crit_edge, %for.cond.i194.alloc_rnode.sink.split_crit_edge
  %53 = ptrtoint ptr %flowid4.i.le to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %flowid4.i.le, align 4
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %alloc_rnode.sink.split, %csio_rn_lookup_wwpn.exit.for.cond.i.i.preheader_crit_edge, %for.cond.i185.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %tmp.0.in.i.i = phi ptr [ %tmp.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %rnhead1.i, %for.cond.i.i.preheader ]
  %54 = ptrtoint ptr %tmp.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %tmp.0.i.i = load ptr, ptr %tmp.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp.0.i.i, %rnhead1.i
  br i1 %cmp.i.not.i.i, label %for.cond.i.i.if.then.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.then.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %flowid4.i.i = getelementptr inbounds %struct.csio_rnode, ptr %tmp.0.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %flowid4.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flowid4.i.i, align 4
  %cmp.i.i212 = icmp eq i32 %56, %rdev_flowid
  br i1 %cmp.i.i212, label %csio_rn_lookup.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

csio_rn_lookup.exit.i:                            ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %tmp.0.i.i, null
  br i1 %tobool.not.i, label %csio_rn_lookup.exit.i.if.then.i_crit_edge, label %csio_rn_lookup.exit.i.if.end118_crit_edge

csio_rn_lookup.exit.i.if.end118_crit_edge:        ; preds = %csio_rn_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

csio_rn_lookup.exit.i.if.then.i_crit_edge:        ; preds = %csio_rn_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %csio_rn_lookup.exit.i.if.then.i_crit_edge, %for.cond.i.i.if.then.i_crit_edge
  %hwp.i.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %57 = ptrtoint ptr %hwp.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hwp.i.i, align 4
  %rnode_mempool.i.i = getelementptr inbounds %struct.csio_hw, ptr %58, i32 0, i32 45
  %59 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rnode_mempool.i.i, align 8
  %call.i.i = tail call noalias ptr @mempool_alloc(ptr noundef %60, i32 noundef 2592) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %csio_get_rnode.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  %61 = call ptr @memset(ptr %call.i.i, i32 0, i32 356)
  %lnp.i.i.i = getelementptr inbounds %struct.csio_rnode, ptr %call.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %lnp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %ln, ptr %lnp.i.i.i, align 4
  %sm_state.i.i.i.i.i = getelementptr inbounds %struct.csio_sm, ptr %call.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %sm_state.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @csio_rns_uninit, ptr %sm_state.i.i.i.i.i, align 4
  %host_cmpl_q.i.i.i = getelementptr inbounds %struct.csio_rnode, ptr %call.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %host_cmpl_q.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %host_cmpl_q.i.i.i, ptr %host_cmpl_q.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.csio_rnode, ptr %call.i.i, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %host_cmpl_q.i.i.i, ptr %prev.i.i.i.i, align 4
  %flowid.i.i.i = getelementptr inbounds %struct.csio_rnode, ptr %call.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %flowid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %flowid.i.i.i, align 4
  %prev.i1.i.i.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22, i32 1
  %67 = ptrtoint ptr %prev.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i1.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %68, ptr noundef %rnhead1.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.if.end.i213_crit_edge

if.end.i.i.if.end.i213_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i213

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %prev.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i.i, ptr %prev.i1.i.i.i, align 4
  %70 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %rnhead1.i, ptr %call.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %call.i.i, ptr %68, align 4
  br label %if.end.i213

if.end.i213:                                      ; preds = %if.end.i.i.i.i.i, %if.end.i.i.if.end.i213_crit_edge
  %n_rnode_alloc.i.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 12
  %73 = ptrtoint ptr %n_rnode_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %n_rnode_alloc.i.i, align 8
  %inc7.i.i = add i32 %74, 1
  store i32 %inc7.i.i, ptr %n_rnode_alloc.i.i, align 8
  %75 = ptrtoint ptr %flowid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %rdev_flowid, ptr %flowid.i.i.i, align 4
  br label %if.end118

csio_get_rnode.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %n_rnode_nomem.i.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 14
  %76 = ptrtoint ptr %n_rnode_nomem.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_rnode_nomem.i.i, align 8
  %inc7.i14.i = add i32 %77, 1
  store i32 %inc7.i14.i, ptr %n_rnode_nomem.i.i, align 8
  br label %cleanup

if.end118:                                        ; preds = %if.end.i213, %csio_rn_lookup.exit.i.if.end118_crit_edge
  %retval.0.i214.ph = phi ptr [ %call.i.i, %if.end.i213 ], [ %tmp.0.i.i, %csio_rn_lookup.exit.i.if.end118_crit_edge ]
  %rdev_entry119 = getelementptr inbounds %struct.csio_rnode, ptr %retval.0.i214.ph, i32 0, i32 9
  %78 = ptrtoint ptr %rdev_entry119 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %rdevp, ptr %rdev_entry119, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %csio_get_rnode.exit, %found_rnode, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i214.ph, %if.end118 ], [ %rn.0, %found_rnode ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %csio_get_rnode.exit ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_rnode_devloss_handler(ptr noundef %rn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_state.i.i.i = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %sm_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_state.i.i.i, align 4
  %cmp.i.i.not = icmp eq ptr %1, @csio_rns_ready
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void %1(ptr noundef %rn, i32 noundef 8) #7
  %2 = ptrtoint ptr %sm_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm_state.i.i.i, align 4
  %cmp.i.i10.not = icmp eq ptr %3, @csio_rns_uninit
  br i1 %cmp.i.i10.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %lnp.i.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 1
  %4 = ptrtoint ptr %lnp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lnp.i.i, align 4
  %hwp.i.i = getelementptr inbounds %struct.csio_lnode, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hwp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwp.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rn) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then3.csio_put_rnode.exit_crit_edge

if.then3.csio_put_rnode.exit_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %csio_put_rnode.exit

if.end.i.i.i.i.i:                                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %rn, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %rn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rn, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %csio_put_rnode.exit

csio_put_rnode.exit:                              ; preds = %if.end.i.i.i.i.i, %if.then3.csio_put_rnode.exit_crit_edge
  %14 = ptrtoint ptr %rn to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %rn, ptr %rn, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %rn, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rn, ptr %prev.i3.i.i.i.i, align 4
  %16 = ptrtoint ptr %lnp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lnp.i.i, align 4
  %n_rnode_free.i.i = getelementptr inbounds %struct.csio_lnode, ptr %17, i32 0, i32 29, i32 13
  %18 = ptrtoint ptr %n_rnode_free.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_rnode_free.i.i, align 4
  %inc.i.i = add i32 %19, 1
  store i32 %inc.i.i, ptr %n_rnode_free.i.i, align 4
  %rnode_mempool.i.i = getelementptr inbounds %struct.csio_hw, ptr %7, i32 0, i32 45
  %20 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rnode_mempool.i.i, align 8
  tail call void @mempool_free(ptr noundef %rn, ptr noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %csio_put_rnode.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_rnode_fwevt_handler(ptr noundef %rn, i8 noundef zeroext %fwevt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnp, align 4
  %conv = zext i8 %fwevt to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %fwevt)
  %cmp = icmp ugt i8 %fwevt, 26
  br i1 %cmp, label %entry.do.end_crit_edge, label %cond.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

cond.end:                                         ; preds = %entry
  %2 = lshr i32 62892613, %conv
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %if.end, label %cond.end.do.end_crit_edge

cond.end.do.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %cond.end.do.end_crit_edge, %entry.do.end_crit_edge
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwp, align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %dev_num = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_num, align 4
  %shr = lshr i32 %9, 16
  %and3 = and i32 %9, 65535
  %flowid = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 2
  %10 = ptrtoint ptr %flowid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flowid, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %shr, i32 noundef %and3, i32 noundef %11, i32 noundef %conv) #10
  %n_evt_unexp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 3
  %12 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_evt_unexp, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %n_evt_unexp, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %arrayidx = getelementptr [27 x i32], ptr @fwevt_to_rnevt, i32 0, i32 %conv
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 5, i32 %conv
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7, align 4
  %inc8 = add i32 %17, 1
  store i32 %inc8, ptr %arrayidx7, align 4
  %cur_evt = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 6
  %18 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 7
  %20 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %prev_evt, align 1
  store i8 %fwevt, ptr %cur_evt, align 2
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %21 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sm_state.i, align 4
  tail call void %22(ptr noundef %rn, i32 noundef %15) #7
  %23 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sm_state.i, align 4
  %cmp.i.i.not = icmp eq ptr %24, @csio_rns_uninit
  br i1 %cmp.i.i.not, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end
  %25 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lnp, align 4
  %hwp.i.i = getelementptr inbounds %struct.csio_lnode, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %hwp.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwp.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rn) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then11.csio_put_rnode.exit_crit_edge

if.then11.csio_put_rnode.exit_crit_edge:          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %csio_put_rnode.exit

if.end.i.i.i.i.i:                                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %rn, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %rn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rn, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %csio_put_rnode.exit

csio_put_rnode.exit:                              ; preds = %if.end.i.i.i.i.i, %if.then11.csio_put_rnode.exit_crit_edge
  %35 = ptrtoint ptr %rn to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %rn, ptr %rn, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %rn, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rn, ptr %prev.i3.i.i.i.i, align 4
  %37 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lnp, align 4
  %n_rnode_free.i.i = getelementptr inbounds %struct.csio_lnode, ptr %38, i32 0, i32 29, i32 13
  %39 = ptrtoint ptr %n_rnode_free.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_rnode_free.i.i, align 4
  %inc.i.i = add i32 %40, 1
  store i32 %inc.i.i, ptr %n_rnode_free.i.i, align 4
  %rnode_mempool.i.i = getelementptr inbounds %struct.csio_hw, ptr %28, i32 0, i32 45
  %41 = ptrtoint ptr %rnode_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rnode_mempool.i.i, align 8
  tail call void @mempool_free(ptr noundef %rn, ptr noundef %42) #7
  br label %cleanup

cleanup:                                          ; preds = %csio_put_rnode.exit, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_rns_uninit(ptr noundef %rn, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnp, align 4
  %arrayidx = getelementptr %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 6, i32 %evt
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %evt, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge17
    i32 5, label %sw.bb3
  ]

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge17
  %rdev_entry = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 9
  %5 = ptrtoint ptr %rdev_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev_entry, align 4
  %call = tail call fastcc i32 @csio_rn_verify_rparams(ptr noundef %1, ptr noundef %rn, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %7 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @csio_rns_ready, ptr %sm_state.i, align 4
  %8 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lnp, align 4
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwp.i, align 4
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  tail call void @csio_reg_rnode(ptr noundef %rn) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %role.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %12 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %role.i, align 4
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %n_scsi_tgts.i = getelementptr inbounds %struct.csio_lnode, ptr %9, i32 0, i32 24
  %14 = ptrtoint ptr %n_scsi_tgts.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_scsi_tgts.i, align 8
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %n_scsi_tgts.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %nport_id.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 4
  %16 = ptrtoint ptr %nport_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nport_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777210, i32 %17)
  %cmp.i = icmp eq i32 %17, 16777210
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @csio_ln_fdmi_start(ptr noundef %9, ptr noundef %rn) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %n_err_inval = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %n_err_inval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_err_inval, align 4
  %inc2 = add i32 %19, 1
  store i32 %inc2, ptr %n_err_inval, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %n_evt_drop = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 4
  %20 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_evt_drop, align 4
  %inc5 = add i32 %21, 1
  store i32 %inc5, ptr %n_evt_drop, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %n_evt_unexp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 3
  %22 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_evt_unexp, align 4
  %inc7 = add i32 %23, 1
  store i32 %inc7, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %if.else, %if.then2.i, %if.end.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_rn_verify_rparams(ptr nocapture noundef %ln, ptr nocapture noundef %rn, ptr nocapture noundef readonly %rdevp) unnamed_addr #1 align 64 {
entry:
  %null = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %null) #7
  %r_id = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 16
  %rd_xfer_rdy_to_rport_type = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 8
  %0 = ptrtoint ptr %rd_xfer_rdy_to_rport_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rd_xfer_rdy_to_rport_type, align 4
  %2 = and i8 %1, 31
  %conv2 = zext i8 %2 to i32
  %3 = zext i32 %conv2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %conv2, label %do.end99 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb15
    i32 4, label %entry.sw.bb35_crit_edge
    i32 5, label %entry.sw.bb35_crit_edge235
    i32 6, label %entry.sw.bb95_crit_edge
    i32 7, label %entry.sw.bb95_crit_edge236
  ]

entry.sw.bb95_crit_edge236:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb95

entry.sw.bb95_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb95

entry.sw.bb35_crit_edge235:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb35

entry.sw.bb35_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb35

sw.bb:                                            ; preds = %entry
  %role = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %4 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %role, align 4
  %5 = ptrtoint ptr %r_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r_id, align 4
  %shr3.mask = and i32 %6, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %shr3.mask)
  %cmp.not = icmp eq i32 %shr3.mask, -512
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %7 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwp, align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %dev_num = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %11 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_num, align 4
  %shr6 = lshr i32 %12, 16
  %and9 = and i32 %12, 65535
  %flowid = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 2
  %13 = ptrtoint ptr %flowid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flowid, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %shr6, i32 noundef %and9, i32 noundef %14) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %vft_to_qos = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 9
  %15 = ptrtoint ptr %vft_to_qos to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vft_to_qos, align 1
  %17 = and i8 %16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.sw.epilog_crit_edge, label %if.then13

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %or = or i32 %19, 2
  store i32 %or, ptr %flags, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %role16 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %20 = ptrtoint ptr %role16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %role16, align 4
  %21 = ptrtoint ptr %r_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r_id, align 4
  %shr17.mask = and i32 %22, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %shr17.mask)
  %cmp19.not = icmp eq i32 %shr17.mask, -1024
  br i1 %cmp19.not, label %sw.bb15.sw.epilog_crit_edge, label %do.end24

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end24:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %hwp25 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %23 = ptrtoint ptr %hwp25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hwp25, align 4
  %pdev26 = getelementptr inbounds %struct.csio_hw, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev26, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %dev_num28 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %27 = ptrtoint ptr %dev_num28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_num28, align 4
  %shr29 = lshr i32 %28, 16
  %and32 = and i32 %28, 65535
  %flowid33 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 2
  %29 = ptrtoint ptr %flowid33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flowid33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.14, i32 noundef %shr29, i32 noundef %and32, i32 noundef %30) #10
  br label %cleanup

sw.bb35:                                          ; preds = %entry.sw.bb35_crit_edge, %entry.sw.bb35_crit_edge235
  %role36 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %31 = ptrtoint ptr %role36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %role36, align 4
  %event_cause = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 2
  %32 = ptrtoint ptr %event_cause to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %event_cause, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %33, label %sw.bb35.sw.epilog_crit_edge [
    i8 5, label %sw.bb35.if.then44_crit_edge
    i8 7, label %sw.bb35.if.then44_crit_edge237
  ]

sw.bb35.if.then44_crit_edge237:                   ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

sw.bb35.if.then44_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then44:                                        ; preds = %sw.bb35.if.then44_crit_edge, %sw.bb35.if.then44_crit_edge237
  %enh_disc_to_tgt = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 11
  %35 = ptrtoint ptr %enh_disc_to_tgt to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enh_disc_to_tgt, align 1
  %37 = and i8 %36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool48.not = icmp eq i8 %37, 0
  br i1 %tobool48.not, label %if.then44.if.end53_crit_edge, label %if.then49

if.then44.if.end53_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %fcp_flags = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 5
  %38 = ptrtoint ptr %fcp_flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fcp_flags, align 4
  %40 = or i16 %39, 64
  store i16 %40, ptr %fcp_flags, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.then44.if.end53_crit_edge
  %41 = ptrtoint ptr %enh_disc_to_tgt to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enh_disc_to_tgt, align 1
  %43 = and i8 %42, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool58.not = icmp eq i8 %43, 0
  br i1 %tobool58.not, label %if.end53.if.end64_crit_edge, label %if.then59

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %fcp_flags60 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 5
  %44 = ptrtoint ptr %fcp_flags60 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %fcp_flags60, align 4
  %46 = or i16 %45, 256
  store i16 %46, ptr %fcp_flags60, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end53.if.end64_crit_edge
  %47 = ptrtoint ptr %enh_disc_to_tgt to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enh_disc_to_tgt, align 1
  %49 = and i8 %48, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool69.not = icmp eq i8 %49, 0
  br i1 %tobool69.not, label %if.end64.if.end75_crit_edge, label %if.then70

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %fcp_flags71 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 5
  %50 = ptrtoint ptr %fcp_flags71 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %fcp_flags71, align 4
  %52 = or i16 %51, 128
  store i16 %52, ptr %fcp_flags71, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %if.end64.if.end75_crit_edge
  %53 = ptrtoint ptr %enh_disc_to_tgt to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %enh_disc_to_tgt, align 1
  %55 = and i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool80.not = icmp eq i8 %55, 0
  br i1 %tobool80.not, label %if.end75.if.end84_crit_edge, label %if.then81

if.end75.if.end84_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %role36 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 18, ptr %role36, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end75.if.end84_crit_edge
  %57 = ptrtoint ptr %enh_disc_to_tgt to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %enh_disc_to_tgt, align 1
  %59 = and i8 %58, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool89.not = icmp eq i8 %59, 0
  br i1 %tobool89.not, label %if.end84.sw.epilog_crit_edge, label %if.then90

if.end84.sw.epilog_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %role36 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %role36, align 4
  %or92 = or i32 %61, 1
  store i32 %or92, ptr %role36, align 4
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry.sw.bb95_crit_edge, %entry.sw.bb95_crit_edge236
  %role96 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %62 = ptrtoint ptr %role96 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %role96, align 4
  br label %sw.epilog

do.end99:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hwp100 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %63 = ptrtoint ptr %hwp100 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hwp100, align 4
  %pdev101 = getelementptr inbounds %struct.csio_hw, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %pdev101 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev101, align 8
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %dev_num103 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %67 = ptrtoint ptr %dev_num103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dev_num103, align 4
  %shr104 = lshr i32 %68, 16
  %and107 = and i32 %68, 65535
  %flowid108 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 2
  %69 = ptrtoint ptr %flowid108 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flowid108, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev102, ptr noundef nonnull @.str.19, i32 noundef %shr104, i32 noundef %and107, i32 noundef %70, i32 noundef %conv2) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb95, %if.then90, %if.end84.sw.epilog_crit_edge, %sw.bb35.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %if.then13, %if.end.sw.epilog_crit_edge
  %trunc = trunc i8 %1 to i5
  %71 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.31)
  switch i5 %trunc, label %sw.epilog.if.end155_crit_edge [
    i5 5, label %sw.epilog.if.then117_crit_edge
    i5 3, label %sw.epilog.if.then117_crit_edge238
  ]

sw.epilog.if.then117_crit_edge238:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

sw.epilog.if.then117_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

sw.epilog.if.end155_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then117:                                       ; preds = %sw.epilog.if.then117_crit_edge, %sw.epilog.if.then117_crit_edge238
  %72 = ptrtoint ptr %null to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %null, align 8
  %wwnn = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 12
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %wwnn, ptr noundef nonnull dereferenceable(8) %null, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool120.not = icmp eq i32 %bcmp, 0
  br i1 %tobool120.not, label %do.end124, label %if.end135

do.end124:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  %hwp125 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %73 = ptrtoint ptr %hwp125 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hwp125, align 4
  %pdev126 = getelementptr inbounds %struct.csio_hw, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %pdev126 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev126, align 8
  %dev127 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %dev_num128 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %77 = ptrtoint ptr %dev_num128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dev_num128, align 4
  %shr129 = lshr i32 %78, 16
  %and132 = and i32 %78, 65535
  %flowid133 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 2
  %79 = ptrtoint ptr %flowid133 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flowid133, align 4
  %81 = ptrtoint ptr %r_id to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %r_id, align 4
  %and134 = and i32 %82, 16777215
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev127, ptr noundef nonnull @.str.22, i32 noundef %shr129, i32 noundef %and132, i32 noundef %80, i32 noundef %and134) #10
  br label %cleanup

if.end135:                                        ; preds = %if.then117
  %wwpn = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 13
  %bcmp234 = call i32 @bcmp(ptr noundef dereferenceable(8) %wwpn, ptr noundef nonnull dereferenceable(8) %null, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp234)
  %tobool139.not = icmp eq i32 %bcmp234, 0
  br i1 %tobool139.not, label %do.end143, label %if.end135.if.end155_crit_edge

if.end135.if.end155_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

do.end143:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %hwp144 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %83 = ptrtoint ptr %hwp144 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hwp144, align 4
  %pdev145 = getelementptr inbounds %struct.csio_hw, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %pdev145 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev145, align 8
  %dev146 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %dev_num147 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %87 = ptrtoint ptr %dev_num147 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dev_num147, align 4
  %shr148 = lshr i32 %88, 16
  %and151 = and i32 %88, 65535
  %flowid152 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 2
  %89 = ptrtoint ptr %flowid152 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flowid152, align 4
  %91 = ptrtoint ptr %r_id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %r_id, align 4
  %and153 = and i32 %92, 16777215
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev146, ptr noundef nonnull @.str.25, i32 noundef %shr148, i32 noundef %and151, i32 noundef %90, i32 noundef %and153) #10
  br label %cleanup

if.end155:                                        ; preds = %if.end135.if.end155_crit_edge, %sw.epilog.if.end155_crit_edge
  %93 = ptrtoint ptr %r_id to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %r_id, align 4
  %shr156 = lshr i32 %94, 8
  %nport_id = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 4
  %95 = ptrtoint ptr %nport_id to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %shr156, ptr %nport_id, align 4
  %wwnn158 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 10, i32 2
  %wwnn160 = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 12
  %96 = ptrtoint ptr %wwnn160 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 8)
  %97 = load i64, ptr %wwnn160, align 4
  %98 = ptrtoint ptr %wwnn158 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 %97, ptr %wwnn158, align 4
  %wwpn163 = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 10, i32 1
  %wwpn165 = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 13
  %99 = ptrtoint ptr %wwpn165 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 8)
  %100 = load i64, ptr %wwpn165, align 4
  %101 = ptrtoint ptr %wwpn163 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %100, ptr %wwpn163, align 4
  %rcv_fr_sz = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 7
  %102 = ptrtoint ptr %rcv_fr_sz to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %rcv_fr_sz, align 2
  %sp_bb_data = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 10, i32 0, i32 4
  %104 = ptrtoint ptr %sp_bb_data to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %sp_bb_data, align 2
  %vft_to_qos168 = getelementptr inbounds %struct.fcoe_rdev_entry, ptr %rdevp, i32 0, i32 9
  %105 = ptrtoint ptr %vft_to_qos168 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %vft_to_qos168, align 1
  %107 = lshr i8 %106, 4
  %108 = and i8 %107, 3
  %conv174 = zext i8 %108 to i32
  %sub = add nsw i32 %conv174, -1
  %arrayidx175 = getelementptr %struct.csio_rnode, ptr %rn, i32 0, i32 10, i32 3, i32 %sub
  %109 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 -32768, ptr %arrayidx175, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end155, %do.end143, %do.end124, %do.end99, %do.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end99 ], [ 0, %if.end155 ], [ -22, %do.end143 ], [ -22, %do.end124 ], [ -22, %do.end24 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %null) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_reg_rnode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_ln_fdmi_start(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_rns_offline(ptr noundef %rn, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnp, align 4
  %arrayidx = getelementptr %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 6, i32 %evt
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %evt, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge28
    i32 7, label %sw.bb4
    i32 8, label %sw.bb7
    i32 9, label %sw.bb9
  ]

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge28
  %rdev_entry = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 9
  %5 = ptrtoint ptr %rdev_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev_entry, align 4
  %call = tail call fastcc i32 @csio_rn_verify_rparams(ptr noundef %1, ptr noundef %rn, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %7 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @csio_rns_ready, ptr %sm_state.i, align 4
  %8 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lnp, align 4
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwp.i, align 4
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  tail call void @csio_reg_rnode(ptr noundef %rn) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %role.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %12 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %role.i, align 4
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %n_scsi_tgts.i = getelementptr inbounds %struct.csio_lnode, ptr %9, i32 0, i32 24
  %14 = ptrtoint ptr %n_scsi_tgts.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_scsi_tgts.i, align 8
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %n_scsi_tgts.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %nport_id.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 4
  %16 = ptrtoint ptr %nport_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nport_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777210, i32 %17)
  %cmp.i = icmp eq i32 %17, 16777210
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @csio_ln_fdmi_start(ptr noundef %9, ptr noundef %rn) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %n_err_inval = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %n_err_inval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_err_inval, align 4
  %inc2 = add i32 %19, 1
  store i32 %inc2, ptr %n_err_inval, align 4
  %sm_state.i25 = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %20 = ptrtoint ptr %sm_state.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sm_state.i25, align 4
  tail call void %21(ptr noundef %rn, i32 noundef 8) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %n_evt_drop = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 4
  %22 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_evt_drop, align 4
  %inc6 = add i32 %23, 1
  store i32 %inc6, ptr %n_evt_drop, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm_state.i26 = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %24 = ptrtoint ptr %sm_state.i26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @csio_rns_uninit, ptr %sm_state.i26, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm_state.i27 = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %25 = ptrtoint ptr %sm_state.i27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @csio_rns_disappeared, ptr %sm_state.i27, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %n_evt_unexp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 3
  %26 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_evt_unexp, align 4
  %inc12 = add i32 %27, 1
  store i32 %inc12, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb7, %sw.bb4, %if.else, %if.then2.i, %if.end.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__csio_unreg_rnode(ptr noundef %rn) unnamed_addr #1 align 64 {
entry:
  %tmp_q = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnp, align 4
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_q) #7
  %4 = getelementptr inbounds %struct.list_head, ptr %tmp_q, i32 0, i32 1
  %5 = ptrtoint ptr %tmp_q to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tmp_q, ptr %tmp_q, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tmp_q, ptr %4, align 4
  %host_cmpl_q = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 3
  %7 = ptrtoint ptr %host_cmpl_q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %host_cmpl_q, align 4
  %cmp.i.not = icmp eq ptr %8, %host_cmpl_q
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %host_cmpl_q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %host_cmpl_q, align 4
  %cmp.i.not.i = icmp eq ptr %10, %host_cmpl_q
  br i1 %cmp.i.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev2.i.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tmp_q, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %tmp_q to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %tmp_q, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tmp_q, ptr %12, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %4, align 4
  %17 = ptrtoint ptr %host_cmpl_q to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %host_cmpl_q, ptr %host_cmpl_q, align 4
  store ptr %host_cmpl_q, ptr %prev2.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %role = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %18 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %role, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %n_scsi_tgts = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %n_scsi_tgts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_scsi_tgts, align 8
  %dec = add i32 %21, -1
  store i32 %dec, ptr %n_scsi_tgts, align 8
  %last_scan_ntgts = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 25
  %22 = ptrtoint ptr %last_scan_ntgts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_scan_ntgts, align 4
  %dec4 = add i32 %23, -1
  store i32 %dec4, ptr %last_scan_ntgts, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %lock = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  call void @csio_unreg_rnode(ptr noundef %rn) #7
  call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  br i1 %cmp.i.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %scsim = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 2
  call void @csio_scsi_cleanup_io_q(ptr noundef %scsim, ptr noundef nonnull %tmp_q) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_q) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_rns_disappeared(ptr noundef %rn, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 1
  %0 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnp, align 4
  %arrayidx = getelementptr %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 6, i32 %evt
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %evt, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge21
    i32 8, label %sw.bb4
    i32 7, label %entry.sw.epilog_crit_edge
    i32 9, label %entry.sw.epilog_crit_edge22
  ]

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21
  %rdev_entry = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 9
  %5 = ptrtoint ptr %rdev_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev_entry, align 4
  %call = tail call fastcc i32 @csio_rn_verify_rparams(ptr noundef %1, ptr noundef %rn, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %7 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @csio_rns_ready, ptr %sm_state.i, align 4
  %8 = ptrtoint ptr %lnp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lnp, align 4
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwp.i, align 4
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  tail call void @csio_reg_rnode(ptr noundef %rn) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %role.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 8
  %12 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %role.i, align 4
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %n_scsi_tgts.i = getelementptr inbounds %struct.csio_lnode, ptr %9, i32 0, i32 24
  %14 = ptrtoint ptr %n_scsi_tgts.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_scsi_tgts.i, align 8
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %n_scsi_tgts.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %nport_id.i = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 4
  %16 = ptrtoint ptr %nport_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nport_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777210, i32 %17)
  %cmp.i = icmp eq i32 %17, 16777210
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @csio_ln_fdmi_start(ptr noundef %9, ptr noundef %rn) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %n_err_inval = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %n_err_inval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_err_inval, align 4
  %inc2 = add i32 %19, 1
  store i32 %inc2, ptr %n_err_inval, align 4
  %sm_state.i19 = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %20 = ptrtoint ptr %sm_state.i19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sm_state.i19, align 4
  tail call void %21(ptr noundef %rn, i32 noundef 8) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm_state.i20 = getelementptr inbounds %struct.csio_sm, ptr %rn, i32 0, i32 1
  %22 = ptrtoint ptr %sm_state.i20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @csio_rns_uninit, ptr %sm_state.i20, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %n_evt_unexp = getelementptr inbounds %struct.csio_rnode, ptr %rn, i32 0, i32 15, i32 3
  %23 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_evt_unexp, align 4
  %inc8 = add i32 %24, 1
  store i32 %inc8, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %if.else, %if.then2.i, %if.end.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_unreg_rnode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_scsi_cleanup_io_q(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/csiostor/csio_rnode.c", i32 326, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @csio_confirm_rnode._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @csio_confirm_rnode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/csiostor/csio_rnode.c", i32 362, i32 6}
!10 = !{ptr @csio_confirm_rnode._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @csio_confirm_rnode._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/csiostor/csio_rnode.c", i32 399, i32 5}
!14 = !{ptr @csio_confirm_rnode._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @csio_confirm_rnode._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/csiostor/csio_rnode.c", i32 875, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @csio_rnode_fwevt_handler._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @csio_rnode_fwevt_handler._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/csiostor/csio_rnode.c", i32 459, i32 4}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @csio_rn_verify_rparams._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @csio_rn_verify_rparams._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @csio_rn_verify_rparams._entry.16, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/scsi/csiostor/csio_rnode.c", i32 472, i32 4}
!29 = !{ptr @csio_rn_verify_rparams._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/csiostor/csio_rnode.c", i32 508, i32 3}
!32 = !{ptr @csio_rn_verify_rparams._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @csio_rn_verify_rparams._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/csiostor/csio_rnode.c", i32 517, i32 4}
!36 = !{ptr @csio_rn_verify_rparams._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @csio_rn_verify_rparams._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/csiostor/csio_rnode.c", i32 526, i32 4}
!40 = !{ptr @csio_rn_verify_rparams._entry.24, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @csio_rn_verify_rparams._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @fwevt_to_rnevt, !43, !"fwevt_to_rnevt", i1 false, i1 false}
!43 = !{!"../drivers/scsi/csiostor/csio_rnode.c", i32 55, i32 24}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2156152990, i64 2156153489, i64 2156153027, i64 2156153083, i64 2156153117, i64 2156153141, i64 2156153182, i64 2156153203, i64 2156153231, i64 2156153265}
!54 = !{i64 2156157995, i64 2156158494, i64 2156158032, i64 2156158088, i64 2156158122, i64 2156158146, i64 2156158187, i64 2156158208, i64 2156158236, i64 2156158270}
