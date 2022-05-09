; ModuleID = '/llk/IR_all_yes/drivers/scsi/csiostor/csio_lnode.c_pt.bc'
source_filename = "../drivers/scsi/csiostor/csio_lnode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.csio_hw = type { %struct.csio_sm, %struct.spinlock, %struct.csio_scsim, %struct.csio_wrm, ptr, ptr, i32, i32, [4 x [128 x %struct.csio_scsi_qset]], [4 x %struct.csio_scsi_cpu_info], i32, i32, %struct.csio_mgmtm, %struct.csio_mbm, i32, ptr, %struct.list_head, i32, i32, %struct.work_struct, %struct.list_head, %struct.list_head, [32 x i8], [16 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i8, i16, i32, %struct.csio_vpd, i8, i32, i8, i8, i8, i8, i32, [4 x %struct.csio_pport], %struct.csio_hw_params, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.csio_fcoe_res_info, ptr, [514 x %struct.csio_msix_entries], ptr, %struct.csio_hw_stats }
%struct.csio_sm = type { %struct.list_head, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.csio_vpd = type { i32, [17 x i8], [17 x i8], [17 x i8] }
%struct.csio_pport = type { i16, i16, i8, i8, i16, [6 x i8], i8, i8, i8, i8, %struct.link_config }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.csio_hw_params = type { i32, i32, %struct.pci_params, i32 }
%struct.pci_params = type { i16, i16, i32, i16, i8 }
%struct.csio_fcoe_res_info = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_msix_entries = type { ptr, [24 x i8] }
%struct.csio_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], i64, i32 }
%struct.csio_lnode = type { %struct.csio_sm, ptr, i8, i8, i16, i32, i32, %struct.list_head, ptr, ptr, [6 x i8], i32, %struct.csio_service_parms, i32, i32, i16, i8, i8, %struct.list_head, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, %struct.fc_host_statistics, %struct.csio_lnode_stats, %struct.csio_lnode_params }
%struct.csio_service_parms = type { %struct.fc_els_csp, [8 x i8], [8 x i8], [4 x %struct.fc_els_cssp], [16 x i8] }
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.80, i32 }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.csio_lnode_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [27 x i32], [7 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_lnode_params = type { i32, i32, i32 }
%struct.csio_ioreq = type { %struct.csio_sm, i32, i32, i32, i32, i32, %struct.csio_dma_buf, i16, i16, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, i8, i8, i16, %struct.completion, [100 x i8] }
%struct.csio_dma_buf = type { %struct.list_head, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fc_ct_hdr = type { i8, [3 x i8], i8, i8, i8, i8, i16, i16, i8, i8, i8, i8 }
%struct.csio_wr_pair = type { ptr, i32, ptr, i32 }
%struct.ulptx_sgl = type { i32, i32, i64, [0 x %struct.ulptx_sge_pair] }
%struct.ulptx_sge_pair = type { [2 x i32], [2 x i64] }
%struct.csio_rnode = type { %struct.csio_sm, ptr, i32, %struct.list_head, i32, i16, i8, i8, i32, ptr, %struct.csio_service_parms, ptr, i32, i32, i32, %struct.csio_rnode_stats }
%struct.csio_rnode_stats = type { i32, i32, i32, i32, i32, [27 x i32], [10 x i32], i32, i32, i32, i32 }
%struct.fw_fcoe_els_ct_wr = type { i32, i32, i64, i16, i8, i8, i8, i8, i16, i8, [3 x i8], i8, [3 x i8], i64, i32, i32 }
%struct.csio_q = type { i16, i16, i16, i16, i32, ptr, ptr, i32, ptr, %union.anon.2, i32, i32, i32, %struct.csio_qstats, [44 x i8] }
%union.anon.2 = type { %struct.csio_iq, [500 x i8] }
%struct.csio_iq = type { i16, i16, i16, i32, ptr }
%struct.csio_qstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
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
%struct.fw_fcoe_port_cmd_params = type { i8, i8, i8 }
%struct.fw_fcoe_link_cmd = type { i32, i32, i32, i8, i8, i16, i8, i8, i16, i32, i16, [6 x i8], [8 x i8], [8 x i8] }
%struct.csio_fcf_info = type { %struct.list_head, i8, [6 x i8], [8 x i8], [8 x i8], i16, i8, i16, [3 x i8], i32, i32, i8, i8, [6 x i8], %struct.kref }
%struct.fw_rdev_wr = type { i32, i32, i64, i8, i8, i8, i8, i32, %union.rdev_entry }
%union.rdev_entry = type { %struct.iscsi_rdev_entry }
%struct.iscsi_rdev_entry = type { i32, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i8], i16 }
%struct.fw_cmd_hdr = type { i32, i32 }
%struct.csio_mb = type { %struct.list_head, [8 x i64], i32, i32, %struct.completion, ptr, ptr }
%struct.fc_fdmi_attr_entry = type <{ i16, i16, [1 x i8] }>
%struct.fw_fcoe_fcf_cmd = type { i32, i32, i16, [6 x i8], [8 x i8], [8 x i8], i16, i16, i8, [3 x i8], i32, i32, i8, i8, [6 x i8], i64 }
%struct.fw_fcoe_vnp_cmd = type { i32, i32, i32, i32, i16, [6 x i8], [8 x i8], [8 x i8], [16 x i8], [8 x i8] }

@csio_fcoe_rnodes = dso_local global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@csio_fdmi_enable = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UNINIT\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"READY\00", [26 x i8] zeroinitializer }, align 32
@csio_get_phy_port_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1396, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FCoE FCF PARAMS command out of memory!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"csio_get_phy_port_stats\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/csiostor/csio_lnode.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csio_get_phy_port_stats._entry_ptr = internal global ptr @csio_get_phy_port_stats._entry, section ".printk_index", align 4
@csio_get_phy_port_stats._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1409, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Issue of FCoE port params failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@csio_get_phy_port_stats._entry_ptr.11 = internal global ptr @csio_get_phy_port_stats._entry.9, section ".printk_index", align 4
@csio_fcoe_fwevt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 1521, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unexpected FCOE LINK status:0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"csio_fcoe_fwevt_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@csio_fcoe_fwevt_handler._entry_ptr = internal global ptr @csio_fcoe_fwevt_handler._entry, section ".printk_index", align 4
@csio_fcoe_fwevt_handler._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.6, i32 1546, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"FW_RDEV_WR: invalid proto:x%x received with flowid:x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@csio_fcoe_fwevt_handler._entry_ptr.17 = internal global ptr @csio_fcoe_fwevt_handler._entry.15, section ".printk_index", align 4
@csio_fcoe_fwevt_handler._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.6, i32 1557, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"FW_DEV_WR: invalid vnpi:x%x received with flowid:x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@csio_fcoe_fwevt_handler._entry_ptr.20 = internal global ptr @csio_fcoe_fwevt_handler._entry.18, section ".printk_index", align 4
@csio_fcoe_fwevt_handler._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.6, i32 1594, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unexpected WR op(0x%x) recv\0A\00", [35 x i8] zeroinitializer }, align 32
@csio_fcoe_fwevt_handler._entry_ptr.23 = internal global ptr @csio_fcoe_fwevt_handler._entry.21, section ".printk_index", align 4
@csio_fcoe_fwevt_handler._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.6, i32 1604, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@csio_fcoe_fwevt_handler._entry_ptr.25 = internal global ptr @csio_fcoe_fwevt_handler._entry.24, section ".printk_index", align 4
@csio_fcoe_fwevt_handler._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.6, i32 1608, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unexpected CPL op(0x%x) recv\0A\00", [34 x i8] zeroinitializer }, align 32
@csio_fcoe_fwevt_handler._entry_ptr.28 = internal global ptr @csio_fcoe_fwevt_handler._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chelsio Communications\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s %s\00", [23 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csiostor\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@csio_lns_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 1176, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%x:%x warn: FCOE link is up already Ignoring linkup on port:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csio_lns_online\00", [16 x i8] zeroinitializer }, align 32
@csio_lns_online._entry_ptr = internal global ptr @csio_lns_online._entry, section ".printk_index", align 4
@csio_ln_read_fcf_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 848, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to issue FCOE FCF cmd\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csio_ln_read_fcf_entry\00", [41 x i8] zeroinitializer }, align 32
@csio_ln_read_fcf_entry._entry_ptr = internal global ptr @csio_ln_read_fcf_entry._entry, section ".printk_index", align 4
@csio_ln_read_fcf_cbfn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 794, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%x:%x FCOE FCF cmd failed with ret x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_ln_read_fcf_cbfn\00", [42 x i8] zeroinitializer }, align 32
@csio_ln_read_fcf_cbfn._entry_ptr = internal global ptr @csio_ln_read_fcf_cbfn._entry, section ".printk_index", align 4
@csio_ln_vnp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 702, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to issue mbox FCoE VNP command\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"csio_ln_vnp_read\00", [47 x i8] zeroinitializer }, align 32
@csio_ln_vnp_read._entry_ptr = internal global ptr @csio_ln_vnp_read._entry, section ".printk_index", align 4
@csio_ln_vnp_read_cbfn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 626, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FCOE VNP read cmd returned error:0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_ln_vnp_read_cbfn\00", [42 x i8] zeroinitializer }, align 32
@csio_ln_vnp_read_cbfn._entry_ptr = internal global ptr @csio_ln_vnp_read_cbfn._entry, section ".printk_index", align 4
@csio_handle_link_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.6, i32 885, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to lookup fcoe lnode on port:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"csio_handle_link_up\00", [44 x i8] zeroinitializer }, align 32
@csio_handle_link_up._entry_ptr = internal global ptr @csio_handle_link_up._entry, section ".printk_index", align 4
@csio_handle_link_up._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.6, i32 900, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to allocate fcoe lnodefor port:%d vnpi:x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@csio_handle_link_up._entry_ptr.47 = internal global ptr @csio_handle_link_up._entry.45, section ".printk_index", align 4
@csio_handle_link_up._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.6, i32 914, ptr @.str.50, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Port:%d - FCOE LINK UP\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@csio_handle_link_up._entry_ptr.51 = internal global ptr @csio_handle_link_up._entry.48, section ".printk_index", align 4
@csio_handle_link_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 1052, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%x:%x warn: FCOE link is already in offline Ignoring Fcoe linkdown event on portid %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_handle_link_down\00", [42 x i8] zeroinitializer }, align 32
@csio_handle_link_down._entry_ptr = internal global ptr @csio_handle_link_down._entry, section ".printk_index", align 4
@csio_handle_link_down._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.6, i32 1061, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%x:%x warn: FCOE linkdown recv with invalid port %d\0A\00", [43 x i8] zeroinitializer }, align 32
@csio_handle_link_down._entry_ptr.56 = internal global ptr @csio_handle_link_down._entry.54, section ".printk_index", align 4
@csio_handle_link_down._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.6, i32 1070, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%x:%x warn: FCOE linkdown recv with invalid fcfi x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@csio_handle_link_down._entry_ptr.59 = internal global ptr @csio_handle_link_down._entry.57, section ".printk_index", align 4
@csio_handle_link_down._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.6, i32 1075, ptr @.str.50, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Port:%d - FCOE LINK DOWN\0A\00", [38 x i8] zeroinitializer }, align 32
@csio_handle_link_down._entry_ptr.62 = internal global ptr @csio_handle_link_down._entry.60, section ".printk_index", align 4
@csio_handle_link_down._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.6, i32 1084, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"warn: FCOE linkdown recv with invalid vnpi x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@csio_handle_link_down._entry_ptr.65 = internal global ptr @csio_handle_link_down._entry.63, section ".printk_index", align 4
@fwevt_to_lnevt = internal constant { <{ [15 x i32], [12 x i32] }>, [52 x i8] } { <{ [15 x i32], [12 x i32] }> <{ [15 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 2, i32 0, i32 2], [12 x i32] zeroinitializer }>, [52 x i8] zeroinitializer }, align 32
@csio_ln_mgmt_wr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.6, i32 1443, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid ELS CT WR length recvd, len:%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"csio_ln_mgmt_wr_handler\00", [40 x i8] zeroinitializer }, align 32
@csio_ln_mgmt_wr_handler._entry_ptr = internal global ptr @csio_ln_mgmt_wr_handler._entry, section ".printk_index", align 4
@csio_ln_mgmt_wr_handler._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.6, i32 1456, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error- Invalid IO handle recv in WR. handle: %p\0A\00", [47 x i8] zeroinitializer }, align 32
@csio_ln_mgmt_wr_handler._entry_ptr.71 = internal global ptr @csio_ln_mgmt_wr_handler._entry.69, section ".printk_index", align 4
@csio_fcoe_enable_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.6, i32 745, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to issue FCOE LINK cmd on port[%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_fcoe_enable_link\00", [42 x i8] zeroinitializer }, align 32
@csio_fcoe_enable_link._entry_ptr = internal global ptr @csio_fcoe_enable_link._entry, section ".printk_index", align 4
@csio_fcoe_enable_link._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.6, i32 754, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"FCOE LINK %s cmd on port[%d] failed with ret:x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@csio_fcoe_enable_link._entry_ptr.76 = internal global ptr @csio_fcoe_enable_link._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UP\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@csio_ln_mgmt_submit_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.6, i32 1757, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get WR for ec_req %p ret:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csio_ln_mgmt_submit_wr\00", [41 x i8] zeroinitializer }, align 32
@csio_ln_mgmt_submit_wr._entry_ptr = internal global ptr @csio_ln_mgmt_submit_wr._entry, section ".printk_index", align 4
@csio_ln_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.6, i32 2007, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%x:%x Failed to alloc FCF record\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csio_ln_init\00", [19 x i8] zeroinitializer }, align 32
@csio_ln_init._entry_ptr = internal global ptr @csio_ln_init._entry, section ".printk_index", align 4
@csio_ln_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.6, i32 2035, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%x:%x Failed to alloc FCF info\0A\00", [32 x i8] zeroinitializer }, align 32
@csio_ln_init._entry_ptr.85 = internal global ptr @csio_ln_init._entry.83, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@csio_ln_fdmi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.6, i32 1842, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%x:%x Failed to alloc ioreq for FDMI\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_ln_fdmi_init\00", [46 x i8] zeroinitializer }, align 32
@csio_ln_fdmi_init._entry_ptr = internal global ptr @csio_ln_fdmi_init._entry, section ".printk_index", align 4
@csio_ln_fdmi_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.6, i32 1853, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to alloc DMA buffer for FDMI!\0A\00", [58 x i8] zeroinitializer }, align 32
@csio_ln_fdmi_init._entry_ptr.90 = internal global ptr @csio_ln_fdmi_init._entry.88, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.94 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [7 x i64] [i64 5, i64 16, i64 2, i64 8, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"csio_fcoe_rnodes\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 52, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"csio_fdmi_enable\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 53, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1370, i32 15 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1374, i32 15 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1396, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1409, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1520, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1542, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1555, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1593, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1603, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1608, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 463, i32 14 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 231, i32 29 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 375, i32 14 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 223, i32 29 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1174, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 848, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 793, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 702, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 626, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 884, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 897, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 914, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1049, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1059, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1068, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1075, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1082, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [15 x i8] c"fwevt_to_lnevt\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 68, i32 24 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1442, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1454, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 744, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 752, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1756, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2007, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2035, i32 5 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1842, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.362 = private constant [38 x i8] c"../drivers/scsi/csiostor/csio_lnode.c\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1853, i32 3 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @csio_fcoe_enable_link._entry, ptr @csio_fcoe_enable_link._entry.74, ptr @csio_fcoe_enable_link._entry_ptr, ptr @csio_fcoe_enable_link._entry_ptr.76, ptr @csio_fcoe_fwevt_handler._entry, ptr @csio_fcoe_fwevt_handler._entry.15, ptr @csio_fcoe_fwevt_handler._entry.18, ptr @csio_fcoe_fwevt_handler._entry.21, ptr @csio_fcoe_fwevt_handler._entry.24, ptr @csio_fcoe_fwevt_handler._entry.26, ptr @csio_fcoe_fwevt_handler._entry_ptr, ptr @csio_fcoe_fwevt_handler._entry_ptr.17, ptr @csio_fcoe_fwevt_handler._entry_ptr.20, ptr @csio_fcoe_fwevt_handler._entry_ptr.23, ptr @csio_fcoe_fwevt_handler._entry_ptr.25, ptr @csio_fcoe_fwevt_handler._entry_ptr.28, ptr @csio_get_phy_port_stats._entry, ptr @csio_get_phy_port_stats._entry.9, ptr @csio_get_phy_port_stats._entry_ptr, ptr @csio_get_phy_port_stats._entry_ptr.11, ptr @csio_handle_link_down._entry, ptr @csio_handle_link_down._entry.54, ptr @csio_handle_link_down._entry.57, ptr @csio_handle_link_down._entry.60, ptr @csio_handle_link_down._entry.63, ptr @csio_handle_link_down._entry_ptr, ptr @csio_handle_link_down._entry_ptr.56, ptr @csio_handle_link_down._entry_ptr.59, ptr @csio_handle_link_down._entry_ptr.62, ptr @csio_handle_link_down._entry_ptr.65, ptr @csio_handle_link_up._entry, ptr @csio_handle_link_up._entry.45, ptr @csio_handle_link_up._entry.48, ptr @csio_handle_link_up._entry_ptr, ptr @csio_handle_link_up._entry_ptr.47, ptr @csio_handle_link_up._entry_ptr.51, ptr @csio_ln_fdmi_init._entry, ptr @csio_ln_fdmi_init._entry.88, ptr @csio_ln_fdmi_init._entry_ptr, ptr @csio_ln_fdmi_init._entry_ptr.90, ptr @csio_ln_init._entry, ptr @csio_ln_init._entry.83, ptr @csio_ln_init._entry_ptr, ptr @csio_ln_init._entry_ptr.85, ptr @csio_ln_mgmt_submit_wr._entry, ptr @csio_ln_mgmt_submit_wr._entry_ptr, ptr @csio_ln_mgmt_wr_handler._entry, ptr @csio_ln_mgmt_wr_handler._entry.69, ptr @csio_ln_mgmt_wr_handler._entry_ptr, ptr @csio_ln_mgmt_wr_handler._entry_ptr.71, ptr @csio_ln_read_fcf_cbfn._entry, ptr @csio_ln_read_fcf_cbfn._entry_ptr, ptr @csio_ln_read_fcf_entry._entry, ptr @csio_ln_read_fcf_entry._entry_ptr, ptr @csio_ln_vnp_read._entry, ptr @csio_ln_vnp_read._entry_ptr, ptr @csio_ln_vnp_read_cbfn._entry, ptr @csio_ln_vnp_read_cbfn._entry_ptr, ptr @csio_lns_online._entry, ptr @csio_lns_online._entry_ptr, ptr @csio_fcoe_rnodes, ptr @csio_fdmi_enable, ptr @.str, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @fwevt_to_lnevt, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_rnodes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fdmi_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_get_phy_port_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_get_phy_port_stats._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_fwevt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_fwevt_handler._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_fwevt_handler._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_fwevt_handler._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_fwevt_handler._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_fwevt_handler._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_lns_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_read_fcf_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_read_fcf_cbfn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_vnp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_vnp_read_cbfn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_handle_link_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_handle_link_up._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_handle_link_up._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_handle_link_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_handle_link_down._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_handle_link_down._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_handle_link_down._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_handle_link_down._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwevt_to_lnevt to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_mgmt_wr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_mgmt_wr_handler._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_enable_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_fcoe_enable_link._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_mgmt_submit_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_fdmi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ln_fdmi_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @csio_lnode_lookup_by_wwpn(ptr noundef %hw, ptr nocapture noundef readonly %wwpn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %0 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sln_head, align 4
  %cmp.i.not = icmp eq ptr %1, %sln_head
  br i1 %cmp.i.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp1.058 = load ptr, ptr %sln_head, align 4
  %cmp.i50.not59 = icmp eq ptr %tmp1.058, %sln_head
  br i1 %cmp.i50.not59, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_lnlkup_miss = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 5
  %3 = ptrtoint ptr %n_lnlkup_miss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_lnlkup_miss, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %n_lnlkup_miss, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %tmp1.060 = phi ptr [ %tmp1.0, %for.inc30.for.body_crit_edge ], [ %tmp1.058, %for.cond.preheader.for.body_crit_edge ]
  %wwpn5 = getelementptr inbounds %struct.csio_lnode, ptr %tmp1.060, i32 0, i32 12, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %wwpn5, ptr noundef dereferenceable(8) %wwpn, i32 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %for.body.cleanup_crit_edge, label %if.end9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %cln_head = getelementptr inbounds %struct.csio_lnode, ptr %tmp1.060, i32 0, i32 18
  %5 = ptrtoint ptr %cln_head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %cln_head, align 4
  %cmp.i52.not = icmp eq ptr %6, %cln_head
  br i1 %cmp.i52.not, label %if.end9.for.inc30_crit_edge, label %if.end9.for.cond16_crit_edge

if.end9.for.cond16_crit_edge:                     ; preds = %if.end9
  br label %for.cond16

if.end9.for.inc30_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30

for.cond16:                                       ; preds = %for.body21.for.cond16_crit_edge, %if.end9.for.cond16_crit_edge
  %tmp2.0.in = phi ptr [ %tmp2.0, %for.body21.for.cond16_crit_edge ], [ %cln_head, %if.end9.for.cond16_crit_edge ]
  %7 = ptrtoint ptr %tmp2.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp2.0 = load ptr, ptr %tmp2.0.in, align 4
  %cmp.i54.not = icmp eq ptr %tmp2.0, %cln_head
  br i1 %cmp.i54.not, label %for.cond16.for.inc30_crit_edge, label %for.body21

for.cond16.for.inc30_crit_edge:                   ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30

for.body21:                                       ; preds = %for.cond16
  %wwpn23 = getelementptr inbounds %struct.csio_lnode, ptr %tmp2.0, i32 0, i32 12, i32 1
  %bcmp49 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %wwpn23, ptr noundef dereferenceable(8) %wwpn, i32 8) #18
  %tobool26.not = icmp eq i32 %bcmp49, 0
  br i1 %tobool26.not, label %for.body21.cleanup_crit_edge, label %for.body21.for.cond16_crit_edge

for.body21.for.cond16_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond16

for.body21.cleanup_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc30:                                        ; preds = %for.cond16.for.inc30_crit_edge, %if.end9.for.inc30_crit_edge
  %8 = ptrtoint ptr %tmp1.060 to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp1.0 = load ptr, ptr %tmp1.060, align 4
  %cmp.i50.not = icmp eq ptr %tmp1.0, %sln_head
  br i1 %cmp.i50.not, label %for.inc30.cleanup_crit_edge, label %for.inc30.for.body_crit_edge

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc30.cleanup_crit_edge:                      ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc30.cleanup_crit_edge, %for.body21.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ %tmp2.0, %for.body21.cleanup_crit_edge ], [ %tmp1.060, %for.body.cleanup_crit_edge ], [ null, %for.inc30.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_ln_fdmi_start(ptr noundef %ln, ptr noundef %context) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @csio_is_rnode_ready(ptr noundef %context) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 9
  %2 = ptrtoint ptr %n_fdmi_err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_fdmi_err, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %n_fdmi_err, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %mgmt_req = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 9
  %4 = ptrtoint ptr %mgmt_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mgmt_req, align 8
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %lnode to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ln, ptr %lnode, align 8
  %rnode = getelementptr inbounds %struct.csio_ioreq, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %rnode to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %context, ptr %rnode, align 4
  %dma_buf = getelementptr inbounds %struct.csio_ioreq, ptr %5, i32 0, i32 6
  %vaddr = getelementptr inbounds %struct.csio_ioreq, ptr %5, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr, align 8
  %10 = getelementptr inbounds i8, ptr %9, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 15)
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %9, align 2
  %ct_fs_type.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %ct_fs_type.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -6, ptr %ct_fs_type.i, align 2
  %ct_fs_subtype.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %ct_fs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %ct_fs_subtype.i, align 1
  %ct_cmd.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %9, i32 0, i32 6
  %15 = ptrtoint ptr %ct_cmd.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 768, ptr %ct_cmd.i, align 2
  %add.ptr = getelementptr i8, ptr %9, i32 16
  %wwpn = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wwpn, align 8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %add.ptr, align 8
  %call5 = tail call fastcc i32 @csio_ln_mgmt_submit_req(ptr noundef %5, ptr noundef nonnull @csio_ln_fdmi_dhba_cbfn, ptr noundef %dma_buf, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.then7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err9 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 9
  %19 = ptrtoint ptr %n_fdmi_err9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_fdmi_err9, align 4
  %inc10 = add i32 %20, 1
  store i32 %inc10, ptr %n_fdmi_err9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -93, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_is_rnode_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_ln_mgmt_submit_req(ptr noundef %io_req, ptr noundef %io_cbfn, ptr nocapture noundef readonly %pld, i32 noundef %pld_len) unnamed_addr #2 align 64 {
entry:
  %wrp.i = alloca %struct.csio_wr_pair, align 4
  %fw_wr.i = alloca [64 x i8], align 4
  %dsgl.i = alloca %struct.ulptx_sgl, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %io_req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwp, align 4
  %len = getelementptr inbounds %struct.csio_dma_buf, ptr %pld, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pld_len)
  %cmp = icmp ult i32 %5, %pld_len
  br i1 %cmp, label %do.body3, label %do.end8, !prof !171

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/csiostor/csio_lnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1814, 0\0A.popsection", ""() #15, !srcloc !172
  unreachable

