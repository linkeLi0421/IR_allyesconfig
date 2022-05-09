; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.bnxt_queue_info = type { i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnxt_stats_mem = type { ptr, ptr, ptr, i32, i32 }
%struct.hwrm_ver_get_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i8, [2 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.bnxt_coal_cap = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_coal = type { i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bnxt_hw_resc = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_pf_info = type { i16, i16, [6 x i8], i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, ptr, i16, i8, [4 x ptr], [4 x i32], ptr }
%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnxt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, %struct.hwrm_port_phy_qcfg_output }
%struct.hwrm_port_phy_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i32, i16, i8, i8, [16 x i8], [16 x i8], i16, i16, i16, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bnxt_led_info = type { i8, i8, i8, i8, i16, i16 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.145 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.145 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.hwrm_queue_dscp_qcaps_output = type { i16, i16, i16, i16, i8, i8, i16, [3 x i8], i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.156, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.156 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.hwrm_queue_cos2bw_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, [4 x i8], i8 }
%struct.hwrm_queue_pri2cos_qcfg_input = type { i16, i16, i16, i16, i64, i32, i8, [3 x i8] }
%struct.hwrm_queue_pri2cos_qcfg_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i8 }
%struct.hwrm_queue_pfcenable_qcfg_output = type { i16, i16, i16, i16, i32, [3 x i8], i8 }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.hwrm_queue_pfcenable_cfg_input = type { i16, i16, i16, i16, i64, i32, i16, [2 x i8] }
%struct.dcb_app = type { i8, i8, i16 }
%struct.hwrm_queue_cos2bw_cfg_input = type { i16, i16, i16, i16, i64, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, [5 x i8] }
%struct.hwrm_queue_pri2cos_cfg_input = type { i16, i16, i16, i16, i64, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8] }
%struct.hwrm_fw_get_structured_data_input = type { i16, i16, i16, i16, i64, i64, i16, i16, i16, i8, i8 }
%struct.hwrm_struct_hdr = type { i16, i16, i8, i8, i16, i16, [6 x i8] }
%struct.hwrm_struct_data_dcbx_app = type { i16, i8, i8, i8, [3 x i8] }
%struct.hwrm_fw_set_structured_data_input = type { i16, i16, i16, i16, i64, i64, i16, i8, [5 x i8] }
%struct.hwrm_queue_dscp2pri_cfg_input = type { i16, i16, i16, i16, i64, i64, i32, i32, i8, i8, i16, [4 x i8] }
%struct.bnxt_dscp2pri_entry = type { i8, i8, i8 }

@dcbnl_ops = internal constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @bnxt_dcbnl_ieee_getets, ptr @bnxt_dcbnl_ieee_setets, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnxt_dcbnl_ieee_getpfc, ptr @bnxt_dcbnl_ieee_setpfc, ptr null, ptr @bnxt_dcbnl_ieee_setapp, ptr @bnxt_dcbnl_ieee_delapp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnxt_dcbnl_getdcbx, ptr @bnxt_dcbnl_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"priority to TC mapping exceeds TC count %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"rejecting ETS config exceeding available bandwidth\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rejecting ETS config starving a TC\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to open NIC, rc = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to config BW, rc = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to config prio, rc = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"dcbnl_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 746, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 473, i32 24 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 495, i32 24 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 499, i32 24 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 218, i32 25 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 229, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [49 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 234, i32 25 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @dcbnl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_dcb_init(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 70
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dcbx_cap, align 8
  %hwrm_spec_code = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 76
  %1 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 66817, i32 %2)
  %cmp = icmp ult i32 %2, 66817
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #8
  %3 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !23
  %max_dscp_value.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 72
  %4 = ptrtoint ptr %max_dscp_value.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %max_dscp_value.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 67584, i32 %2)
  %cmp.i = icmp ult i32 %2, 67584
  br i1 %cmp.i, label %if.end.bnxt_hwrm_queue_dscp_qcaps.exit_crit_edge, label %lor.lhs.false.i

if.end.bnxt_hwrm_queue_dscp_qcaps.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_queue_dscp_qcaps.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.bnxt_hwrm_queue_dscp_qcaps.exit_crit_edge

lor.lhs.false.i.bnxt_hwrm_queue_dscp_qcaps.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_queue_dscp_qcaps.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext 59, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.bnxt_hwrm_queue_dscp_qcaps.exit_crit_edge

if.end.i.bnxt_hwrm_queue_dscp_qcaps.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_queue_dscp_qcaps.exit

if.end3.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req.i, align 4
  %call4.i = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %8) #8
  %9 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req.i, align 4
  %call5.i = call i32 @hwrm_req_send_silent(ptr noundef %bp, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end3.i.if.end17.i_crit_edge

if.end3.i.if.end17.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %num_dscp_bits.i = getelementptr inbounds %struct.hwrm_queue_dscp_qcaps_output, ptr %call4.i, i32 0, i32 4
  %11 = ptrtoint ptr %num_dscp_bits.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_dscp_bits.i, align 2
  %conv.i = zext i8 %12 to i32
  %notmask.i = shl nsw i32 -1, %conv.i
  %13 = trunc i32 %notmask.i to i8
  %conv8.i = xor i8 %13, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %13)
  %cmp12.i = icmp ugt i8 %13, -64
  %spec.store.select.i = select i1 %cmp12.i, i8 0, i8 %conv8.i
  %14 = ptrtoint ptr %max_dscp_value.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.store.select.i, ptr %max_dscp_value.i, align 2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then7.i, %if.end3.i.if.end17.i_crit_edge
  %15 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %16) #8
  br label %bnxt_hwrm_queue_dscp_qcaps.exit

bnxt_hwrm_queue_dscp_qcaps.exit:                  ; preds = %if.end17.i, %if.end.i.bnxt_hwrm_queue_dscp_qcaps.exit_crit_edge, %lor.lhs.false.i.bnxt_hwrm_queue_dscp_qcaps.exit_crit_edge, %if.end.bnxt_hwrm_queue_dscp_qcaps.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  %17 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %dcbx_cap, align 8
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %bnxt_hwrm_queue_dscp_qcaps.exit.if.else_crit_edge

bnxt_hwrm_queue_dscp_qcaps.exit.if.else_crit_edge: ; preds = %bnxt_hwrm_queue_dscp_qcaps.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %bnxt_hwrm_queue_dscp_qcaps.exit
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %20 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_cap, align 8
  %and2 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end16.sink.split_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end16.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %bnxt_hwrm_queue_dscp_qcaps.exit.if.else_crit_edge
  %fw_cap7 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %22 = ptrtoint ptr %fw_cap7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_cap7, align 8
  %and8 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else.if.end16_crit_edge, label %if.else.if.end16.sink.split_crit_edge

if.else.if.end16.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16.sink.split:                              ; preds = %if.else.if.end16.sink.split_crit_edge, %land.lhs.true.if.end16.sink.split_crit_edge
  %.sink = phi i8 [ 9, %land.lhs.true.if.end16.sink.split_crit_edge ], [ 10, %if.else.if.end16.sink.split_crit_edge ]
  %24 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %dcbx_cap, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else.if.end16_crit_edge
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 139
  %27 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dcbnl_ops, ptr %dcbnl_ops, align 16
  br label %return

return:                                           ; preds = %if.end16, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_dcb_free(ptr nocapture noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee_pfc = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 68
  %0 = ptrtoint ptr %ieee_pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee_pfc, align 8
  tail call void @kfree(ptr noundef %1) #8
  %ieee_ets = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 69
  %2 = ptrtoint ptr %ieee_ets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee_ets, align 4
  tail call void @kfree(ptr noundef %3) #8
  %4 = ptrtoint ptr %ieee_pfc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ieee_pfc, align 8
  %5 = ptrtoint ptr %ieee_ets to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ieee_ets, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwrm_req_init(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_hold(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send_silent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_drop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dcbnl_ieee_getets(ptr noundef %dev, ptr nocapture noundef writeonly %ets) #0 align 64 {
entry:
  %req.i54 = alloca ptr, align 4
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ieee_ets = getelementptr i8, ptr %dev, i32 2684
  %0 = ptrtoint ptr %ieee_ets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee_ets, align 4
  %max_tc = getelementptr i8, ptr %dev, i32 2570
  %2 = ptrtoint ptr %max_tc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_tc, align 2
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %4 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %ets_cap, align 1
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %entry
  %dcbx_cap = getelementptr i8, ptr %dev, i32 2688
  %5 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dcbx_cap, align 8
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 59) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #8
  %9 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !23
  %call.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i, i16 noundef zeroext 57, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %bnxt_hwrm_queue_cos2bw_qcfg.exit.thread

bnxt_hwrm_queue_cos2bw_qcfg.exit.thread:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  br label %error

if.end.i:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req.i, align 4
  %call1.i = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i, ptr noundef %11) #8
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req.i, align 4
  %call2.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %bnxt_hwrm_queue_cos2bw_qcfg.exit

if.end5.i:                                        ; preds = %if.end.i
  %queue_id0.i = getelementptr inbounds %struct.hwrm_queue_cos2bw_qcfg_output, ptr %call1.i, i32 0, i32 4
  %14 = ptrtoint ptr %max_tc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_tc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp55.not.i = icmp eq i8 %15, 0
  br i1 %cmp55.not.i, label %if.end5.i.if.end10_crit_edge, label %for.body.preheader.i

if.end5.i.if.end10_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.body.preheader.i:                             ; preds = %if.end5.i
  %conv54.i = zext i8 %15 to i32
  %add.ptr.i53 = getelementptr i8, ptr %queue_id0.i, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.057.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %data.056.i = phi ptr [ %add.ptr26.i, %cleanup.i.for.body.i_crit_edge ], [ %add.ptr.i53, %for.body.preheader.i ]
  %cos2bw.sroa.11.3.data.0..sroa_idx.i = getelementptr inbounds i8, ptr %data.056.i, i32 9
  %16 = ptrtoint ptr %cos2bw.sroa.11.3.data.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %cos2bw.sroa.11.3.copyload.i = load i8, ptr %cos2bw.sroa.11.3.data.0..sroa_idx.i, align 1
  %cos2bw.sroa.14.3.data.0..sroa_idx.i = getelementptr inbounds i8, ptr %data.056.i, i32 11
  %17 = ptrtoint ptr %cos2bw.sroa.14.3.data.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %cos2bw.sroa.14.3.copyload.i = load i8, ptr %cos2bw.sroa.14.3.data.0..sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.057.i)
  %cmp7.i = icmp eq i32 %i.057.i, 0
  %spec.select.i = select i1 %cmp7.i, ptr %queue_id0.i, ptr %data.056.i
  %18 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %cos2bw.sroa.5.0.i = load i8, ptr %spec.select.i, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc19.i.i.for.body.i.i_crit_edge, %for.body.i
  %i.037.i.i = phi i32 [ %inc20.i.i, %for.inc19.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i ]
  %arrayidx.i.i = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 58, i32 %i.037.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %cos2bw.sroa.5.0.i)
  %cmp5.not.i.i = icmp eq i8 %20, %cos2bw.sroa.5.0.i
  br i1 %cmp5.not.i.i, label %for.body.i.i.for.body12.i.i_crit_edge, label %for.body.i.i.for.inc19.i.i_crit_edge

for.body.i.i.for.inc19.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.i.i

for.body.i.i.for.body12.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body12.i.i

for.body12.i.i:                                   ; preds = %for.inc.i.i.for.body12.i.i_crit_edge, %for.body.i.i.for.body12.i.i_crit_edge
  %j.035.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body12.i.i_crit_edge ], [ 0, %for.body.i.i.for.body12.i.i_crit_edge ]
  %arrayidx13.i.i = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 59, i32 %j.035.i.i
  %21 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx13.i.i, align 1
  %conv14.i.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037.i.i, i32 %conv14.i.i)
  %cmp15.i.i = icmp eq i32 %i.037.i.i, %conv14.i.i
  br i1 %cmp15.i.i, label %if.end17.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body12.i.i
  %inc.i.i = add nuw nsw i32 %j.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv54.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc19.i.i_crit_edge, label %for.inc.i.i.for.body12.i.i_crit_edge

for.inc.i.i.for.body12.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i.i

for.inc.i.i.for.inc19.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.i.i

for.inc19.i.i:                                    ; preds = %for.inc.i.i.for.inc19.i.i_crit_edge, %for.body.i.i.for.inc19.i.i_crit_edge
  %inc20.i.i = add nuw nsw i32 %i.037.i.i, 1
  %exitcond42.not.i.i = icmp eq i32 %inc20.i.i, %conv54.i
  br i1 %exitcond42.not.i.i, label %for.inc19.i.i.cleanup.i_crit_edge, label %for.inc19.i.i.for.body.i.i_crit_edge

for.inc19.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc19.i.i.cleanup.i_crit_edge:                ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end17.i:                                       ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cos2bw.sroa.11.3.copyload.i)
  %cmp19.i = icmp eq i8 %cos2bw.sroa.11.3.copyload.i, 0
  %arrayidx.i = getelementptr %struct.ieee_ets, ptr %call7.i.i, i32 0, i32 5, i32 %j.035.i.i
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx.i, align 1
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %arrayidx.i, align 1
  %arrayidx24.i = getelementptr %struct.ieee_ets, ptr %call7.i.i, i32 0, i32 3, i32 %j.035.i.i
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %cos2bw.sroa.14.3.copyload.i, ptr %arrayidx24.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then21.i, %for.inc19.i.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %add.ptr26.i = getelementptr i8, ptr %data.056.i, i32 12
  %exitcond.not = icmp eq i32 %inc.i, %conv54.i
  br i1 %exitcond.not, label %cleanup.i.if.end10_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.if.end10_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

bnxt_hwrm_queue_cos2bw_qcfg.exit:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.sink.i = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %.sink.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  br label %error

if.end10:                                         ; preds = %cleanup.i.if.end10_crit_edge, %if.end5.i.if.end10_crit_edge
  %27 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.sink.i88 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %.sink.i88) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i54) #8
  %28 = ptrtoint ptr %req.i54 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i54, align 4, !annotation !23
  %call.i55 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i54, i16 noundef zeroext 55, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end.i60, label %bnxt_hwrm_queue_pri2cos_qcfg.exit.thread

bnxt_hwrm_queue_pri2cos_qcfg.exit.thread:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i54) #8
  br label %error

if.end.i60:                                       ; preds = %if.end10
  %29 = ptrtoint ptr %req.i54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req.i54, align 4
  %flags.i = getelementptr inbounds %struct.hwrm_queue_pri2cos_qcfg_input, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 33554432, ptr %flags.i, align 8
  %call1.i57 = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i, ptr noundef %30) #8
  %32 = ptrtoint ptr %req.i54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %req.i54, align 4
  %call2.i58 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i58)
  %tobool3.not.i59 = icmp eq i32 %call2.i58, 0
  br i1 %tobool3.not.i59, label %if.then4.i61, label %bnxt_hwrm_queue_pri2cos_qcfg.exit.thread92

bnxt_hwrm_queue_pri2cos_qcfg.exit.thread92:       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %req.i54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req.i54, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %35) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i54) #8
  br label %error

if.then4.i61:                                     ; preds = %if.end.i60
  %pri0_cos_queue_id.i = getelementptr inbounds %struct.hwrm_queue_pri2cos_qcfg_output, ptr %call1.i57, i32 0, i32 4
  %36 = ptrtoint ptr %max_tc to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_tc, align 2
  %conv.i.i = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp36.not.i.i63 = icmp eq i8 %37, 0
  br label %for.body.i64

for.body.i64:                                     ; preds = %if.end9.i.for.body.i64_crit_edge, %if.then4.i61
  %i.027.i = phi i32 [ 0, %if.then4.i61 ], [ %inc.i81, %if.end9.i.for.body.i64_crit_edge ]
  %arrayidx.i62 = getelementptr i8, ptr %pri0_cos_queue_id.i, i32 %i.027.i
  %38 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i62, align 1
  br i1 %cmp36.not.i.i63, label %for.body.i64.if.end9.i_crit_edge, label %for.body.i64.for.body.i.i68_crit_edge

for.body.i64.for.body.i.i68_crit_edge:            ; preds = %for.body.i64
  br label %for.body.i.i68

for.body.i64.if.end9.i_crit_edge:                 ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

for.body.i.i68:                                   ; preds = %for.inc19.i.i79.for.body.i.i68_crit_edge, %for.body.i64.for.body.i.i68_crit_edge
  %i.037.i.i65 = phi i32 [ %inc20.i.i77, %for.inc19.i.i79.for.body.i.i68_crit_edge ], [ 0, %for.body.i64.for.body.i.i68_crit_edge ]
  %arrayidx.i.i66 = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 58, i32 %i.037.i.i65
  %40 = ptrtoint ptr %arrayidx.i.i66 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i66, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %39)
  %cmp5.not.i.i67 = icmp eq i8 %41, %39
  br i1 %cmp5.not.i.i67, label %for.body.i.i68.for.body12.i.i73_crit_edge, label %for.body.i.i68.for.inc19.i.i79_crit_edge

for.body.i.i68.for.inc19.i.i79_crit_edge:         ; preds = %for.body.i.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.i.i79

for.body.i.i68.for.body12.i.i73_crit_edge:        ; preds = %for.body.i.i68
  br label %for.body12.i.i73

for.body12.i.i73:                                 ; preds = %for.inc.i.i76.for.body12.i.i73_crit_edge, %for.body.i.i68.for.body12.i.i73_crit_edge
  %j.035.i.i69 = phi i32 [ %inc.i.i74, %for.inc.i.i76.for.body12.i.i73_crit_edge ], [ 0, %for.body.i.i68.for.body12.i.i73_crit_edge ]
  %arrayidx13.i.i70 = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 59, i32 %j.035.i.i69
  %42 = ptrtoint ptr %arrayidx13.i.i70 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx13.i.i70, align 1
  %conv14.i.i71 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037.i.i65, i32 %conv14.i.i71)
  %cmp15.i.i72 = icmp eq i32 %i.037.i.i65, %conv14.i.i71
  br i1 %cmp15.i.i72, label %if.then7.i, label %for.inc.i.i76

for.inc.i.i76:                                    ; preds = %for.body12.i.i73
  %inc.i.i74 = add nuw nsw i32 %j.035.i.i69, 1
  %exitcond.not.i.i75 = icmp eq i32 %inc.i.i74, %conv.i.i
  br i1 %exitcond.not.i.i75, label %for.inc.i.i76.for.inc19.i.i79_crit_edge, label %for.inc.i.i76.for.body12.i.i73_crit_edge

for.inc.i.i76.for.body12.i.i73_crit_edge:         ; preds = %for.inc.i.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i.i73

for.inc.i.i76.for.inc19.i.i79_crit_edge:          ; preds = %for.inc.i.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.i.i79

for.inc19.i.i79:                                  ; preds = %for.inc.i.i76.for.inc19.i.i79_crit_edge, %for.body.i.i68.for.inc19.i.i79_crit_edge
  %inc20.i.i77 = add nuw nsw i32 %i.037.i.i65, 1
  %exitcond42.not.i.i78 = icmp eq i32 %inc20.i.i77, %conv.i.i
  br i1 %exitcond42.not.i.i78, label %for.inc19.i.i79.if.end9.i_crit_edge, label %for.inc19.i.i79.for.body.i.i68_crit_edge

for.inc19.i.i79.for.body.i.i68_crit_edge:         ; preds = %for.inc19.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i68

for.inc19.i.i79.if.end9.i_crit_edge:              ; preds = %for.inc19.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then7.i:                                       ; preds = %for.body12.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i80 = trunc i32 %j.035.i.i69 to i8
  %arrayidx8.i = getelementptr %struct.ieee_ets, ptr %call7.i.i, i32 0, i32 6, i32 %i.027.i
  %44 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i80, ptr %arrayidx8.i, align 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %for.inc19.i.i79.if.end9.i_crit_edge, %for.body.i64.if.end9.i_crit_edge
  %inc.i81 = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i81, 8
  br i1 %exitcond.not.i, label %if.end14, label %if.end9.i.for.body.i64_crit_edge

if.end9.i.for.body.i64_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i64

if.end14:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %req.i54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req.i54, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %46) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i54) #8
  %47 = ptrtoint ptr %ieee_ets to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %ieee_ets, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %entry.if.end16_crit_edge
  %my_ets.0 = phi ptr [ %1, %entry.if.end16_crit_edge ], [ %call7.i.i, %if.end14 ]
  %cbs = getelementptr inbounds %struct.ieee_ets, ptr %my_ets.0, i32 0, i32 2
  %48 = ptrtoint ptr %cbs to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cbs, align 1
  %cbs17 = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %50 = ptrtoint ptr %cbs17 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %cbs17, align 1
  %tc_tx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 3
  %tc_tx_bw18 = getelementptr inbounds %struct.ieee_ets, ptr %my_ets.0, i32 0, i32 3
  %51 = ptrtoint ptr %tc_tx_bw18 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %tc_tx_bw18, align 1
  %53 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %tc_tx_bw, align 1
  %tc_rx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 4
  %tc_rx_bw21 = getelementptr inbounds %struct.ieee_ets, ptr %my_ets.0, i32 0, i32 4
  %54 = ptrtoint ptr %tc_rx_bw21 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %tc_rx_bw21, align 1
  %56 = ptrtoint ptr %tc_rx_bw to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %55, ptr %tc_rx_bw, align 1
  %tc_tsa = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %tc_tsa24 = getelementptr inbounds %struct.ieee_ets, ptr %my_ets.0, i32 0, i32 5
  %57 = ptrtoint ptr %tc_tsa24 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %tc_tsa24, align 1
  %59 = ptrtoint ptr %tc_tsa to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %tc_tsa, align 1
  %prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %prio_tc27 = getelementptr inbounds %struct.ieee_ets, ptr %my_ets.0, i32 0, i32 6
  %60 = ptrtoint ptr %prio_tc27 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %prio_tc27, align 1
  %62 = ptrtoint ptr %prio_tc to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %61, ptr %prio_tc, align 1
  br label %cleanup