do.end8:                                          ; preds = %entry
  %mgmtm1 = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 12
  %io_cbfn9 = getelementptr inbounds %struct.csio_ioreq, ptr %io_req, i32 0, i32 11
  %6 = ptrtoint ptr %io_cbfn9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %io_cbfn, ptr %io_cbfn9, align 64
  %7 = ptrtoint ptr %io_req to i32
  %conv = zext i32 %7 to i64
  %fw_handle = getelementptr inbounds %struct.csio_ioreq, ptr %io_req, i32 0, i32 15
  %8 = ptrtoint ptr %fw_handle to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %fw_handle, align 8
  %eq_idx = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %eq_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eq_idx, align 4
  %eq_idx10 = getelementptr inbounds %struct.csio_ioreq, ptr %io_req, i32 0, i32 2
  %11 = ptrtoint ptr %eq_idx10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %eq_idx10, align 16
  %iq_idx = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 12, i32 2
  %12 = ptrtoint ptr %iq_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iq_idx, align 4
  %iq_idx11 = getelementptr inbounds %struct.csio_ioreq, ptr %io_req, i32 0, i32 1
  %14 = ptrtoint ptr %iq_idx11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %iq_idx11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrp.i) #15
  %15 = call ptr @memset(ptr %wrp.i, i32 255, i32 16)
  %rnode.i = getelementptr inbounds %struct.csio_ioreq, ptr %io_req, i32 0, i32 10
  %16 = ptrtoint ptr %rnode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rnode.i, align 4
  %18 = ptrtoint ptr %mgmtm1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mgmtm1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fw_wr.i) #15
  %20 = getelementptr inbounds i8, ptr %fw_wr.i, i32 20
  %21 = call ptr @memset(ptr %20, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dsgl.i) #15
  %22 = getelementptr inbounds %struct.ulptx_sgl, ptr %dsgl.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.ulptx_sgl, ptr %dsgl.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %pld_len)
  %cmp.i = icmp ult i32 %pld_len, 256
  %add.i = add i32 %pld_len, 7
  %and.i = and i32 %add.i, -8
  %phi.bo.i = add i32 %and.i, 63
  %phi.bo1.i = and i32 %phi.bo.i, -16
  %wr_size.0.i = select i1 %cmp.i, i32 %phi.bo1.i, i32 64
  %24 = call ptr @memset(ptr %dsgl.i, i32 255, i32 16)
  %25 = ptrtoint ptr %eq_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eq_idx, align 4
  %call.i = call i32 @csio_wr_get(ptr noundef %19, i32 noundef %26, i32 noundef %wr_size.0.i, ptr noundef nonnull %wrp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp6.not.i, label %if.end9.i, label %csio_ln_mgmt_submit_wr.exit

if.end9.i:                                        ; preds = %do.end8
  %27 = call i32 @llvm.umin.i32(i32 %pld_len, i32 256) #15
  %28 = trunc i32 %27 to i8
  %conv10.i = and i32 %27, 255
  %nport_id.i = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %nport_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nport_id.i, align 4
  %nport_id11.i = getelementptr inbounds %struct.csio_rnode, ptr %17, i32 0, i32 4
  %31 = ptrtoint ptr %nport_id11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nport_id11.i, align 4
  %flowid.i = getelementptr inbounds %struct.csio_rnode, ptr %17, i32 0, i32 2
  %33 = ptrtoint ptr %flowid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flowid.i, align 4
  %or.i.i = or i32 %conv10.i, 805306368
  %35 = ptrtoint ptr %fw_wr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i.i, ptr %fw_wr.i, align 8
  %div1.i.i = lshr exact i32 %wr_size.0.i, 4
  %shl1.i.i = shl i32 %34, 8
  %or3.i.i = or i32 %shl1.i.i, %div1.i.i
  %flowid_len16.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 1
  %36 = ptrtoint ptr %flowid_len16.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or3.i.i, ptr %flowid_len16.i.i, align 4
  %els_ct_type.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 5
  %37 = ptrtoint ptr %els_ct_type.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %els_ct_type.i.i, align 1
  %38 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %20, align 4
  %cp_en_class.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 7
  %39 = ptrtoint ptr %cp_en_class.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %cp_en_class.i.i, align 1
  %40 = ptrtoint ptr %fw_handle to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %fw_handle, align 8
  %cookie.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 2
  %42 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %cookie.i.i, align 8
  %43 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lnode, align 8
  %hwp.i.i = getelementptr inbounds %struct.csio_lnode, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %hwp.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hwp.i.i, align 4
  %q_arr.i.i = getelementptr inbounds %struct.csio_hw, ptr %46, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %q_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %q_arr.i.i, align 4
  %49 = ptrtoint ptr %iq_idx11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iq_idx11, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %48, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i, align 4
  %physiqid.i.i = getelementptr inbounds %struct.csio_q, ptr %52, i32 0, i32 9, i32 0, i32 1
  %53 = ptrtoint ptr %physiqid.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %physiqid.i.i, align 2
  %iqid.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 3
  %55 = ptrtoint ptr %iqid.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %iqid.i.i, align 8
  %fl_to_sp.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 9
  %56 = ptrtoint ptr %fl_to_sp.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %fl_to_sp.i.i, align 8
  %tmo.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %io_req, i32 0, i32 4
  %57 = ptrtoint ptr %tmo.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tmo.i.i, align 8
  %conv.i.i = trunc i32 %58 to i8
  %tmo_val.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 4
  %59 = ptrtoint ptr %tmo_val.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i.i, ptr %tmo_val.i.i, align 2
  %l_id.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 10
  %port_id.1.extract.trunc.i.i = trunc i32 %30 to i24
  %60 = ptrtoint ptr %l_id.i.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 3)
  store i24 %port_id.1.extract.trunc.i.i, ptr %l_id.i.i, align 1
  %r_id.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 12
  %port_id.1.extract.trunc9.i.i = trunc i32 %32 to i24
  %61 = ptrtoint ptr %r_id.i.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 3)
  store i24 %port_id.1.extract.trunc9.i.i, ptr %r_id.i.i, align 1
  %len.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %io_req, i32 0, i32 6, i32 3
  %62 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i.i, align 16
  %rsp_dmalen.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 14
  %64 = ptrtoint ptr %rsp_dmalen.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rsp_dmalen.i.i, align 8
  %paddr.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %io_req, i32 0, i32 6, i32 2
  %65 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %paddr.i.i, align 4
  %conv7.i.i = zext i32 %66 to i64
  %rsp_dmaaddr.i.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %fw_wr.i, i32 0, i32 13
  %67 = ptrtoint ptr %rsp_dmaaddr.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv7.i.i, ptr %rsp_dmaaddr.i.i, align 8
  call void @csio_wr_copy_to_wrp(ptr noundef nonnull %fw_wr.i, ptr noundef nonnull %wrp.i, i32 noundef 0, i32 noundef 48) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.else17.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  %vaddr.i = getelementptr inbounds %struct.csio_dma_buf, ptr %pld, i32 0, i32 1
  %68 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vaddr.i, align 4
  call void @csio_wr_copy_to_wrp(ptr noundef %69, ptr noundef nonnull %wrp.i, i32 noundef 48, i32 noundef %conv10.i) #15
  br label %if.then15

if.else17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %dsgl.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -2105540607, ptr %dsgl.i, align 8
  %71 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %pld_len, ptr %22, align 4
  %paddr.i = getelementptr inbounds %struct.csio_dma_buf, ptr %pld, i32 0, i32 2
  %72 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %paddr.i, align 4
  %conv18.i = zext i32 %73 to i64
  %74 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv18.i, ptr %23, align 8
  call void @csio_wr_copy_to_wrp(ptr noundef nonnull %dsgl.i, ptr noundef nonnull %wrp.i, i32 noundef 48, i32 noundef 16) #15
  br label %if.then15

csio_ln_mgmt_submit_wr.exit:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %19, i32 0, i32 4
  %75 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.79, ptr noundef %io_req, i32 noundef %call.i) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dsgl.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fw_wr.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i) #15
  br label %if.end16

if.then15:                                        ; preds = %if.else17.i, %if.then15.i
  %77 = ptrtoint ptr %mgmtm1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mgmtm1, align 4
  %79 = ptrtoint ptr %eq_idx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %eq_idx, align 4
  %call24.i = call i32 @csio_wr_issue(ptr noundef %78, i32 noundef %80, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dsgl.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fw_wr.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrp.i) #15
  %active_q = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 12, i32 4
  %prev.i = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 12, i32 4, i32 1
  %81 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %io_req, ptr noundef %82, ptr noundef %active_q) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.list_add_tail.exit_crit_edge

if.then15.list_add_tail.exit_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %io_req, ptr %prev.i, align 4
  %84 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %active_q, ptr %io_req, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %io_req, i32 0, i32 1
  %85 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev3.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %io_req, ptr %82, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then15.list_add_tail.exit_crit_edge
  %n_active = getelementptr inbounds %struct.csio_hw, ptr %3, i32 0, i32 12, i32 9, i32 6
  %87 = ptrtoint ptr %n_active to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %n_active, align 4
  %inc = add i32 %88, 1
  store i32 %inc, ptr %n_active, align 4
  br label %if.end16

if.end16:                                         ; preds = %list_add_tail.exit, %csio_ln_mgmt_submit_wr.exit
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_ln_fdmi_dhba_cbfn(ptr noundef %hw, ptr noundef %fdmi_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 7
  %2 = ptrtoint ptr %wr_status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wr_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 29, i32 9
  %4 = ptrtoint ptr %n_fdmi_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_fdmi_err, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_fdmi_err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rnode = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 10
  %6 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rnode, align 4
  %call = tail call i32 @csio_is_rnode_ready(ptr noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err4 = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 29, i32 9
  %8 = ptrtoint ptr %n_fdmi_err4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_fdmi_err4, align 4
  %inc5 = add i32 %9, 1
  store i32 %inc5, ptr %n_fdmi_err4, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dma_buf = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 6
  %vaddr = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr, align 8
  %12 = getelementptr inbounds i8, ptr %11, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 15)
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %11, align 2
  %ct_fs_type.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %ct_fs_type.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -6, ptr %ct_fs_type.i, align 2
  %ct_fs_subtype.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %ct_fs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %ct_fs_subtype.i, align 1
  %ct_cmd.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %11, i32 0, i32 6
  %17 = ptrtoint ptr %ct_cmd.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 784, ptr %ct_cmd.i, align 2
  %add.ptr = getelementptr i8, ptr %11, i32 16
  %wwpn = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %wwpn, align 8
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %add.ptr, align 8
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %call20 = tail call fastcc i32 @csio_ln_mgmt_submit_req(ptr noundef %fdmi_req, ptr noundef nonnull @csio_ln_fdmi_dprt_cbfn, ptr noundef %dma_buf, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end6.if.end26_crit_edge, label %if.then22

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then22:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err24 = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 29, i32 9
  %21 = ptrtoint ptr %n_fdmi_err24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_fdmi_err24, align 4
  %inc25 = add i32 %22, 1
  store i32 %inc25, ptr %n_fdmi_err24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end6.if.end26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @csio_is_lnode_ready(ptr nocapture noundef readonly %ln) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_state.i, align 4
  %cmp = icmp eq ptr %1, @csio_lns_ready
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_lns_ready(ptr noundef %ln, i32 noundef %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %arrayidx = getelementptr %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 11, i32 %evt
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %evt, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 6, label %sw.bb17
    i32 5, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_evt_drop = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 6
  %5 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_evt_drop, align 8
  %inc2 = add i32 %6, 1
  store i32 %inc2, ptr %n_evt_drop, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %7 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @csio_lns_offline, ptr %sm_state.i, align 4
  %rnhead1.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22
  %8 = ptrtoint ptr %rnhead1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rnhead1.i, align 4
  %cmp.i.not12.i = icmp eq ptr %9, %rnhead1.i
  br i1 %cmp.i.not12.i, label %sw.bb3.csio_post_event_rns.exit_crit_edge, label %sw.bb3.for.body.i_crit_edge

sw.bb3.for.body.i_crit_edge:                      ; preds = %sw.bb3
  br label %for.body.i

sw.bb3.csio_post_event_rns.exit_crit_edge:        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_rns.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb3.for.body.i_crit_edge
  %tmp.013.i = phi ptr [ %next.0.i, %for.body.i.for.body.i_crit_edge ], [ %9, %sw.bb3.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %tmp.013.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %next.0.i = load ptr, ptr %tmp.013.i, align 4
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.013.i, i32 0, i32 1
  %11 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sm_state.i.i, align 4
  tail call void %12(ptr noundef %tmp.013.i, i32 noundef 7) #15
  %cmp.i.not.i = icmp eq ptr %next.0.i, %rnhead1.i
  br i1 %cmp.i.not.i, label %for.body.i.csio_post_event_rns.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.csio_post_event_rns.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_rns.exit

csio_post_event_rns.exit:                         ; preds = %for.body.i.csio_post_event_rns.exit_crit_edge, %sw.bb3.csio_post_event_rns.exit_crit_edge
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  tail call void @csio_lnode_async_event(ptr noundef %ln, i32 noundef 2) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %pln = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %13 = ptrtoint ptr %pln to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pln, align 8
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %if.then, label %csio_post_event_rns.exit.sw.epilog_crit_edge

csio_post_event_rns.exit.sw.epilog_crit_edge:     ; preds = %csio_post_event_rns.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %csio_post_event_rns.exit
  %fcfinfo = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 8
  %15 = ptrtoint ptr %fcfinfo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fcfinfo, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %16, ptr %16, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %16, ptr %prev.i3.i, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %sm_state.i44 = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %25 = ptrtoint ptr %sm_state.i44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @csio_lns_offline, ptr %sm_state.i44, align 4
  %rnhead1.i45 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22
  %26 = ptrtoint ptr %rnhead1.i45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rnhead1.i45, align 4
  %cmp.i.not12.i46 = icmp eq ptr %27, %rnhead1.i45
  br i1 %cmp.i.not12.i46, label %sw.bb5.csio_post_event_rns.exit52_crit_edge, label %sw.bb5.for.body.i51_crit_edge

sw.bb5.for.body.i51_crit_edge:                    ; preds = %sw.bb5
  br label %for.body.i51

sw.bb5.csio_post_event_rns.exit52_crit_edge:      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_rns.exit52

for.body.i51:                                     ; preds = %for.body.i51.for.body.i51_crit_edge, %sw.bb5.for.body.i51_crit_edge
  %tmp.013.i47 = phi ptr [ %next.0.i48, %for.body.i51.for.body.i51_crit_edge ], [ %27, %sw.bb5.for.body.i51_crit_edge ]
  %28 = ptrtoint ptr %tmp.013.i47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %next.0.i48 = load ptr, ptr %tmp.013.i47, align 4
  %sm_state.i.i49 = getelementptr inbounds %struct.csio_sm, ptr %tmp.013.i47, i32 0, i32 1
  %29 = ptrtoint ptr %sm_state.i.i49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sm_state.i.i49, align 4
  tail call void %30(ptr noundef %tmp.013.i47, i32 noundef 7) #15
  %cmp.i.not.i50 = icmp eq ptr %next.0.i48, %rnhead1.i45
  br i1 %cmp.i.not.i50, label %for.body.i51.csio_post_event_rns.exit52_crit_edge, label %for.body.i51.for.body.i51_crit_edge

for.body.i51.for.body.i51_crit_edge:              ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i51

for.body.i51.csio_post_event_rns.exit52_crit_edge: ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_rns.exit52

csio_post_event_rns.exit52:                       ; preds = %for.body.i51.csio_post_event_rns.exit52_crit_edge, %sw.bb5.csio_post_event_rns.exit52_crit_edge
  %lock7 = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock7) #15
  tail call void @csio_lnode_async_event(ptr noundef %ln, i32 noundef 2) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock7) #15
  %pln9 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %31 = ptrtoint ptr %pln9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pln9, align 8
  %cmp10 = icmp eq ptr %32, null
  br i1 %cmp10, label %if.then13, label %csio_post_event_rns.exit52.sw.epilog_crit_edge

csio_post_event_rns.exit52.sw.epilog_crit_edge:   ; preds = %csio_post_event_rns.exit52
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then13:                                        ; preds = %csio_post_event_rns.exit52
  %fcfinfo14 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 8
  %33 = ptrtoint ptr %fcfinfo14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcfinfo14, align 4
  %call.i.i53 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %34) #15
  br i1 %call.i.i53, label %if.end.i.i56, label %if.then13.list_del_init.exit58_crit_edge

if.then13.list_del_init.exit58_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit58

if.end.i.i56:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i54 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i54, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %prev1.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i55, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit58

list_del_init.exit58:                             ; preds = %if.end.i.i56, %if.then13.list_del_init.exit58_crit_edge
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %34, ptr %34, align 4
  %prev.i3.i57 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i3.i57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %34, ptr %prev.i3.i57, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %sm_state.i59 = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %43 = ptrtoint ptr %sm_state.i59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @csio_lns_uninit, ptr %sm_state.i59, align 4
  %rnhead1.i60 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22
  %44 = ptrtoint ptr %rnhead1.i60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rnhead1.i60, align 4
  %cmp.i.not12.i61 = icmp eq ptr %45, %rnhead1.i60
  br i1 %cmp.i.not12.i61, label %sw.bb17.sw.epilog_crit_edge, label %sw.bb17.for.body.i66_crit_edge

sw.bb17.for.body.i66_crit_edge:                   ; preds = %sw.bb17
  br label %for.body.i66

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.i66:                                     ; preds = %for.body.i66.for.body.i66_crit_edge, %sw.bb17.for.body.i66_crit_edge
  %tmp.013.i62 = phi ptr [ %next.0.i63, %for.body.i66.for.body.i66_crit_edge ], [ %45, %sw.bb17.for.body.i66_crit_edge ]
  %46 = ptrtoint ptr %tmp.013.i62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %next.0.i63 = load ptr, ptr %tmp.013.i62, align 4
  %sm_state.i.i64 = getelementptr inbounds %struct.csio_sm, ptr %tmp.013.i62, i32 0, i32 1
  %47 = ptrtoint ptr %sm_state.i.i64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sm_state.i.i64, align 4
  tail call void %48(ptr noundef %tmp.013.i62, i32 noundef 8) #15
  %cmp.i.not.i65 = icmp eq ptr %next.0.i63, %rnhead1.i60
  br i1 %cmp.i.not.i65, label %for.body.i66.sw.epilog_crit_edge, label %for.body.i66.for.body.i66_crit_edge

for.body.i66.for.body.i66_crit_edge:              ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i66

for.body.i66.sw.epilog_crit_edge:                 ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %sm_state.i68 = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %49 = ptrtoint ptr %sm_state.i68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @csio_lns_offline, ptr %sm_state.i68, align 4
  %rnhead1.i69 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22
  %50 = ptrtoint ptr %rnhead1.i69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rnhead1.i69, align 4
  %cmp.i.not12.i70 = icmp eq ptr %51, %rnhead1.i69
  br i1 %cmp.i.not12.i70, label %sw.bb19.sw.epilog_crit_edge, label %sw.bb19.for.body.i75_crit_edge

sw.bb19.for.body.i75_crit_edge:                   ; preds = %sw.bb19
  br label %for.body.i75

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.i75:                                     ; preds = %for.body.i75.for.body.i75_crit_edge, %sw.bb19.for.body.i75_crit_edge
  %tmp.013.i71 = phi ptr [ %next.0.i72, %for.body.i75.for.body.i75_crit_edge ], [ %51, %sw.bb19.for.body.i75_crit_edge ]
  %52 = ptrtoint ptr %tmp.013.i71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %next.0.i72 = load ptr, ptr %tmp.013.i71, align 4
  %sm_state.i.i73 = getelementptr inbounds %struct.csio_sm, ptr %tmp.013.i71, i32 0, i32 1
  %53 = ptrtoint ptr %sm_state.i.i73 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sm_state.i.i73, align 4
  tail call void %54(ptr noundef %tmp.013.i71, i32 noundef 7) #15
  %cmp.i.not.i74 = icmp eq ptr %next.0.i72, %rnhead1.i69
  br i1 %cmp.i.not.i74, label %for.body.i75.sw.epilog_crit_edge, label %for.body.i75.for.body.i75_crit_edge

for.body.i75.for.body.i75_crit_edge:              ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i75

for.body.i75.sw.epilog_crit_edge:                 ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_evt_unexp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 5
  %55 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_evt_unexp, align 4
  %inc22 = add i32 %56, 1
  store i32 %inc22, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.body.i75.sw.epilog_crit_edge, %sw.bb19.sw.epilog_crit_edge, %for.body.i66.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %list_del_init.exit58, %csio_post_event_rns.exit52.sw.epilog_crit_edge, %list_del_init.exit, %csio_post_event_rns.exit.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @csio_lnode_state_to_str(ptr nocapture noundef readonly %ln, ptr nocapture noundef writeonly %str) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_state.i, align 4
  %cmp = icmp eq ptr %1, @csio_lns_uninit
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %str, ptr @.str, i32 7)
  br label %return

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq ptr %1, @csio_lns_ready
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %3 = call ptr @memcpy(ptr %str, ptr @.str.1, i32 6)
  br label %return