error:                                            ; preds = %bnxt_hwrm_queue_pri2cos_qcfg.exit.thread92, %bnxt_hwrm_queue_pri2cos_qcfg.exit.thread, %bnxt_hwrm_queue_cos2bw_qcfg.exit, %bnxt_hwrm_queue_cos2bw_qcfg.exit.thread
  %rc.0 = phi i32 [ %call2.i, %bnxt_hwrm_queue_cos2bw_qcfg.exit ], [ %call.i, %bnxt_hwrm_queue_cos2bw_qcfg.exit.thread ], [ %call.i55, %bnxt_hwrm_queue_pri2cos_qcfg.exit.thread ], [ %call2.i58, %bnxt_hwrm_queue_pri2cos_qcfg.exit.thread92 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end16, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %rc.0, %error ], [ 0, %if.then.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dcbnl_ieee_setets(ptr noundef %dev, ptr nocapture noundef readonly %ets) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ieee_ets = getelementptr i8, ptr %dev, i32 2684
  %0 = ptrtoint ptr %ieee_ets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee_ets, align 4
  %dcbx_cap = getelementptr i8, ptr %dev, i32 2688
  %2 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dcbx_cap, align 8
  %4 = and i8 %3, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %4)
  %.not = icmp eq i8 %4, 9
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_tc1.i = getelementptr i8, ptr %dev, i32 2570
  %5 = ptrtoint ptr %max_tc1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %max_tc1.i, align 2
  %conv24.old.i = zext i8 %6 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.0112.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %max_tc.0111.i = phi i8 [ 0, %if.end ], [ %11, %for.inc.i.for.body.i_crit_edge ]
  %zero.0.off0110.i = phi i1 [ false, %if.end ], [ %zero.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %total_ets_bw.0109.i = phi i32 [ 0, %if.end ], [ %total_ets_bw.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 %i.0112.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %6)
  %cmp3.i = icmp ugt i8 %8, %6
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %8 to i32
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %conv.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %11 = tail call i8 @llvm.umax.i8(i8 %8, i8 %max_tc.0111.i) #8
  %arrayidx18.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.0112.i
  %12 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx20.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.0112.i
  %14 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool22.not.i = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0112.i, i32 %conv24.old.i)
  %cmp25.i = icmp ugt i32 %i.0112.i, %conv24.old.i
  %or.cond101.i = select i1 %tobool22.not.i, i1 %cmp25.i, i1 false
  br i1 %or.cond101.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.end28.i_crit_edge

lor.lhs.false.i.if.end28.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0112.i, i32 %conv24.old.i)
  %cmp25.old.i = icmp ugt i32 %i.0112.i, %conv24.old.i
  br i1 %cmp25.old.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end28.i_crit_edge

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.i:                                       ; preds = %land.lhs.true.i.if.end28.i_crit_edge, %lor.lhs.false.i.if.end28.i_crit_edge
  %arrayidx30.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.0112.i
  %16 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx30.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.end28.i.cleanup_crit_edge [
    i8 0, label %if.end28.i.for.inc.i_crit_edge
    i8 2, label %sw.bb.i
  ]

if.end28.i.for.inc.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv34.i = zext i8 %13 to i32
  %add.i = add i32 %total_ets_bw.0109.i, %conv34.i
  %spec.select100.i = select i1 %zero.0.off0110.i, i1 true, i1 %tobool.not.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb.i, %if.end28.i.for.inc.i_crit_edge
  %total_ets_bw.1.i = phi i32 [ %add.i, %sw.bb.i ], [ %total_ets_bw.0109.i, %if.end28.i.for.inc.i_crit_edge ]
  %zero.1.off0.i = phi i1 [ %spec.select100.i, %sw.bb.i ], [ %zero.0.off0110.i, %if.end28.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0112.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %total_ets_bw.1.i)
  %cmp40.i = icmp sgt i32 %total_ets_bw.1.i, 100
  br i1 %cmp40.i, label %if.then42.i, label %if.end44.i

if.then42.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev43.i = getelementptr i8, ptr %dev, i32 2388
  %19 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev43.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end44.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %total_ets_bw.1.i)
  %cmp48.i = icmp eq i32 %total_ets_bw.1.i, 100
  %or.cond.i = select i1 %zero.1.off0.i, i1 %cmp48.i, i1 false
  br i1 %or.cond.i, label %if.then50.i, label %if.then7

if.then50.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev51.i = getelementptr i8, ptr %dev, i32 2388
  %21 = ptrtoint ptr %dev51.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev51.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.then7:                                         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %6)
  %cmp56.not.i = icmp ult i8 %11, %6
  %add61.i = add i8 %11, 1
  %storemerge.i = select i1 %cmp56.not.i, i8 %add61.i, i8 %6
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.then9, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then9:                                         ; preds = %if.then7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 59) #11
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %for.body.preheader

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 27
  %24 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 578721382704613384, ptr %uglygep, align 1
  %25 = ptrtoint ptr %ieee_ets to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %ieee_ets, align 4
  br label %if.end16

if.end16:                                         ; preds = %for.body.preheader, %if.then7.if.end16_crit_edge
  %my_ets.0 = phi ptr [ %1, %if.then7.if.end16_crit_edge ], [ %call7.i.i, %for.body.preheader ]
  %call17 = tail call i32 @bnxt_setup_mq_tc(ptr noundef %dev, i8 noundef zeroext %storemerge.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call fastcc i32 @bnxt_hwrm_queue_cos2bw_cfg(ptr noundef %add.ptr.i, ptr noundef %ets, i8 noundef zeroext %storemerge.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = tail call fastcc i32 @bnxt_hwrm_queue_pri2cos_cfg(ptr noundef %add.ptr.i, ptr noundef %ets)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %26 = call ptr @memcpy(ptr %my_ets.0, ptr %ets, i32 59)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then50.i, %if.then42.i, %if.end28.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then9.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ 0, %if.end28 ], [ -22, %if.then50.i ], [ -22, %if.then42.i ], [ -22, %if.then.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -524, %if.end28.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dcbnl_ieee_getpfc(ptr noundef %dev, ptr nocapture noundef writeonly %pfc) #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw_stats = getelementptr i8, ptr %dev, i32 2920
  %0 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_stats, align 8
  %ieee_pfc = getelementptr i8, ptr %dev, i32 2680
  %2 = ptrtoint ptr %ieee_pfc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee_pfc, align 8
  %max_lltc = getelementptr i8, ptr %dev, i32 2571
  %4 = ptrtoint ptr %max_lltc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_lltc, align 1
  %6 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %pfc, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  %dcbx_cap = getelementptr i8, ptr %dev, i32 2688
  %7 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dcbx_cap, align 8
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 136) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %ieee_pfc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %ieee_pfc, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #8
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !23
  %call.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i, i16 noundef zeroext 53, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %bnxt_hwrm_queue_pfc_qcfg.exit.thread

bnxt_hwrm_queue_pfc_qcfg.exit.thread:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req.i, align 4
  %call1.i = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i, ptr noundef %14) #8
  %15 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req.i, align 4
  %call2.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %bnxt_hwrm_queue_pfc_qcfg.exit.thread56, label %bnxt_hwrm_queue_pfc_qcfg.exit

bnxt_hwrm_queue_pfc_qcfg.exit.thread56:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.hwrm_queue_pfcenable_qcfg_output, ptr %call1.i, i32 0, i32 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %19 = lshr i32 %18, 24
  %conv.i = trunc i32 %19 to i8
  %pfc_en.i = getelementptr inbounds %struct.ieee_pfc, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %pfc_en.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %pfc_en.i, align 1
  %21 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.sink.i58 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %.sink.i58) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  br label %if.end12

bnxt_hwrm_queue_pfc_qcfg.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.sink.i = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %.sink.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  br label %cleanup

if.end12:                                         ; preds = %bnxt_hwrm_queue_pfc_qcfg.exit.thread56, %entry.if.end12_crit_edge
  %my_pfc.0 = phi ptr [ %3, %entry.if.end12_crit_edge ], [ %call7.i.i, %bnxt_hwrm_queue_pfc_qcfg.exit.thread56 ]
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %my_pfc.0, i32 0, i32 1
  %23 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pfc_en, align 1
  %pfc_en13 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %25 = ptrtoint ptr %pfc_en13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %pfc_en13, align 1
  %mbc = getelementptr inbounds %struct.ieee_pfc, ptr %my_pfc.0, i32 0, i32 2
  %26 = ptrtoint ptr %mbc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mbc, align 2
  %mbc14 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 2
  %28 = ptrtoint ptr %mbc14 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %mbc14, align 2
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %my_pfc.0, i32 0, i32 3
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %delay, align 4
  %delay15 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %31 = ptrtoint ptr %delay15 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %delay15, align 4
  %tobool16.not = icmp eq ptr %1, null
  br i1 %tobool16.not, label %if.end12.cleanup_crit_edge, label %for.body.preheader

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i64, ptr %1, i32 164
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr, align 8
  %34 = call i64 @llvm.bswap.i64(i64 %33)
  %arrayidx = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 0
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx, align 8
  %add.ptr20 = getelementptr i64, ptr %1, i32 43
  %36 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr20, align 8
  %38 = call i64 @llvm.bswap.i64(i64 %37)
  %arrayidx21 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 0
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx21, align 8
  %add.ptr.1 = getelementptr i64, ptr %1, i32 165
  %40 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr.1, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41)
  %arrayidx.1 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx.1, align 8
  %add.ptr20.1 = getelementptr i64, ptr %1, i32 44
  %44 = ptrtoint ptr %add.ptr20.1 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr20.1, align 8
  %46 = call i64 @llvm.bswap.i64(i64 %45)
  %arrayidx21.1 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx21.1, align 8
  %add.ptr.2 = getelementptr i64, ptr %1, i32 166
  %48 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr.2, align 8
  %50 = call i64 @llvm.bswap.i64(i64 %49)
  %arrayidx.2 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx.2, align 8
  %add.ptr20.2 = getelementptr i64, ptr %1, i32 45
  %52 = ptrtoint ptr %add.ptr20.2 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %add.ptr20.2, align 8
  %54 = call i64 @llvm.bswap.i64(i64 %53)
  %arrayidx21.2 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 2
  %55 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx21.2, align 8
  %add.ptr.3 = getelementptr i64, ptr %1, i32 167
  %56 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %add.ptr.3, align 8
  %58 = call i64 @llvm.bswap.i64(i64 %57)
  %arrayidx.3 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 3
  %59 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx.3, align 8
  %add.ptr20.3 = getelementptr i64, ptr %1, i32 46
  %60 = ptrtoint ptr %add.ptr20.3 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %add.ptr20.3, align 8
  %62 = call i64 @llvm.bswap.i64(i64 %61)
  %arrayidx21.3 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 3
  %63 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %arrayidx21.3, align 8
  %add.ptr.4 = getelementptr i64, ptr %1, i32 168
  %64 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %add.ptr.4, align 8
  %66 = call i64 @llvm.bswap.i64(i64 %65)
  %arrayidx.4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 4
  %67 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %arrayidx.4, align 8
  %add.ptr20.4 = getelementptr i64, ptr %1, i32 47
  %68 = ptrtoint ptr %add.ptr20.4 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %add.ptr20.4, align 8
  %70 = call i64 @llvm.bswap.i64(i64 %69)
  %arrayidx21.4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 4
  %71 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %arrayidx21.4, align 8
  %add.ptr.5 = getelementptr i64, ptr %1, i32 169
  %72 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %add.ptr.5, align 8
  %74 = call i64 @llvm.bswap.i64(i64 %73)
  %arrayidx.5 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 5
  %75 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %arrayidx.5, align 8
  %add.ptr20.5 = getelementptr i64, ptr %1, i32 48
  %76 = ptrtoint ptr %add.ptr20.5 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %add.ptr20.5, align 8
  %78 = call i64 @llvm.bswap.i64(i64 %77)
  %arrayidx21.5 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 5
  %79 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %arrayidx21.5, align 8
  %add.ptr.6 = getelementptr i64, ptr %1, i32 170
  %80 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %add.ptr.6, align 8
  %82 = call i64 @llvm.bswap.i64(i64 %81)
  %arrayidx.6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 6
  %83 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %arrayidx.6, align 8
  %add.ptr20.6 = getelementptr i64, ptr %1, i32 49
  %84 = ptrtoint ptr %add.ptr20.6 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %add.ptr20.6, align 8
  %86 = call i64 @llvm.bswap.i64(i64 %85)
  %arrayidx21.6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 6
  %87 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %arrayidx21.6, align 8
  %add.ptr.7 = getelementptr i64, ptr %1, i32 171
  %88 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %add.ptr.7, align 8
  %90 = call i64 @llvm.bswap.i64(i64 %89)
  %arrayidx.7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 7
  %91 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %arrayidx.7, align 8
  %add.ptr20.7 = getelementptr i64, ptr %1, i32 50
  %92 = ptrtoint ptr %add.ptr20.7 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %add.ptr20.7, align 8
  %94 = call i64 @llvm.bswap.i64(i64 %93)
  %arrayidx21.7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 7
  %95 = ptrtoint ptr %arrayidx21.7 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %arrayidx21.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %if.end12.cleanup_crit_edge, %bnxt_hwrm_queue_pfc_qcfg.exit, %bnxt_hwrm_queue_pfc_qcfg.exit.thread, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dcbnl_ieee_setpfc(ptr noundef %dev, ptr nocapture noundef readonly %pfc) #0 align 64 {