if.end6:                                          ; preds = %if.end
  %cmp8 = icmp eq ptr %1, @csio_lns_offline
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %str to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 5712330470827377920, ptr %str, align 1
  br label %return

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %str to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 6146933341117959680, ptr %str, align 1
  br label %return

return:                                           ; preds = %if.end11, %if.then9, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_lns_uninit(ptr noundef %ln, i32 noundef %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %rln1 = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %rln1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rln1, align 4
  %arrayidx = getelementptr %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 11, i32 %evt
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %arrayidx, align 4
  %6 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %evt, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %7 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @csio_lns_online, ptr %sm_state.i, align 4
  %pln = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %8 = ptrtoint ptr %pln to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pln, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then, label %sw.bb.if.end6_crit_edge

sw.bb.if.end6_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then:                                          ; preds = %sw.bb
  %call = tail call fastcc i32 @csio_ln_read_fcf_entry(ptr noundef %ln)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %n_err = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 2
  %10 = ptrtoint ptr %n_err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_err, align 8
  %inc5 = add i32 %11, 1
  store i32 %inc5, ptr %n_err, align 8
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %fcfinfo = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 8
  %12 = ptrtoint ptr %fcfinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcfinfo, align 4
  %fcf_lsthead = getelementptr inbounds %struct.csio_lnode, ptr %3, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.csio_lnode, ptr %3, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %15, ptr noundef %fcf_lsthead) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fcf_lsthead, ptr %13, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %13, ptr %15, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.end.if.end6_crit_edge, %sw.bb.if.end6_crit_edge
  %call7 = tail call fastcc i32 @csio_ln_vnp_read(ptr noundef %ln)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end6.sw.epilog_crit_edge, label %if.then9

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %n_err11 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 2
  %20 = ptrtoint ptr %n_err11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_err11, align 8
  %inc12 = add i32 %21, 1
  store i32 %inc12, ptr %n_err11, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_evt_unexp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 5
  %22 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_evt_unexp, align 4
  %inc15 = add i32 %23, 1
  store i32 %inc15, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then9, %if.end6.sw.epilog_crit_edge, %if.then3, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_lns_offline(ptr noundef %ln, i32 noundef %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %rln1 = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %rln1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rln1, align 4
  %arrayidx = getelementptr %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 11, i32 %evt
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %arrayidx, align 4
  %6 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %evt, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %entry.sw.bb14_crit_edge
    i32 4, label %entry.sw.bb14_crit_edge36
    i32 5, label %entry.sw.bb14_crit_edge37
    i32 6, label %sw.bb17
  ]

entry.sw.bb14_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb14

entry.sw.bb14_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb14

sw.bb:                                            ; preds = %entry
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %7 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @csio_lns_online, ptr %sm_state.i, align 4
  %pln = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %8 = ptrtoint ptr %pln to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pln, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then, label %sw.bb.if.end6_crit_edge

sw.bb.if.end6_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then:                                          ; preds = %sw.bb
  %call = tail call fastcc i32 @csio_ln_read_fcf_entry(ptr noundef %ln)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %n_err = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 2
  %10 = ptrtoint ptr %n_err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_err, align 8
  %inc5 = add i32 %11, 1
  store i32 %inc5, ptr %n_err, align 8
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %fcfinfo = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 8
  %12 = ptrtoint ptr %fcfinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcfinfo, align 4
  %fcf_lsthead = getelementptr inbounds %struct.csio_lnode, ptr %3, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.csio_lnode, ptr %3, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %15, ptr noundef %fcf_lsthead) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fcf_lsthead, ptr %13, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %13, ptr %15, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.end.if.end6_crit_edge, %sw.bb.if.end6_crit_edge
  %call7 = tail call fastcc i32 @csio_ln_vnp_read(ptr noundef %ln)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end6.sw.epilog_crit_edge, label %if.then9

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %n_err11 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 2
  %20 = ptrtoint ptr %n_err11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_err11, align 8
  %inc12 = add i32 %21, 1
  store i32 %inc12, ptr %n_err11, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge36, %entry.sw.bb14_crit_edge37
  %n_evt_drop = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 6
  %22 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_evt_drop, align 8
  %inc16 = add i32 %23, 1
  store i32 %inc16, ptr %n_evt_drop, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %sm_state.i35 = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %24 = ptrtoint ptr %sm_state.i35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @csio_lns_uninit, ptr %sm_state.i35, align 4
  %rnhead1.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22
  %25 = ptrtoint ptr %rnhead1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rnhead1.i, align 4
  %cmp.i.not12.i = icmp eq ptr %26, %rnhead1.i
  br i1 %cmp.i.not12.i, label %sw.bb17.sw.epilog_crit_edge, label %sw.bb17.for.body.i_crit_edge

sw.bb17.for.body.i_crit_edge:                     ; preds = %sw.bb17
  br label %for.body.i

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb17.for.body.i_crit_edge
  %tmp.013.i = phi ptr [ %next.0.i, %for.body.i.for.body.i_crit_edge ], [ %26, %sw.bb17.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %tmp.013.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %next.0.i = load ptr, ptr %tmp.013.i, align 4
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.013.i, i32 0, i32 1
  %28 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm_state.i.i, align 4
  tail call void %29(ptr noundef %tmp.013.i, i32 noundef 8) #15
  %cmp.i.not.i = icmp eq ptr %next.0.i, %rnhead1.i
  br i1 %cmp.i.not.i, label %for.body.i.sw.epilog_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_evt_unexp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 5
  %30 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_evt_unexp, align 4
  %inc20 = add i32 %31, 1
  store i32 %inc20, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.body.i.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %sw.bb14, %if.then9, %if.end6.sw.epilog_crit_edge, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_get_phy_port_stats(ptr noundef %hw, i8 noundef zeroext %portid, ptr noundef %port_stats) local_unnamed_addr #2 align 64 {
entry:
  %portparams = alloca %struct.fw_fcoe_port_cmd_params, align 1
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %portparams) #15
  %0 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, ptr %portparams, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, ptr %portparams, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #15
  %2 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retval1, align 4, !annotation !173
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %3 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %4, i32 noundef 2592) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %portparams to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %portid, ptr %portparams, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %1, align 1
  call void @csio_fcoe_read_portparams_init_mb(ptr noundef %hw, ptr noundef nonnull %call, i32 noundef 10000, ptr noundef nonnull %portparams, ptr noundef null) #15
  %call9 = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end18, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

do.end14:                                         ; preds = %if.end18.1.do.end14_crit_edge, %if.end18.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %pdev15 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.10) #19
  %12 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %13) #15
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @csio_mb_process_portparams_rsp(ptr noundef %hw, ptr noundef nonnull %call, ptr noundef nonnull %retval1, ptr noundef nonnull %portparams, ptr noundef %port_stats) #15
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %0, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 6, ptr %1, align 1
  call void @csio_fcoe_read_portparams_init_mb(ptr noundef %hw, ptr noundef nonnull %call, i32 noundef 10000, ptr noundef nonnull %portparams, ptr noundef null) #15
  %call9.1 = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %tobool10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool10.not.1, label %if.end18.1, label %if.end18.do.end14_crit_edge

if.end18.do.end14_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

if.end18.1:                                       ; preds = %if.end18
  call void @csio_mb_process_portparams_rsp(ptr noundef %hw, ptr noundef nonnull %call, ptr noundef nonnull %retval1, ptr noundef nonnull %portparams, ptr noundef %port_stats) #15
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 13, ptr %0, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %1, align 1
  call void @csio_fcoe_read_portparams_init_mb(ptr noundef %hw, ptr noundef nonnull %call, i32 noundef 10000, ptr noundef nonnull %portparams, ptr noundef null) #15
  %call9.2 = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %tobool10.not.2 = icmp eq i32 %call9.2, 0
  br i1 %tobool10.not.2, label %if.end18.2, label %if.end18.1.do.end14_crit_edge

if.end18.1.do.end14_crit_edge:                    ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

if.end18.2:                                       ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #17
  call void @csio_mb_process_portparams_rsp(ptr noundef %hw, ptr noundef nonnull %call, ptr noundef nonnull %retval1, ptr noundef nonnull %portparams, ptr noundef %port_stats) #15
  %18 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %19) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end18.2, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end14 ], [ 0, %if.end18.2 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %portparams) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_fcoe_read_portparams_init_mb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mb_issue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_process_portparams_rsp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_fcoe_fwevt_handler(ptr noundef %hw, i8 noundef zeroext %cpl_op, ptr noundef %cmd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %cpl_op)
  %cmp = icmp eq i8 %cpl_op, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %1)
  %cmp3 = icmp eq i8 %1, 50
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %if.else25

if.then:                                          ; preds = %entry
  %lstatus5 = getelementptr inbounds %struct.fw_fcoe_link_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %lstatus5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lstatus5, align 1
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 4
  %6 = trunc i32 %5 to i8
  %conv7 = and i8 %6, 15
  %sub_opcode_fcfi = getelementptr inbounds %struct.fw_fcoe_link_cmd, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %sub_opcode_fcfi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sub_opcode_fcfi, align 4
  %and9 = and i32 %8, 16777215
  %vnpi_pkd = getelementptr inbounds %struct.fw_fcoe_link_cmd, ptr %cmd, i32 0, i32 9
  %9 = ptrtoint ptr %vnpi_pkd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vnpi_pkd, align 4
  %and11 = and i32 %10, 1048575
  %11 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %3, label %do.end [
    i8 1, label %if.then14
    i8 0, label %if.then18
  ]

if.then14:                                        ; preds = %if.then
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %sln_head.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %12 = ptrtoint ptr %sln_head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %sln_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %13, %sln_head.i.i
  br i1 %cmp.i.not.i.i, label %if.then14.csio_ln_lookup_by_vnpi.exit.thread.i_crit_edge, label %if.then14.for.body.i.i_crit_edge

if.then14.for.body.i.i_crit_edge:                 ; preds = %if.then14
  br label %for.body.i.i

if.then14.csio_ln_lookup_by_vnpi.exit.thread.i_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc24.i.i.for.body.i.i_crit_edge, %if.then14.for.body.i.i_crit_edge
  %tmp1.059.i.i = phi ptr [ %tmp1.0.i.i, %for.inc24.i.i.for.body.i.i_crit_edge ], [ %13, %if.then14.for.body.i.i_crit_edge ]
  %vnp_flowid.i.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp1.059.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %vnp_flowid.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vnp_flowid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and11)
  %cmp.i.i = icmp eq i32 %15, %and11
  br i1 %cmp.i.i, label %for.body.i.i.csio_ln_lookup_by_vnpi.exit.i_crit_edge, label %if.end6.i.i

for.body.i.i.csio_ln_lookup_by_vnpi.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit.i

if.end6.i.i:                                      ; preds = %for.body.i.i
  %cln_head.i.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp1.059.i.i, i32 0, i32 18
  %16 = ptrtoint ptr %cln_head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %cln_head.i.i, align 4
  %cmp.i49.not.i.i = icmp eq ptr %17, %cln_head.i.i
  br i1 %cmp.i49.not.i.i, label %if.end6.i.i.for.inc24.i.i_crit_edge, label %if.end6.i.i.for.cond13.i.i_crit_edge

if.end6.i.i.for.cond13.i.i_crit_edge:             ; preds = %if.end6.i.i
  br label %for.cond13.i.i

if.end6.i.i.for.inc24.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24.i.i

for.cond13.i.i:                                   ; preds = %for.body18.i.i.for.cond13.i.i_crit_edge, %if.end6.i.i.for.cond13.i.i_crit_edge
  %tmp2.0.in.i.i = phi ptr [ %tmp2.0.i.i, %for.body18.i.i.for.cond13.i.i_crit_edge ], [ %cln_head.i.i, %if.end6.i.i.for.cond13.i.i_crit_edge ]
  %18 = ptrtoint ptr %tmp2.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp2.0.i.i = load ptr, ptr %tmp2.0.in.i.i, align 4
  %cmp.i51.not.i.i = icmp eq ptr %tmp2.0.i.i, %cln_head.i.i
  br i1 %cmp.i51.not.i.i, label %for.cond13.i.i.for.inc24.i.i_crit_edge, label %for.body18.i.i

for.cond13.i.i.for.inc24.i.i_crit_edge:           ; preds = %for.cond13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24.i.i

for.body18.i.i:                                   ; preds = %for.cond13.i.i
  %vnp_flowid19.i.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp2.0.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %vnp_flowid19.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vnp_flowid19.i.i, align 4
  %cmp20.i.i = icmp eq i32 %20, %and11
  br i1 %cmp20.i.i, label %for.body18.i.i.csio_ln_lookup_by_vnpi.exit.i_crit_edge, label %for.body18.i.i.for.cond13.i.i_crit_edge

for.body18.i.i.for.cond13.i.i_crit_edge:          ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond13.i.i

for.body18.i.i.csio_ln_lookup_by_vnpi.exit.i_crit_edge: ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit.i

for.inc24.i.i:                                    ; preds = %for.cond13.i.i.for.inc24.i.i_crit_edge, %if.end6.i.i.for.inc24.i.i_crit_edge
  %21 = ptrtoint ptr %tmp1.059.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp1.0.i.i = load ptr, ptr %tmp1.059.i.i, align 4
  %cmp.i47.not.i.i = icmp eq ptr %tmp1.0.i.i, %sln_head.i.i
  br i1 %cmp.i47.not.i.i, label %for.inc24.i.i.csio_ln_lookup_by_vnpi.exit.thread.i_crit_edge, label %for.inc24.i.i.for.body.i.i_crit_edge

for.inc24.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc24.i.i.csio_ln_lookup_by_vnpi.exit.thread.i_crit_edge: ; preds = %for.inc24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit.thread.i

csio_ln_lookup_by_vnpi.exit.thread.i:             ; preds = %for.inc24.i.i.csio_ln_lookup_by_vnpi.exit.thread.i_crit_edge, %if.then14.csio_ln_lookup_by_vnpi.exit.thread.i_crit_edge
  %n_lnlkup_miss.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 5
  %22 = ptrtoint ptr %n_lnlkup_miss.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_lnlkup_miss.i.i, align 4
  %inc29.i.i = add i32 %23, 1
  store i32 %inc29.i.i, ptr %n_lnlkup_miss.i.i, align 4
  br label %for.cond.i.i.preheader

csio_ln_lookup_by_vnpi.exit.i:                    ; preds = %for.body18.i.i.csio_ln_lookup_by_vnpi.exit.i_crit_edge, %for.body.i.i.csio_ln_lookup_by_vnpi.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %tmp2.0.i.i, %for.body18.i.i.csio_ln_lookup_by_vnpi.exit.i_crit_edge ], [ %tmp1.059.i.i, %for.body.i.i.csio_ln_lookup_by_vnpi.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %csio_ln_lookup_by_vnpi.exit.i.for.cond.i.i.preheader_crit_edge, label %csio_ln_lookup_by_vnpi.exit.i.if.end21.i_crit_edge

csio_ln_lookup_by_vnpi.exit.i.if.end21.i_crit_edge: ; preds = %csio_ln_lookup_by_vnpi.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

csio_ln_lookup_by_vnpi.exit.i.for.cond.i.i.preheader_crit_edge: ; preds = %csio_ln_lookup_by_vnpi.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %csio_ln_lookup_by_vnpi.exit.i.for.cond.i.i.preheader_crit_edge, %csio_ln_lookup_by_vnpi.exit.thread.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i55.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %tmp.0.in.i.i = phi ptr [ %tmp.0.i.i, %for.body.i55.i.for.cond.i.i_crit_edge ], [ %sln_head.i.i, %for.cond.i.i.preheader ]
  %24 = ptrtoint ptr %tmp.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %tmp.0.i.i = load ptr, ptr %tmp.0.in.i.i, align 4
  %cmp.i.not.i53.i = icmp eq ptr %tmp.0.i.i, %sln_head.i.i
  br i1 %cmp.i.not.i53.i, label %for.cond.i.i.do.end.i_crit_edge, label %for.body.i55.i

for.cond.i.i.do.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

for.body.i55.i:                                   ; preds = %for.cond.i.i
  %portid2.i.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.0.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %portid2.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %portid2.i.i, align 8
  %cmp.i54.i = icmp eq i8 %26, %conv7
  br i1 %cmp.i54.i, label %csio_ln_lookup_by_portid.exit.i, label %for.body.i55.i.for.cond.i.i_crit_edge

for.body.i55.i.for.cond.i.i_crit_edge:            ; preds = %for.body.i55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

csio_ln_lookup_by_portid.exit.i:                  ; preds = %for.body.i55.i
  %portid2.i.i.le = getelementptr inbounds %struct.csio_lnode, ptr %tmp.0.i.i, i32 0, i32 2
  %tobool2.not.i = icmp eq ptr %tmp.0.i.i, null
  br i1 %tobool2.not.i, label %csio_ln_lookup_by_portid.exit.i.do.end.i_crit_edge, label %if.end.i

csio_ln_lookup_by_portid.exit.i.do.end.i_crit_edge: ; preds = %csio_ln_lookup_by_portid.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %csio_ln_lookup_by_portid.exit.i.do.end.i_crit_edge, %for.cond.i.i.do.end.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %conv.i = zext i8 %conv7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43, i32 noundef %conv.i) #19
  br label %csio_handle_link_up.exit

if.end.i:                                         ; preds = %csio_ln_lookup_by_portid.exit.i
  %vnp_flowid.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.0.i.i, i32 0, i32 14
  %29 = ptrtoint ptr %vnp_flowid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vnp_flowid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.not.i = icmp eq i32 %30, -1
  br i1 %cmp.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then5.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  %call6.i = tail call ptr @csio_lnode_alloc(ptr noundef %hw) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %31 = ptrtoint ptr %portid2.i.i.le to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv7, ptr %portid2.i.i.le, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then5.i, %if.end.i.if.end18.i_crit_edge
  %32 = ptrtoint ptr %vnp_flowid.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and11, ptr %vnp_flowid.i, align 4
  %dev_num.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.0.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dev_num.i, align 4
  %and.i = and i32 %34, -65536
  %or.i = or i32 %and.i, %and11
  store i32 %or.i, ptr %dev_num.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end18.i, %csio_ln_lookup_by_vnpi.exit.i.if.end21.i_crit_edge
  %ln.0.i = phi ptr [ %retval.0.i.i, %csio_ln_lookup_by_vnpi.exit.i.if.end21.i_crit_edge ], [ %tmp.0.i.i, %if.end18.i ]
  %fcf_flowid.i = getelementptr inbounds %struct.csio_lnode, ptr %ln.0.i, i32 0, i32 13
  %35 = ptrtoint ptr %fcf_flowid.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and9, ptr %fcf_flowid.i, align 8
  %pdev25.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %36 = ptrtoint ptr %pdev25.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev25.i, align 8
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %conv27.i = zext i8 %conv7 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26.i, ptr noundef nonnull @.str.49, i32 noundef %conv27.i) #19
  %stats.i = getelementptr inbounds %struct.csio_lnode, ptr %ln.0.i, i32 0, i32 29
  %38 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %ln.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sm_state.i.i, align 4
  tail call void %41(ptr noundef nonnull %ln.0.i, i32 noundef 1) #15
  br label %csio_handle_link_up.exit

csio_handle_link_up.exit:                         ; preds = %if.end21.i, %do.end.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  br label %cleanup

if.then18:                                        ; preds = %if.then
  %lock19 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock19) #15
  %sln_head.i.i211 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %42 = ptrtoint ptr %sln_head.i.i211 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %sln_head.i.i211, align 4
  %cmp.i.not.i.i212 = icmp eq ptr %43, %sln_head.i.i211
  br i1 %cmp.i.not.i.i212, label %if.then18.csio_ln_lookup_by_vnpi.exit.thread.i232_crit_edge, label %if.then18.for.body.i.i216_crit_edge

if.then18.for.body.i.i216_crit_edge:              ; preds = %if.then18
  br label %for.body.i.i216

if.then18.csio_ln_lookup_by_vnpi.exit.thread.i232_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit.thread.i232

for.body.i.i216:                                  ; preds = %for.inc24.i.i229.for.body.i.i216_crit_edge, %if.then18.for.body.i.i216_crit_edge
  %tmp1.059.i.i213 = phi ptr [ %tmp1.0.i.i227, %for.inc24.i.i229.for.body.i.i216_crit_edge ], [ %43, %if.then18.for.body.i.i216_crit_edge ]
  %vnp_flowid.i.i214 = getelementptr inbounds %struct.csio_lnode, ptr %tmp1.059.i.i213, i32 0, i32 14
  %44 = ptrtoint ptr %vnp_flowid.i.i214 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vnp_flowid.i.i214, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %and11)
  %cmp.i.i215 = icmp eq i32 %45, %and11
  br i1 %cmp.i.i215, label %for.body.i.i216.csio_ln_lookup_by_vnpi.exit.i235_crit_edge, label %if.end6.i.i219

for.body.i.i216.csio_ln_lookup_by_vnpi.exit.i235_crit_edge: ; preds = %for.body.i.i216
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit.i235

if.end6.i.i219:                                   ; preds = %for.body.i.i216
  %cln_head.i.i217 = getelementptr inbounds %struct.csio_lnode, ptr %tmp1.059.i.i213, i32 0, i32 18
  %46 = ptrtoint ptr %cln_head.i.i217 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %cln_head.i.i217, align 4
  %cmp.i49.not.i.i218 = icmp eq ptr %47, %cln_head.i.i217
  br i1 %cmp.i49.not.i.i218, label %if.end6.i.i219.for.inc24.i.i229_crit_edge, label %if.end6.i.i219.for.cond13.i.i223_crit_edge

if.end6.i.i219.for.cond13.i.i223_crit_edge:       ; preds = %if.end6.i.i219
  br label %for.cond13.i.i223

if.end6.i.i219.for.inc24.i.i229_crit_edge:        ; preds = %if.end6.i.i219
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24.i.i229

for.cond13.i.i223:                                ; preds = %for.body18.i.i226.for.cond13.i.i223_crit_edge, %if.end6.i.i219.for.cond13.i.i223_crit_edge
  %tmp2.0.in.i.i220 = phi ptr [ %tmp2.0.i.i221, %for.body18.i.i226.for.cond13.i.i223_crit_edge ], [ %cln_head.i.i217, %if.end6.i.i219.for.cond13.i.i223_crit_edge ]
  %48 = ptrtoint ptr %tmp2.0.in.i.i220 to i32
  call void @__asan_load4_noabort(i32 %48)
  %tmp2.0.i.i221 = load ptr, ptr %tmp2.0.in.i.i220, align 4
  %cmp.i51.not.i.i222 = icmp eq ptr %tmp2.0.i.i221, %cln_head.i.i217
  br i1 %cmp.i51.not.i.i222, label %for.cond13.i.i223.for.inc24.i.i229_crit_edge, label %for.body18.i.i226

for.cond13.i.i223.for.inc24.i.i229_crit_edge:     ; preds = %for.cond13.i.i223
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24.i.i229

for.body18.i.i226:                                ; preds = %for.cond13.i.i223
  %vnp_flowid19.i.i224 = getelementptr inbounds %struct.csio_lnode, ptr %tmp2.0.i.i221, i32 0, i32 14
  %49 = ptrtoint ptr %vnp_flowid19.i.i224 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vnp_flowid19.i.i224, align 4
  %cmp20.i.i225 = icmp eq i32 %50, %and11
  br i1 %cmp20.i.i225, label %for.body18.i.i226.csio_ln_lookup_by_vnpi.exit.i235_crit_edge, label %for.body18.i.i226.for.cond13.i.i223_crit_edge

for.body18.i.i226.for.cond13.i.i223_crit_edge:    ; preds = %for.body18.i.i226
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond13.i.i223

for.body18.i.i226.csio_ln_lookup_by_vnpi.exit.i235_crit_edge: ; preds = %for.body18.i.i226
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit.i235

for.inc24.i.i229:                                 ; preds = %for.cond13.i.i223.for.inc24.i.i229_crit_edge, %if.end6.i.i219.for.inc24.i.i229_crit_edge
  %51 = ptrtoint ptr %tmp1.059.i.i213 to i32
  call void @__asan_load4_noabort(i32 %51)
  %tmp1.0.i.i227 = load ptr, ptr %tmp1.059.i.i213, align 4
  %cmp.i47.not.i.i228 = icmp eq ptr %tmp1.0.i.i227, %sln_head.i.i211
  br i1 %cmp.i47.not.i.i228, label %for.inc24.i.i229.csio_ln_lookup_by_vnpi.exit.thread.i232_crit_edge, label %for.inc24.i.i229.for.body.i.i216_crit_edge

for.inc24.i.i229.for.body.i.i216_crit_edge:       ; preds = %for.inc24.i.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i216

for.inc24.i.i229.csio_ln_lookup_by_vnpi.exit.thread.i232_crit_edge: ; preds = %for.inc24.i.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit.thread.i232

csio_ln_lookup_by_vnpi.exit.thread.i232:          ; preds = %for.inc24.i.i229.csio_ln_lookup_by_vnpi.exit.thread.i232_crit_edge, %if.then18.csio_ln_lookup_by_vnpi.exit.thread.i232_crit_edge
  %n_lnlkup_miss.i.i230 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 5
  %52 = ptrtoint ptr %n_lnlkup_miss.i.i230 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n_lnlkup_miss.i.i230, align 4
  %inc29.i.i231 = add i32 %53, 1
  store i32 %inc29.i.i231, ptr %n_lnlkup_miss.i.i230, align 4
  br label %do.end55.i

csio_ln_lookup_by_vnpi.exit.i235:                 ; preds = %for.body18.i.i226.csio_ln_lookup_by_vnpi.exit.i235_crit_edge, %for.body.i.i216.csio_ln_lookup_by_vnpi.exit.i235_crit_edge
  %retval.0.i.i233 = phi ptr [ %tmp2.0.i.i221, %for.body18.i.i226.csio_ln_lookup_by_vnpi.exit.i235_crit_edge ], [ %tmp1.059.i.i213, %for.body.i.i216.csio_ln_lookup_by_vnpi.exit.i235_crit_edge ]
  %tobool.not.i234 = icmp eq ptr %retval.0.i.i233, null
  br i1 %tobool.not.i234, label %csio_ln_lookup_by_vnpi.exit.i235.do.end55.i_crit_edge, label %if.then.i237

csio_ln_lookup_by_vnpi.exit.i235.do.end55.i_crit_edge: ; preds = %csio_ln_lookup_by_vnpi.exit.i235
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end55.i

if.then.i237:                                     ; preds = %csio_ln_lookup_by_vnpi.exit.i235
  %fcfinfo.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 8
  %54 = ptrtoint ptr %fcfinfo.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fcfinfo.i, align 4
  %n_link_down.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 29, i32 1
  %56 = ptrtoint ptr %n_link_down.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n_link_down.i, align 4
  %inc.i236 = add i32 %57, 1
  store i32 %inc.i236, ptr %n_link_down.i, align 4
  %sm_state.i.i.i = getelementptr inbounds %struct.csio_sm, ptr %retval.0.i.i233, i32 0, i32 1
  %58 = ptrtoint ptr %sm_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sm_state.i.i.i, align 4
  %cmp.i88.not.i = icmp eq ptr %59, @csio_lns_ready
  br i1 %cmp.i88.not.i, label %if.end.i244, label %do.end.i242

do.end.i242:                                      ; preds = %if.then.i237
  call void @__sanitizer_cov_trace_pc() #17
  %hwp.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 1
  %60 = ptrtoint ptr %hwp.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hwp.i, align 4
  %pdev.i238 = getelementptr inbounds %struct.csio_hw, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %pdev.i238 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i238, align 8
  %dev.i239 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %dev_num.i240 = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 5
  %64 = ptrtoint ptr %dev_num.i240 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dev_num.i240, align 4
  %shr.i = lshr i32 %65, 16
  %and5.i = and i32 %65, 65535
  %conv.i241 = zext i8 %conv7 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i239, ptr noundef nonnull @.str.52, i32 noundef %shr.i, i32 noundef %and5.i, i32 noundef %conv.i241) #19
  %n_evt_drop.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 29, i32 6
  %66 = ptrtoint ptr %n_evt_drop.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_evt_drop.i, align 8
  %inc7.i = add i32 %67, 1
  store i32 %inc7.i, ptr %n_evt_drop.i, align 8
  br label %csio_handle_link_down.exit

if.end.i244:                                      ; preds = %if.then.i237
  %portid8.i = getelementptr inbounds %struct.csio_fcf_info, ptr %55, i32 0, i32 12
  %68 = ptrtoint ptr %portid8.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %portid8.i, align 1
  %conv10.i = zext i8 %conv7 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %conv7)
  %cmp.not.i243 = icmp eq i8 %69, %conv7
  br i1 %cmp.not.i243, label %if.end28.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #17
  %hwp16.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 1
  %70 = ptrtoint ptr %hwp16.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hwp16.i, align 4
  %pdev17.i = getelementptr inbounds %struct.csio_hw, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %pdev17.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev17.i, align 8
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %dev_num19.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 5
  %74 = ptrtoint ptr %dev_num19.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dev_num19.i, align 4
  %shr20.i = lshr i32 %75, 16
  %and23.i = and i32 %75, 65535
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18.i, ptr noundef nonnull @.str.55, i32 noundef %shr20.i, i32 noundef %and23.i, i32 noundef %conv10.i) #19
  %n_evt_drop26.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 29, i32 6
  %76 = ptrtoint ptr %n_evt_drop26.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_evt_drop26.i, align 8
  %inc27.i = add i32 %77, 1
  store i32 %inc27.i, ptr %n_evt_drop26.i, align 8
  br label %csio_handle_link_down.exit

if.end28.i:                                       ; preds = %if.end.i244
  %fcf_flowid.i245 = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 13
  %78 = ptrtoint ptr %fcf_flowid.i245 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fcf_flowid.i245, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %and9)
  %cmp29.not.i = icmp eq i32 %79, %and9
  br i1 %cmp29.not.i, label %do.end49.i, label %do.end34.i

do.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  %hwp35.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 1
  %80 = ptrtoint ptr %hwp35.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hwp35.i, align 4
  %pdev36.i = getelementptr inbounds %struct.csio_hw, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %pdev36.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev36.i, align 8
  %dev37.i = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %dev_num38.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 5
  %84 = ptrtoint ptr %dev_num38.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dev_num38.i, align 4
  %shr39.i = lshr i32 %85, 16
  %and42.i = and i32 %85, 65535
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37.i, ptr noundef nonnull @.str.58, i32 noundef %shr39.i, i32 noundef %and42.i, i32 noundef %and9) #19
  %n_evt_drop44.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 29, i32 6
  %86 = ptrtoint ptr %n_evt_drop44.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %n_evt_drop44.i, align 8
  %inc45.i = add i32 %87, 1
  store i32 %inc45.i, ptr %n_evt_drop44.i, align 8
  br label %csio_handle_link_down.exit

do.end49.i:                                       ; preds = %if.end28.i
  %pdev50.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %88 = ptrtoint ptr %pdev50.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev50.i, align 8
  %dev51.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51.i, ptr noundef nonnull @.str.61, i32 noundef %conv10.i) #19
  %pln.i.i.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 20
  %90 = ptrtoint ptr %pln.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pln.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %91, null
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %do.end49.i.csio_ln_down.exit.i_crit_edge

do.end49.i.csio_ln_down.exit.i_crit_edge:         ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_down.exit.i

if.end.i.i.i:                                     ; preds = %do.end49.i
  %cln_head.i.i.i = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i.i233, i32 0, i32 18
  %92 = ptrtoint ptr %cln_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %tmp.017.i.i.i = load ptr, ptr %cln_head.i.i.i, align 4
  %cmp.i.not18.i.i.i = icmp eq ptr %tmp.017.i.i.i, %cln_head.i.i.i
  br i1 %cmp.i.not18.i.i.i, label %if.end.i.i.i.csio_ln_down.exit.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.csio_ln_down.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_down.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %tmp.019.i.i.i = phi ptr [ %tmp.0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %tmp.017.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %sm_state.i15.i.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.019.i.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %sm_state.i15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sm_state.i15.i.i.i, align 4
  tail call void %94(ptr noundef %tmp.019.i.i.i, i32 noundef 3) #15
  %95 = ptrtoint ptr %tmp.019.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %tmp.0.i.i.i = load ptr, ptr %tmp.019.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %tmp.0.i.i.i, %cln_head.i.i.i
  br i1 %cmp.i.not.i.i.i, label %for.body.i.i.i.csio_ln_down.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.body.i.i.i.csio_ln_down.exit.i_crit_edge:     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_down.exit.i

csio_ln_down.exit.i:                              ; preds = %for.body.i.i.i.csio_ln_down.exit.i_crit_edge, %if.end.i.i.i.csio_ln_down.exit.i_crit_edge, %do.end49.i.csio_ln_down.exit.i_crit_edge
  %96 = ptrtoint ptr %sm_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sm_state.i.i.i, align 4
  tail call void %97(ptr noundef nonnull %retval.0.i.i233, i32 noundef 3) #15
  br label %csio_handle_link_down.exit

do.end55.i:                                       ; preds = %csio_ln_lookup_by_vnpi.exit.i235.do.end55.i_crit_edge, %csio_ln_lookup_by_vnpi.exit.thread.i232
  %pdev56.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %98 = ptrtoint ptr %pdev56.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev56.i, align 8
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev57.i, ptr noundef nonnull @.str.64, i32 noundef %and11) #19
  %n_evt_drop59.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 2
  %100 = ptrtoint ptr %n_evt_drop59.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %n_evt_drop59.i, align 8
  %inc60.i = add i32 %101, 1
  store i32 %inc60.i, ptr %n_evt_drop59.i, align 8
  br label %csio_handle_link_down.exit

csio_handle_link_down.exit:                       ; preds = %do.end55.i, %csio_ln_down.exit.i, %do.end34.i, %do.end15.i, %do.end.i242
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock19) #15
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %conv6 = zext i8 %3 to i32
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %102 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv6) #19
  %n_cpl_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 8
  %104 = ptrtoint ptr %n_cpl_unexp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %n_cpl_unexp, align 8
  %inc = add i32 %105, 1
  store i32 %inc, ptr %n_cpl_unexp, align 8
  br label %cleanup

if.else25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -31, i8 %cpl_op)
  %cmp27 = icmp eq i8 %cpl_op, -31
  br i1 %cmp27, label %if.then29, label %if.else101

if.then29:                                        ; preds = %if.else25
  %add.ptr = getelementptr i64, ptr %cmd, i32 4
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr, align 4
  %shr30 = lshr i32 %107, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %shr30)
  %cmp32 = icmp eq i32 %shr30, 56
  br i1 %cmp32, label %if.then34, label %do.end91

if.then34:                                        ; preds = %if.then29
  %alloc_to_len16 = getelementptr inbounds %struct.fw_rdev_wr, ptr %add.ptr, i32 0, i32 1
  %108 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %alloc_to_len16, align 4
  %shr36 = lshr i32 %109, 8
  %and37 = and i32 %shr36, 1048575
  %flags_to_assoc_flowid = getelementptr inbounds %struct.fw_rdev_wr, ptr %add.ptr, i32 0, i32 7
  %110 = ptrtoint ptr %flags_to_assoc_flowid to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags_to_assoc_flowid, align 4
  %and39 = and i32 %111, 1048575
  %protocol = getelementptr i64, ptr %cmd, i32 6
  %112 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %113)
  %cmp41.not = icmp eq i8 %113, 1
  br i1 %cmp41.not, label %if.end53, label %do.end46

do.end46:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  %conv40 = zext i8 %113 to i32
  %pdev47 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %114 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdev47, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.16, i32 noundef %conv40, i32 noundef %and37) #19
  %n_evt_drop = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 2
  %116 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %n_evt_drop, align 8
  %inc52 = add i32 %117, 1
  store i32 %inc52, ptr %n_evt_drop, align 8
  br label %cleanup

if.end53:                                         ; preds = %if.then34
  %lock54 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock54) #15
  %sln_head.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %118 = ptrtoint ptr %sln_head.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile ptr, ptr %sln_head.i, align 4
  %cmp.i.not.i = icmp eq ptr %119, %sln_head.i
  br i1 %cmp.i.not.i, label %if.end53.csio_ln_lookup_by_vnpi.exit.thread_crit_edge, label %if.end53.for.body.i_crit_edge

if.end53.for.body.i_crit_edge:                    ; preds = %if.end53
  br label %for.body.i

if.end53.csio_ln_lookup_by_vnpi.exit.thread_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit.thread

for.body.i:                                       ; preds = %for.inc24.i.for.body.i_crit_edge, %if.end53.for.body.i_crit_edge
  %tmp1.059.i = phi ptr [ %tmp1.0.i, %for.inc24.i.for.body.i_crit_edge ], [ %119, %if.end53.for.body.i_crit_edge ]
  %vnp_flowid.i246 = getelementptr inbounds %struct.csio_lnode, ptr %tmp1.059.i, i32 0, i32 14
  %120 = ptrtoint ptr %vnp_flowid.i246 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %vnp_flowid.i246, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %and39)
  %cmp.i = icmp eq i32 %121, %and39
  br i1 %cmp.i, label %for.body.i.csio_ln_lookup_by_vnpi.exit_crit_edge, label %if.end6.i

for.body.i.csio_ln_lookup_by_vnpi.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit

if.end6.i:                                        ; preds = %for.body.i
  %cln_head.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp1.059.i, i32 0, i32 18
  %122 = ptrtoint ptr %cln_head.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %cln_head.i, align 4
  %cmp.i49.not.i = icmp eq ptr %123, %cln_head.i
  br i1 %cmp.i49.not.i, label %if.end6.i.for.inc24.i_crit_edge, label %if.end6.i.for.cond13.i_crit_edge

if.end6.i.for.cond13.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.cond13.i

if.end6.i.for.inc24.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24.i

for.cond13.i:                                     ; preds = %for.body18.i.for.cond13.i_crit_edge, %if.end6.i.for.cond13.i_crit_edge
  %tmp2.0.in.i = phi ptr [ %tmp2.0.i, %for.body18.i.for.cond13.i_crit_edge ], [ %cln_head.i, %if.end6.i.for.cond13.i_crit_edge ]
  %124 = ptrtoint ptr %tmp2.0.in.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %tmp2.0.i = load ptr, ptr %tmp2.0.in.i, align 4
  %cmp.i51.not.i = icmp eq ptr %tmp2.0.i, %cln_head.i
  br i1 %cmp.i51.not.i, label %for.cond13.i.for.inc24.i_crit_edge, label %for.body18.i

for.cond13.i.for.inc24.i_crit_edge:               ; preds = %for.cond13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24.i

for.body18.i:                                     ; preds = %for.cond13.i
  %vnp_flowid19.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp2.0.i, i32 0, i32 14
  %125 = ptrtoint ptr %vnp_flowid19.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %vnp_flowid19.i, align 4
  %cmp20.i = icmp eq i32 %126, %and39
  br i1 %cmp20.i, label %for.body18.i.csio_ln_lookup_by_vnpi.exit_crit_edge, label %for.body18.i.for.cond13.i_crit_edge

for.body18.i.for.cond13.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond13.i

for.body18.i.csio_ln_lookup_by_vnpi.exit_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit

for.inc24.i:                                      ; preds = %for.cond13.i.for.inc24.i_crit_edge, %if.end6.i.for.inc24.i_crit_edge
  %127 = ptrtoint ptr %tmp1.059.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %tmp1.0.i = load ptr, ptr %tmp1.059.i, align 4
  %cmp.i47.not.i = icmp eq ptr %tmp1.0.i, %sln_head.i
  br i1 %cmp.i47.not.i, label %for.inc24.i.csio_ln_lookup_by_vnpi.exit.thread_crit_edge, label %for.inc24.i.for.body.i_crit_edge

for.inc24.i.for.body.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc24.i.csio_ln_lookup_by_vnpi.exit.thread_crit_edge: ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_lookup_by_vnpi.exit.thread

csio_ln_lookup_by_vnpi.exit.thread:               ; preds = %for.inc24.i.csio_ln_lookup_by_vnpi.exit.thread_crit_edge, %if.end53.csio_ln_lookup_by_vnpi.exit.thread_crit_edge
  %n_lnlkup_miss.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 5
  %128 = ptrtoint ptr %n_lnlkup_miss.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %n_lnlkup_miss.i, align 4
  %inc29.i = add i32 %129, 1
  store i32 %inc29.i, ptr %n_lnlkup_miss.i, align 4
  br label %do.end58

csio_ln_lookup_by_vnpi.exit:                      ; preds = %for.body18.i.csio_ln_lookup_by_vnpi.exit_crit_edge, %for.body.i.csio_ln_lookup_by_vnpi.exit_crit_edge
  %retval.0.i = phi ptr [ %tmp2.0.i, %for.body18.i.csio_ln_lookup_by_vnpi.exit_crit_edge ], [ %tmp1.059.i, %for.body.i.csio_ln_lookup_by_vnpi.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %csio_ln_lookup_by_vnpi.exit.do.end58_crit_edge, label %if.end64

csio_ln_lookup_by_vnpi.exit.do.end58_crit_edge:   ; preds = %csio_ln_lookup_by_vnpi.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end58

do.end58:                                         ; preds = %csio_ln_lookup_by_vnpi.exit.do.end58_crit_edge, %csio_ln_lookup_by_vnpi.exit.thread
  %pdev59 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %130 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdev59, align 8
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.19, i32 noundef %and39, i32 noundef %and37) #19
  %n_evt_drop62 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 2
  %132 = ptrtoint ptr %n_evt_drop62 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %n_evt_drop62, align 8
  %inc63 = add i32 %133, 1
  store i32 %inc63, ptr %n_evt_drop62, align 8
  br label %out_pld

if.end64:                                         ; preds = %csio_ln_lookup_by_vnpi.exit
  %u = getelementptr i64, ptr %cmd, i32 7
  %call65 = tail call ptr @csio_confirm_rnode(ptr noundef nonnull %retval.0.i, i32 noundef %and37, ptr noundef %u) #15
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  %n_evt_drop69 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 2
  %134 = ptrtoint ptr %n_evt_drop69 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %n_evt_drop69, align 8
  %inc70 = add i32 %135, 1
  store i32 %inc70, ptr %n_evt_drop69, align 8
  br label %out_pld