entry:
  %qmap.i.i = alloca i32, align 4
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ieee_pfc = getelementptr i8, ptr %dev, i32 2680
  %dcbx_cap = getelementptr i8, ptr %dev, i32 2688
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 8
  %2 = and i8 %1, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %2)
  %.not = icmp eq i8 %2, 9
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ieee_pfc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ieee_pfc, align 8
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 136) #11
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ieee_pfc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %ieee_pfc, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.if.end12_crit_edge
  %my_pfc.0 = phi ptr [ %4, %if.end.if.end12_crit_edge ], [ %call7.i.i, %if.end10 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #8
  %7 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !23
  %ieee_ets.i = getelementptr i8, ptr %dev, i32 2684
  %8 = ptrtoint ptr %ieee_ets.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ieee_ets.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end12.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge, label %for.cond.preheader.i

if.end12.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_queue_pfc_cfg.exit.thread

for.cond.preheader.i:                             ; preds = %if.end12
  %max_tc.i = getelementptr i8, ptr %dev, i32 2570
  %10 = ptrtoint ptr %max_tc.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_tc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp119.not.i = icmp eq i8 %11, 0
  br i1 %cmp119.not.i, label %for.cond.preheader.i.if.end65.i_crit_edge, label %for.cond3.preheader.lr.ph.i

for.cond.preheader.i.if.end65.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

for.cond3.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %pfc_en.i = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %12 = ptrtoint ptr %pfc_en.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pfc_en.i, align 1
  %conv8.i = zext i8 %13 to i32
  %wide.trip.count.i = zext i8 %11 to i32
  %and.i = and i32 %conv8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  %arrayidx.i = getelementptr %struct.ieee_ets, ptr %9, i32 0, i32 6, i32 0
  %and.1.i = and i32 %conv8.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool10.not.1.i = icmp eq i32 %and.1.i, 0
  %arrayidx.1.i = getelementptr %struct.ieee_ets, ptr %9, i32 0, i32 6, i32 1
  %and.2.i = and i32 %conv8.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool10.not.2.i = icmp eq i32 %and.2.i, 0
  %arrayidx.2.i = getelementptr %struct.ieee_ets, ptr %9, i32 0, i32 6, i32 2
  %and.3.i = and i32 %conv8.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool10.not.3.i = icmp eq i32 %and.3.i, 0
  %arrayidx.3.i = getelementptr %struct.ieee_ets, ptr %9, i32 0, i32 6, i32 3
  %and.4.i = and i32 %conv8.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool10.not.4.i = icmp eq i32 %and.4.i, 0
  %arrayidx.4.i = getelementptr %struct.ieee_ets, ptr %9, i32 0, i32 6, i32 4
  %and.5.i = and i32 %conv8.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool10.not.5.i = icmp eq i32 %and.5.i, 0
  %arrayidx.5.i = getelementptr %struct.ieee_ets, ptr %9, i32 0, i32 6, i32 5
  %and.6.i = and i32 %conv8.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool10.not.6.i = icmp eq i32 %and.6.i, 0
  %arrayidx.6.i = getelementptr %struct.ieee_ets, ptr %9, i32 0, i32 6, i32 6
  %and.7.i = and i32 %conv8.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool10.not.7.i = icmp eq i32 %and.7.i, 0
  %arrayidx.7.i = getelementptr %struct.ieee_ets, ptr %9, i32 0, i32 6, i32 7
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc.7.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.7.i.for.cond3.preheader.i_crit_edge ]
  %lltc_count.0123.i = phi i8 [ 0, %for.cond3.preheader.lr.ph.i ], [ %spec.select.i, %for.inc.7.i.for.cond3.preheader.i_crit_edge ]
  %pri_mask.0121.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %pri_mask.2.7.i, %for.inc.7.i.for.cond3.preheader.i_crit_edge ]
  %tc_mask.0120.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %tc_mask.2.7.i, %for.inc.7.i.for.cond3.preheader.i_crit_edge ]
  %shl19.i = shl nuw i32 1, %indvars.iv.i
  br i1 %tobool10.not.i, label %for.cond3.preheader.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.cond3.preheader.i.for.inc.i_crit_edge:        ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond3.preheader.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %16)
  %cmp13.i = icmp eq i32 %indvars.iv.i, %16
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %pri_mask.0121.i, 1
  %or20.i = or i32 %tc_mask.0120.i, %shl19.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then15.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.cond3.preheader.i.for.inc.i_crit_edge
  %tc_mask.2.i = phi i32 [ %or20.i, %if.then15.i ], [ %tc_mask.0120.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %tc_mask.0120.i, %for.cond3.preheader.i.for.inc.i_crit_edge ]
  %pri_mask.2.i = phi i32 [ %or.i, %if.then15.i ], [ %pri_mask.0121.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %pri_mask.0121.i, %for.cond3.preheader.i.for.inc.i_crit_edge ]
  br i1 %tobool10.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.1.i, align 1
  %19 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %19)
  %cmp13.1.i = icmp eq i32 %indvars.iv.i, %19
  br i1 %cmp13.1.i, label %if.then15.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.then15.1.i:                                    ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.1.i = or i32 %pri_mask.2.i, 2
  %or20.1.i = or i32 %tc_mask.2.i, %shl19.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then15.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %tc_mask.2.1.i = phi i32 [ %or20.1.i, %if.then15.1.i ], [ %tc_mask.2.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge ], [ %tc_mask.2.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %pri_mask.2.1.i = phi i32 [ %or.1.i, %if.then15.1.i ], [ %pri_mask.2.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge ], [ %pri_mask.2.i, %for.inc.i.for.inc.1.i_crit_edge ]
  br i1 %tobool10.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2.i, align 1
  %22 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %22)
  %cmp13.2.i = icmp eq i32 %indvars.iv.i, %22
  br i1 %cmp13.2.i, label %if.then15.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