if.end71:                                         ; preds = %if.end64
  %cur_evt = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i, i32 0, i32 16
  %136 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_lnode, ptr %retval.0.i, i32 0, i32 17
  %138 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %prev_evt, align 1
  %event_cause = getelementptr inbounds %struct.fw_rdev_wr, ptr %add.ptr, i32 0, i32 4
  %139 = ptrtoint ptr %event_cause to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %event_cause, align 1
  store i8 %140, ptr %cur_evt, align 2
  %141 = load i8, ptr %event_cause, align 1
  %idxprom = zext i8 %141 to i32
  %arrayidx = getelementptr %struct.csio_lnode, ptr %retval.0.i, i32 0, i32 29, i32 10, i32 %idxprom
  %142 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx, align 4
  %inc75 = add i32 %143, 1
  store i32 %inc75, ptr %arrayidx, align 4
  %144 = load i8, ptr %event_cause, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %144)
  %cmp78 = icmp ugt i8 %144, 26
  br i1 %cmp78, label %if.end71.if.end85_crit_edge, label %cond.end

if.end71.if.end85_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

cond.end:                                         ; preds = %if.end71
  %conv77 = zext i8 %144 to i32
  %arrayidx82 = getelementptr [27 x i32], ptr @fwevt_to_lnevt, i32 0, i32 %conv77
  %145 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool83.not = icmp eq i32 %146, 0
  br i1 %tobool83.not, label %cond.end.if.end85_crit_edge, label %if.then84

cond.end.if.end85_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.then84:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %retval.0.i, i32 0, i32 1
  %147 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sm_state.i, align 4
  tail call void %148(ptr noundef nonnull %retval.0.i, i32 noundef %146) #15
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %cond.end.if.end85_crit_edge, %if.end71.if.end85_crit_edge
  %149 = ptrtoint ptr %event_cause to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %event_cause, align 1
  tail call void @csio_rnode_fwevt_handler(ptr noundef nonnull %call65, i8 noundef zeroext %150) #15
  br label %out_pld

out_pld:                                          ; preds = %if.end85, %if.then67, %do.end58
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock54) #15
  br label %cleanup

do.end91:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  %pdev92 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %151 = ptrtoint ptr %pdev92 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pdev92, align 8
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev93, ptr noundef nonnull @.str.22, i32 noundef %shr30) #19
  %n_cpl_unexp98 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 8
  %153 = ptrtoint ptr %n_cpl_unexp98 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %n_cpl_unexp98, align 8
  %inc99 = add i32 %154, 1
  store i32 %inc99, ptr %n_cpl_unexp98, align 8
  br label %cleanup

if.else101:                                       ; preds = %if.else25
  br i1 %cmp, label %if.then105, label %do.end128

if.then105:                                       ; preds = %if.else101
  %155 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cmd, align 4
  %shr107 = lshr i32 %156, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %shr107)
  %cmp109 = icmp eq i32 %shr107, 48
  br i1 %cmp109, label %if.then111, label %do.end115

if.then111:                                       ; preds = %if.then105
  %mgmtm1.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12
  %cookie.i = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, ptr %cmd, i32 0, i32 2
  %157 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %cookie.i, align 8
  %conv.i247 = trunc i64 %158 to i32
  %159 = inttoptr i32 %conv.i247 to ptr
  %lo.i = getelementptr inbounds %struct.fw_cmd_hdr, ptr %cmd, i32 0, i32 1
  %160 = ptrtoint ptr %lo.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %lo.i, align 4
  %162 = trunc i32 %161 to i16
  %163 = lshr i16 %162, 8
  %wr_status.i = getelementptr inbounds %struct.csio_ioreq, ptr %159, i32 0, i32 7
  %164 = ptrtoint ptr %wr_status.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %wr_status.i, align 4
  %lock.i248 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i248) #15
  %call.i = tail call i32 @csio_mgmt_req_lookup(ptr noundef %mgmtm1.i, ptr noundef %159) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.not.i, label %if.end17.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #17
  %165 = ptrtoint ptr %mgmtm1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mgmtm1.i, align 4
  %pdev11.i = getelementptr inbounds %struct.csio_hw, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %pdev11.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pdev11.i, align 8
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.70, ptr noundef %159) #19
  %n_err14.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 9, i32 4
  %169 = ptrtoint ptr %n_err14.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %n_err14.i, align 4
  %inc15.i = add i32 %170, 1
  store i32 %inc15.i, ptr %n_err14.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i248) #15
  br label %cleanup

if.end17.i:                                       ; preds = %if.then111
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %159) #15
  br i1 %call.i.i.i, label %if.end.i.i.i249, label %if.end17.i.list_del_init.exit.i_crit_edge

if.end17.i.list_del_init.exit.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i249:                                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  %171 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %prev.i.i.i, align 4
  %173 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %159, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %172, ptr %prev1.i.i.i.i, align 4
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %174, ptr %172, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i249, %if.end17.i.list_del_init.exit.i_crit_edge
  %177 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %159, ptr %159, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  %178 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %159, ptr %prev.i3.i.i, align 4
  %n_active.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 9, i32 6
  %179 = ptrtoint ptr %n_active.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %n_active.i, align 4
  %dec.i = add i32 %180, -1
  store i32 %dec.i, ptr %n_active.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i248) #15
  %io_cbfn.i = getelementptr inbounds %struct.csio_ioreq, ptr %159, i32 0, i32 11
  %181 = ptrtoint ptr %io_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %io_cbfn.i, align 64
  %tobool.not.i250 = icmp eq ptr %182, null
  br i1 %tobool.not.i250, label %list_del_init.exit.i.cleanup_crit_edge, label %if.then21.i

list_del_init.exit.i.cleanup_crit_edge:           ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then21.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %182(ptr noundef %hw, ptr noundef %159) #15
  br label %cleanup

do.end115:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #17
  %pdev116 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %183 = ptrtoint ptr %pdev116 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pdev116, align 8
  %dev117 = getelementptr inbounds %struct.pci_dev, ptr %184, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev117, ptr noundef nonnull @.str.22, i32 noundef %shr107) #19
  %n_cpl_unexp122 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 8
  %185 = ptrtoint ptr %n_cpl_unexp122 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %n_cpl_unexp122, align 8
  %inc123 = add i32 %186, 1
  store i32 %inc123, ptr %n_cpl_unexp122, align 8
  br label %cleanup

do.end128:                                        ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #17
  %pdev129 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %187 = ptrtoint ptr %pdev129 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pdev129, align 8
  %dev130 = getelementptr inbounds %struct.pci_dev, ptr %188, i32 0, i32 44
  %conv131 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev130, ptr noundef nonnull @.str.27, i32 noundef %conv131) #19
  %n_cpl_unexp133 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 8
  %189 = ptrtoint ptr %n_cpl_unexp133 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %n_cpl_unexp133, align 8
  %inc134 = add i32 %190, 1
  store i32 %inc134, ptr %n_cpl_unexp133, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end128, %do.end115, %if.then21.i, %list_del_init.exit.i.cleanup_crit_edge, %do.end9.i, %do.end91, %out_pld, %do.end46, %do.end, %csio_handle_link_down.exit, %csio_handle_link_up.exit
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @csio_confirm_rnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_rnode_fwevt_handler(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_lnode_start(ptr noundef %ln) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pln = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %0 = ptrtoint ptr %pln to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pln, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc i32 @csio_fcoe_enable_link(ptr noundef %ln, i1 noundef zeroext true)
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 4
  store i32 %or, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rv.0 = phi i32 [ 0, %land.lhs.true.if.end_crit_edge ], [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %rv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_fcoe_enable_link(ptr noundef %ln, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %3, i32 noundef 2592) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 55, i32 15
  %4 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %portid2 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 2
  %6 = ptrtoint ptr %portid2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %portid2, align 8
  %conv4 = zext i1 %enable to i32
  tail call void @csio_write_fcoe_link_cond_init_mb(ptr noundef %ln, ptr noundef nonnull %call, i32 noundef 10000, i8 noundef zeroext %7, i32 noundef %conv4, i8 noundef zeroext 0, i1 noundef zeroext false, i32 noundef 0, ptr noundef null) #15
  %call5 = tail call i32 @csio_mb_issue(ptr noundef %1, ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv8) #19
  %10 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %11) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @csio_mb_fw_retval(ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 0
  br i1 %cmp.not, label %if.end24, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %pdev17 = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev17, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %cond21 = select i1 %enable, ptr @.str.77, ptr @.str.78
  %conv22 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.75, ptr noundef nonnull %cond21, i32 noundef %conv22, i32 noundef %call11) #19
  %14 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %15) #15
  br label %cleanup

if.end24:                                         ; preds = %if.end10
  br i1 %enable, label %if.end27, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end27:                                         ; preds = %if.end24
  %mb = getelementptr inbounds %struct.csio_mb, ptr %call, i32 0, i32 1
  %wwnn = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 2
  %vnport_wwnn = getelementptr inbounds %struct.csio_mb, ptr %call, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %vnport_wwnn to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %vnport_wwnn, align 4
  %18 = ptrtoint ptr %wwnn to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %wwnn, align 8
  %wwpn = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 12, i32 1
  %vnport_wwpn = getelementptr inbounds %struct.csio_mb, ptr %call, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %vnport_wwpn to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %vnport_wwpn, align 4
  %21 = ptrtoint ptr %wwpn to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %wwpn, align 8
  %phy_mac = getelementptr inbounds %struct.fw_fcoe_link_cmd, ptr %mb, i32 0, i32 11
  %portid35 = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 41, i32 0, i32 2
  %22 = ptrtoint ptr %portid35 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %portid35, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %7)
  %cmp38 = icmp eq i8 %23, %7
  br i1 %cmp38, label %if.then40, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then40:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %mac = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 41, i32 0, i32 5
  %24 = call ptr @memcpy(ptr %mac, ptr %phy_mac, i32 6)
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %if.end27.for.inc_crit_edge
  %portid35.1 = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 41, i32 1, i32 2
  %25 = ptrtoint ptr %portid35.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %portid35.1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %7)
  %cmp38.1 = icmp eq i8 %26, %7
  br i1 %cmp38.1, label %if.then40.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.then40.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %mac.1 = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 41, i32 1, i32 5
  %27 = call ptr @memcpy(ptr %mac.1, ptr %phy_mac, i32 6)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then40.1, %for.inc.for.inc.1_crit_edge
  %portid35.2 = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 41, i32 2, i32 2
  %28 = ptrtoint ptr %portid35.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %portid35.2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %7)
  %cmp38.2 = icmp eq i8 %29, %7
  br i1 %cmp38.2, label %if.then40.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.then40.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  %mac.2 = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 41, i32 2, i32 5
  %30 = call ptr @memcpy(ptr %mac.2, ptr %phy_mac, i32 6)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then40.2, %for.inc.1.for.inc.2_crit_edge
  %portid35.3 = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 41, i32 3, i32 2
  %31 = ptrtoint ptr %portid35.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %portid35.3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %7)
  %cmp38.3 = icmp eq i8 %32, %7
  br i1 %cmp38.3, label %if.then40.3, label %for.inc.2.out_crit_edge

for.inc.2.out_crit_edge:                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then40.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  %mac.3 = getelementptr %struct.csio_hw, ptr %1, i32 0, i32 41, i32 3, i32 5
  %33 = call ptr @memcpy(ptr %mac.3, ptr %phy_mac, i32 6)
  br label %out

out:                                              ; preds = %if.then40.3, %for.inc.2.out_crit_edge, %if.end24.out_crit_edge
  %34 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %35) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end16, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ 0, %out ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_lnode_stop(ptr noundef %ln) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pln.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %0 = ptrtoint ptr %pln.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pln.i, align 8
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %if.end.i, label %entry.csio_post_event_lns.exit_crit_edge

entry.csio_post_event_lns.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit

if.end.i:                                         ; preds = %entry
  %cln_head.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 18
  %2 = ptrtoint ptr %cln_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.017.i = load ptr, ptr %cln_head.i, align 4
  %cmp.i.not18.i = icmp eq ptr %tmp.017.i, %cln_head.i
  br i1 %cmp.i.not18.i, label %if.end.i.csio_post_event_lns.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.csio_post_event_lns.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %tmp.019.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %tmp.017.i, %if.end.i.for.body.i_crit_edge ]
  %sm_state.i15.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.019.i, i32 0, i32 1
  %3 = ptrtoint ptr %sm_state.i15.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm_state.i15.i, align 4
  tail call void %4(ptr noundef %tmp.019.i, i32 noundef 4) #15
  %5 = ptrtoint ptr %tmp.019.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0.i = load ptr, ptr %tmp.019.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %cln_head.i
  br i1 %cmp.i.not.i, label %for.body.i.csio_post_event_lns.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.csio_post_event_lns.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit

csio_post_event_lns.exit:                         ; preds = %for.body.i.csio_post_event_lns.exit_crit_edge, %if.end.i.csio_post_event_lns.exit_crit_edge, %entry.csio_post_event_lns.exit_crit_edge
  %sm_state.i16.i = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %6 = ptrtoint ptr %sm_state.i16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm_state.i16.i, align 4
  tail call void %7(ptr noundef %ln, i32 noundef 4) #15
  %8 = ptrtoint ptr %pln.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pln.i, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %land.lhs.true, label %csio_post_event_lns.exit.if.end_crit_edge

csio_post_event_lns.exit.if.end_crit_edge:        ; preds = %csio_post_event_lns.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %csio_post_event_lns.exit
  %flags = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc i32 @csio_fcoe_enable_link(ptr noundef %ln, i1 noundef zeroext false)
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and2 = and i32 %13, -5
  store i32 %and2, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %csio_post_event_lns.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_lnode_close(ptr noundef %ln) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pln.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %0 = ptrtoint ptr %pln.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pln.i, align 8
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %if.end.i, label %entry.csio_post_event_lns.exit_crit_edge

entry.csio_post_event_lns.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit

if.end.i:                                         ; preds = %entry
  %cln_head.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 18
  %2 = ptrtoint ptr %cln_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.017.i = load ptr, ptr %cln_head.i, align 4
  %cmp.i.not18.i = icmp eq ptr %tmp.017.i, %cln_head.i
  br i1 %cmp.i.not18.i, label %if.end.i.csio_post_event_lns.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.csio_post_event_lns.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %tmp.019.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %tmp.017.i, %if.end.i.for.body.i_crit_edge ]
  %sm_state.i15.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.019.i, i32 0, i32 1
  %3 = ptrtoint ptr %sm_state.i15.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm_state.i15.i, align 4
  tail call void %4(ptr noundef %tmp.019.i, i32 noundef 6) #15
  %5 = ptrtoint ptr %tmp.019.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0.i = load ptr, ptr %tmp.019.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %cln_head.i
  br i1 %cmp.i.not.i, label %for.body.i.csio_post_event_lns.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.csio_post_event_lns.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit

csio_post_event_lns.exit:                         ; preds = %for.body.i.csio_post_event_lns.exit_crit_edge, %if.end.i.csio_post_event_lns.exit_crit_edge, %entry.csio_post_event_lns.exit_crit_edge
  %sm_state.i16.i = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %6 = ptrtoint ptr %sm_state.i16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm_state.i16.i, align 4
  tail call void %7(ptr noundef %ln, i32 noundef 6) #15
  %8 = ptrtoint ptr %pln.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pln.i, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then, label %csio_post_event_lns.exit.if.end_crit_edge

csio_post_event_lns.exit.if.end_crit_edge:        ; preds = %csio_post_event_lns.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %csio_post_event_lns.exit
  call void @__sanitizer_cov_trace_pc() #17
  %vnp_flowid = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 14
  %10 = ptrtoint ptr %vnp_flowid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %vnp_flowid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %csio_post_event_lns.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @csio_scan_done(ptr nocapture noundef %ln, i32 noundef %ticks, i32 noundef %time, i32 noundef %max_scan_ticks, i32 noundef %delta_scan_ticks) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %time, i32 %max_scan_ticks)
  %cmp.not = icmp ult i32 %time, %max_scan_ticks
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tgt_scan_tick = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 26
  %0 = ptrtoint ptr %tgt_scan_tick to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tgt_scan_tick, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %tgt_scan_tick to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %ticks, ptr %tgt_scan_tick, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %3 = ptrtoint ptr %tgt_scan_tick to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tgt_scan_tick, align 8
  %sub = sub i32 %ticks, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %delta_scan_ticks)
  %cmp5.not = icmp ult i32 %sub, %delta_scan_ticks
  br i1 %cmp5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  %last_scan_ntgts = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 25
  %5 = ptrtoint ptr %last_scan_ntgts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_scan_ntgts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp ne i32 %6, 0
  %n_scsi_tgts = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 24
  %7 = ptrtoint ptr %n_scsi_tgts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_scsi_tgts, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp12 = icmp eq i32 %6, %8
  %or.cond = select i1 %tobool7.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then6.cleanup_crit_edge, label %if.end17

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %last_scan_ntgts to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_scan_ntgts, align 4
  %10 = ptrtoint ptr %tgt_scan_tick to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ticks, ptr %tgt_scan_tick, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end17 ], [ 0, %if.end3.cleanup_crit_edge ], [ 1, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_notify_lnodes(ptr noundef readonly %hw, i32 noundef %note) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %0 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.034 = load ptr, ptr %sln_head, align 4
  %cmp.i.not35 = icmp eq ptr %tmp.034, %sln_head
  br i1 %cmp.i.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp.036 = phi ptr [ %tmp.0, %for.inc.for.body_crit_edge ], [ %tmp.034, %entry.for.body_crit_edge ]
  %1 = zext i32 %note to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %note, label %for.body.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %for.body.sw.bb3_crit_edge
    i32 3, label %for.body.sw.bb3_crit_edge37
    i32 2, label %sw.bb4
  ]

for.body.sw.bb3_crit_edge37:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3

for.body.sw.bb3_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %pln.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.036, i32 0, i32 20
  %2 = ptrtoint ptr %pln.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pln.i, align 8
  %cmp.i11 = icmp eq ptr %3, null
  br i1 %cmp.i11, label %land.lhs.true.i, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.i:                                  ; preds = %sw.bb
  %flags.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.036, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call fastcc i32 @csio_fcoe_enable_link(ptr noundef %tmp.036, i1 noundef zeroext true) #15
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %7, 4
  store i32 %or.i, ptr %flags.i, align 8
  br label %for.inc

sw.bb3:                                           ; preds = %for.body.sw.bb3_crit_edge, %for.body.sw.bb3_crit_edge37
  %pln.i.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.036, i32 0, i32 20
  %8 = ptrtoint ptr %pln.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pln.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %9, null
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb3.csio_post_event_lns.exit.i_crit_edge

sw.bb3.csio_post_event_lns.exit.i_crit_edge:      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit.i