if.then15.2.i:                                    ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.2.i = or i32 %pri_mask.2.1.i, 4
  %or20.2.i = or i32 %tc_mask.2.1.i, %shl19.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then15.2.i, %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %tc_mask.2.2.i = phi i32 [ %or20.2.i, %if.then15.2.i ], [ %tc_mask.2.1.i, %land.lhs.true.2.i.for.inc.2.i_crit_edge ], [ %tc_mask.2.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %pri_mask.2.2.i = phi i32 [ %or.2.i, %if.then15.2.i ], [ %pri_mask.2.1.i, %land.lhs.true.2.i.for.inc.2.i_crit_edge ], [ %pri_mask.2.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  br i1 %tobool10.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3.i, align 1
  %25 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %25)
  %cmp13.3.i = icmp eq i32 %indvars.iv.i, %25
  br i1 %cmp13.3.i, label %if.then15.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

if.then15.3.i:                                    ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.3.i = or i32 %pri_mask.2.2.i, 8
  %or20.3.i = or i32 %tc_mask.2.2.i, %shl19.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then15.3.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %tc_mask.2.3.i = phi i32 [ %or20.3.i, %if.then15.3.i ], [ %tc_mask.2.2.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge ], [ %tc_mask.2.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %pri_mask.2.3.i = phi i32 [ %or.3.i, %if.then15.3.i ], [ %pri_mask.2.2.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge ], [ %pri_mask.2.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  br i1 %tobool10.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4.i, align 1
  %28 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %28)
  %cmp13.4.i = icmp eq i32 %indvars.iv.i, %28
  br i1 %cmp13.4.i, label %if.then15.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i

if.then15.4.i:                                    ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.4.i = or i32 %pri_mask.2.3.i, 16
  %or20.4.i = or i32 %tc_mask.2.3.i, %shl19.i
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then15.4.i, %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %tc_mask.2.4.i = phi i32 [ %or20.4.i, %if.then15.4.i ], [ %tc_mask.2.3.i, %land.lhs.true.4.i.for.inc.4.i_crit_edge ], [ %tc_mask.2.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %pri_mask.2.4.i = phi i32 [ %or.4.i, %if.then15.4.i ], [ %pri_mask.2.3.i, %land.lhs.true.4.i.for.inc.4.i_crit_edge ], [ %pri_mask.2.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  br i1 %tobool10.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %29 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.5.i, align 1
  %31 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %31)
  %cmp13.5.i = icmp eq i32 %indvars.iv.i, %31
  br i1 %cmp13.5.i, label %if.then15.5.i, label %land.lhs.true.5.i.for.inc.5.i_crit_edge

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i

if.then15.5.i:                                    ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.5.i = or i32 %pri_mask.2.4.i, 32
  %or20.5.i = or i32 %tc_mask.2.4.i, %shl19.i
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then15.5.i, %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %tc_mask.2.5.i = phi i32 [ %or20.5.i, %if.then15.5.i ], [ %tc_mask.2.4.i, %land.lhs.true.5.i.for.inc.5.i_crit_edge ], [ %tc_mask.2.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %pri_mask.2.5.i = phi i32 [ %or.5.i, %if.then15.5.i ], [ %pri_mask.2.4.i, %land.lhs.true.5.i.for.inc.5.i_crit_edge ], [ %pri_mask.2.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  br i1 %tobool10.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %32 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.6.i, align 1
  %34 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %34)
  %cmp13.6.i = icmp eq i32 %indvars.iv.i, %34
  br i1 %cmp13.6.i, label %if.then15.6.i, label %land.lhs.true.6.i.for.inc.6.i_crit_edge

land.lhs.true.6.i.for.inc.6.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.i

if.then15.6.i:                                    ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.6.i = or i32 %pri_mask.2.5.i, 64
  %or20.6.i = or i32 %tc_mask.2.5.i, %shl19.i
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then15.6.i, %land.lhs.true.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %tc_mask.2.6.i = phi i32 [ %or20.6.i, %if.then15.6.i ], [ %tc_mask.2.5.i, %land.lhs.true.6.i.for.inc.6.i_crit_edge ], [ %tc_mask.2.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  %pri_mask.2.6.i = phi i32 [ %or.6.i, %if.then15.6.i ], [ %pri_mask.2.5.i, %land.lhs.true.6.i.for.inc.6.i_crit_edge ], [ %pri_mask.2.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  br i1 %tobool10.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %land.lhs.true.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7.i

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %35 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.7.i, align 1
  %37 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %37)
  %cmp13.7.i = icmp eq i32 %indvars.iv.i, %37
  br i1 %cmp13.7.i, label %if.then15.7.i, label %land.lhs.true.7.i.for.inc.7.i_crit_edge

land.lhs.true.7.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7.i

if.then15.7.i:                                    ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.7.i = or i32 %pri_mask.2.6.i, 128
  %or20.7.i = or i32 %tc_mask.2.6.i, %shl19.i
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then15.7.i, %land.lhs.true.7.i.for.inc.7.i_crit_edge, %for.inc.6.i.for.inc.7.i_crit_edge
  %tc_mask.2.7.i = phi i32 [ %or20.7.i, %if.then15.7.i ], [ %tc_mask.2.6.i, %land.lhs.true.7.i.for.inc.7.i_crit_edge ], [ %tc_mask.2.6.i, %for.inc.6.i.for.inc.7.i_crit_edge ]
  %pri_mask.2.7.i = phi i32 [ %or.7.i, %if.then15.7.i ], [ %pri_mask.2.6.i, %land.lhs.true.7.i.for.inc.7.i_crit_edge ], [ %pri_mask.2.6.i, %for.inc.6.i.for.inc.7.i_crit_edge ]
  %and24.i = and i32 %tc_mask.2.7.i, %shl19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp ne i32 %and24.i, 0
  %inc27.i = zext i1 %tobool25.not.i to i8
  %spec.select.i = add i8 %lltc_count.0123.i, %inc27.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end31.i, label %for.inc.7.i.for.cond3.preheader.i_crit_edge

for.inc.7.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader.i

for.end31.i:                                      ; preds = %for.inc.7.i
  %max_lltc.i = getelementptr i8, ptr %dev, i32 2571
  %38 = ptrtoint ptr %max_lltc.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %max_lltc.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %39)
  %cmp34.i = icmp ugt i8 %spec.select.i, %39
  br i1 %cmp34.i, label %for.end31.i.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge, label %for.end31.i.for.body44.i_crit_edge

for.end31.i.for.body44.i_crit_edge:               ; preds = %for.end31.i
  br label %for.body44.i

for.end31.i.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge: ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_queue_pfc_cfg.exit.thread

for.body44.i:                                     ; preds = %for.inc60.i.for.body44.i_crit_edge, %for.end31.i.for.body44.i_crit_edge
  %indvars.iv134.i = phi i32 [ %indvars.iv.next135.i, %for.inc60.i.for.body44.i_crit_edge ], [ 0, %for.end31.i.for.body44.i_crit_edge ]
  %shl46.i = shl nuw i32 1, %indvars.iv134.i
  %and47.i = and i32 %shl46.i, %tc_mask.2.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %for.body44.i.for.inc60.i_crit_edge, label %if.then49.i

for.body44.i.for.inc60.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc60.i

if.then49.i:                                      ; preds = %for.body44.i
  %arrayidx51.i = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 59, i32 %indvars.iv134.i
  %40 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx51.i, align 1
  %idxprom52.i = zext i8 %41 to i32
  %queue_profile.i = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 58, i32 %idxprom52.i, i32 1
  %42 = ptrtoint ptr %queue_profile.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %queue_profile.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp55.i = icmp eq i8 %43, 1
  br i1 %cmp55.i, label %if.then49.i.for.inc60.i_crit_edge, label %for.body.lr.ph.i.preheader.i

if.then49.i.for.inc60.i_crit_edge:                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc60.i

for.inc60.i:                                      ; preds = %if.then49.i.for.inc60.i_crit_edge, %for.body44.i.for.inc60.i_crit_edge
  %indvars.iv.next135.i = add nuw nsw i32 %indvars.iv134.i, 1
  %exitcond137.not.i = icmp eq i32 %indvars.iv.next135.i, %wide.trip.count.i
  br i1 %exitcond137.not.i, label %for.inc60.i.if.end65.i_crit_edge, label %for.inc60.i.for.body44.i_crit_edge

for.inc60.i.for.body44.i_crit_edge:               ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.i

for.inc60.i.if.end65.i_crit_edge:                 ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

for.body.lr.ph.i.preheader.i:                     ; preds = %if.then49.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qmap.i.i) #8
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i.for.body.lr.ph.i.i_crit_edge, %for.body.lr.ph.i.preheader.i
  %j.0.ph16.i.i = phi i32 [ %inc8.i.i, %if.end.i.i.for.body.lr.ph.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.preheader.i ]
  %i.0.ph15.i.i = phi i32 [ %i.1.i.i, %if.end.i.i.for.body.lr.ph.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.preheader.i ]
  %or.i1114.i.i = phi i32 [ %or.i10.i.i, %if.end.i.i.for.body.lr.ph.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.preheader.i ]
  br label %for.body.i.i

for.body14.i.preheader.i:                         ; preds = %if.end9.i.i.for.body14.i.preheader.i_crit_edge, %if.end.i.i.for.body14.i.preheader.i_crit_edge
  %storemerge.i.i = phi i32 [ %or.i1114.i.i, %if.end9.i.i.for.body14.i.preheader.i_crit_edge ], [ %or.i10.i.i, %if.end.i.i.for.body14.i.preheader.i_crit_edge ]
  %44 = ptrtoint ptr %qmap.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %storemerge.i.i, ptr %qmap.i.i, align 4
  br label %for.body14.i.i

for.body.i.i:                                     ; preds = %if.end9.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ %i.0.ph15.i.i, %for.body.lr.ph.i.i ], [ %inc10.i.i, %if.end9.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.09.i.i
  %and.i.i = and i32 %shl.i.i, %tc_mask.2.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end9.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %queue_profile.i.i = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 58, i32 %j.0.ph16.i.i, i32 1
  %45 = ptrtoint ptr %queue_profile.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %queue_profile.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp3.i.i = icmp eq i8 %46, 1
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i.i = trunc i32 %j.0.ph16.i.i to i8
  %arrayidx7.i.i = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 59, i32 %i.09.i.i
  %47 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv6.i.i, ptr %arrayidx7.i.i, align 1
  %rem.i.i.i = and i32 %j.0.ph16.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %or.i.i.i = or i32 %or.i1114.i.i, %shl.i.i.i
  %inc.i.i = add nsw i32 %i.09.i.i, 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then5.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %or.i10.i.i = phi i32 [ %or.i.i.i, %if.then5.i.i ], [ %or.i1114.i.i, %if.then.i.i.if.end.i.i_crit_edge ]
  %i.1.i.i = phi i32 [ %inc.i.i, %if.then5.i.i ], [ %i.09.i.i, %if.then.i.i.if.end.i.i_crit_edge ]
  %inc8.i.i = add i32 %j.0.ph16.i.i, 1
  %cmp8.i.i = icmp slt i32 %i.1.i.i, %wide.trip.count.i
  br i1 %cmp8.i.i, label %if.end.i.i.for.body.lr.ph.i.i_crit_edge, label %if.end.i.i.for.body14.i.preheader.i_crit_edge

if.end.i.i.for.body14.i.preheader.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.i.preheader.i

if.end.i.i.for.body.lr.ph.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i.i

if.end9.i.i:                                      ; preds = %for.body.i.i
  %inc10.i.i = add nsw i32 %i.09.i.i, 1
  %cmp.i.i = icmp slt i32 %inc10.i.i, %wide.trip.count.i
  br i1 %cmp.i.i, label %if.end9.i.i.for.body.i.i_crit_edge, label %if.end9.i.i.for.body14.i.preheader.i_crit_edge

if.end9.i.i.for.body14.i.preheader.i_crit_edge:   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.i.preheader.i

if.end9.i.i.for.body.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body14.i.i:                                   ; preds = %for.inc.i.i.for.body14.i.i_crit_edge, %for.body14.i.preheader.i
  %j.121.i.i = phi i32 [ %j.2.i.i, %for.inc.i.i.for.body14.i.i_crit_edge ], [ 0, %for.body14.i.preheader.i ]
  %i.219.i.i = phi i32 [ %inc24.i.i, %for.inc.i.i.for.body14.i.i_crit_edge ], [ 0, %for.body14.i.preheader.i ]
  %shl15.i.i = shl nuw i32 1, %i.219.i.i
  %and16.i.i = and i32 %shl15.i.i, %tc_mask.2.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end19.i.i, label %for.body14.i.i.for.inc.i.i_crit_edge

for.body14.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end19.i.i:                                     ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %qmap.i.i, i32 noundef %wide.trip.count.i, i32 noundef %j.121.i.i) #8
  %conv20.i.i = trunc i32 %call.i.i to i8
  %arrayidx22.i.i = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 59, i32 %i.219.i.i
  %48 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv20.i.i, ptr %arrayidx22.i.i, align 1
  %rem.i2.i.i = and i32 %call.i.i, 31
  %shl.i3.i.i = shl nuw i32 1, %rem.i2.i.i
  %49 = ptrtoint ptr %qmap.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qmap.i.i, align 4
  %or.i6.i.i = or i32 %50, %shl.i3.i.i
  store i32 %or.i6.i.i, ptr %qmap.i.i, align 4
  %inc23.i.i = add i32 %call.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end19.i.i, %for.body14.i.i.for.inc.i.i_crit_edge
  %j.2.i.i = phi i32 [ %j.121.i.i, %for.body14.i.i.for.inc.i.i_crit_edge ], [ %inc23.i.i, %if.end19.i.i ]
  %inc24.i.i = add nuw nsw i32 %i.219.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc24.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %for.end25.i.i, label %for.inc.i.i.for.body14.i.i_crit_edge

for.inc.i.i.for.body14.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.i.i

for.end25.i.i:                                    ; preds = %for.inc.i.i
  %dev.i.i = getelementptr i8, ptr %dev, i32 2388
  %51 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.end25.i.i.if.end34.i.i_crit_edge, label %if.then27.i.i

for.end25.i.i.if.end34.i.i_crit_edge:             ; preds = %for.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

if.then27.i.i:                                    ; preds = %for.end25.i.i
  %call28.i.i = call i32 @bnxt_close_nic(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call29.i.i = call i32 @bnxt_open_nic(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.then27.i.i.if.end34.i.i_crit_edge, label %if.then31.i.i

if.then27.i.i.if.end34.i.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

if.then31.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull @.str.3, i32 noundef %call29.i.i) #12
  br label %bnxt_queue_remap.exit.i

if.end34.i.i:                                     ; preds = %if.then27.i.i.if.end34.i.i_crit_edge, %for.end25.i.i.if.end34.i.i_crit_edge
  %57 = ptrtoint ptr %ieee_ets.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ieee_ets.i, align 4
  %tobool35.not.i.i = icmp eq ptr %58, null
  br i1 %tobool35.not.i.i, label %if.end34.i.i.bnxt_queue_remap.exit.i_crit_edge, label %if.then36.i.i

if.end34.i.i.bnxt_queue_remap.exit.i_crit_edge:   ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_queue_remap.exit.i

if.then36.i.i:                                    ; preds = %if.end34.i.i
  %59 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i, align 4
  %num_tc.i.i.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 140
  %61 = ptrtoint ptr %num_tc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %num_tc.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool39.not.i.i = icmp eq i16 %62, 0
  %63 = trunc i16 %62 to i8
  %conv43.i.i = select i1 %tobool39.not.i.i, i8 1, i8 %63
  %call44.i.i = call fastcc i32 @bnxt_hwrm_queue_cos2bw_cfg(ptr noundef %add.ptr.i, ptr noundef nonnull %58, i8 noundef zeroext %conv43.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %tobool45.not.i.i = icmp eq i32 %call44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end48.i.i, label %if.then46.i.i

if.then46.i.i:                                    ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %65, ptr noundef nonnull @.str.4, i32 noundef %call44.i.i) #12
  br label %bnxt_queue_remap.exit.i

if.end48.i.i:                                     ; preds = %if.then36.i.i
  %66 = ptrtoint ptr %ieee_ets.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ieee_ets.i, align 4
  %call50.i.i = call fastcc i32 @bnxt_hwrm_queue_pri2cos_cfg(ptr noundef %add.ptr.i, ptr noundef %67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.end48.i.i.bnxt_queue_remap.exit.i_crit_edge, label %if.then52.i.i

if.end48.i.i.bnxt_queue_remap.exit.i_crit_edge:   ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_queue_remap.exit.i

if.then52.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %69, ptr noundef nonnull @.str.5, i32 noundef %call50.i.i) #12
  br label %bnxt_queue_remap.exit.i

bnxt_queue_remap.exit.i:                          ; preds = %if.then52.i.i, %if.end48.i.i.bnxt_queue_remap.exit.i_crit_edge, %if.then46.i.i, %if.end34.i.i.bnxt_queue_remap.exit.i_crit_edge, %if.then31.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qmap.i.i) #8
  br label %if.end65.i

if.end65.i:                                       ; preds = %bnxt_queue_remap.exit.i, %for.inc60.i.if.end65.i_crit_edge, %for.cond.preheader.i.if.end65.i_crit_edge
  %pri_mask.0.lcssa144147.i = phi i32 [ %pri_mask.2.7.i, %bnxt_queue_remap.exit.i ], [ 0, %for.cond.preheader.i.if.end65.i_crit_edge ], [ %pri_mask.2.7.i, %for.inc60.i.if.end65.i_crit_edge ]
  %call66.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i, i16 noundef zeroext 54, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %bnxt_hwrm_queue_pfc_cfg.exit, label %if.end65.i.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge

if.end65.i.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge: ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_queue_pfc_cfg.exit.thread

bnxt_hwrm_queue_pfc_cfg.exit.thread:              ; preds = %if.end65.i.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge, %for.end31.i.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge, %if.end12.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call66.i, %if.end65.i.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge ], [ -22, %for.end31.i.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge ], [ -22, %if.end12.bnxt_hwrm_queue_pfc_cfg.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  br label %cleanup

bnxt_hwrm_queue_pfc_cfg.exit:                     ; preds = %if.end65.i
  %70 = call i32 @llvm.bswap.i32(i32 %pri_mask.0.lcssa144147.i) #8
  %71 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %req.i, align 4
  %flags.i = getelementptr inbounds %struct.hwrm_queue_pfcenable_cfg_input, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %flags.i, align 8
  %call70.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %72) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool14.not = icmp eq i32 %call70.i, 0
  br i1 %tobool14.not, label %if.then15, label %bnxt_hwrm_queue_pfc_cfg.exit.cleanup_crit_edge

bnxt_hwrm_queue_pfc_cfg.exit.cleanup_crit_edge:   ; preds = %bnxt_hwrm_queue_pfc_cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %bnxt_hwrm_queue_pfc_cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %74 = call ptr @memcpy(ptr %my_pfc.0, ptr %pfc, i32 136)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %bnxt_hwrm_queue_pfc_cfg.exit.cleanup_crit_edge, %bnxt_hwrm_queue_pfc_cfg.exit.thread, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then6.cleanup_crit_edge ], [ 0, %if.then15 ], [ %call70.i, %bnxt_hwrm_queue_pfc_cfg.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %bnxt_hwrm_queue_pfc_cfg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dcbnl_ieee_setapp(ptr noundef %dev, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dcbx_cap = getelementptr i8, ptr %dev, i32 2688
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 8
  %2 = and i8 %1, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %2)
  %.not = icmp eq i8 %2, 9
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp.i = icmp eq i8 %4, 5
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.i:                                        ; preds = %if.end
  %max_dscp_value.i = getelementptr i8, ptr %dev, i32 2690
  %5 = ptrtoint ptr %max_dscp_value.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %max_dscp_value.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %protocol.i = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %7 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol.i, align 2
  %9 = zext i8 %6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %9)
  %cmp6.i = icmp ugt i16 %8, %9
  br i1 %cmp6.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end8_crit_edge

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @dcb_ieee_setapp(ptr noundef %dev, ptr noundef %app) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %app, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %11, label %if.end12.if.end30_crit_edge [
    i8 1, label %land.lhs.true
    i8 3, label %land.lhs.true23
  ]

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end12
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30443, i16 %14)
  %cmp16 = icmp eq i16 %14, -30443
  br i1 %cmp16, label %land.lhs.true.if.then28_crit_edge, label %land.lhs.true.if.end30thread-pre-split_crit_edge