if.end.i.i:                                       ; preds = %sw.bb3
  %cln_head.i.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.036, i32 0, i32 18
  %10 = ptrtoint ptr %cln_head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp.017.i.i = load ptr, ptr %cln_head.i.i, align 4
  %cmp.i.not18.i.i = icmp eq ptr %tmp.017.i.i, %cln_head.i.i
  br i1 %cmp.i.not18.i.i, label %if.end.i.i.csio_post_event_lns.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.csio_post_event_lns.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %tmp.019.i.i = phi ptr [ %tmp.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %tmp.017.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %sm_state.i15.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.019.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %sm_state.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sm_state.i15.i.i, align 4
  tail call void %12(ptr noundef %tmp.019.i.i, i32 noundef 6) #15
  %13 = ptrtoint ptr %tmp.019.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.0.i.i = load ptr, ptr %tmp.019.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp.0.i.i, %cln_head.i.i
  br i1 %cmp.i.not.i.i, label %for.body.i.i.csio_post_event_lns.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.csio_post_event_lns.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit.i

csio_post_event_lns.exit.i:                       ; preds = %for.body.i.i.csio_post_event_lns.exit.i_crit_edge, %if.end.i.i.csio_post_event_lns.exit.i_crit_edge, %sw.bb3.csio_post_event_lns.exit.i_crit_edge
  %sm_state.i16.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.036, i32 0, i32 1
  %14 = ptrtoint ptr %sm_state.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sm_state.i16.i.i, align 4
  tail call void %15(ptr noundef %tmp.036, i32 noundef 6) #15
  %16 = ptrtoint ptr %pln.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pln.i.i, align 8
  %cmp.i12 = icmp eq ptr %17, null
  br i1 %cmp.i12, label %if.then.i13, label %csio_post_event_lns.exit.i.for.inc_crit_edge

csio_post_event_lns.exit.i.for.inc_crit_edge:     ; preds = %csio_post_event_lns.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i13:                                      ; preds = %csio_post_event_lns.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %vnp_flowid.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.036, i32 0, i32 14
  %18 = ptrtoint ptr %vnp_flowid.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %vnp_flowid.i, align 4
  br label %for.inc

sw.bb4:                                           ; preds = %for.body
  %pln.i.i14 = getelementptr inbounds %struct.csio_lnode, ptr %tmp.036, i32 0, i32 20
  %19 = ptrtoint ptr %pln.i.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pln.i.i14, align 8
  %cmp.not.i.i15 = icmp eq ptr %20, null
  br i1 %cmp.not.i.i15, label %if.end.i.i19, label %sw.bb4.csio_post_event_lns.exit.i27_crit_edge

sw.bb4.csio_post_event_lns.exit.i27_crit_edge:    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit.i27

if.end.i.i19:                                     ; preds = %sw.bb4
  %cln_head.i.i16 = getelementptr inbounds %struct.csio_lnode, ptr %tmp.036, i32 0, i32 18
  %21 = ptrtoint ptr %cln_head.i.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp.017.i.i17 = load ptr, ptr %cln_head.i.i16, align 4
  %cmp.i.not18.i.i18 = icmp eq ptr %tmp.017.i.i17, %cln_head.i.i16
  br i1 %cmp.i.not18.i.i18, label %if.end.i.i19.csio_post_event_lns.exit.i27_crit_edge, label %if.end.i.i19.for.body.i.i24_crit_edge

if.end.i.i19.for.body.i.i24_crit_edge:            ; preds = %if.end.i.i19
  br label %for.body.i.i24

if.end.i.i19.csio_post_event_lns.exit.i27_crit_edge: ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit.i27

for.body.i.i24:                                   ; preds = %for.body.i.i24.for.body.i.i24_crit_edge, %if.end.i.i19.for.body.i.i24_crit_edge
  %tmp.019.i.i20 = phi ptr [ %tmp.0.i.i22, %for.body.i.i24.for.body.i.i24_crit_edge ], [ %tmp.017.i.i17, %if.end.i.i19.for.body.i.i24_crit_edge ]
  %sm_state.i15.i.i21 = getelementptr inbounds %struct.csio_sm, ptr %tmp.019.i.i20, i32 0, i32 1
  %22 = ptrtoint ptr %sm_state.i15.i.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sm_state.i15.i.i21, align 4
  tail call void %23(ptr noundef %tmp.019.i.i20, i32 noundef 4) #15
  %24 = ptrtoint ptr %tmp.019.i.i20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %tmp.0.i.i22 = load ptr, ptr %tmp.019.i.i20, align 4
  %cmp.i.not.i.i23 = icmp eq ptr %tmp.0.i.i22, %cln_head.i.i16
  br i1 %cmp.i.not.i.i23, label %for.body.i.i24.csio_post_event_lns.exit.i27_crit_edge, label %for.body.i.i24.for.body.i.i24_crit_edge

for.body.i.i24.for.body.i.i24_crit_edge:          ; preds = %for.body.i.i24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i24

for.body.i.i24.csio_post_event_lns.exit.i27_crit_edge: ; preds = %for.body.i.i24
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit.i27

csio_post_event_lns.exit.i27:                     ; preds = %for.body.i.i24.csio_post_event_lns.exit.i27_crit_edge, %if.end.i.i19.csio_post_event_lns.exit.i27_crit_edge, %sw.bb4.csio_post_event_lns.exit.i27_crit_edge
  %sm_state.i16.i.i25 = getelementptr inbounds %struct.csio_sm, ptr %tmp.036, i32 0, i32 1
  %25 = ptrtoint ptr %sm_state.i16.i.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sm_state.i16.i.i25, align 4
  tail call void %26(ptr noundef %tmp.036, i32 noundef 4) #15
  %27 = ptrtoint ptr %pln.i.i14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pln.i.i14, align 8
  %cmp.i26 = icmp eq ptr %28, null
  br i1 %cmp.i26, label %land.lhs.true.i31, label %csio_post_event_lns.exit.i27.for.inc_crit_edge

csio_post_event_lns.exit.i27.for.inc_crit_edge:   ; preds = %csio_post_event_lns.exit.i27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.i31:                                ; preds = %csio_post_event_lns.exit.i27
  %flags.i28 = getelementptr inbounds %struct.csio_lnode, ptr %tmp.036, i32 0, i32 6
  %29 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i28, align 8
  %and.i29 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.for.inc_crit_edge, label %if.then.i33

land.lhs.true.i31.for.inc_crit_edge:              ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i33:                                      ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #17
  %call.i32 = tail call fastcc i32 @csio_fcoe_enable_link(ptr noundef %tmp.036, i1 noundef zeroext false) #15
  %31 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i28, align 8
  %and2.i = and i32 %32, -5
  store i32 %and2.i, ptr %flags.i28, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i33, %land.lhs.true.i31.for.inc_crit_edge, %csio_post_event_lns.exit.i27.for.inc_crit_edge, %if.then.i13, %csio_post_event_lns.exit.i.for.inc_crit_edge, %if.then.i, %land.lhs.true.i.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %33 = ptrtoint ptr %tmp.036 to i32
  call void @__asan_load4_noabort(i32 %33)
  %tmp.0 = load ptr, ptr %tmp.036, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %sln_head
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_disable_lnodes(ptr noundef readonly %hw, i8 noundef zeroext %portid, i1 noundef zeroext %disable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %0 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.023 = load ptr, ptr %sln_head, align 4
  %cmp.i.not24 = icmp eq ptr %tmp.023, %sln_head
  br i1 %cmp.i.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp.025 = phi ptr [ %tmp.0, %for.inc.for.body_crit_edge ], [ %tmp.023, %entry.for.body_crit_edge ]
  %portid2 = getelementptr inbounds %struct.csio_lnode, ptr %tmp.025, i32 0, i32 2
  %1 = ptrtoint ptr %portid2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %portid2, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %portid)
  %cmp.not = icmp eq i8 %2, %portid
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %for.body
  %pln.i.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.025, i32 0, i32 20
  %3 = ptrtoint ptr %pln.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pln.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %4, null
  br i1 %disable, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then6.csio_post_event_lns.exit.i_crit_edge

if.then6.csio_post_event_lns.exit.i_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit.i

if.end.i.i:                                       ; preds = %if.then6
  %cln_head.i.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.025, i32 0, i32 18
  %5 = ptrtoint ptr %cln_head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.017.i.i = load ptr, ptr %cln_head.i.i, align 4
  %cmp.i.not18.i.i = icmp eq ptr %tmp.017.i.i, %cln_head.i.i
  br i1 %cmp.i.not18.i.i, label %if.end.i.i.csio_post_event_lns.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.csio_post_event_lns.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %tmp.019.i.i = phi ptr [ %tmp.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %tmp.017.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %sm_state.i15.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.019.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %sm_state.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm_state.i15.i.i, align 4
  tail call void %7(ptr noundef %tmp.019.i.i, i32 noundef 4) #15
  %8 = ptrtoint ptr %tmp.019.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0.i.i = load ptr, ptr %tmp.019.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp.0.i.i, %cln_head.i.i
  br i1 %cmp.i.not.i.i, label %for.body.i.i.csio_post_event_lns.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.csio_post_event_lns.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_post_event_lns.exit.i

csio_post_event_lns.exit.i:                       ; preds = %for.body.i.i.csio_post_event_lns.exit.i_crit_edge, %if.end.i.i.csio_post_event_lns.exit.i_crit_edge, %if.then6.csio_post_event_lns.exit.i_crit_edge
  %sm_state.i16.i.i = getelementptr inbounds %struct.csio_sm, ptr %tmp.025, i32 0, i32 1
  %9 = ptrtoint ptr %sm_state.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm_state.i16.i.i, align 4
  tail call void %10(ptr noundef %tmp.025, i32 noundef 4) #15
  %11 = ptrtoint ptr %pln.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pln.i.i, align 8
  %cmp.i15 = icmp eq ptr %12, null
  br i1 %cmp.i15, label %land.lhs.true.i, label %csio_post_event_lns.exit.i.for.inc_crit_edge

csio_post_event_lns.exit.i.for.inc_crit_edge:     ; preds = %csio_post_event_lns.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.i:                                  ; preds = %csio_post_event_lns.exit.i
  %flags.i = getelementptr inbounds %struct.csio_lnode, ptr %tmp.025, i32 0, i32 6
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %if.then.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call fastcc i32 @csio_fcoe_enable_link(ptr noundef %tmp.025, i1 noundef zeroext false) #15
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 8
  %and2.i = and i32 %16, -5
  store i32 %and2.i, ptr %flags.i, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end
  br i1 %cmp.not.i.i, label %land.lhs.true.i20, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.i20:                                ; preds = %if.else
  %flags.i17 = getelementptr inbounds %struct.csio_lnode, ptr %tmp.025, i32 0, i32 6
  %17 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i17, align 8
  %and.i18 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19, label %if.then.i22, label %land.lhs.true.i20.for.inc_crit_edge

land.lhs.true.i20.for.inc_crit_edge:              ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i22:                                      ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #17
  %call.i21 = tail call fastcc i32 @csio_fcoe_enable_link(ptr noundef %tmp.025, i1 noundef zeroext true) #15
  %19 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i17, align 8
  %or.i = or i32 %20, 4
  store i32 %or.i, ptr %flags.i17, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i22, %land.lhs.true.i20.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then.i, %land.lhs.true.i.for.inc_crit_edge, %csio_post_event_lns.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %tmp.025 to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp.0 = load ptr, ptr %tmp.025, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %sln_head
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_lnode_init(ptr noundef %ln, ptr noundef %hw, ptr noundef %pln) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hw, ptr %hwp, align 4
  %tobool.not = icmp eq ptr %pln, null
  %1 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pln, ptr %1, align 8
  %n_scsi_tgts = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 24
  %3 = ptrtoint ptr %n_scsi_tgts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %n_scsi_tgts, align 8
  %last_scan_ntgts = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 25
  %4 = ptrtoint ptr %last_scan_ntgts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %last_scan_ntgts, align 4
  %tgt_scan_tick = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 26
  %5 = ptrtoint ptr %tgt_scan_tick to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tgt_scan_tick, align 8
  %rnhead = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22
  %6 = ptrtoint ptr %rnhead to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %rnhead, ptr %rnhead, align 4
  %prev.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rnhead, ptr %prev.i, align 4
  %cln_head = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 18
  %8 = ptrtoint ptr %cln_head to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %cln_head, ptr %cln_head, align 4
  %prev.i37 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 18, i32 1
  %9 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cln_head, ptr %prev.i37, align 4
  %log_level = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42, i32 3
  %10 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %log_level, align 4
  %log_level4 = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 30, i32 2
  %12 = ptrtoint ptr %log_level4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %log_level4, align 4
  %sm_state.i.i.i = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %13 = ptrtoint ptr %sm_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @csio_lns_uninit, ptr %sm_state.i.i.i, align 4
  %vnp_flowid.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 14
  %14 = ptrtoint ptr %vnp_flowid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %vnp_flowid.i, align 4
  %fcf_flowid.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 13
  %15 = ptrtoint ptr %fcf_flowid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %fcf_flowid.i, align 8
  %rln.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 15
  %16 = ptrtoint ptr %rln.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rln.i, align 4
  %cmp.i = icmp eq ptr %17, %ln
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 64) #20
  %fcfinfo.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 8
  %19 = ptrtoint ptr %fcfinfo.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i, ptr %fcfinfo.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwp, align 4
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %dev_num.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %24 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev_num.i, align 4
  %shr.i = lshr i32 %25, 16
  %and6.i = and i32 %25, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81, i32 noundef %shr.i, i32 noundef %and6.i) #19
  br label %err.sink.split.i

if.end.i:                                         ; preds = %if.then.i
  %fcf_lsthead.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 7
  %26 = ptrtoint ptr %fcf_lsthead.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %fcf_lsthead.i, ptr %fcf_lsthead.i, align 4
  %prev.i.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fcf_lsthead.i, ptr %prev.i.i, align 4
  %kref.i = getelementptr inbounds %struct.csio_fcf_info, ptr %call7.i.i.i, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  %28 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %kref.i, align 4
  %29 = load i32, ptr @csio_fdmi_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not.i = icmp eq i32 %29, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end7_crit_edge, label %land.lhs.true.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.end.i
  %call9.i = tail call fastcc i32 @csio_ln_fdmi_init(ptr noundef %ln) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end7_crit_edge, label %land.lhs.true.i.err_crit_edge

land.lhs.true.i.err_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.else.i:                                        ; preds = %entry
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %cmp14.not.i = icmp eq ptr %31, null
  br i1 %cmp14.not.i, label %if.else23.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.else.i
  %fcfinfo19.i = getelementptr inbounds %struct.csio_lnode, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %fcfinfo19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fcfinfo19.i, align 4
  %kref20.i = getelementptr inbounds %struct.csio_fcf_info, ptr %33, i32 0, i32 14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref20.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref20.i, i32 1, i32 3, i32 1) #15
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref20.i, ptr %kref20.i, i32 1, ptr elementtype(i32) %kref20.i) #15, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then17.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !171

if.then17.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then17.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !175

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then17.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then17.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref20.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %36 = ptrtoint ptr %fcfinfo19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fcfinfo19.i, align 4
  %fcfinfo22.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 8
  %38 = ptrtoint ptr %fcfinfo22.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %fcfinfo22.i, align 4
  br label %if.end7

if.else23.i:                                      ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i81.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 64) #20
  %fcfinfo25.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 8
  %40 = ptrtoint ptr %fcfinfo25.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i81.i, ptr %fcfinfo25.i, align 4
  %tobool27.not.i = icmp eq ptr %call7.i.i81.i, null
  br i1 %tobool27.not.i, label %do.end31.i, label %if.end43.i

do.end31.i:                                       ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hwp, align 4
  %pdev33.i = getelementptr inbounds %struct.csio_hw, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %pdev33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev33.i, align 8
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %dev_num35.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %45 = ptrtoint ptr %dev_num35.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dev_num35.i, align 4
  %shr36.i = lshr i32 %46, 16
  %and39.i = and i32 %46, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34.i, ptr noundef nonnull @.str.84, i32 noundef %shr36.i, i32 noundef %and39.i) #19
  br label %err.sink.split.i

if.end43.i:                                       ; preds = %if.else23.i
  %kref45.i = getelementptr inbounds %struct.csio_fcf_info, ptr %call7.i.i81.i, i32 0, i32 14
  %call.i.i.i.i82.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref45.i, i32 noundef 4) #15
  %47 = ptrtoint ptr %kref45.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %kref45.i, align 4
  %48 = load i32, ptr @csio_fdmi_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool46.not.i = icmp eq i32 %48, 0
  br i1 %tobool46.not.i, label %if.end43.i.if.end7_crit_edge, label %land.lhs.true47.i

if.end43.i.if.end7_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

land.lhs.true47.i:                                ; preds = %if.end43.i
  %call48.i = tail call fastcc i32 @csio_ln_fdmi_init(ptr noundef %ln) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %land.lhs.true47.i.if.end7_crit_edge, label %land.lhs.true47.i.err_crit_edge

land.lhs.true47.i.err_crit_edge:                  ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

land.lhs.true47.i.if.end7_crit_edge:              ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

err.sink.split.i:                                 ; preds = %do.end31.i, %do.end.i
  %n_err_nomem.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %49 = ptrtoint ptr %n_err_nomem.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_err_nomem.i, align 4
  %inc42.i = add i32 %50, 1
  store i32 %inc42.i, ptr %n_err_nomem.i, align 4
  br label %err

if.end7:                                          ; preds = %land.lhs.true47.i.if.end7_crit_edge, %if.end43.i.if.end7_crit_edge, %kref_get.exit.i, %land.lhs.true.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %cln_head9 = getelementptr inbounds %struct.csio_lnode, ptr %pln, i32 0, i32 18
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %cond = select i1 %tobool.not, ptr %sln_head, ptr %cln_head9
  %prev.i38 = getelementptr inbounds %struct.list_head, ptr %cond, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i38, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ln, ptr noundef %52, ptr noundef %cond) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ln, ptr %prev.i38, align 4
  %54 = ptrtoint ptr %ln to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cond, ptr %ln, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ln, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %ln, ptr %52, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  br i1 %tobool.not, label %list_add_tail.exit.if.end12_crit_edge, label %if.then11

list_add_tail.exit.if.end12_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then11:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %num_vports = getelementptr inbounds %struct.csio_lnode, ptr %pln, i32 0, i32 19
  %57 = ptrtoint ptr %num_vports to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_vports, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %num_vports, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %list_add_tail.exit.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  %num_lns = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 14
  %59 = ptrtoint ptr %num_lns to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_lns, align 8
  %inc14 = add i32 %60, 1
  store i32 %inc14, ptr %num_lns, align 8
  br label %cleanup

err:                                              ; preds = %err.sink.split.i, %land.lhs.true47.i.err_crit_edge, %land.lhs.true.i.err_crit_edge
  %61 = ptrtoint ptr %hwp to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %hwp, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end12
  %retval.0 = phi i32 [ -22, %err ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_lnode_exit(ptr noundef %ln) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %rnhead1.i.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 22
  %2 = ptrtoint ptr %rnhead1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rnhead1.i.i, align 4
  %cmp.i.not11.i.i = icmp eq ptr %3, %rnhead1.i.i
  br i1 %cmp.i.not11.i.i, label %entry.csio_cleanup_rns.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.csio_cleanup_rns.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_cleanup_rns.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %tmp.012.i.i = phi ptr [ %next_rn.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %3, %entry.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %tmp.012.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %next_rn.0.i.i = load ptr, ptr %tmp.012.i.i, align 4
  tail call void @csio_put_rnode(ptr noundef %ln, ptr noundef %tmp.012.i.i) #15
  %cmp.i.not.i.i = icmp eq ptr %next_rn.0.i.i, %rnhead1.i.i
  br i1 %cmp.i.not.i.i, label %for.body.i.i.csio_cleanup_rns.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.csio_cleanup_rns.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_cleanup_rns.exit.i

csio_cleanup_rns.exit.i:                          ; preds = %for.body.i.i.csio_cleanup_rns.exit.i_crit_edge, %entry.csio_cleanup_rns.exit.i_crit_edge
  %pln1.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %5 = ptrtoint ptr %pln1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pln1.i, align 8
  %cmp.not.i = icmp eq ptr %6, null
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %csio_cleanup_rns.exit.i
  %fcfinfo.i = getelementptr inbounds %struct.csio_lnode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %fcfinfo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcfinfo.i, align 4
  %kref.i = getelementptr inbounds %struct.csio_fcf_info, ptr %8, i32 0, i32 14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #15, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.csio_ln_exit.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !175

if.end5.i.i.i.i.i.csio_ln_exit.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_exit.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #15
  br label %csio_ln_exit.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !178
  tail call void @kfree(ptr noundef %8) #15
  br label %csio_ln_exit.exit

if.else.i:                                        ; preds = %csio_cleanup_rns.exit.i
  %fcfinfo3.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 8
  %10 = ptrtoint ptr %fcfinfo3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fcfinfo3.i, align 4
  %kref4.i = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 14
  %call.i.i.i.i.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %kref4.i, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4.i, ptr %kref4.i, i32 1, ptr elementtype(i32) %kref4.i) #15, !srcloc !177
  %asmresult.i.i.i.i.i.i.i16.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i16.i)
  %cmp.i.i.i.i17.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i16.i, 1
  br i1 %cmp.i.i.i.i17.i, label %if.then.i22.i, label %if.end5.i.i.i.i19.i

if.end5.i.i.i.i19.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i16.i)
  %.not.i.i.i.i18.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i16.i, 0
  br i1 %.not.i.i.i.i18.i, label %if.end5.i.i.i.i19.i.kref_put.exit23.i_crit_edge, label %if.then10.i.i.i.i20.i, !prof !175

if.end5.i.i.i.i19.i.kref_put.exit23.i_crit_edge:  ; preds = %if.end5.i.i.i.i19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit23.i

if.then10.i.i.i.i20.i:                            ; preds = %if.end5.i.i.i.i19.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref4.i, i32 noundef 3) #15
  br label %kref_put.exit23.i

if.then.i22.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !178
  tail call void @kfree(ptr noundef %11) #15
  br label %kref_put.exit23.i

kref_put.exit23.i:                                ; preds = %if.then.i22.i, %if.then10.i.i.i.i20.i, %if.end5.i.i.i.i19.i.kref_put.exit23.i_crit_edge
  %13 = load i32, ptr @csio_fdmi_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %kref_put.exit23.i.csio_ln_exit.exit_crit_edge, label %if.then6.i

kref_put.exit23.i.csio_ln_exit.exit_crit_edge:    ; preds = %kref_put.exit23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_exit.exit

if.then6.i:                                       ; preds = %kref_put.exit23.i
  %14 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwp, align 4
  %mgmt_req.i.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 9
  %16 = ptrtoint ptr %mgmt_req.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mgmt_req.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then6.i.csio_ln_exit.exit_crit_edge, label %if.end.i.i

if.then6.i.csio_ln_exit.exit_crit_edge:           ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %csio_ln_exit.exit

if.end.i.i:                                       ; preds = %if.then6.i
  %vaddr.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %17, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vaddr.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pdev.i.i = getelementptr inbounds %struct.csio_hw, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %len.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %17, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i, align 4
  %paddr.i.i = getelementptr inbounds %struct.csio_ioreq, ptr %17, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %paddr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %23, ptr noundef nonnull %19, i32 noundef %25, i32 noundef 0) #15
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %26 = ptrtoint ptr %mgmt_req.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mgmt_req.i.i, align 8
  tail call void @kfree(ptr noundef %27) #15
  br label %csio_ln_exit.exit

csio_ln_exit.exit:                                ; preds = %if.end6.i.i, %if.then6.i.csio_ln_exit.exit_crit_edge, %kref_put.exit23.i.csio_ln_exit.exit_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.csio_ln_exit.exit_crit_edge
  %fcfinfo9.i = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 8
  %28 = ptrtoint ptr %fcfinfo9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %fcfinfo9.i, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ln) #15
  br i1 %call.i.i, label %if.end.i.i21, label %csio_ln_exit.exit.list_del_init.exit_crit_edge