land.lhs.true.if.end30thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30thread-pre-split

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

land.lhs.true23:                                  ; preds = %if.end12
  %protocol24 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %15 = ptrtoint ptr %protocol24 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4791, i16 %16)
  %cmp26 = icmp eq i16 %16, 4791
  br i1 %cmp26, label %land.lhs.true23.if.then28_crit_edge, label %land.lhs.true23.if.end30thread-pre-split_crit_edge

land.lhs.true23.if.end30thread-pre-split_crit_edge: ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30thread-pre-split

land.lhs.true23.if.then28_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %land.lhs.true23.if.then28_crit_edge, %land.lhs.true.if.then28_crit_edge
  %call29 = tail call fastcc i32 @bnxt_hwrm_set_dcbx_app(ptr noundef %add.ptr.i, ptr noundef %app, i1 noundef zeroext true)
  br label %if.end30thread-pre-split

if.end30thread-pre-split:                         ; preds = %if.then28, %land.lhs.true23.if.end30thread-pre-split_crit_edge, %land.lhs.true.if.end30thread-pre-split_crit_edge
  %rc.0.ph = phi i32 [ 0, %land.lhs.true23.if.end30thread-pre-split_crit_edge ], [ %call29, %if.then28 ], [ 0, %land.lhs.true.if.end30thread-pre-split_crit_edge ]
  %17 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %app, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.end30thread-pre-split, %if.end12.if.end30_crit_edge
  %18 = phi i8 [ %.pr, %if.end30thread-pre-split ], [ %11, %if.end12.if.end30_crit_edge ]
  %rc.0 = phi i32 [ %rc.0.ph, %if.end30thread-pre-split ], [ 0, %if.end12.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %cmp33 = icmp eq i8 %18, 5
  br i1 %cmp33, label %if.then35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call fastcc i32 @bnxt_hwrm_queue_dscp2pri_cfg(ptr noundef %add.ptr.i, ptr noundef %app, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end30.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call36, %if.then35 ], [ %rc.0, %if.end30.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -524, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dcbnl_ieee_delapp(ptr noundef %dev, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dcbx_cap = getelementptr i8, ptr %dev, i32 2688
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 8
  %2 = and i8 %1, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %2)
  %.not = icmp eq i8 %2, 9
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp.i = icmp eq i8 %4, 5
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.i:                                        ; preds = %if.end
  %max_dscp_value.i = getelementptr i8, ptr %dev, i32 2690
  %5 = ptrtoint ptr %max_dscp_value.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %max_dscp_value.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %protocol.i = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %7 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol.i, align 2
  %9 = zext i8 %6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %9)
  %cmp6.i = icmp ugt i16 %8, %9
  br i1 %cmp6.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end8_crit_edge

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @dcb_ieee_delapp(ptr noundef %dev, ptr noundef %app) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %app, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %11, label %if.end12.if.end30_crit_edge [
    i8 1, label %land.lhs.true
    i8 3, label %land.lhs.true23
  ]

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end12
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30443, i16 %14)
  %cmp16 = icmp eq i16 %14, -30443
  br i1 %cmp16, label %land.lhs.true.if.then28_crit_edge, label %land.lhs.true.if.end30thread-pre-split_crit_edge

land.lhs.true.if.end30thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30thread-pre-split

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

land.lhs.true23:                                  ; preds = %if.end12
  %protocol24 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %15 = ptrtoint ptr %protocol24 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4791, i16 %16)
  %cmp26 = icmp eq i16 %16, 4791
  br i1 %cmp26, label %land.lhs.true23.if.then28_crit_edge, label %land.lhs.true23.if.end30thread-pre-split_crit_edge

land.lhs.true23.if.end30thread-pre-split_crit_edge: ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30thread-pre-split

land.lhs.true23.if.then28_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %land.lhs.true23.if.then28_crit_edge, %land.lhs.true.if.then28_crit_edge
  %call29 = tail call fastcc i32 @bnxt_hwrm_set_dcbx_app(ptr noundef %add.ptr.i, ptr noundef %app, i1 noundef zeroext false)
  br label %if.end30thread-pre-split

if.end30thread-pre-split:                         ; preds = %if.then28, %land.lhs.true23.if.end30thread-pre-split_crit_edge, %land.lhs.true.if.end30thread-pre-split_crit_edge
  %rc.0.ph = phi i32 [ 0, %land.lhs.true23.if.end30thread-pre-split_crit_edge ], [ %call29, %if.then28 ], [ 0, %land.lhs.true.if.end30thread-pre-split_crit_edge ]
  %17 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %app, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.end30thread-pre-split, %if.end12.if.end30_crit_edge
  %18 = phi i8 [ %.pr, %if.end30thread-pre-split ], [ %11, %if.end12.if.end30_crit_edge ]
  %rc.0 = phi i32 [ %rc.0.ph, %if.end30thread-pre-split ], [ 0, %if.end12.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %cmp33 = icmp eq i8 %18, 5
  br i1 %cmp33, label %if.then35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call fastcc i32 @bnxt_hwrm_queue_dscp2pri_cfg(ptr noundef %add.ptr.i, ptr noundef %app, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end30.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call36, %if.then35 ], [ %rc.0, %if.end30.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -524, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @bnxt_dcbnl_getdcbx(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_cap = getelementptr i8, ptr %dev, i32 2688
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 8
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @bnxt_dcbnl_setdcbx(ptr nocapture noundef %dev, i8 noundef zeroext %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_cap = getelementptr i8, ptr %dev, i32 2688
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 8
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = zext i8 %mode to i32
  %and2 = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end20_crit_edge, label %if.then4

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then4:                                         ; preds = %if.end
  %flags = getelementptr i8, ptr %dev, i32 2400
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then4
  %fw_cap = getelementptr i8, ptr %dev, i32 2696
  %5 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_cap, align 8
  %and7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %7 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %.not = icmp eq i32 %7, 8
  %or.cond = and i1 %.not, %tobool8.not
  br i1 %or.cond, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %lor.lhs.false.if.end20_crit_edge, %if.end.if.end20_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %mode)
  %cmp = icmp eq i8 %1, %mode
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %if.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %mode, ptr %dcbx_cap, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end26 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.then4.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_setup_mq_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_hwrm_queue_cos2bw_cfg(ptr noundef %bp, ptr nocapture noundef readonly %ets, i8 noundef zeroext %max_tc) unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !23
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 58, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %conv = zext i8 %max_tc to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %max_tc)
  %cmp49.not = icmp eq i8 %max_tc, 0
  br i1 %cmp49.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %if.end27.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 59, i32 %i.050
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %2 to i32
  %shl = shl nuw i32 1, %conv2
  %3 = call i32 @llvm.bswap.i32(i32 %shl)
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %enables = getelementptr inbounds %struct.hwrm_queue_cos2bw_cfg_input, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %enables to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enables, align 4
  %or = or i32 %3, %7
  store i32 %or, ptr %enables, align 4
  %arrayidx3 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 58, i32 %conv2
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 2
  %arrayidx5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.050
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp7 = icmp eq i8 %11, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv10 = trunc i32 %i.050 to i8
  br label %if.end17

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.050
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv15 = zext i8 %13 to i32
  %mul = mul nuw nsw i32 %conv15, 100
  %or16 = or i32 %mul, 536870912
  %14 = call i32 @llvm.bswap.i32(i32 %or16)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then9
  %cos2bw.sroa.10.1 = phi i32 [ 0, %if.then9 ], [ %14, %if.else ]
  %cos2bw.sroa.13.1 = phi i8 [ 0, %if.then9 ], [ 1, %if.else ]
  %cos2bw.sroa.16.1 = phi i8 [ %conv10, %if.then9 ], [ 0, %if.else ]
  %cos2bw.sroa.18.1 = phi i8 [ 0, %if.then9 ], [ %13, %if.else ]
  %unused_0 = getelementptr inbounds %struct.hwrm_queue_cos2bw_cfg_input, ptr %5, i32 0, i32 9
  %mul19 = mul nuw nsw i32 %conv2, 12
  %add.ptr = getelementptr i8, ptr %unused_0, i32 %mul19
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %9, ptr %add.ptr, align 1
  %cos2bw.sroa.10.3.data.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 1
  %16 = ptrtoint ptr %cos2bw.sroa.10.3.data.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %cos2bw.sroa.10.1, ptr %cos2bw.sroa.10.3.data.0..sroa_idx, align 1
  %cos2bw.sroa.12.3.data.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 5
  %17 = ptrtoint ptr %cos2bw.sroa.12.3.data.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %cos2bw.sroa.12.3.data.0..sroa_idx, align 1
  %cos2bw.sroa.13.3.data.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 9
  %18 = ptrtoint ptr %cos2bw.sroa.13.3.data.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %cos2bw.sroa.13.1, ptr %cos2bw.sroa.13.3.data.0..sroa_idx, align 1
  %cos2bw.sroa.16.3.data.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 10
  %19 = ptrtoint ptr %cos2bw.sroa.16.3.data.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %cos2bw.sroa.16.1, ptr %cos2bw.sroa.16.3.data.0..sroa_idx, align 1
  %cos2bw.sroa.18.3.data.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 11
  %20 = ptrtoint ptr %cos2bw.sroa.18.3.data.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cos2bw.sroa.18.1, ptr %cos2bw.sroa.18.3.data.0..sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp22 = icmp eq i8 %2, 0
  br i1 %cmp22, label %if.then24, label %if.end17.if.end27_crit_edge

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req, align 4
  %queue_id0 = getelementptr inbounds %struct.hwrm_queue_cos2bw_cfg_input, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %queue_id0 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %9, ptr %queue_id0, align 2
  %unused_026 = getelementptr inbounds %struct.hwrm_queue_cos2bw_cfg_input, ptr %22, i32 0, i32 9
  %24 = ptrtoint ptr %unused_026 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %unused_026, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end17.if.end27_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.end27.for.end_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end27.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %25 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %req, align 4
  %call28 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %26) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_hwrm_queue_pri2cos_cfg(ptr noundef %bp, ptr nocapture noundef readonly %ets) unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !23
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 56, i32 noundef 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 4
  %flags = getelementptr inbounds %struct.hwrm_queue_pri2cos_cfg_input, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 100663296, ptr %flags, align 8
  %pri0_cos_queue_id = getelementptr inbounds %struct.hwrm_queue_pri2cos_cfg_input, ptr %2, i32 0, i32 8
  %enables = getelementptr inbounds %struct.hwrm_queue_pri2cos_cfg_input, ptr %2, i32 0, i32 6
  %4 = ptrtoint ptr %enables to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enables, align 4
  %or = or i32 %5, 16777216
  store i32 %or, ptr %enables, align 4
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx1 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 59, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1, align 1
  %idxprom2 = zext i8 %9 to i32
  %arrayidx3 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 58, i32 %idxprom2
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 2
  %12 = ptrtoint ptr %pri0_cos_queue_id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %pri0_cos_queue_id, align 1
  %or.1 = or i32 %5, 50331648
  store i32 %or.1, ptr %enables, align 4
  %arrayidx.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1, align 1
  %idxprom.1 = zext i8 %14 to i32
  %arrayidx1.1 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 59, i32 %idxprom.1
  %15 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.1, align 1
  %idxprom2.1 = zext i8 %16 to i32
  %arrayidx3.1 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 58, i32 %idxprom2.1
  %17 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx3.1, align 2
  %arrayidx4.1 = getelementptr %struct.hwrm_queue_pri2cos_cfg_input, ptr %2, i32 0, i32 9
  %19 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx4.1, align 1
  %20 = load ptr, ptr %req, align 4
  %enables.2 = getelementptr inbounds %struct.hwrm_queue_pri2cos_cfg_input, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %enables.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enables.2, align 4
  %or.2 = or i32 %22, 67108864
  store i32 %or.2, ptr %enables.2, align 4
  %arrayidx.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2, align 1
  %idxprom.2 = zext i8 %24 to i32
  %arrayidx1.2 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 59, i32 %idxprom.2
  %25 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx1.2, align 1
  %idxprom2.2 = zext i8 %26 to i32
  %arrayidx3.2 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 58, i32 %idxprom2.2
  %27 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx3.2, align 2
  %arrayidx4.2 = getelementptr %struct.hwrm_queue_pri2cos_cfg_input, ptr %2, i32 0, i32 10
  %29 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx4.2, align 1
  %30 = load ptr, ptr %req, align 4
  %enables.3 = getelementptr inbounds %struct.hwrm_queue_pri2cos_cfg_input, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %enables.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %enables.3, align 4
  %or.3 = or i32 %32, 134217728
  store i32 %or.3, ptr %enables.3, align 4
  %arrayidx.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 3
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.3, align 1
  %idxprom.3 = zext i8 %34 to i32
  %arrayidx1.3 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 59, i32 %idxprom.3
  %35 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.3, align 1
  %idxprom2.3 = zext i8 %36 to i32
  %arrayidx3.3 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 58, i32 %idxprom2.3
  %37 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx3.3, align 2
  %arrayidx4.3 = getelementptr %struct.hwrm_queue_pri2cos_cfg_input, ptr %2, i32 0, i32 11
  %39 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx4.3, align 1
  %40 = load ptr, ptr %req, align 4
  %enables.4 = getelementptr inbounds %struct.hwrm_queue_pri2cos_cfg_input, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %enables.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %enables.4, align 4
  %or.4 = or i32 %42, 268435456
  store i32 %or.4, ptr %enables.4, align 4
  %arrayidx.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 4
  %43 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.4, align 1
  %idxprom.4 = zext i8 %44 to i32
  %arrayidx1.4 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 59, i32 %idxprom.4
  %45 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx1.4, align 1
  %idxprom2.4 = zext i8 %46 to i32
  %arrayidx3.4 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 58, i32 %idxprom2.4
  %47 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx3.4, align 2
  %arrayidx4.4 = getelementptr %struct.hwrm_queue_pri2cos_cfg_input, ptr %2, i32 0, i32 12
  %49 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx4.4, align 1
  %50 = load ptr, ptr %req, align 4
  %enables.5 = getelementptr inbounds %struct.hwrm_queue_pri2cos_cfg_input, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %enables.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %enables.5, align 4
  %or.5 = or i32 %52, 536870912
  store i32 %or.5, ptr %enables.5, align 4
  %arrayidx.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 5
  %53 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.5, align 1
  %idxprom.5 = zext i8 %54 to i32
  %arrayidx1.5 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 59, i32 %idxprom.5
  %55 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx1.5, align 1
  %idxprom2.5 = zext i8 %56 to i32
  %arrayidx3.5 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 58, i32 %idxprom2.5
  %57 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx3.5, align 2
  %arrayidx4.5 = getelementptr %struct.hwrm_queue_pri2cos_cfg_input, ptr %2, i32 0, i32 13
  %59 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx4.5, align 1
  %60 = load ptr, ptr %req, align 4
  %enables.6 = getelementptr inbounds %struct.hwrm_queue_pri2cos_cfg_input, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %enables.6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %enables.6, align 4
  %or.6 = or i32 %62, 1073741824
  store i32 %or.6, ptr %enables.6, align 4
  %arrayidx.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 6
  %63 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.6, align 1
  %idxprom.6 = zext i8 %64 to i32
  %arrayidx1.6 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 59, i32 %idxprom.6
  %65 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx1.6, align 1
  %idxprom2.6 = zext i8 %66 to i32
  %arrayidx3.6 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 58, i32 %idxprom2.6
  %67 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx3.6, align 2
  %arrayidx4.6 = getelementptr %struct.hwrm_queue_pri2cos_cfg_input, ptr %2, i32 0, i32 14
  %69 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx4.6, align 1
  %70 = load ptr, ptr %req, align 4
  %enables.7 = getelementptr inbounds %struct.hwrm_queue_pri2cos_cfg_input, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %enables.7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %enables.7, align 4
  %or.7 = or i32 %72, -2147483648
  store i32 %or.7, ptr %enables.7, align 4
  %arrayidx.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 7
  %73 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.7, align 1
  %idxprom.7 = zext i8 %74 to i32
  %arrayidx1.7 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 59, i32 %idxprom.7
  %75 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx1.7, align 1
  %idxprom2.7 = zext i8 %76 to i32
  %arrayidx3.7 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 58, i32 %idxprom2.7
  %77 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx3.7, align 2
  %arrayidx4.7 = getelementptr %struct.hwrm_queue_pri2cos_cfg_input, ptr %2, i32 0, i32 15
  %79 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx4.7, align 1
  %80 = load ptr, ptr %req, align 4
  %call5 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %80) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_close_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_open_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_setapp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_hwrm_set_dcbx_app(ptr noundef %bp, ptr nocapture noundef readonly %app, i1 noundef zeroext %add) unnamed_addr #0 align 64 {
entry:
  %set = alloca ptr, align 4
  %get = alloca ptr, align 4
  %mapping = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set) #8
  %0 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %set, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %get) #8
  %1 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %get, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #8
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mapping, align 4, !annotation !23
  %hwrm_spec_code = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 76
  %3 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67073, i32 %4)
  %cmp = icmp ult i32 %4, 67073
  br i1 %cmp, label %entry.cleanup78_crit_edge, label %if.end

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end:                                           ; preds = %entry
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %get, i16 noundef zeroext 203, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup78_crit_edge

if.end.cleanup78_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end2:                                          ; preds = %if.end
  %5 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get, align 4
  %call3 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %6) #8
  %7 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get, align 4
  call void @hwrm_req_alloc_flags(ptr noundef %bp, ptr noundef %8, i32 noundef 3520) #8
  %9 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get, align 4
  %call5 = call ptr @hwrm_req_dma_slice(ptr noundef %bp, ptr noundef %10, i32 noundef 80, ptr noundef nonnull %mapping) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end2.set_app_exit_crit_edge, label %if.end8