csio_ln_exit.exit.list_del_init.exit_crit_edge:   ; preds = %csio_ln_exit.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i21:                                     ; preds = %csio_ln_exit.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ln, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %ln to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ln, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i21, %csio_ln_exit.exit.list_del_init.exit_crit_edge
  %35 = ptrtoint ptr %ln to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %ln, ptr %ln, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %ln, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ln, ptr %prev.i3.i, align 4
  %37 = ptrtoint ptr %pln1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pln1.i, align 8
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %num_vports = getelementptr inbounds %struct.csio_lnode, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %num_vports to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_vports, align 4
  %dec = add i32 %40, -1
  store i32 %dec, ptr %num_vports, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 16
  %41 = ptrtoint ptr %sln_head to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %sln_head, align 4
  %cmp.i.not = icmp eq ptr %42, %sln_head
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %42
  %43 = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 15
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %spec.select, ptr %43, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  %45 = ptrtoint ptr %hwp to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %hwp, align 4
  %num_lns = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 14
  %46 = ptrtoint ptr %num_lns to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_lns, align 8
  %dec9 = add i32 %47, -1
  store i32 %dec9, ptr %num_lns, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_ln_fdmi_dprt_cbfn(ptr noundef %hw, ptr noundef %fdmi_req) #2 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #15
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 7
  %2 = ptrtoint ptr %wr_status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wr_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 29, i32 9
  %4 = ptrtoint ptr %n_fdmi_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_fdmi_err, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_fdmi_err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rnode = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 10
  %6 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rnode, align 4
  %call = tail call i32 @csio_is_rnode_ready(ptr noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err4 = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 29, i32 9
  %8 = ptrtoint ptr %n_fdmi_err4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_fdmi_err4, align 4
  %inc5 = add i32 %9, 1
  store i32 %inc5, ptr %n_fdmi_err4, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dma_buf = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 6
  %vaddr = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr, align 8
  %12 = getelementptr inbounds i8, ptr %11, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 15)
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %11, align 2
  %ct_fs_type.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %ct_fs_type.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -6, ptr %ct_fs_type.i, align 2
  %ct_fs_subtype.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %ct_fs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %ct_fs_subtype.i, align 1
  %ct_cmd.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %11, i32 0, i32 6
  %17 = ptrtoint ptr %ct_cmd.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 512, ptr %ct_cmd.i, align 2
  %add.ptr = getelementptr i8, ptr %11, i32 16
  %wwpn = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %wwpn, align 8
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %add.ptr, align 8
  %add.ptr12 = getelementptr i8, ptr %11, i32 24
  %21 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 1, ptr %add.ptr12, align 1
  %port = getelementptr i8, ptr %11, i32 28
  %22 = load i64, ptr %wwpn, align 8
  %23 = ptrtoint ptr %port to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %port, align 1
  %add.ptr16 = getelementptr i8, ptr %11, i32 36
  %24 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %add.ptr16, align 1
  %add.ptr18 = getelementptr i8, ptr %11, i32 40
  %wwnn = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 12, i32 2
  %25 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 1, ptr %add.ptr18, align 1
  %len28.i = getelementptr i8, ptr %11, i32 42
  %26 = ptrtoint ptr %len28.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 12, ptr %len28.i, align 1
  %value.i = getelementptr i8, ptr %11, i32 44
  %27 = ptrtoint ptr %wwnn to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %wwnn, align 1
  %29 = ptrtoint ptr %value.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %value.i, align 1
  %add.ptr.i = getelementptr i8, ptr %11, i32 52
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %add.ptr.i, align 1
  %31 = getelementptr inbounds i8, ptr %buf, i32 23
  %32 = call ptr @memset(ptr %31, i32 0, i32 41)
  %33 = call ptr @memcpy(ptr %buf, ptr @.str.29, i32 23)
  %call27 = call i32 @strlen(ptr noundef nonnull %buf) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call27)
  %cmp.i = icmp ugt i32 %call27, 65535
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !171

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 246, i32 noundef 9, ptr noundef null) #15
  br label %csio_append_attrib.exit

if.end21.i:                                       ; preds = %if.end6
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 2, ptr %add.ptr.i, align 1
  %35 = trunc i32 %call27 to i16
  %36 = add i16 %35, 7
  %conv27.i = and i16 %36, -4
  %len28.i118 = getelementptr i8, ptr %11, i32 54
  %37 = ptrtoint ptr %len28.i118 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %conv27.i, ptr %len28.i118, align 1
  %value.i119 = getelementptr i8, ptr %11, i32 56
  %38 = call ptr @memcpy(ptr %value.i119, ptr %buf, i32 %call27)
  %conv29.i = zext i16 %conv27.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %conv29.i)
  %cmp30.i = icmp ult i32 %call27, %conv29.i
  br i1 %cmp30.i, label %if.then32.i, label %if.end21.i.if.end36.i_crit_edge

if.end21.i.if.end36.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then32.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i120 = getelementptr i8, ptr %value.i119, i32 %call27
  %sub.i = sub nsw i32 %conv29.i, %call27
  %39 = call ptr @memset(ptr %add.ptr.i120, i32 0, i32 %sub.i)
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %if.end21.i.if.end36.i_crit_edge
  %add.ptr38.i121 = getelementptr i8, ptr %add.ptr.i, i32 %conv29.i
  br label %csio_append_attrib.exit

csio_append_attrib.exit:                          ; preds = %if.end36.i, %do.end.i
  %pld.0 = phi ptr [ %add.ptr.i, %do.end.i ], [ %add.ptr38.i121, %if.end36.i ]
  %sn = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 33, i32 2
  %40 = ptrtoint ptr %pld.0 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 3, ptr %pld.0, align 1
  %len28.i122 = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %pld.0, i32 0, i32 1
  %41 = ptrtoint ptr %len28.i122 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 24, ptr %len28.i122, align 1
  %value.i123 = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %pld.0, i32 0, i32 2
  %42 = call ptr @memcpy(ptr %value.i123, ptr %sn, i32 17)
  %add.ptr.i125 = getelementptr i8, ptr %value.i123, i32 17
  %43 = call ptr @memset(ptr %add.ptr.i125, i32 0, i32 3)
  %add.ptr38.i127 = getelementptr i8, ptr %pld.0, i32 24
  %id32 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 33, i32 3
  %44 = ptrtoint ptr %add.ptr38.i127 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 4, ptr %add.ptr38.i127, align 1
  %len28.i129 = getelementptr i8, ptr %pld.0, i32 26
  %45 = ptrtoint ptr %len28.i129 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 24, ptr %len28.i129, align 1
  %value.i130 = getelementptr i8, ptr %pld.0, i32 28
  %46 = call ptr @memcpy(ptr %value.i130, ptr %id32, i32 17)
  %add.ptr.i132 = getelementptr i8, ptr %pld.0, i32 45
  %47 = call ptr @memset(ptr %add.ptr.i132, i32 0, i32 7)
  %add.ptr38.i134 = getelementptr i8, ptr %pld.0, i32 48
  %model_desc = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 24
  %call38 = tail call i32 @strlen(ptr noundef %model_desc) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call38)
  %cmp.i136 = icmp ugt i32 %call38, 65535
  br i1 %cmp.i136, label %do.end.i137, label %if.end21.i143, !prof !171

do.end.i137:                                      ; preds = %csio_append_attrib.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 246, i32 noundef 9, ptr noundef null) #15
  br label %csio_append_attrib.exit149

if.end21.i143:                                    ; preds = %csio_append_attrib.exit
  %48 = ptrtoint ptr %add.ptr38.i134 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 5, ptr %add.ptr38.i134, align 1
  %49 = trunc i32 %call38 to i16
  %50 = add i16 %49, 7
  %conv27.i138 = and i16 %50, -4
  %len28.i139 = getelementptr i8, ptr %pld.0, i32 50
  %51 = ptrtoint ptr %len28.i139 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %conv27.i138, ptr %len28.i139, align 1
  %value.i140 = getelementptr i8, ptr %pld.0, i32 52
  %52 = call ptr @memcpy(ptr %value.i140, ptr %model_desc, i32 %call38)
  %conv29.i141 = zext i16 %conv27.i138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call38, i32 %conv29.i141)
  %cmp30.i142 = icmp ult i32 %call38, %conv29.i141
  br i1 %cmp30.i142, label %if.then32.i146, label %if.end21.i143.if.end36.i148_crit_edge

if.end21.i143.if.end36.i148_crit_edge:            ; preds = %if.end21.i143
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i148

if.then32.i146:                                   ; preds = %if.end21.i143
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i144 = getelementptr i8, ptr %value.i140, i32 %call38
  %sub.i145 = sub nsw i32 %conv29.i141, %call38
  %53 = call ptr @memset(ptr %add.ptr.i144, i32 0, i32 %sub.i145)
  br label %if.end36.i148

if.end36.i148:                                    ; preds = %if.then32.i146, %if.end21.i143.if.end36.i148_crit_edge
  %add.ptr38.i147 = getelementptr i8, ptr %add.ptr38.i134, i32 %conv29.i141
  br label %csio_append_attrib.exit149

csio_append_attrib.exit149:                       ; preds = %if.end36.i148, %do.end.i137
  %pld.1 = phi ptr [ %add.ptr38.i134, %do.end.i137 ], [ %add.ptr38.i147, %if.end36.i148 ]
  %hw_ver = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 23
  %54 = ptrtoint ptr %pld.1 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 6, ptr %pld.1, align 1
  %len28.i150 = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %pld.1, i32 0, i32 1
  %55 = ptrtoint ptr %len28.i150 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 20, ptr %len28.i150, align 1
  %value.i151 = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %pld.1, i32 0, i32 2
  %56 = call ptr @memcpy(ptr %value.i151, ptr %hw_ver, i32 16)
  %add.ptr.i153 = getelementptr %struct.fc_fdmi_attr_entry, ptr %pld.1, i32 4
  %57 = ptrtoint ptr %add.ptr.i153 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 0, ptr %add.ptr.i153, align 1
  %fwrev_str = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 26
  %call45 = tail call i32 @strlen(ptr noundef %fwrev_str) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call45)
  %cmp.i157 = icmp ugt i32 %call45, 65535
  br i1 %cmp.i157, label %do.end.i158, label %if.end21.i164, !prof !171

do.end.i158:                                      ; preds = %csio_append_attrib.exit149
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 246, i32 noundef 9, ptr noundef null) #15
  br label %csio_append_attrib.exit170

if.end21.i164:                                    ; preds = %csio_append_attrib.exit149
  %58 = ptrtoint ptr %add.ptr.i153 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 9, ptr %add.ptr.i153, align 1
  %59 = trunc i32 %call45 to i16
  %60 = add i16 %59, 7
  %conv27.i159 = and i16 %60, -4
  %len28.i160 = getelementptr i8, ptr %pld.1, i32 22
  %61 = ptrtoint ptr %len28.i160 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %conv27.i159, ptr %len28.i160, align 1
  %value.i161 = getelementptr i8, ptr %pld.1, i32 24
  %62 = call ptr @memcpy(ptr %value.i161, ptr %fwrev_str, i32 %call45)
  %conv29.i162 = zext i16 %conv27.i159 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call45, i32 %conv29.i162)
  %cmp30.i163 = icmp ult i32 %call45, %conv29.i162
  br i1 %cmp30.i163, label %if.then32.i167, label %if.end21.i164.if.end36.i169_crit_edge

if.end21.i164.if.end36.i169_crit_edge:            ; preds = %if.end21.i164
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i169

if.then32.i167:                                   ; preds = %if.end21.i164
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i165 = getelementptr i8, ptr %value.i161, i32 %call45
  %sub.i166 = sub nsw i32 %conv29.i162, %call45
  %63 = call ptr @memset(ptr %add.ptr.i165, i32 0, i32 %sub.i166)
  br label %if.end36.i169

if.end36.i169:                                    ; preds = %if.then32.i167, %if.end21.i164.if.end36.i169_crit_edge
  %add.ptr38.i168 = getelementptr i8, ptr %add.ptr.i153, i32 %conv29.i162
  br label %csio_append_attrib.exit170

csio_append_attrib.exit170:                       ; preds = %if.end36.i169, %do.end.i158
  %pld.2 = phi ptr [ %add.ptr.i153, %do.end.i158 ], [ %add.ptr38.i168, %if.end36.i169 ]
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_uts_ns, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3)) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i171 = icmp sgt i32 %call5.i, 0
  br i1 %cmp.i171, label %if.then50, label %csio_append_attrib.exit170.if.end55_crit_edge

csio_append_attrib.exit170.if.end55_crit_edge:    ; preds = %csio_append_attrib.exit170
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.then50:                                        ; preds = %csio_append_attrib.exit170
  %call53 = call i32 @strlen(ptr noundef nonnull %buf) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call53)
  %cmp.i172 = icmp ugt i32 %call53, 65535
  br i1 %cmp.i172, label %do.end.i173, label %if.end21.i179, !prof !171

do.end.i173:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 246, i32 noundef 9, ptr noundef null) #15
  br label %if.end55

if.end21.i179:                                    ; preds = %if.then50
  %64 = ptrtoint ptr %pld.2 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 10, ptr %pld.2, align 1
  %65 = trunc i32 %call53 to i16
  %66 = add i16 %65, 7
  %conv27.i174 = and i16 %66, -4
  %len28.i175 = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %pld.2, i32 0, i32 1
  %67 = ptrtoint ptr %len28.i175 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %conv27.i174, ptr %len28.i175, align 1
  %value.i176 = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %pld.2, i32 0, i32 2
  %68 = call ptr @memcpy(ptr %value.i176, ptr %buf, i32 %call53)
  %conv29.i177 = zext i16 %conv27.i174 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call53, i32 %conv29.i177)
  %cmp30.i178 = icmp ult i32 %call53, %conv29.i177
  br i1 %cmp30.i178, label %if.then32.i182, label %if.end21.i179.if.end36.i184_crit_edge

if.end21.i179.if.end36.i184_crit_edge:            ; preds = %if.end21.i179
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i184

if.then32.i182:                                   ; preds = %if.end21.i179
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i180 = getelementptr i8, ptr %value.i176, i32 %call53
  %sub.i181 = sub nsw i32 %conv29.i177, %call53
  %69 = call ptr @memset(ptr %add.ptr.i180, i32 0, i32 %sub.i181)
  br label %if.end36.i184

if.end36.i184:                                    ; preds = %if.then32.i182, %if.end21.i179.if.end36.i184_crit_edge
  %add.ptr38.i183 = getelementptr i8, ptr %pld.2, i32 %conv29.i177
  br label %if.end55

if.end55:                                         ; preds = %if.end36.i184, %do.end.i173, %csio_append_attrib.exit170.if.end55_crit_edge
  %pld.4 = phi ptr [ %pld.2, %csio_append_attrib.exit170.if.end55_crit_edge ], [ %pld.2, %do.end.i173 ], [ %add.ptr38.i183, %if.end36.i184 ]
  %numattrs.0 = phi i32 [ 8, %csio_append_attrib.exit170.if.end55_crit_edge ], [ 9, %do.end.i173 ], [ 9, %if.end36.i184 ]
  %70 = ptrtoint ptr %pld.4 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 11, ptr %pld.4, align 1
  %len28.i186 = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %pld.4, i32 0, i32 1
  %71 = ptrtoint ptr %len28.i186 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 8, ptr %len28.i186, align 1
  %value.i187 = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %pld.4, i32 0, i32 2
  %72 = ptrtoint ptr %value.i187 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 65536, ptr %value.i187, align 1
  %add.ptr.i189 = getelementptr i8, ptr %value.i187, i32 4
  %73 = ptrtoint ptr %add.ptr.i189 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 0, ptr %add.ptr.i189, align 1
  %add.ptr38.i191 = getelementptr i8, ptr %pld.4, i32 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr38.i191 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %74 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %numattrs.0, ptr %add.ptr16, align 1
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %call66 = tail call fastcc i32 @csio_ln_mgmt_submit_req(ptr noundef %fdmi_req, ptr noundef nonnull @csio_ln_fdmi_rhba_cbfn, ptr noundef %dma_buf, i32 noundef %sub.ptr.sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end55.if.end72_crit_edge, label %if.then68

if.end55.if.end72_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then68:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err70 = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 29, i32 9
  %75 = ptrtoint ptr %n_fdmi_err70 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %n_fdmi_err70, align 4
  %inc71 = add i32 %76, 1
  store i32 %inc71, ptr %n_fdmi_err70, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.end55.if.end72_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call62) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_ln_fdmi_rhba_cbfn(ptr noundef %hw, ptr noundef %fdmi_req) #2 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 9
  %0 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnode, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #15
  %2 = getelementptr inbounds i8, ptr %buf, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 32)
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 7
  %4 = ptrtoint ptr %wr_status to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wr_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 29, i32 9
  %6 = ptrtoint ptr %n_fdmi_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_fdmi_err, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %n_fdmi_err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_buf = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 6
  %vaddr = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr, align 8
  %rnode = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 10
  %10 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rnode, align 4
  %call = tail call i32 @csio_is_rnode_ready(ptr noundef %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err9 = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 29, i32 9
  %12 = ptrtoint ptr %n_fdmi_err9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_fdmi_err9, align 4
  %inc10 = add i32 %13, 1
  store i32 %inc10, ptr %n_fdmi_err9, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %14 = getelementptr inbounds i8, ptr %9, i32 1
  %15 = call ptr @memset(ptr %14, i32 0, i32 15)
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %9, align 2
  %ct_fs_type.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %ct_fs_type.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -6, ptr %ct_fs_type.i, align 2
  %ct_fs_subtype.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %ct_fs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 16, ptr %ct_fs_subtype.i, align 1
  %ct_cmd.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %9, i32 0, i32 6
  %19 = ptrtoint ptr %ct_cmd.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 529, ptr %ct_cmd.i, align 2
  %add.ptr = getelementptr i8, ptr %9, i32 16
  %wwpn = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wwpn, align 8
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %add.ptr, align 8
  %add.ptr12 = getelementptr i8, ptr %9, i32 24
  %23 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %add.ptr12, align 1
  %add.ptr14 = getelementptr i8, ptr %9, i32 28
  %24 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %arrayidx15 = getelementptr inbounds i8, ptr %buf, i32 2
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr inbounds i8, ptr %buf, i32 7
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %arrayidx16, align 1
  %27 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 1, ptr %add.ptr14, align 1
  %len28.i = getelementptr i8, ptr %9, i32 30
  %28 = ptrtoint ptr %len28.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 36, ptr %len28.i, align 1
  %value.i = getelementptr i8, ptr %9, i32 32
  %29 = call ptr @memcpy(ptr %value.i, ptr %buf, i32 32)
  %add.ptr.i = getelementptr i8, ptr %9, i32 64
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 131080, ptr %add.ptr.i, align 1
  %value.i164 = getelementptr i8, ptr %9, i32 68
  %31 = ptrtoint ptr %value.i164 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 5, ptr %value.i164, align 1
  %add.ptr.i165 = getelementptr i8, ptr %9, i32 72
  %32 = ptrtoint ptr %add.ptr.i165 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 0, ptr %add.ptr.i165, align 1
  %portid = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %portid, align 8
  %idxprom = zext i8 %34 to i32
  %link_speed = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %idxprom, i32 4
  %35 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %link_speed, align 2
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %36, label %if.else73 [
    i16 2, label %if.end11.if.end79_crit_edge
    i16 8, label %if.then32
    i16 16, label %if.then52
    i16 32, label %if.then62
    i16 64, label %if.then72
  ]

if.end11.if.end79_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.then32:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.then52:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.then62:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.then72:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.else73:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.end79:                                         ; preds = %if.else73, %if.then72, %if.then62, %if.then52, %if.then32, %if.end11.if.end79_crit_edge
  %val.0 = phi i32 [ 32768, %if.else73 ], [ 1024, %if.then72 ], [ 512, %if.then62 ], [ 256, %if.then52 ], [ 4, %if.then32 ], [ 1, %if.end11.if.end79_crit_edge ]
  %38 = ptrtoint ptr %add.ptr.i165 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 3, ptr %add.ptr.i165, align 1
  %len28.i167 = getelementptr i8, ptr %9, i32 74
  %39 = ptrtoint ptr %len28.i167 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 8, ptr %len28.i167, align 1
  %value.i168 = getelementptr i8, ptr %9, i32 76
  %40 = ptrtoint ptr %value.i168 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %val.0, ptr %value.i168, align 1
  %add.ptr.i169 = getelementptr i8, ptr %9, i32 80
  %41 = ptrtoint ptr %add.ptr.i169 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 0, ptr %add.ptr.i169, align 1
  %sp_bb_data = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 12, i32 0, i32 4
  %42 = ptrtoint ptr %sp_bb_data to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sp_bb_data, align 2
  store i16 4, ptr %add.ptr.i169, align 1
  %len28.i171 = getelementptr i8, ptr %9, i32 82
  %44 = ptrtoint ptr %len28.i171 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 8, ptr %len28.i171, align 1
  %value.i172 = getelementptr i8, ptr %9, i32 84
  %45 = ptrtoint ptr %value.i172 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %43, ptr %value.i172, align 1
  %add.ptr.i173 = getelementptr i8, ptr %9, i32 86
  %46 = call ptr @memset(ptr %add.ptr.i173, i32 0, i32 6)
  %add.ptr38.i174 = getelementptr i8, ptr %9, i32 88
  %47 = call ptr @memcpy(ptr %buf, ptr @.str.31, i32 9)
  %call87 = call i32 @strlen(ptr noundef nonnull %buf) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call87)
  %cmp.i = icmp ugt i32 %call87, 65535
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !171

do.end.i:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 246, i32 noundef 9, ptr noundef null) #15
  br label %csio_append_attrib.exit

if.end21.i:                                       ; preds = %if.end79
  %48 = ptrtoint ptr %add.ptr38.i174 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 5, ptr %add.ptr38.i174, align 1
  %49 = trunc i32 %call87 to i16
  %50 = add i16 %49, 7
  %conv27.i = and i16 %50, -4
  %len28.i175 = getelementptr i8, ptr %9, i32 90
  %51 = ptrtoint ptr %len28.i175 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %conv27.i, ptr %len28.i175, align 1
  %value.i176 = getelementptr i8, ptr %9, i32 92
  %52 = call ptr @memcpy(ptr %value.i176, ptr %buf, i32 %call87)
  %conv29.i = zext i16 %conv27.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call87, i32 %conv29.i)
  %cmp30.i = icmp ult i32 %call87, %conv29.i
  br i1 %cmp30.i, label %if.then32.i, label %if.end21.i.if.end36.i_crit_edge

if.end21.i.if.end36.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then32.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i177 = getelementptr i8, ptr %value.i176, i32 %call87
  %sub.i = sub nsw i32 %conv29.i, %call87
  %53 = call ptr @memset(ptr %add.ptr.i177, i32 0, i32 %sub.i)
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %if.end21.i.if.end36.i_crit_edge
  %add.ptr38.i178 = getelementptr i8, ptr %add.ptr38.i174, i32 %conv29.i
  br label %csio_append_attrib.exit

csio_append_attrib.exit:                          ; preds = %if.end36.i, %do.end.i
  %pld.0 = phi ptr [ %add.ptr38.i174, %do.end.i ], [ %add.ptr38.i178, %if.end36.i ]
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.32, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 1)) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i179 = icmp sgt i32 %call1.i, 0
  br i1 %cmp.i179, label %if.then92, label %csio_append_attrib.exit.if.end97_crit_edge

csio_append_attrib.exit.if.end97_crit_edge:       ; preds = %csio_append_attrib.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.then92:                                        ; preds = %csio_append_attrib.exit
  %call95 = call i32 @strlen(ptr noundef nonnull %buf) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call95)
  %cmp.i180 = icmp ugt i32 %call95, 65535
  br i1 %cmp.i180, label %do.end.i181, label %if.end21.i187, !prof !171

do.end.i181:                                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 246, i32 noundef 9, ptr noundef null) #15
  br label %if.end97

if.end21.i187:                                    ; preds = %if.then92
  %54 = ptrtoint ptr %pld.0 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 6, ptr %pld.0, align 1
  %55 = trunc i32 %call95 to i16
  %56 = add i16 %55, 7
  %conv27.i182 = and i16 %56, -4
  %len28.i183 = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %pld.0, i32 0, i32 1
  %57 = ptrtoint ptr %len28.i183 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %conv27.i182, ptr %len28.i183, align 1
  %value.i184 = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %pld.0, i32 0, i32 2
  %58 = call ptr @memcpy(ptr %value.i184, ptr %buf, i32 %call95)
  %conv29.i185 = zext i16 %conv27.i182 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call95, i32 %conv29.i185)
  %cmp30.i186 = icmp ult i32 %call95, %conv29.i185
  br i1 %cmp30.i186, label %if.then32.i190, label %if.end21.i187.if.end36.i192_crit_edge

if.end21.i187.if.end36.i192_crit_edge:            ; preds = %if.end21.i187
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i192

if.then32.i190:                                   ; preds = %if.end21.i187
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i188 = getelementptr i8, ptr %value.i184, i32 %call95
  %sub.i189 = sub nsw i32 %conv29.i185, %call95
  %59 = call ptr @memset(ptr %add.ptr.i188, i32 0, i32 %sub.i189)
  br label %if.end36.i192

if.end36.i192:                                    ; preds = %if.then32.i190, %if.end21.i187.if.end36.i192_crit_edge
  %add.ptr38.i191 = getelementptr i8, ptr %pld.0, i32 %conv29.i185
  br label %if.end97

if.end97:                                         ; preds = %if.end36.i192, %do.end.i181, %csio_append_attrib.exit.if.end97_crit_edge
  %pld.2 = phi ptr [ %pld.0, %csio_append_attrib.exit.if.end97_crit_edge ], [ %pld.0, %do.end.i181 ], [ %add.ptr38.i191, %if.end36.i192 ]
  %numattrs.0 = phi i32 [ 5, %csio_append_attrib.exit.if.end97_crit_edge ], [ 6, %do.end.i181 ], [ 6, %if.end36.i192 ]
  %60 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %numattrs.0, ptr %add.ptr12, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %pld.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  %call103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %call107 = tail call fastcc i32 @csio_ln_mgmt_submit_req(ptr noundef %fdmi_req, ptr noundef nonnull @csio_ln_fdmi_done, ptr noundef %dma_buf, i32 noundef %sub.ptr.sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end97.if.end113_crit_edge, label %if.then109

if.end97.if.end113_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then109:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  %n_fdmi_err111 = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 29, i32 9
  %61 = ptrtoint ptr %n_fdmi_err111 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_fdmi_err111, align 4
  %inc112 = add i32 %62, 1
  store i32 %inc112, ptr %n_fdmi_err111, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %if.end97.if.end113_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call103) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.then7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @csio_ln_fdmi_done(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %fdmi_req) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 7
  %0 = ptrtoint ptr %wr_status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wr_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %lnode = getelementptr inbounds %struct.csio_ioreq, ptr %fdmi_req, i32 0, i32 9
  %2 = ptrtoint ptr %lnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lnode, align 8
  %n_fdmi_err = getelementptr inbounds %struct.csio_lnode, ptr %3, i32 0, i32 29, i32 9
  %4 = ptrtoint ptr %n_fdmi_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_fdmi_err, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_fdmi_err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_lnode_async_event(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_lns_online(ptr noundef %ln, i32 noundef %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %arrayidx = getelementptr %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 11, i32 %evt
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %evt, label %sw.default [
    i32 1, label %do.end
    i32 2, label %sw.bb6
    i32 3, label %entry.sw.bb8_crit_edge
    i32 4, label %entry.sw.bb8_crit_edge28
  ]

entry.sw.bb8_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwp, align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %dev_num = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %9 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_num, align 4
  %shr = lshr i32 %10, 16
  %and3 = and i32 %10, 65535
  %portid = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 2
  %11 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %portid, align 8
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %shr, i32 noundef %and3, i32 noundef %conv) #19
  %n_evt_drop = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 6
  %13 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_evt_drop, align 8
  %inc5 = add i32 %14, 1
  store i32 %inc5, ptr %n_evt_drop, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %15 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @csio_lns_ready, ptr %sm_state.i, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  tail call void @csio_lnode_async_event(ptr noundef %ln, i32 noundef 1) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge28
  %sm_state.i27 = getelementptr inbounds %struct.csio_sm, ptr %ln, i32 0, i32 1
  %16 = ptrtoint ptr %sm_state.i27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @csio_lns_uninit, ptr %sm_state.i27, align 4
  %pln = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 20
  %17 = ptrtoint ptr %pln to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pln, align 8
  %cmp = icmp eq ptr %18, null
  br i1 %cmp, label %if.then, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb8
  %fcfinfo = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 8
  %19 = ptrtoint ptr %fcfinfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcfinfo, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %20, ptr %20, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %20, ptr %prev.i3.i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_evt_unexp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 29, i32 5
  %29 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_evt_unexp, align 4
  %inc12 = add i32 %30, 1
  store i32 %inc12, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %list_del_init.exit, %sw.bb8.sw.epilog_crit_edge, %sw.bb6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_ln_read_fcf_entry(ptr noundef %ln) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %3, i32 noundef 2592) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 55, i32 15
  %4 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %portid = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 2
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %portid, align 8
  %conv = zext i8 %7 to i32
  %fcf_flowid = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 13
  %8 = ptrtoint ptr %fcf_flowid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fcf_flowid, align 8
  tail call void @csio_fcoe_read_fcf_init_mb(ptr noundef %ln, ptr noundef nonnull %call, i32 noundef 10000, i32 noundef %conv, i32 noundef %9, ptr noundef nonnull @csio_ln_read_fcf_cbfn) #15
  %call1 = tail call i32 @csio_mb_issue(ptr noundef %1, ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #19
  %12 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %13) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_ln_read_fcf_cbfn(ptr noundef %hw, ptr noundef %mbp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %retval_len16 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, ptr %mb, i32 0, i32 1
  %2 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %retval_len16, align 4
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  %shr1 = lshr i32 %9, 16
  %and4 = and i32 %9, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %shr1, i32 noundef %and4, i32 noundef %and) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %fcfinfo = getelementptr inbounds %struct.csio_lnode, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %fcfinfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fcfinfo, align 4
  %priority_pkd = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %priority_pkd to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %priority_pkd, align 8
  %conv7 = trunc i16 %13 to i8
  %priority = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %priority, align 4
  %vf_id = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vf_id, align 8
  %vf_id8 = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 5
  %17 = ptrtoint ptr %vf_id8 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vf_id8, align 4
  %vlan_id = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, ptr %mb, i32 0, i32 8
  %18 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vlan_id, align 4
  %vlan_id9 = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %vlan_id9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %vlan_id9, align 2
  %max_fcoe_size = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, ptr %mb, i32 0, i32 7
  %21 = ptrtoint ptr %max_fcoe_size to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_fcoe_size, align 2
  %max_fcoe_size10 = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 7
  %23 = ptrtoint ptr %max_fcoe_size10 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %max_fcoe_size10, align 4
  %fka_adv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %fka_adv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fka_adv, align 8
  %fka_adv11 = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 9
  %26 = ptrtoint ptr %fka_adv11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %fka_adv11, align 4
  %27 = ptrtoint ptr %mb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mb, align 8
  %and13 = and i32 %28, 1048575
  %fcfi = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 10
  %29 = ptrtoint ptr %fcfi to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and13, ptr %fcfi, align 4
  %fpma_to_portid = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, ptr %mb, i32 0, i32 13
  %30 = ptrtoint ptr %fpma_to_portid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fpma_to_portid, align 1
  %fpma = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 11
  %32 = ptrtoint ptr %fpma to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %fpma, align 4
  %33 = lshr i8 %31, 1
  %bf.shl = and i8 %33, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %fpma, align 4
  %34 = load i8, ptr %fpma_to_portid, align 1
  %35 = lshr i8 %34, 1
  %bf.shl25 = and i8 %35, 16
  %bf.clear26 = and i8 %bf.set, -17
  %bf.set27 = or i8 %bf.shl25, %bf.clear26
  store i8 %bf.set27, ptr %fpma, align 4
  %36 = load i8, ptr %fpma_to_portid, align 1
  %37 = lshr i8 %36, 1
  %bf.shl35 = and i8 %37, 8
  %bf.clear36 = and i8 %bf.set27, -9
  %bf.set37 = or i8 %bf.clear36, %bf.shl35
  store i8 %bf.set37, ptr %fpma, align 4
  %38 = load i8, ptr %fpma_to_portid, align 1
  %39 = and i8 %38, 15
  %portid = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 12
  %40 = ptrtoint ptr %portid to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %portid, align 1
  %fc_map = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 8
  %fc_map44 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, ptr %mb, i32 0, i32 9
  %41 = call ptr @memcpy(ptr %fc_map, ptr %fc_map44, i32 3)
  %mac = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 2
  %mac47 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, ptr %mb, i32 0, i32 3
  %42 = call ptr @memcpy(ptr %mac, ptr %mac47, i32 6)
  %name_id = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 3
  %name_id50 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %name_id50 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %name_id50, align 8
  %45 = ptrtoint ptr %name_id to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %name_id, align 1
  %fabric = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 4
  %fabric53 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %fabric53 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %fabric53, align 8
  %48 = ptrtoint ptr %fabric to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %47, ptr %fabric, align 1
  %spma_mac = getelementptr inbounds %struct.csio_fcf_info, ptr %11, i32 0, i32 13
  %spma_mac56 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, ptr %mb, i32 0, i32 14
  %49 = call ptr @memcpy(ptr %spma_mac, ptr %spma_mac56, i32 6)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %mb_mempool59 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %50 = ptrtoint ptr %mb_mempool59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mb_mempool59, align 4
  tail call void @mempool_free(ptr noundef %mbp, ptr noundef %51) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_ln_vnp_read(ptr noundef %ln) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %3, i32 noundef 2592) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 55, i32 15
  %4 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %fcf_flowid = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 13
  %6 = ptrtoint ptr %fcf_flowid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fcf_flowid, align 8
  %vnp_flowid = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 14
  %8 = ptrtoint ptr %vnp_flowid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vnp_flowid, align 4
  tail call void @csio_fcoe_vnp_read_init_mb(ptr noundef %ln, ptr noundef nonnull %call, i32 noundef 10000, i32 noundef %7, i32 noundef %9, ptr noundef nonnull @csio_ln_vnp_read_cbfn) #15
  %call1 = tail call i32 @csio_mb_issue(ptr noundef %1, ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #19
  %12 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %13) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_ln_vnp_read_cbfn(ptr noundef %hw, ptr noundef %mbp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %alloc_to_len16 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, ptr %mb, i32 0, i32 1
  %0 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloc_to_len16, align 4
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %and) #19
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %4 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef %mbp, ptr noundef %5) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %mac = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 10
  %vnport_mac = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, ptr %mb, i32 0, i32 5
  %8 = call ptr @memcpy(ptr %mac, ptr %vnport_mac, i32 6)
  %arrayidx = getelementptr %struct.fw_fcoe_vnp_cmd, ptr %mb, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 3)
  %nport_id.0.copyload = load i24, ptr %arrayidx, align 1
  %nport_id.0.insert.ext = zext i24 %nport_id.0.copyload to i32
  %nport_id4 = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %nport_id4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %nport_id.0.insert.ext, ptr %nport_id4, align 4
  %ln_sparm = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 12
  %wwnn = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 2
  %vnport_wwnn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %vnport_wwnn to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %vnport_wwnn, align 4
  %13 = ptrtoint ptr %wwnn to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %wwnn, align 8
  %wwpn = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 1
  %vnport_wwpn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %vnport_wwpn to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %vnport_wwpn, align 4
  %16 = ptrtoint ptr %wwpn to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %wwpn, align 8
  %cmn_srv_parms = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %cmn_srv_parms to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cmn_srv_parms, align 4
  %19 = ptrtoint ptr %ln_sparm to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %ln_sparm, align 8
  %sp_lo_ver = getelementptr inbounds %struct.fc_els_csp, ptr %cmn_srv_parms, i32 0, i32 1
  %20 = ptrtoint ptr %sp_lo_ver to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sp_lo_ver, align 1
  %sp_lo_ver19 = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 0, i32 1
  %22 = ptrtoint ptr %sp_lo_ver19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %sp_lo_ver19, align 1
  %sp_bb_cred = getelementptr inbounds %struct.fc_els_csp, ptr %cmn_srv_parms, i32 0, i32 2
  %23 = ptrtoint ptr %sp_bb_cred to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sp_bb_cred, align 2
  %sp_bb_cred22 = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 0, i32 2
  %25 = ptrtoint ptr %sp_bb_cred22 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %sp_bb_cred22, align 2
  %sp_features = getelementptr inbounds %struct.fc_els_csp, ptr %cmn_srv_parms, i32 0, i32 3
  %26 = ptrtoint ptr %sp_features to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sp_features, align 4
  %sp_features25 = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 0, i32 3
  %28 = ptrtoint ptr %sp_features25 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %sp_features25, align 4
  %sp_bb_data = getelementptr inbounds %struct.fc_els_csp, ptr %cmn_srv_parms, i32 0, i32 4
  %29 = ptrtoint ptr %sp_bb_data to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sp_bb_data, align 2
  %sp_bb_data28 = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 0, i32 4
  %31 = ptrtoint ptr %sp_bb_data28 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %sp_bb_data28, align 2
  %sp_u = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %sp_u to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sp_u, align 4
  %sp_u31 = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 0, i32 5
  %34 = ptrtoint ptr %sp_u31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sp_u31, align 8
  %sp_e_d_tov = getelementptr inbounds %struct.fc_els_csp, ptr %cmn_srv_parms, i32 0, i32 6
  %35 = ptrtoint ptr %sp_e_d_tov to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sp_e_d_tov, align 4
  %sp_e_d_tov35 = getelementptr inbounds %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 0, i32 6
  %37 = ptrtoint ptr %sp_e_d_tov35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sp_e_d_tov35, align 4
  %clsp_word_0_1 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 7
  %38 = ptrtoint ptr %clsp_word_0_1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %clsp_word_0_1, align 2
  %arrayidx39 = getelementptr %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 3, i32 2
  %40 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx39, align 8
  %cp_init = getelementptr inbounds %struct.fc_els_cssp, ptr %clsp_word_0_1, i32 0, i32 1
  %41 = ptrtoint ptr %cp_init to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cp_init, align 2
  %cp_init44 = getelementptr %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 3, i32 2, i32 1
  %43 = ptrtoint ptr %cp_init44 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %cp_init44, align 2
  %cp_recip = getelementptr inbounds %struct.fc_els_cssp, ptr %clsp_word_0_1, i32 0, i32 2
  %44 = ptrtoint ptr %cp_recip to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %cp_recip, align 2
  %cp_recip48 = getelementptr %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 3, i32 2, i32 2
  %46 = ptrtoint ptr %cp_recip48 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %cp_recip48, align 4
  %cp_rdfs = getelementptr inbounds %struct.fc_els_cssp, ptr %clsp_word_0_1, i32 0, i32 3
  %47 = ptrtoint ptr %cp_rdfs to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %cp_rdfs, align 2
  %cp_rdfs52 = getelementptr %struct.csio_lnode, ptr %7, i32 0, i32 12, i32 3, i32 2, i32 3
  %49 = ptrtoint ptr %cp_rdfs52 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %cp_rdfs52, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  %mb_mempool54 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %50 = ptrtoint ptr %mb_mempool54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mb_mempool54, align 4
  tail call void @mempool_free(ptr noundef %mbp, ptr noundef %51) #15
  tail call void @csio_lnode_async_event(ptr noundef %7, i32 noundef 4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_fcoe_read_fcf_init_mb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_fcoe_vnp_read_init_mb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @csio_lnode_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mgmt_req_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_write_fcoe_link_cond_init_mb(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mb_fw_retval(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_get(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_wr_copy_to_wrp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_issue(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_ln_fdmi_init(ptr nocapture noundef %ln) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwp = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 1
  %0 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #20
  %mgmt_req = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 9
  %3 = ptrtoint ptr %mgmt_req to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %mgmt_req, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %hwp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwp, align 4
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %dev_num = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 5
  %8 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_num, align 4
  %shr = lshr i32 %9, 16
  %and4 = and i32 %9, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.86, i32 noundef %shr, i32 noundef %and4) #19
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 55, i32 15
  %10 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.csio_ioreq, ptr %call7.i.i, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2048, ptr %len, align 8
  %pdev7 = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev7, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %paddr = getelementptr inbounds %struct.csio_ioreq, ptr %call7.i.i, i32 0, i32 6, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev8, i32 noundef 2048, ptr noundef %paddr, i32 noundef 3264, i32 noundef 0) #15
  %vaddr = getelementptr inbounds %struct.csio_ioreq, ptr %call7.i.i, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %vaddr, align 8
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %do.end16, label %if.end21

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev7, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.89) #19
  %18 = ptrtoint ptr %mgmt_req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mgmt_req, align 8
  tail call void @kfree(ptr noundef %19) #15
  %20 = ptrtoint ptr %mgmt_req to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %mgmt_req, align 8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.csio_lnode, ptr %ln, i32 0, i32 6
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %or = or i32 %22, 8
  store i32 %or, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end16, %do.end
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %do.end16 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_put_rnode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @csio_fcoe_rnodes, !1, !"csio_fcoe_rnodes", i1 false, i1 false}
!1 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 52, i32 5}
!2 = !{ptr @csio_fdmi_enable, !3, !"csio_fdmi_enable", i1 false, i1 false}
!3 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 53, i32 5}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1370, i32 15}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1374, i32 15}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1378, i32 15}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1381, i32 14}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1396, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @csio_get_phy_port_stats._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @csio_get_phy_port_stats._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1409, i32 4}
!22 = !{ptr @csio_get_phy_port_stats._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @csio_get_phy_port_stats._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1520, i32 4}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @csio_fcoe_fwevt_handler._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @csio_fcoe_fwevt_handler._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1542, i32 5}
!32 = !{ptr @csio_fcoe_fwevt_handler._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @csio_fcoe_fwevt_handler._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1555, i32 5}
!36 = !{ptr @csio_fcoe_fwevt_handler._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @csio_fcoe_fwevt_handler._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1593, i32 4}
!40 = !{ptr @csio_fcoe_fwevt_handler._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @csio_fcoe_fwevt_handler._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @csio_fcoe_fwevt_handler._entry.24, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1603, i32 4}
!44 = !{ptr @csio_fcoe_fwevt_handler._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1608, i32 3}
!47 = !{ptr @csio_fcoe_fwevt_handler._entry.26, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @csio_fcoe_fwevt_handler._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 463, i32 14}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 231, i32 29}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 375, i32 14}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 223, i32 29}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1174, i32 3}
!59 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @csio_lns_online._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @csio_lns_online._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 848, i32 3}
!64 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @csio_ln_read_fcf_entry._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @csio_ln_read_fcf_entry._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 793, i32 3}
!69 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @csio_ln_read_fcf_cbfn._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @csio_ln_read_fcf_cbfn._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 702, i32 3}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @csio_ln_vnp_read._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @csio_ln_vnp_read._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 626, i32 3}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @csio_ln_vnp_read_cbfn._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @csio_ln_vnp_read_cbfn._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 884, i32 4}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @csio_handle_link_up._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @csio_handle_link_up._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 897, i32 5}
!89 = !{ptr @csio_handle_link_up._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @csio_handle_link_up._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 914, i32 2}
!93 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @csio_handle_link_up._entry.48, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @csio_handle_link_up._entry_ptr.51, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1049, i32 4}
!98 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @csio_handle_link_down._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @csio_handle_link_down._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1059, i32 4}
!103 = !{ptr @csio_handle_link_down._entry.54, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @csio_handle_link_down._entry_ptr.56, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1068, i32 4}
!107 = !{ptr @csio_handle_link_down._entry.57, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @csio_handle_link_down._entry_ptr.59, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1075, i32 3}
!111 = !{ptr @csio_handle_link_down._entry.60, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @csio_handle_link_down._entry_ptr.62, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1082, i32 3}
!115 = !{ptr @csio_handle_link_down._entry.63, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @csio_handle_link_down._entry_ptr.65, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @fwevt_to_lnevt, !118, !"fwevt_to_lnevt", i1 false, i1 false}
!118 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 68, i32 24}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1442, i32 3}
!121 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @csio_ln_mgmt_wr_handler._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @csio_ln_mgmt_wr_handler._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1454, i32 3}
!126 = !{ptr @csio_ln_mgmt_wr_handler._entry.69, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @csio_ln_mgmt_wr_handler._entry_ptr.71, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 744, i32 3}
!130 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @csio_fcoe_enable_link._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @csio_fcoe_enable_link._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 752, i32 3}
!135 = !{ptr @csio_fcoe_enable_link._entry.74, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @csio_fcoe_enable_link._entry_ptr.76, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.78, !134, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.79, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1756, i32 3}
!141 = !{ptr @.str.80, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @csio_ln_mgmt_submit_wr._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @csio_ln_mgmt_submit_wr._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.81, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 2007, i32 4}
!146 = !{ptr @.str.82, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @csio_ln_init._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @csio_ln_init._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 2035, i32 5}
!151 = !{ptr @csio_ln_init._entry.83, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @csio_ln_init._entry_ptr.85, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.86, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1842, i32 3}
!155 = !{ptr @.str.87, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @csio_ln_fdmi_init._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @csio_ln_fdmi_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.89, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/csiostor/csio_lnode.c", i32 1853, i32 3}
!160 = !{ptr @csio_ln_fdmi_init._entry.88, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @csio_ln_fdmi_init._entry_ptr.90, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{i64 2156270682, i64 2156271182, i64 2156270719, i64 2156270775, i64 2156270809, i64 2156270833, i64 2156270874, i64 2156270895, i64 2156270923, i64 2156270957}
!173 = !{!"auto-init"}
!174 = !{i64 2148264559, i64 2148264591, i64 2148264620, i64 2148264654, i64 2148264685, i64 2148264708}
!175 = !{!"branch_weights", i32 2000, i32 1}
!176 = !{i64 2148352560}
!177 = !{i64 2148267024, i64 2148267056, i64 2148267085, i64 2148267119, i64 2148267150, i64 2148267173}
!178 = !{i64 2149610561}