if.end2.set_app_exit_crit_edge:                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_app_exit

if.end8:                                          ; preds = %if.end2
  %11 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mapping, align 4
  %conv = zext i32 %12 to i64
  %13 = call i64 @llvm.bswap.i64(i64 %conv)
  %14 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get, align 4
  %dest_data_addr = getelementptr inbounds %struct.hwrm_fw_get_structured_data_input, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dest_data_addr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %13, ptr %dest_data_addr, align 8
  %structure_id = getelementptr inbounds %struct.hwrm_fw_get_structured_data_input, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %structure_id to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8452, ptr %structure_id, align 2
  %subtype = getelementptr inbounds %struct.hwrm_fw_get_structured_data_input, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 3, ptr %subtype, align 4
  %count = getelementptr inbounds %struct.hwrm_fw_get_structured_data_input, ptr %15, i32 0, i32 9
  %19 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %count, align 2
  %call9 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.set_app_exit_crit_edge

if.end8.set_app_exit_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_app_exit

if.end12:                                         ; preds = %if.end8
  %20 = ptrtoint ptr %call5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8452, i16 %21)
  %cmp14.not = icmp eq i16 %21, 8452
  br i1 %cmp14.not, label %if.end17, label %if.end12.set_app_exit_crit_edge

if.end12.set_app_exit_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_app_exit

if.end17:                                         ; preds = %if.end12
  %add.ptr = getelementptr %struct.hwrm_struct_hdr, ptr %call5, i32 1
  %count18 = getelementptr inbounds %struct.hwrm_struct_hdr, ptr %call5, i32 0, i32 3
  %22 = ptrtoint ptr %count18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %count18, align 1
  %conv19 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp20142.not = icmp eq i8 %23, 0
  br i1 %cmp20142.not, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end17
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %24 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %protocol, align 2
  %priority32 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %26 = shl nuw nsw i32 %conv19, 3
  %27 = add nuw nsw i32 %26, 16
  %uglygep = getelementptr i8, ptr %call5, i32 %27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fw_app.0143 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %28 = ptrtoint ptr %fw_app.0143 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %fw_app.0143, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %25)
  %cmp24 = icmp eq i16 %29, %25
  br i1 %cmp24, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %protocol_selector = getelementptr inbounds %struct.hwrm_struct_data_dcbx_app, ptr %fw_app.0143, i32 0, i32 1
  %30 = ptrtoint ptr %protocol_selector to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %protocol_selector, align 2
  %32 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp28 = icmp eq i8 %31, %33
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true30:                                  ; preds = %land.lhs.true
  %priority = getelementptr inbounds %struct.hwrm_struct_data_dcbx_app, ptr %fw_app.0143, i32 0, i32 2
  %34 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %priority, align 1
  %36 = ptrtoint ptr %priority32 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %priority32, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp34 = icmp eq i8 %35, %37
  br i1 %cmp34, label %if.then36, label %land.lhs.true30.for.inc_crit_edge

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0145, i32 %conv19)
  %cmp50 = icmp eq i32 %i.0145, %conv19
  %or.cond = select i1 %add, i1 true, i1 %cmp50
  br i1 %or.cond, label %if.then36.set_app_exit_crit_edge, label %if.end53

if.then36.set_app_exit_crit_edge:                 ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_app_exit

for.inc:                                          ; preds = %land.lhs.true30.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0145, 1
  %incdec.ptr = getelementptr %struct.hwrm_struct_data_dcbx_app, ptr %fw_app.0143, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv19
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %add, label %for.end.if.then41_crit_edge, label %for.end.set_app_exit_crit_edge

for.end.set_app_exit_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_app_exit

for.end.if.then41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.end.thread:                                   ; preds = %if.end17
  br i1 %add, label %for.end.thread.if.then41_crit_edge, label %for.end.thread.set_app_exit_crit_edge

for.end.thread.set_app_exit_crit_edge:            ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_app_exit

for.end.thread.if.then41_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.then41:                                        ; preds = %for.end.thread.if.then41_crit_edge, %for.end.if.then41_crit_edge
  %fw_app.0.lcssa152 = phi ptr [ %add.ptr, %for.end.thread.if.then41_crit_edge ], [ %uglygep, %for.end.if.then41_crit_edge ]
  %inc42 = add nuw nsw i32 %conv19, 1
  %protocol43 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %38 = ptrtoint ptr %protocol43 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %protocol43, align 2
  %40 = ptrtoint ptr %fw_app.0.lcssa152 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %fw_app.0.lcssa152, align 2
  %41 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %app, align 2
  %protocol_selector46 = getelementptr inbounds %struct.hwrm_struct_data_dcbx_app, ptr %fw_app.0.lcssa152, i32 0, i32 1
  %43 = ptrtoint ptr %protocol_selector46 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %protocol_selector46, align 2
  %priority47 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %44 = ptrtoint ptr %priority47 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %priority47, align 1
  %priority48 = getelementptr inbounds %struct.hwrm_struct_data_dcbx_app, ptr %fw_app.0.lcssa152, i32 0, i32 2
  %46 = ptrtoint ptr %priority48 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %priority48, align 1
  %valid = getelementptr inbounds %struct.hwrm_struct_data_dcbx_app, ptr %fw_app.0.lcssa152, i32 0, i32 3
  %47 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %valid, align 2
  br label %if.end61

if.end53:                                         ; preds = %if.then36
  %48 = xor i32 %i.0145, -1
  %sub54 = add nsw i32 %48, %conv19
  %mul55 = shl i32 %sub54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul55)
  %tobool56.not = icmp eq i32 %mul55, 0
  br i1 %tobool56.not, label %if.end53.cleanup.thread_crit_edge, label %if.then57

if.end53.cleanup.thread_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr58 = getelementptr %struct.hwrm_struct_data_dcbx_app, ptr %fw_app.0143, i32 1
  %49 = call ptr @memmove(ptr %fw_app.0143, ptr %add.ptr58, i32 %mul55)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then57, %if.end53.cleanup.thread_crit_edge
  %dec = add nsw i32 %conv19, -1
  %add.ptr60 = getelementptr %struct.hwrm_struct_data_dcbx_app, ptr %fw_app.0143, i32 %dec
  %50 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 0, ptr %add.ptr60, align 2
  br label %if.end61

if.end61:                                         ; preds = %cleanup.thread, %if.then41
  %n.1 = phi i32 [ %inc42, %if.then41 ], [ %dec, %cleanup.thread ]
  %conv62 = trunc i32 %n.1 to i8
  %51 = ptrtoint ptr %count18 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv62, ptr %count18, align 1
  %n.1.tr = trunc i32 %n.1 to i16
  %conv65 = shl i16 %n.1.tr, 3
  %52 = call i16 @llvm.bswap.i16(i16 %conv65)
  %len66 = getelementptr inbounds %struct.hwrm_struct_hdr, ptr %call5, i32 0, i32 1
  %53 = ptrtoint ptr %len66 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %len66, align 2
  %subtype67 = getelementptr inbounds %struct.hwrm_struct_hdr, ptr %call5, i32 0, i32 4
  %54 = ptrtoint ptr %subtype67 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 3, ptr %subtype67, align 2
  %call68 = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %set, i16 noundef zeroext 202, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end61.set_app_exit_crit_edge

if.end61.set_app_exit_crit_edge:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_app_exit

if.end71:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mapping, align 4
  %conv72 = zext i32 %56 to i64
  %57 = call i64 @llvm.bswap.i64(i64 %conv72)
  %58 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set, align 4
  %src_data_addr = getelementptr inbounds %struct.hwrm_fw_set_structured_data_input, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %src_data_addr to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %57, ptr %src_data_addr, align 8
  %conv75 = add i16 %conv65, 16
  %61 = call i16 @llvm.bswap.i16(i16 %conv75)
  %data_len76 = getelementptr inbounds %struct.hwrm_fw_set_structured_data_input, ptr %59, i32 0, i32 6
  %62 = ptrtoint ptr %data_len76 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %data_len76, align 8
  %hdr_cnt = getelementptr inbounds %struct.hwrm_fw_set_structured_data_input, ptr %59, i32 0, i32 7
  %63 = ptrtoint ptr %hdr_cnt to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %hdr_cnt, align 2
  %call77 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %59) #8
  br label %set_app_exit

set_app_exit:                                     ; preds = %if.end71, %if.end61.set_app_exit_crit_edge, %for.end.thread.set_app_exit_crit_edge, %for.end.set_app_exit_crit_edge, %if.then36.set_app_exit_crit_edge, %if.end12.set_app_exit_crit_edge, %if.end8.set_app_exit_crit_edge, %if.end2.set_app_exit_crit_edge
  %rc.0 = phi i32 [ %call9, %if.end8.set_app_exit_crit_edge ], [ 0, %if.then36.set_app_exit_crit_edge ], [ %call68, %if.end61.set_app_exit_crit_edge ], [ %call77, %if.end71 ], [ -12, %if.end2.set_app_exit_crit_edge ], [ -19, %if.end12.set_app_exit_crit_edge ], [ 0, %for.end.set_app_exit_crit_edge ], [ 0, %for.end.thread.set_app_exit_crit_edge ]
  %64 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %65) #8
  br label %cleanup78

cleanup78:                                        ; preds = %set_app_exit, %if.end.cleanup78_crit_edge, %entry.cleanup78_crit_edge
  %retval.0 = phi i32 [ %rc.0, %set_app_exit ], [ 0, %entry.cleanup78_crit_edge ], [ %call, %if.end.cleanup78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %get) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_hwrm_queue_dscp2pri_cfg(ptr noundef %bp, ptr nocapture noundef readonly %app, i1 noundef zeroext %add) unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  %mapping = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #8
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mapping, align 4, !annotation !23
  %hwrm_spec_code = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 76
  %2 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67584, i32 %3)
  %cmp = icmp ult i32 %3, 67584
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 61, i32 noundef 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %call3 = call ptr @hwrm_req_dma_slice(ptr noundef %bp, ptr noundef %5, i32 noundef 3, ptr noundef nonnull %mapping) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %7) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapping, align 4
  %conv = zext i32 %9 to i64
  %10 = call i64 @llvm.bswap.i64(i64 %conv)
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 4
  %src_data_addr = getelementptr inbounds %struct.hwrm_queue_dscp2pri_cfg_input, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %src_data_addr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %src_data_addr, align 8
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol, align 2
  %conv7 = trunc i16 %15 to i8
  %16 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv7, ptr %call3, align 1
  %spec.select = select i1 %add, i8 63, i8 0
  %17 = getelementptr inbounds %struct.bnxt_dscp2pri_entry, ptr %call3, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spec.select, ptr %17, align 1
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %19 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %priority, align 1
  %pri = getelementptr inbounds %struct.bnxt_dscp2pri_entry, ptr %call3, i32 0, i32 2
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %pri, align 1
  %22 = load ptr, ptr %req, align 4
  %entry_cnt = getelementptr inbounds %struct.hwrm_queue_dscp2pri_cfg_input, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %entry_cnt to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 256, ptr %entry_cnt, align 2
  %call12 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %22) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end6 ], [ -12, %if.then5 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_alloc_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_dma_slice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_delapp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @dcbnl_ops, !1, !"dcbnl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c", i32 746, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c", i32 473, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c", i32 495, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c", i32 499, i32 24}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c", i32 218, i32 25}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c", i32 229, i32 25}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c", i32 234, i32 25}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
