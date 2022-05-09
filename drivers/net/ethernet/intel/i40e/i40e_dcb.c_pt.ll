; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
%struct.i40e_lldp_org_tlv = type <{ i16, i32, [1 x i8] }>
%struct.i40e_cee_feat_tlv = type <{ %struct.i40e_cee_tlv_hdr, i8, i8, [1 x i8] }>
%struct.i40e_cee_tlv_hdr = type { i16, i8, i8 }
%struct.i40e_cee_app_prio = type <{ i16, i8, i16, i8 }>
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_aqc_get_cee_dcb_cfg_resp = type { i8, [4 x i8], [8 x i8], i8, i16, i32, [12 x i8] }
%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp = type { i8, i8, [4 x i8], i8, [8 x i8], i8, [2 x i8], i16, [2 x i8], i16 }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.i40e_lldp_variables = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.i40e_rx_pb_config = type { i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }

@i40e_dcb_hw_rx_cmd_monitor_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016i40e %02x:%02x.%x Invalid num_ports %u.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"i40e_dcb_hw_rx_cmd_monitor_config\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/i40e/i40e_dcb.c\00", [53 x i8] zeroinitializer }, align 32
@i40e_dcb_hw_rx_cmd_monitor_config._entry_ptr = internal global ptr @i40e_dcb_hw_rx_cmd_monitor_config._entry, section ".printk_index", align 4
@i40e_dcb_hw_calculate_pool_sizes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016i40e %02x:%02x.%x The shared pool size for the port is negative %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i40e_dcb_hw_calculate_pool_sizes\00", [63 x i8] zeroinitializer }, align 32
@i40e_dcb_hw_calculate_pool_sizes._entry_ptr = internal global ptr @i40e_dcb_hw_calculate_pool_sizes._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6945, i64 32962]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 15, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 1381, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [46 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_dcb.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 1691, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @i40e_dcb_hw_calculate_pool_sizes._entry, ptr @i40e_dcb_hw_calculate_pool_sizes._entry_ptr, ptr @i40e_dcb_hw_rx_cmd_monitor_config._entry, ptr @i40e_dcb_hw_rx_cmd_monitor_config._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_dcb_hw_rx_cmd_monitor_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_dcb_hw_calculate_pool_sizes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_get_dcbx_status(ptr nocapture noundef readonly %hw, ptr noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %status, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 536608
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !20
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  %4 = trunc i32 %3 to i16
  %conv = and i16 %4, 7
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %status, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_lldp_to_dcb_config(ptr noundef readonly %lldpmib, ptr noundef writeonly %dcbcfg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %lldpmib, null
  %tobool1.not = icmp eq ptr %dcbcfg, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %lldpmib, i32 14
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %1)
  %cmp42 = icmp ult i16 %1, 512
  br i1 %cmp42, label %if.end.cleanup_crit_edge, label %if.end19.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19.lr.ph:                                   ; preds = %if.end
  %2 = and i16 %1, 511
  %conv840 = zext i16 %2 to i32
  %add1041 = add nuw nsw i32 %conv840, 2
  %numapps.i.i7.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 2
  %pfc.i.i8.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 6
  %pfcenable.i.i9.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 6, i32 3
  %pfccap.i.i10.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 6, i32 2
  %etscfg1.i.i11.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4
  %cbs.i.i12.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 1
  %arrayidx6.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 0
  %arrayidx15.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 1
  %arrayidx6.1.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 2
  %arrayidx15.1.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 3
  %arrayidx6.2.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 4
  %arrayidx15.2.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 5
  %arrayidx6.3.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 6
  %arrayidx15.3.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 7
  %arrayidx24.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 0
  %arrayidx24.1.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 1
  %arrayidx24.2.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 2
  %arrayidx24.3.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 3
  %arrayidx24.4.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 4
  %arrayidx24.5.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 5
  %arrayidx24.6.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 6
  %arrayidx24.7.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 7
  %maxtcs.i.i13.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 2
  %mbc.i.i.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 6, i32 1
  %arrayidx2.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 0
  %arrayidx12.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 1
  %arrayidx2.1.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 2
  %arrayidx12.1.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 3
  %arrayidx2.2.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 4
  %arrayidx12.2.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 5
  %arrayidx2.3.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 6
  %arrayidx12.3.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 7
  %arrayidx23.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 0
  %arrayidx23.1.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 1
  %arrayidx23.2.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 2
  %arrayidx23.3.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 3
  %arrayidx23.4.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 4
  %arrayidx23.5.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 5
  %arrayidx23.6.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 6
  %arrayidx23.7.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 7
  %arrayidx35.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 0
  %arrayidx35.1.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 1
  %arrayidx35.2.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 2
  %arrayidx35.3.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 3
  %arrayidx35.4.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 4
  %arrayidx35.5.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 5
  %arrayidx35.6.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 6
  %arrayidx35.7.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 7
  %arrayidx52.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 0
  %arrayidx52.1.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 1
  %arrayidx52.2.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 2
  %arrayidx52.3.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 3
  %arrayidx52.4.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 4
  %arrayidx52.5.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 5
  %arrayidx52.6.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 6
  %arrayidx52.7.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 7
  br label %if.end19

if.end19:                                         ; preds = %sw.epilog.if.end19_crit_edge, %if.end19.lr.ph
  %add1049 = phi i32 [ %add1041, %if.end19.lr.ph ], [ %add10, %sw.epilog.if.end19_crit_edge ]
  %conv848 = phi i32 [ %conv840, %if.end19.lr.ph ], [ %conv8, %sw.epilog.if.end19_crit_edge ]
  %3 = phi i16 [ %2, %if.end19.lr.ph ], [ %300, %sw.epilog.if.end19_crit_edge ]
  %4 = phi i16 [ %1, %if.end19.lr.ph ], [ %299, %sw.epilog.if.end19_crit_edge ]
  %tlv.046 = phi ptr [ %add.ptr, %if.end19.lr.ph ], [ %add.ptr23, %sw.epilog.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -513, i16 %4)
  %cond = icmp ugt i16 %4, -513
  br i1 %cond, label %sw.bb, label %if.end19.sw.epilog_crit_edge

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end19
  %ouisubtype1.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 0, i32 1
  %5 = ptrtoint ptr %ouisubtype1.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %ouisubtype1.i, align 1
  %shr.i = lshr i32 %6, 8
  %7 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %sw.bb.sw.epilog_crit_edge [
    i32 32962, label %sw.bb.i
    i32 6945, label %sw.bb2.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  %trunc.i.i = trunc i32 %6 to i8
  %8 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %trunc.i.i, label %sw.bb.i.sw.epilog_crit_edge [
    i8 9, label %sw.bb.i.i
    i8 10, label %sw.bb3.i.i
    i8 11, label %sw.bb4.i.i
    i8 12, label %sw.bb5.i.i
  ]

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.i.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %tlvinfo.i.i.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 0, i32 2
  %9 = ptrtoint ptr %tlvinfo.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tlvinfo.i.i.i, align 1
  %11 = lshr i8 %10, 7
  %12 = ptrtoint ptr %etscfg1.i.i11.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %etscfg1.i.i11.i, align 1
  %13 = load i8, ptr %tlvinfo.i.i.i, align 1
  %14 = lshr i8 %13, 6
  %15 = and i8 %14, 1
  %16 = ptrtoint ptr %cbs.i.i12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %cbs.i.i12.i, align 1
  %17 = load i8, ptr %tlvinfo.i.i.i, align 1
  %18 = and i8 %17, 7
  %19 = ptrtoint ptr %maxtcs.i.i13.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %maxtcs.i.i13.i, align 1
  %arrayidx17.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 1
  %20 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx17.i.i.i, align 1
  %22 = lshr i8 %21, 4
  %23 = and i8 %22, 7
  %24 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx6.i.i.i, align 1
  %25 = load i8, ptr %arrayidx17.i.i.i, align 1
  %26 = and i8 %25, 7
  %27 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx15.i.i.i, align 1
  %arrayidx17.1.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 2
  %28 = ptrtoint ptr %arrayidx17.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx17.1.i.i.i, align 1
  %30 = lshr i8 %29, 4
  %31 = and i8 %30, 7
  %32 = ptrtoint ptr %arrayidx6.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx6.1.i.i.i, align 1
  %33 = load i8, ptr %arrayidx17.1.i.i.i, align 1
  %34 = and i8 %33, 7
  %35 = ptrtoint ptr %arrayidx15.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx15.1.i.i.i, align 1
  %arrayidx17.2.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx17.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx17.2.i.i.i, align 1
  %38 = lshr i8 %37, 4
  %39 = and i8 %38, 7
  %40 = ptrtoint ptr %arrayidx6.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx6.2.i.i.i, align 1
  %41 = load i8, ptr %arrayidx17.2.i.i.i, align 1
  %42 = and i8 %41, 7
  %43 = ptrtoint ptr %arrayidx15.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx15.2.i.i.i, align 1
  %arrayidx17.3.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 4
  %44 = ptrtoint ptr %arrayidx17.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx17.3.i.i.i, align 1
  %46 = lshr i8 %45, 4
  %47 = and i8 %46, 7
  %48 = ptrtoint ptr %arrayidx6.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx6.3.i.i.i, align 1
  %49 = load i8, ptr %arrayidx17.3.i.i.i, align 1
  %50 = and i8 %49, 7
  %51 = ptrtoint ptr %arrayidx15.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx15.3.i.i.i, align 1
  %arrayidx40.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 5
  %52 = ptrtoint ptr %arrayidx40.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx40.i.i.i, align 1
  %54 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx24.i.i.i, align 1
  %arrayidx40.1.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 6
  %55 = ptrtoint ptr %arrayidx40.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx40.1.i.i.i, align 1
  %57 = ptrtoint ptr %arrayidx24.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx24.1.i.i.i, align 1
  %arrayidx40.2.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 1, i32 2
  %58 = ptrtoint ptr %arrayidx40.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx40.2.i.i.i, align 1
  %60 = ptrtoint ptr %arrayidx24.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx24.2.i.i.i, align 1
  %arrayidx40.3.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 2
  %61 = ptrtoint ptr %arrayidx40.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx40.3.i.i.i, align 1
  %63 = ptrtoint ptr %arrayidx24.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx24.3.i.i.i, align 1
  %arrayidx40.4.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 9
  %64 = ptrtoint ptr %arrayidx40.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx40.4.i.i.i, align 1
  %66 = ptrtoint ptr %arrayidx24.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx24.4.i.i.i, align 1
  %arrayidx40.5.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 2, i32 1
  %67 = ptrtoint ptr %arrayidx40.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx40.5.i.i.i, align 1
  %69 = ptrtoint ptr %arrayidx24.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx24.5.i.i.i, align 1
  %arrayidx40.6.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 11
  %70 = ptrtoint ptr %arrayidx40.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx40.6.i.i.i, align 1
  %72 = ptrtoint ptr %arrayidx24.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx24.6.i.i.i, align 1
  %arrayidx40.7.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 12
  %73 = ptrtoint ptr %arrayidx40.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx40.7.i.i.i, align 1
  %75 = ptrtoint ptr %arrayidx24.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx24.7.i.i.i, align 1
  %arrayidx51.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 13
  %76 = ptrtoint ptr %arrayidx51.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx51.i.i.i, align 1
  %78 = ptrtoint ptr %arrayidx52.i.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx52.i.i.i, align 1
  %arrayidx51.1.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 2, i32 2
  %79 = ptrtoint ptr %arrayidx51.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx51.1.i.i.i, align 1
  %81 = ptrtoint ptr %arrayidx52.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx52.1.i.i.i, align 1
  %arrayidx51.2.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 3
  %82 = ptrtoint ptr %arrayidx51.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx51.2.i.i.i, align 1
  %84 = ptrtoint ptr %arrayidx52.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx52.2.i.i.i, align 1
  %arrayidx51.3.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 16
  %85 = ptrtoint ptr %arrayidx51.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx51.3.i.i.i, align 1
  %87 = ptrtoint ptr %arrayidx52.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx52.3.i.i.i, align 1
  %arrayidx51.4.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 3, i32 1
  %88 = ptrtoint ptr %arrayidx51.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx51.4.i.i.i, align 1
  %90 = ptrtoint ptr %arrayidx52.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx52.4.i.i.i, align 1
  %arrayidx51.5.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 18
  %91 = ptrtoint ptr %arrayidx51.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx51.5.i.i.i, align 1
  %93 = ptrtoint ptr %arrayidx52.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx52.5.i.i.i, align 1
  %arrayidx51.6.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 19
  %94 = ptrtoint ptr %arrayidx51.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx51.6.i.i.i, align 1
  %96 = ptrtoint ptr %arrayidx52.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx52.6.i.i.i, align 1
  %arrayidx51.7.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 20
  %97 = ptrtoint ptr %arrayidx51.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx51.7.i.i.i, align 1
  %99 = ptrtoint ptr %arrayidx52.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx52.7.i.i.i, align 1
  br label %sw.epilog

sw.bb3.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %tlvinfo.i13.i.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 0, i32 2
  %arrayidx.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 1
  %100 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i.i, align 1
  %102 = lshr i8 %101, 4
  %103 = and i8 %102, 7
  %104 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx2.i.i.i, align 1
  %105 = load i8, ptr %arrayidx.i.i.i, align 1
  %106 = and i8 %105, 7
  %107 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx12.i.i.i, align 1
  %arrayidx.1.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 2
  %108 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %110 = lshr i8 %109, 4
  %111 = and i8 %110, 7
  %112 = ptrtoint ptr %arrayidx2.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx2.1.i.i.i, align 1
  %113 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %114 = and i8 %113, 7
  %115 = ptrtoint ptr %arrayidx12.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx12.1.i.i.i, align 1
  %arrayidx.2.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 1, i32 1
  %116 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %118 = lshr i8 %117, 4
  %119 = and i8 %118, 7
  %120 = ptrtoint ptr %arrayidx2.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx2.2.i.i.i, align 1
  %121 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %122 = and i8 %121, 7
  %123 = ptrtoint ptr %arrayidx12.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %arrayidx12.2.i.i.i, align 1
  %arrayidx.3.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 4
  %124 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %126 = lshr i8 %125, 4
  %127 = and i8 %126, 7
  %128 = ptrtoint ptr %arrayidx2.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx2.3.i.i.i, align 1
  %129 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %130 = and i8 %129, 7
  %131 = ptrtoint ptr %arrayidx12.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %arrayidx12.3.i.i.i, align 1
  %arrayidx21.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 5
  %132 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx21.i.i.i, align 1
  %134 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %arrayidx23.i.i.i, align 1
  %arrayidx21.1.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 6
  %135 = ptrtoint ptr %arrayidx21.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx21.1.i.i.i, align 1
  %137 = ptrtoint ptr %arrayidx23.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx23.1.i.i.i, align 1
  %arrayidx21.2.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 1, i32 2
  %138 = ptrtoint ptr %arrayidx21.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx21.2.i.i.i, align 1
  %140 = ptrtoint ptr %arrayidx23.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx23.2.i.i.i, align 1
  %arrayidx21.3.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 2
  %141 = ptrtoint ptr %arrayidx21.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx21.3.i.i.i, align 1
  %143 = ptrtoint ptr %arrayidx23.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx23.3.i.i.i, align 1
  %arrayidx21.4.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 9
  %144 = ptrtoint ptr %arrayidx21.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx21.4.i.i.i, align 1
  %146 = ptrtoint ptr %arrayidx23.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx23.4.i.i.i, align 1
  %arrayidx21.5.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 2, i32 1
  %147 = ptrtoint ptr %arrayidx21.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx21.5.i.i.i, align 1
  %149 = ptrtoint ptr %arrayidx23.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %arrayidx23.5.i.i.i, align 1
  %arrayidx21.6.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 11
  %150 = ptrtoint ptr %arrayidx21.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx21.6.i.i.i, align 1
  %152 = ptrtoint ptr %arrayidx23.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx23.6.i.i.i, align 1
  %arrayidx21.7.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 12
  %153 = ptrtoint ptr %arrayidx21.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx21.7.i.i.i, align 1
  %155 = ptrtoint ptr %arrayidx23.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx23.7.i.i.i, align 1
  %arrayidx33.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 13
  %156 = ptrtoint ptr %arrayidx33.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx33.i.i.i, align 1
  %158 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx35.i.i.i, align 1
  %arrayidx33.1.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 2, i32 2
  %159 = ptrtoint ptr %arrayidx33.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx33.1.i.i.i, align 1
  %161 = ptrtoint ptr %arrayidx35.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %arrayidx35.1.i.i.i, align 1
  %arrayidx33.2.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 3
  %162 = ptrtoint ptr %arrayidx33.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx33.2.i.i.i, align 1
  %164 = ptrtoint ptr %arrayidx35.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx35.2.i.i.i, align 1
  %arrayidx33.3.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 16
  %165 = ptrtoint ptr %arrayidx33.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx33.3.i.i.i, align 1
  %167 = ptrtoint ptr %arrayidx35.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %arrayidx35.3.i.i.i, align 1
  %arrayidx33.4.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 3, i32 1
  %168 = ptrtoint ptr %arrayidx33.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx33.4.i.i.i, align 1
  %170 = ptrtoint ptr %arrayidx35.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %arrayidx35.4.i.i.i, align 1
  %arrayidx33.5.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 18
  %171 = ptrtoint ptr %arrayidx33.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx33.5.i.i.i, align 1
  %173 = ptrtoint ptr %arrayidx35.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %arrayidx35.5.i.i.i, align 1
  %arrayidx33.6.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 19
  %174 = ptrtoint ptr %arrayidx33.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx33.6.i.i.i, align 1
  %176 = ptrtoint ptr %arrayidx35.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %arrayidx35.6.i.i.i, align 1
  %arrayidx33.7.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i, i32 20
  %177 = ptrtoint ptr %arrayidx33.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx33.7.i.i.i, align 1
  %179 = ptrtoint ptr %arrayidx35.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %arrayidx35.7.i.i.i, align 1
  br label %sw.epilog

sw.bb4.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %tlvinfo.i14.i.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 0, i32 2
  %180 = ptrtoint ptr %tlvinfo.i14.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %tlvinfo.i14.i.i, align 1
  %182 = lshr i8 %181, 7
  %183 = ptrtoint ptr %pfc.i.i8.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %pfc.i.i8.i, align 2
  %184 = load i8, ptr %tlvinfo.i14.i.i, align 1
  %185 = lshr i8 %184, 6
  %186 = and i8 %185, 1
  %187 = ptrtoint ptr %mbc.i.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %mbc.i.i.i, align 1
  %188 = load i8, ptr %tlvinfo.i14.i.i, align 1
  %189 = and i8 %188, 15
  %190 = ptrtoint ptr %pfccap.i.i10.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %pfccap.i.i10.i, align 2
  %arrayidx14.i.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 1
  %191 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx14.i.i.i, align 1
  %193 = ptrtoint ptr %pfcenable.i.i9.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %pfcenable.i.i9.i, align 1
  br label %sw.epilog

sw.bb5.i.i:                                       ; preds = %sw.bb.i
  %tlvinfo.i15.i.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.046, i32 0, i32 2
  %sub.i.i.i = add nsw i16 %3, -5
  %conv6.i.i.i = zext i16 %sub.i.i.i to i32
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %sw.bb5.i.i
  %offset.0.i.i.i = phi i32 [ 1, %sw.bb5.i.i ], [ %add32.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %i.0.i.i.i = phi i32 [ 0, %sw.bb5.i.i ], [ %inc34.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %conv5.i.i.i = and i32 %offset.0.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i.i, i32 %conv6.i.i.i)
  %cmp.i.i.i = icmp ult i32 %conv5.i.i.i, %conv6.i.i.i
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %while.cond.i.i.i.i40e_parse_ieee_app_tlv.exit.i.i_crit_edge

while.cond.i.i.i.i40e_parse_ieee_app_tlv.exit.i.i_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_parse_ieee_app_tlv.exit.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %arrayidx.i16.i.i = getelementptr i8, ptr %tlvinfo.i15.i.i, i32 %conv5.i.i.i
  %194 = ptrtoint ptr %arrayidx.i16.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx.i16.i.i, align 1
  %196 = lshr i8 %195, 5
  %arrayidx12.i17.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 7, i32 %i.0.i.i.i
  %197 = ptrtoint ptr %arrayidx12.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %arrayidx12.i17.i.i, align 2
  %198 = load i8, ptr %arrayidx.i16.i.i, align 1
  %199 = and i8 %198, 7
  %selector.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 7, i32 %i.0.i.i.i, i32 1
  %200 = ptrtoint ptr %selector.i.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %selector.i.i.i, align 1
  %add.i.i.i = add nuw nsw i32 %conv5.i.i.i, 1
  %arrayidx22.i18.i.i = getelementptr i8, ptr %tlvinfo.i15.i.i, i32 %add.i.i.i
  %201 = ptrtoint ptr %arrayidx22.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx22.i18.i.i, align 1
  %conv23.i.i.i = zext i8 %202 to i16
  %shl.i.i.i = shl nuw i16 %conv23.i.i.i, 8
  %add25.i.i.i = add nuw nsw i32 %conv5.i.i.i, 2
  %arrayidx26.i.i.i = getelementptr i8, ptr %tlvinfo.i15.i.i, i32 %add25.i.i.i
  %203 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx26.i.i.i, align 1
  %conv27.i.i.i = zext i8 %204 to i16
  %or.i.i.i = or i16 %shl.i.i.i, %conv27.i.i.i
  %protocolid.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 7, i32 %i.0.i.i.i, i32 2
  %205 = ptrtoint ptr %protocolid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %or.i.i.i, ptr %protocolid.i.i.i, align 2
  %add32.i.i.i = add nuw nsw i32 %conv5.i.i.i, 3
  %inc34.i.i.i = add nuw nsw i32 %i.0.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %inc34.i.i.i, 32
  br i1 %exitcond.i.i.i, label %while.body.i.i.i.i40e_parse_ieee_app_tlv.exit.i.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i

while.body.i.i.i.i40e_parse_ieee_app_tlv.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_parse_ieee_app_tlv.exit.i.i

i40e_parse_ieee_app_tlv.exit.i.i:                 ; preds = %while.body.i.i.i.i40e_parse_ieee_app_tlv.exit.i.i_crit_edge, %while.cond.i.i.i.i40e_parse_ieee_app_tlv.exit.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ 32, %while.body.i.i.i.i40e_parse_ieee_app_tlv.exit.i.i_crit_edge ], [ %i.0.i.i.i, %while.cond.i.i.i.i40e_parse_ieee_app_tlv.exit.i.i_crit_edge ]
  %206 = ptrtoint ptr %numapps.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %i.1.i.i.i, ptr %numapps.i.i7.i, align 4
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb
  %conv2.i.i = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv2.i.i)
  %cmp.not.i.i = icmp ne i32 %conv2.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %3)
  %cmp11.i.i = icmp ult i16 %3, 19
  %or.cond39 = select i1 %cmp.not.i.i, i1 true, i1 %cmp11.i.i
  br i1 %or.cond39, label %sw.bb2.i.sw.epilog_crit_edge, label %if.end14.i.i

sw.bb2.i.sw.epilog_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end14.i.i:                                     ; preds = %sw.bb2.i
  %add.ptr.i.i = getelementptr i8, ptr %tlv.046, i32 18
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %sw.epilog.i.i.while.body.i.i_crit_edge, %if.end14.i.i
  %feat_tlv_count.060.i.i = phi i8 [ 0, %if.end14.i.i ], [ %inc.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ]
  %sub_tlv.058.i.i = phi ptr [ %add.ptr.i.i, %if.end14.i.i ], [ %add.ptr32.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ]
  %207 = ptrtoint ptr %sub_tlv.058.i.i to i32
  call void @__asan_loadN_noabort(i32 %207, i32 2)
  %208 = load i16, ptr %sub_tlv.058.i.i, align 1
  %and20.i.i = and i16 %208, 511
  %209 = lshr i16 %208, 9
  %conv26.i.i = zext i16 %209 to i32
  %210 = zext i32 %conv26.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %conv26.i.i, label %while.body.i.i.sw.epilog_crit_edge [
    i32 2, label %sw.bb.i14.i
    i32 3, label %sw.bb28.i.i
    i32 4, label %sw.bb29.i.i
  ]

while.body.i.i.sw.epilog_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.i14.i:                                      ; preds = %while.body.i.i
  %en_will_err.i.i.i = getelementptr inbounds %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %en_will_err.i.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %en_will_err.i.i.i, align 1
  %213 = and i8 %212, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool.not.i.i.i = icmp eq i8 %213, 0
  br i1 %tobool.not.i.i.i, label %sw.bb.i14.i.i40e_parse_cee_pgcfg_tlv.exit.i.i_crit_edge, label %if.then.i.i.i

sw.bb.i14.i.i40e_parse_cee_pgcfg_tlv.exit.i.i_crit_edge: ; preds = %sw.bb.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_parse_cee_pgcfg_tlv.exit.i.i

if.then.i.i.i:                                    ; preds = %sw.bb.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  %214 = ptrtoint ptr %etscfg1.i.i11.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 1, ptr %etscfg1.i.i11.i, align 1
  br label %i40e_parse_cee_pgcfg_tlv.exit.i.i

i40e_parse_cee_pgcfg_tlv.exit.i.i:                ; preds = %if.then.i.i.i, %sw.bb.i14.i.i40e_parse_cee_pgcfg_tlv.exit.i.i_crit_edge
  %tlvinfo.i.i15.i = getelementptr inbounds %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 0, i32 3
  %215 = ptrtoint ptr %cbs.i.i12.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %cbs.i.i12.i, align 1
  %216 = ptrtoint ptr %tlvinfo.i.i15.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %tlvinfo.i.i15.i, align 1
  %218 = lshr i8 %217, 4
  %219 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %arrayidx6.i.i.i, align 1
  %220 = load i8, ptr %tlvinfo.i.i15.i, align 1
  %221 = and i8 %220, 15
  %222 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %arrayidx15.i.i.i, align 1
  %arrayidx.1.i.i16.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 1
  %223 = ptrtoint ptr %arrayidx.1.i.i16.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx.1.i.i16.i, align 1
  %225 = lshr i8 %224, 4
  %226 = ptrtoint ptr %arrayidx6.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %arrayidx6.1.i.i.i, align 1
  %227 = load i8, ptr %arrayidx.1.i.i16.i, align 1
  %228 = and i8 %227, 15
  %229 = ptrtoint ptr %arrayidx15.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %arrayidx15.1.i.i.i, align 1
  %arrayidx.2.i.i17.i = getelementptr i8, ptr %tlvinfo.i.i15.i, i32 2
  %230 = ptrtoint ptr %arrayidx.2.i.i17.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx.2.i.i17.i, align 1
  %232 = lshr i8 %231, 4
  %233 = ptrtoint ptr %arrayidx6.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %arrayidx6.2.i.i.i, align 1
  %234 = load i8, ptr %arrayidx.2.i.i17.i, align 1
  %235 = and i8 %234, 15
  %236 = ptrtoint ptr %arrayidx15.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %arrayidx15.2.i.i.i, align 1
  %arrayidx.3.i.i18.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 1, i32 0, i32 1
  %237 = ptrtoint ptr %arrayidx.3.i.i18.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx.3.i.i18.i, align 1
  %239 = lshr i8 %238, 4
  %240 = ptrtoint ptr %arrayidx6.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %arrayidx6.3.i.i.i, align 1
  %241 = load i8, ptr %arrayidx.3.i.i18.i, align 1
  %242 = and i8 %241, 15
  %243 = ptrtoint ptr %arrayidx15.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %arrayidx15.3.i.i.i, align 1
  %arrayidx23.i.i19.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 1, i32 0, i32 2
  %244 = ptrtoint ptr %arrayidx23.i.i19.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx23.i.i19.i, align 1
  %246 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %arrayidx24.i.i.i, align 1
  %arrayidx23.1.i.i20.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 1, i32 1
  %247 = ptrtoint ptr %arrayidx23.1.i.i20.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx23.1.i.i20.i, align 1
  %249 = ptrtoint ptr %arrayidx24.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %arrayidx24.1.i.i.i, align 1
  %arrayidx23.2.i.i21.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 1, i32 2
  %250 = ptrtoint ptr %arrayidx23.2.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx23.2.i.i21.i, align 1
  %252 = ptrtoint ptr %arrayidx24.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %arrayidx24.2.i.i.i, align 1
  %arrayidx23.3.i.i22.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 1, i32 3
  %253 = ptrtoint ptr %arrayidx23.3.i.i22.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx23.3.i.i22.i, align 1
  %255 = ptrtoint ptr %arrayidx24.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %arrayidx24.3.i.i.i, align 1
  %arrayidx23.4.i.i23.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 2
  %256 = ptrtoint ptr %arrayidx23.4.i.i23.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx23.4.i.i23.i, align 1
  %258 = ptrtoint ptr %arrayidx24.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %257, ptr %arrayidx24.4.i.i.i, align 1
  %arrayidx23.5.i.i24.i = getelementptr i8, ptr %tlvinfo.i.i15.i, i32 9
  %259 = ptrtoint ptr %arrayidx23.5.i.i24.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx23.5.i.i24.i, align 1
  %261 = ptrtoint ptr %arrayidx24.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %260, ptr %arrayidx24.5.i.i.i, align 1
  %arrayidx23.6.i.i25.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 2, i32 0, i32 1
  %262 = ptrtoint ptr %arrayidx23.6.i.i25.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx23.6.i.i25.i, align 1
  %264 = ptrtoint ptr %arrayidx24.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %263, ptr %arrayidx24.6.i.i.i, align 1
  %arrayidx23.7.i.i26.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 2, i32 0, i32 2
  %265 = ptrtoint ptr %arrayidx23.7.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx23.7.i.i26.i, align 1
  %267 = ptrtoint ptr %arrayidx24.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %266, ptr %arrayidx24.7.i.i.i, align 1
  %arrayidx29.i.i.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 2, i32 1
  %268 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx29.i.i.i, align 1
  %270 = ptrtoint ptr %maxtcs.i.i13.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %269, ptr %maxtcs.i.i13.i, align 1
  br label %sw.epilog.i.i

sw.bb28.i.i:                                      ; preds = %while.body.i.i
  %en_will_err.i53.i.i = getelementptr inbounds %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 0, i32 1
  %271 = ptrtoint ptr %en_will_err.i53.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %en_will_err.i53.i.i, align 1
  %273 = and i8 %272, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %tobool.not.i54.i.i = icmp eq i8 %273, 0
  br i1 %tobool.not.i54.i.i, label %sw.bb28.i.i.i40e_parse_cee_pfccfg_tlv.exit.i.i_crit_edge, label %if.then.i55.i.i

sw.bb28.i.i.i40e_parse_cee_pfccfg_tlv.exit.i.i_crit_edge: ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_parse_cee_pfccfg_tlv.exit.i.i

if.then.i55.i.i:                                  ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %274 = ptrtoint ptr %pfc.i.i8.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 1, ptr %pfc.i.i8.i, align 2
  br label %i40e_parse_cee_pfccfg_tlv.exit.i.i

i40e_parse_cee_pfccfg_tlv.exit.i.i:               ; preds = %if.then.i55.i.i, %sw.bb28.i.i.i40e_parse_cee_pfccfg_tlv.exit.i.i_crit_edge
  %tlvinfo.i56.i.i = getelementptr inbounds %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 0, i32 3
  %275 = ptrtoint ptr %tlvinfo.i56.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %tlvinfo.i56.i.i, align 1
  %277 = ptrtoint ptr %pfcenable.i.i9.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %pfcenable.i.i9.i, align 1
  %arrayidx2.i.i27.i = getelementptr %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 1
  %278 = ptrtoint ptr %arrayidx2.i.i27.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx2.i.i27.i, align 1
  %280 = ptrtoint ptr %pfccap.i.i10.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %pfccap.i.i10.i, align 2
  br label %sw.epilog.i.i

sw.bb29.i.i:                                      ; preds = %while.body.i.i
  %281 = and i16 %208, 510
  %282 = udiv i16 %281, 6
  %div.i.i.i = zext i16 %282 to i32
  %283 = ptrtoint ptr %numapps.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %div.i.i.i, ptr %numapps.i.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %281)
  %284 = icmp ult i16 %281, 6
  br i1 %284, label %sw.bb29.i.i.sw.epilog.i.i_crit_edge, label %if.end.i.i.i

sw.bb29.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.end.i.i.i:                                     ; preds = %sw.bb29.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 197, i16 %281)
  %cmp.i.i28.i = icmp ugt i16 %281, 197
  br i1 %cmp.i.i28.i, label %if.end8.thread.i.i.i, label %if.end.i.i.i.for.body.lr.ph.i.i.i_crit_edge

if.end.i.i.i.for.body.lr.ph.i.i.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i.i.i

if.end8.thread.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %285 = ptrtoint ptr %numapps.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 32, ptr %numapps.i.i7.i, align 4
  br label %for.body.lr.ph.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end8.thread.i.i.i, %if.end.i.i.i.for.body.lr.ph.i.i.i_crit_edge
  %286 = phi i32 [ 32, %if.end8.thread.i.i.i ], [ %div.i.i.i, %if.end.i.i.i.for.body.lr.ph.i.i.i_crit_edge ]
  %tlvinfo.i57.i.i = getelementptr inbounds %struct.i40e_cee_feat_tlv, ptr %sub_tlv.058.i.i, i32 0, i32 3
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %286, i32 1) #7
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %sw.epilog.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %sw.epilog.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i.i ]
  %offset.080.i.i.i = phi i32 [ %add.i.i31.i, %sw.epilog.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i.i ]
  %conv13.i.i.i = and i32 %offset.080.i.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %tlvinfo.i57.i.i, i32 %conv13.i.i.i
  %prio_map.i.i.i = getelementptr inbounds %struct.i40e_cee_app_prio, ptr %add.ptr.i.i.i, i32 0, i32 3
  %287 = ptrtoint ptr %prio_map.i.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %prio_map.i.i.i, align 1
  %conv19.i.i.i = zext i8 %288 to i32
  %and21.i.i.i = and i32 %conv19.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i.i)
  %tobool22.not.i.i.i = icmp eq i32 %and21.i.i.i, 0
  br i1 %tobool22.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %and21.1.i.i.i = and i32 %conv19.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.1.i.i.i)
  %tobool22.not.1.i.i.i = icmp eq i32 %and21.1.i.i.i, 0
  br i1 %tobool22.not.1.i.i.i, label %for.inc.1.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %and21.2.i.i.i = and i32 %conv19.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.2.i.i.i)
  %tobool22.not.2.i.i.i = icmp eq i32 %and21.2.i.i.i, 0
  br i1 %tobool22.not.2.i.i.i, label %for.inc.2.i.i.i, label %for.inc.1.i.i.i.for.end.i.i.i_crit_edge

for.inc.1.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %and21.3.i.i.i = and i32 %conv19.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.3.i.i.i)
  %tobool22.not.3.i.i.i = icmp eq i32 %and21.3.i.i.i, 0
  br i1 %tobool22.not.3.i.i.i, label %for.inc.3.i.i.i, label %for.inc.2.i.i.i.for.end.i.i.i_crit_edge

for.inc.2.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %and21.4.i.i.i = and i32 %conv19.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.4.i.i.i)
  %tobool22.not.4.i.i.i = icmp eq i32 %and21.4.i.i.i, 0
  br i1 %tobool22.not.4.i.i.i, label %for.inc.4.i.i.i, label %for.inc.3.i.i.i.for.end.i.i.i_crit_edge

for.inc.3.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %and21.5.i.i.i = and i32 %conv19.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.5.i.i.i)
  %tobool22.not.5.i.i.i = icmp eq i32 %and21.5.i.i.i, 0
  br i1 %tobool22.not.5.i.i.i, label %for.inc.5.i.i.i, label %for.inc.4.i.i.i.for.end.i.i.i_crit_edge

for.inc.4.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %and21.6.i.i.i = and i32 %conv19.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.6.i.i.i)
  %tobool22.not.6.i.i.i = icmp eq i32 %and21.6.i.i.i, 0
  br i1 %tobool22.not.6.i.i.i, label %for.inc.6.i.i.i, label %for.inc.5.i.i.i.for.end.i.i.i_crit_edge

for.inc.5.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and21.7.i.i.i = and i32 %conv19.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.7.i.i.i)
  %tobool22.not.7.i.i.i = icmp eq i32 %and21.7.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool22.not.7.i.i.i, i8 8, i8 7
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.6.i.i.i, %for.inc.5.i.i.i.for.end.i.i.i_crit_edge, %for.inc.4.i.i.i.for.end.i.i.i_crit_edge, %for.inc.3.i.i.i.for.end.i.i.i_crit_edge, %for.inc.2.i.i.i.for.end.i.i.i_crit_edge, %for.inc.1.i.i.i.for.end.i.i.i_crit_edge, %for.inc.i.i.i.for.end.i.i.i_crit_edge, %for.body.i.i.i.for.end.i.i.i_crit_edge
  %up.0.lcssa.i.i.i = phi i8 [ 0, %for.body.i.i.i.for.end.i.i.i_crit_edge ], [ 1, %for.inc.i.i.i.for.end.i.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.for.end.i.i.i_crit_edge ], [ 3, %for.inc.2.i.i.i.for.end.i.i.i_crit_edge ], [ 4, %for.inc.3.i.i.i.for.end.i.i.i_crit_edge ], [ 5, %for.inc.4.i.i.i.for.end.i.i.i_crit_edge ], [ 6, %for.inc.5.i.i.i.for.end.i.i.i_crit_edge ], [ %spec.select.i.i.i, %for.inc.6.i.i.i ]
  %arrayidx.i.i29.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 7, i32 %indvars.iv.i.i
  %289 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %up.0.lcssa.i.i.i, ptr %arrayidx.i.i29.i, align 2
  %upper_oui_sel.i.i.i = getelementptr inbounds %struct.i40e_cee_app_prio, ptr %add.ptr.i.i.i, i32 0, i32 1
  %290 = ptrtoint ptr %upper_oui_sel.i.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %upper_oui_sel.i.i.i, align 1
  %292 = and i8 %291, 3
  %conv29.i.i.i = zext i8 %292 to i32
  %293 = zext i32 %conv29.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %293, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %conv29.i.i.i, label %sw.default.i.i.i [
    i32 0, label %for.end.i.i.i.sw.epilog.i.i.i_crit_edge
    i32 1, label %sw.bb34.i.i.i
  ]

for.end.i.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb34.i.i.i:                                    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.default.i.i.i:                                 ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.default.i.i.i, %sw.bb34.i.i.i, %for.end.i.i.i.sw.epilog.i.i.i_crit_edge
  %.sink.i.i.i = phi i8 [ %292, %sw.default.i.i.i ], [ 2, %sw.bb34.i.i.i ], [ 1, %for.end.i.i.i.sw.epilog.i.i.i_crit_edge ]
  %selector42.i.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 7, i32 %indvars.iv.i.i, i32 1
  %294 = ptrtoint ptr %selector42.i.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %.sink.i.i.i, ptr %selector42.i.i.i, align 1
  %295 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %295, i32 2)
  %296 = load i16, ptr %add.ptr.i.i.i, align 1
  %protocolid.i.i30.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 7, i32 %indvars.iv.i.i, i32 2
  %297 = ptrtoint ptr %protocolid.i.i30.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %296, ptr %protocolid.i.i30.i, align 2
  %add.i.i31.i = add nuw nsw i32 %conv13.i.i.i, 6
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %sw.epilog.i.i.i.sw.epilog.i.i_crit_edge, label %sw.epilog.i.i.i.for.body.i.i.i_crit_edge

sw.epilog.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

sw.epilog.i.i.i.sw.epilog.i.i_crit_edge:          ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.i.i.i.sw.epilog.i.i_crit_edge, %sw.bb29.i.i.sw.epilog.i.i_crit_edge, %i40e_parse_cee_pfccfg_tlv.exit.i.i, %i40e_parse_cee_pgcfg_tlv.exit.i.i
  %inc.i.i = add nuw nsw i8 %feat_tlv_count.060.i.i, 1
  %add.ptr30.i.i = getelementptr i8, ptr %sub_tlv.058.i.i, i32 2
  %conv31.i.i = zext i16 %and20.i.i to i32
  %add.ptr32.i.i = getelementptr i8, ptr %add.ptr30.i.i, i32 %conv31.i.i
  %cmp17.i.i = icmp ult i8 %feat_tlv_count.060.i.i, 2
  br i1 %cmp17.i.i, label %sw.epilog.i.i.while.body.i.i_crit_edge, label %sw.epilog.i.i.sw.epilog_crit_edge

sw.epilog.i.i.sw.epilog_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.i.i.while.body.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

sw.epilog:                                        ; preds = %sw.epilog.i.i.sw.epilog_crit_edge, %while.body.i.i.sw.epilog_crit_edge, %sw.bb2.i.sw.epilog_crit_edge, %i40e_parse_ieee_app_tlv.exit.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb.i.i, %sw.bb.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge
  %add.ptr21 = getelementptr i8, ptr %tlv.046, i32 2
  %add.ptr23 = getelementptr i8, ptr %add.ptr21, i32 %conv848
  %298 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_loadN_noabort(i32 %298, i32 2)
  %299 = load i16, ptr %add.ptr23, align 1
  %300 = and i16 %299, 511
  %conv8 = zext i16 %300 to i32
  %conv9 = and i32 %add1049, 65535
  %add = add nuw nsw i32 %conv9, 2
  %add10 = add nuw nsw i32 %add, %conv8
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %299)
  %cmp = icmp ult i16 %299, 512
  %conv15 = and i32 %add10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %conv15)
  %cmp16 = icmp ugt i32 %conv15, 1500
  %or.cond38 = select i1 %cmp, i1 true, i1 %cmp16
  br i1 %or.cond38, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end19_crit_edge

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_dcb_config(ptr noundef %hw, i8 noundef zeroext %mib_type, i8 noundef zeroext %bridgetype, ptr noundef %dcbcfg) local_unnamed_addr #0 align 64 {
entry:
  %mem = alloca %struct.i40e_virt_mem, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mem) #7
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !22
  %1 = getelementptr inbounds %struct.i40e_virt_mem, ptr %mem, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !22
  %call = call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem, i32 noundef 1500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  %call1 = call i32 @i40e_aq_get_lldp_mib(ptr noundef %hw, i8 noundef zeroext %bridgetype, i8 noundef zeroext %mib_type, ptr noundef %4, i16 noundef zeroext 1500, ptr noundef null, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.free_mem_crit_edge

if.end.free_mem_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mem

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 @i40e_lldp_to_dcb_config(ptr noundef %4, ptr noundef %dcbcfg)
  br label %free_mem

free_mem:                                         ; preds = %if.end4, %if.end.free_mem_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.free_mem_crit_edge ], [ %call5, %if.end4 ]
  %call6 = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem) #7
  br label %cleanup

cleanup:                                          ; preds = %free_mem, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_mem ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_allocate_virt_mem_d(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_get_lldp_mib(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_free_virt_mem_d(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_get_dcb_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mem.i167 = alloca %struct.i40e_virt_mem, align 4
  %mem.i = alloca %struct.i40e_virt_mem, align 4
  %cee_cfg = alloca %struct.i40e_aqc_get_cee_dcb_cfg_resp, align 4
  %cee_v1_cfg = alloca %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cee_cfg) #7
  %0 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 1, i32 3
  %4 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 2
  %7 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 4
  %9 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 5
  %10 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 6
  %11 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 7
  %12 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 3
  %13 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 4
  %14 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 5
  %15 = call ptr @memset(ptr %cee_cfg, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cee_v1_cfg) #7
  %16 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 1
  %17 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 2
  %18 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 2, i32 1
  %19 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 2, i32 2
  %20 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 2, i32 3
  %21 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 4
  %22 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 4, i32 1
  %23 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 4, i32 2
  %24 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 4, i32 3
  %25 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 4, i32 4
  %26 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 4, i32 5
  %27 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 4, i32 6
  %28 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 4, i32 7
  %29 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 5
  %30 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 7
  %31 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, ptr %cee_v1_cfg, i32 0, i32 9
  %mac = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %32 = call ptr @memset(ptr %cee_v1_cfg, i32 255, i32 24)
  %33 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mac, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp = icmp eq i32 %34, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %fw_maj_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 7
  %35 = ptrtoint ptr %fw_maj_ver to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fw_maj_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %36)
  %cmp1 = icmp eq i16 %36, 4
  br i1 %cmp1, label %land.lhs.true3, label %lor.lhs.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %fw_min_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 8
  %37 = ptrtoint ptr %fw_min_ver to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fw_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %38)
  %cmp6 = icmp ult i16 %38, 33
  br i1 %cmp6, label %land.lhs.true3.if.then_crit_edge, label %land.lhs.true17

land.lhs.true3.if.then_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %36)
  %cmp11 = icmp ult i16 %36, 4
  br i1 %cmp11, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true3.if.then_crit_edge
  %call = tail call fastcc i32 @i40e_get_ieee_dcb_config(ptr noundef %hw)
  br label %cleanup

land.lhs.true17:                                  ; preds = %land.lhs.true3
  %39 = ptrtoint ptr %fw_maj_ver to i32
  call void @__asan_load2_noabort(i32 %39)
  %.pr = load i16, ptr %fw_maj_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %.pr)
  %cmp21 = icmp eq i16 %.pr, 4
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true17.if.else_crit_edge

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true23:                                  ; preds = %land.lhs.true17
  %fw_min_ver25 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 8
  %40 = ptrtoint ptr %fw_min_ver25 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %fw_min_ver25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %41)
  %cmp27 = icmp eq i16 %41, 33
  br i1 %cmp27, label %if.then29, label %land.lhs.true23.if.else_crit_edge

land.lhs.true23.if.else_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then29:                                        ; preds = %land.lhs.true23
  %call30 = call i32 @i40e_aq_get_cee_dcb_config(ptr noundef %hw, ptr noundef nonnull %cee_v1_cfg, i16 noundef zeroext 24, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %if.then31, label %if.then29.if.end47_crit_edge

if.then29.if.end47_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then31:                                        ; preds = %if.then29
  %local_dcbx_config = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32
  %42 = ptrtoint ptr %local_dcbx_config to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %local_dcbx_config, align 4
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %31, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %conv32 = zext i16 %45 to i32
  %tlv_status34 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 3
  %46 = ptrtoint ptr %tlv_status34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv32, ptr %tlv_status34, align 4
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %30, align 2
  %49 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %16, align 1
  %maxtcs.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 2
  %51 = ptrtoint ptr %maxtcs.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %maxtcs.i, align 2
  %52 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %17, align 2
  %54 = and i8 %53, 15
  %arrayidx7.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3
  %55 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx7.i, align 1
  %56 = lshr i8 %53, 4
  %arrayidx19.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 1
  %57 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx19.i, align 1
  %58 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %18, align 1
  %60 = and i8 %59, 15
  %arrayidx7.1.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 2
  %61 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx7.1.i, align 1
  %62 = lshr i8 %59, 4
  %arrayidx19.1.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 3
  %63 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx19.1.i, align 1
  %64 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %19, align 2
  %66 = and i8 %65, 15
  %arrayidx7.2.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 4
  %67 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx7.2.i, align 1
  %68 = lshr i8 %65, 4
  %arrayidx19.2.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 5
  %69 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx19.2.i, align 1
  %70 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %20, align 1
  %72 = and i8 %71, 15
  %arrayidx7.3.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 6
  %73 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx7.3.i, align 1
  %74 = lshr i8 %71, 4
  %arrayidx19.3.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 7
  %75 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx19.3.i, align 1
  %76 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %21, align 1
  %arrayidx29.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4
  %78 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx29.i, align 1
  %79 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %22, align 2
  %arrayidx29.1.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 1
  %81 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx29.1.i, align 1
  %82 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %23, align 1
  %arrayidx29.2.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 2
  %84 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx29.2.i, align 1
  %85 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %24, align 2
  %arrayidx29.3.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 3
  %87 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx29.3.i, align 1
  %88 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %25, align 1
  %arrayidx29.4.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 4
  %90 = ptrtoint ptr %arrayidx29.4.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx29.4.i, align 1
  %91 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %26, align 2
  %arrayidx29.5.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 5
  %93 = ptrtoint ptr %arrayidx29.5.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx29.5.i, align 1
  %94 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %27, align 1
  %arrayidx29.6.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 6
  %96 = ptrtoint ptr %arrayidx29.6.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx29.6.i, align 1
  %97 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %28, align 2
  %arrayidx29.7.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 7
  %99 = ptrtoint ptr %arrayidx29.7.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx29.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %54)
  %cmp43.i = icmp eq i8 %54, 15
  br i1 %cmp43.i, label %if.then.i, label %if.then31.for.inc59.i_crit_edge

if.then31.for.inc59.i_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.i

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i8 %50, -1
  %100 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %sub.i, ptr %arrayidx7.i, align 1
  br label %for.inc59.i

for.inc59.i:                                      ; preds = %if.then.i, %if.then31.for.inc59.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.then.i ], [ 2, %if.then31.for.inc59.i_crit_edge ]
  %101 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.sink.i, ptr %101, align 1
  %103 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %104)
  %cmp43.1.i = icmp eq i8 %104, 15
  br i1 %cmp43.1.i, label %if.then.1.i, label %for.inc59.i.for.inc59.1.i_crit_edge

for.inc59.i.for.inc59.1.i_crit_edge:              ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.1.i

if.then.1.i:                                      ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.1.i = add i8 %50, -1
  %105 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %sub.1.i, ptr %arrayidx19.i, align 1
  br label %for.inc59.1.i

for.inc59.1.i:                                    ; preds = %if.then.1.i, %for.inc59.i.for.inc59.1.i_crit_edge
  %.sink157.i = phi i8 [ 0, %if.then.1.i ], [ 2, %for.inc59.i.for.inc59.1.i_crit_edge ]
  %106 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %.sink157.i, ptr %106, align 1
  %108 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx7.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %109)
  %cmp43.2.i = icmp eq i8 %109, 15
  br i1 %cmp43.2.i, label %if.then.2.i, label %for.inc59.1.i.for.inc59.2.i_crit_edge

for.inc59.1.i.for.inc59.2.i_crit_edge:            ; preds = %for.inc59.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.2.i

if.then.2.i:                                      ; preds = %for.inc59.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.2.i = add i8 %50, -1
  %110 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %sub.2.i, ptr %arrayidx7.1.i, align 1
  br label %for.inc59.2.i

for.inc59.2.i:                                    ; preds = %if.then.2.i, %for.inc59.1.i.for.inc59.2.i_crit_edge
  %.sink158.i = phi i8 [ 0, %if.then.2.i ], [ 2, %for.inc59.1.i.for.inc59.2.i_crit_edge ]
  %111 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 2
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %.sink158.i, ptr %111, align 1
  %113 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx19.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %114)
  %cmp43.3.i = icmp eq i8 %114, 15
  br i1 %cmp43.3.i, label %if.then.3.i, label %for.inc59.2.i.for.inc59.3.i_crit_edge

for.inc59.2.i.for.inc59.3.i_crit_edge:            ; preds = %for.inc59.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.3.i

if.then.3.i:                                      ; preds = %for.inc59.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.3.i = add i8 %50, -1
  %115 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %sub.3.i, ptr %arrayidx19.1.i, align 1
  br label %for.inc59.3.i

for.inc59.3.i:                                    ; preds = %if.then.3.i, %for.inc59.2.i.for.inc59.3.i_crit_edge
  %.sink159.i = phi i8 [ 0, %if.then.3.i ], [ 2, %for.inc59.2.i.for.inc59.3.i_crit_edge ]
  %116 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 3
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %.sink159.i, ptr %116, align 1
  %118 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx7.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %119)
  %cmp43.4.i = icmp eq i8 %119, 15
  br i1 %cmp43.4.i, label %if.then.4.i, label %for.inc59.3.i.for.inc59.4.i_crit_edge

for.inc59.3.i.for.inc59.4.i_crit_edge:            ; preds = %for.inc59.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.4.i

if.then.4.i:                                      ; preds = %for.inc59.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.4.i = add i8 %50, -1
  %120 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %sub.4.i, ptr %arrayidx7.2.i, align 1
  br label %for.inc59.4.i

for.inc59.4.i:                                    ; preds = %if.then.4.i, %for.inc59.3.i.for.inc59.4.i_crit_edge
  %.sink160.i = phi i8 [ 0, %if.then.4.i ], [ 2, %for.inc59.3.i.for.inc59.4.i_crit_edge ]
  %121 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %.sink160.i, ptr %121, align 1
  %123 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx19.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %124)
  %cmp43.5.i = icmp eq i8 %124, 15
  br i1 %cmp43.5.i, label %if.then.5.i, label %for.inc59.4.i.for.inc59.5.i_crit_edge

for.inc59.4.i.for.inc59.5.i_crit_edge:            ; preds = %for.inc59.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.5.i

if.then.5.i:                                      ; preds = %for.inc59.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.5.i = add i8 %50, -1
  %125 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %sub.5.i, ptr %arrayidx19.2.i, align 1
  br label %for.inc59.5.i

for.inc59.5.i:                                    ; preds = %if.then.5.i, %for.inc59.4.i.for.inc59.5.i_crit_edge
  %.sink161.i = phi i8 [ 0, %if.then.5.i ], [ 2, %for.inc59.4.i.for.inc59.5.i_crit_edge ]
  %126 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 5
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %.sink161.i, ptr %126, align 1
  %128 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx7.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %129)
  %cmp43.6.i = icmp eq i8 %129, 15
  br i1 %cmp43.6.i, label %if.then.6.i, label %for.inc59.5.i.for.inc59.6.i_crit_edge

for.inc59.5.i.for.inc59.6.i_crit_edge:            ; preds = %for.inc59.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.6.i

if.then.6.i:                                      ; preds = %for.inc59.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.6.i = add i8 %50, -1
  %130 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %sub.6.i, ptr %arrayidx7.3.i, align 1
  br label %for.inc59.6.i

for.inc59.6.i:                                    ; preds = %if.then.6.i, %for.inc59.5.i.for.inc59.6.i_crit_edge
  %.sink162.i = phi i8 [ 0, %if.then.6.i ], [ 2, %for.inc59.5.i.for.inc59.6.i_crit_edge ]
  %131 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 6
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %.sink162.i, ptr %131, align 1
  %133 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx19.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %134)
  %cmp43.7.i = icmp eq i8 %134, 15
  br i1 %cmp43.7.i, label %if.then.7.i, label %for.inc59.6.i.for.inc59.7.i_crit_edge

for.inc59.6.i.for.inc59.7.i_crit_edge:            ; preds = %for.inc59.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.7.i

if.then.7.i:                                      ; preds = %for.inc59.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.7.i = add i8 %50, -1
  %135 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %sub.7.i, ptr %arrayidx19.3.i, align 1
  br label %for.inc59.7.i

for.inc59.7.i:                                    ; preds = %if.then.7.i, %for.inc59.6.i.for.inc59.7.i_crit_edge
  %.sink163.i = phi i8 [ 0, %if.then.7.i ], [ 2, %for.inc59.6.i.for.inc59.7.i_crit_edge ]
  %136 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 7
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %.sink163.i, ptr %136, align 1
  %138 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %29, align 1
  %pfcenable.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 6, i32 3
  %140 = ptrtoint ptr %pfcenable.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %pfcenable.i, align 1
  %pfccap.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 6, i32 2
  %141 = ptrtoint ptr %pfccap.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 8, ptr %pfccap.i, align 2
  %142 = and i16 %44, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %tobool70.not.i = icmp eq i16 %142, 0
  br i1 %tobool70.not.i, label %if.then71.i, label %for.inc59.7.i.if.end47_crit_edge

for.inc59.7.i.if.end47_crit_edge:                 ; preds = %for.inc59.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then71.i:                                      ; preds = %for.inc59.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %143 = call i16 @llvm.bswap.i16(i16 %48) #7
  %numapps.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 2
  %144 = ptrtoint ptr %numapps.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 3, ptr %numapps.i, align 4
  %145 = trunc i16 %143 to i8
  %conv75.i = and i8 %145, 7
  %app.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7
  %146 = ptrtoint ptr %app.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv75.i, ptr %app.i, align 2
  %selector.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 0, i32 1
  %147 = ptrtoint ptr %selector.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %selector.i, align 1
  %protocolid.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 0, i32 2
  %148 = ptrtoint ptr %protocolid.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 -30458, ptr %protocolid.i, align 2
  %149 = lshr i8 %145, 3
  %conv84.i = and i8 %149, 7
  %arrayidx86.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 1
  %150 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv84.i, ptr %arrayidx86.i, align 2
  %selector90.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 1, i32 1
  %151 = ptrtoint ptr %selector90.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 2, ptr %selector90.i, align 1
  %protocolid93.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 1, i32 2
  %152 = ptrtoint ptr %protocolid93.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 3260, ptr %protocolid93.i, align 2
  %153 = lshr i16 %143, 8
  %154 = trunc i16 %153 to i8
  %conv97.i = and i8 %154, 7
  %arrayidx99.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 2
  %155 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv97.i, ptr %arrayidx99.i, align 2
  %selector103.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 2, i32 1
  %156 = ptrtoint ptr %selector103.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %selector103.i, align 1
  %protocolid106.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 2, i32 2
  %157 = ptrtoint ptr %protocolid106.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 -30444, ptr %protocolid106.i, align 2
  br label %if.end47

if.else:                                          ; preds = %land.lhs.true23.if.else_crit_edge, %land.lhs.true17.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge, %entry.if.else_crit_edge
  %call37 = call i32 @i40e_aq_get_cee_dcb_config(ptr noundef %hw, ptr noundef nonnull %cee_cfg, i16 noundef zeroext 32, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.else.if.end47_crit_edge

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then39:                                        ; preds = %if.else
  %local_dcbx_config40 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32
  %158 = ptrtoint ptr %local_dcbx_config40 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %local_dcbx_config40, align 4
  %159 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %14, align 4
  %161 = call i32 @llvm.bswap.i32(i32 %160)
  %tlv_status44 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 3
  %162 = ptrtoint ptr %tlv_status44 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %tlv_status44, align 4
  %163 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %13, align 2
  %165 = ptrtoint ptr %cee_cfg to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %cee_cfg, align 4
  %maxtcs.i98 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 2
  %167 = ptrtoint ptr %maxtcs.i98 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %maxtcs.i98, align 2
  %168 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %0, align 1
  %170 = and i8 %169, 15
  %arrayidx7.i100 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3
  %171 = ptrtoint ptr %arrayidx7.i100 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %arrayidx7.i100, align 1
  %172 = lshr i8 %169, 4
  %arrayidx19.i101 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 1
  %173 = ptrtoint ptr %arrayidx19.i101 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %arrayidx19.i101, align 1
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %1, align 2
  %176 = and i8 %175, 15
  %arrayidx7.1.i103 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 2
  %177 = ptrtoint ptr %arrayidx7.1.i103 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx7.1.i103, align 1
  %178 = lshr i8 %175, 4
  %arrayidx19.1.i104 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 3
  %179 = ptrtoint ptr %arrayidx19.1.i104 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %arrayidx19.1.i104, align 1
  %180 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %2, align 1
  %182 = and i8 %181, 15
  %arrayidx7.2.i106 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 4
  %183 = ptrtoint ptr %arrayidx7.2.i106 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %arrayidx7.2.i106, align 1
  %184 = lshr i8 %181, 4
  %arrayidx19.2.i107 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 5
  %185 = ptrtoint ptr %arrayidx19.2.i107 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx19.2.i107, align 1
  %186 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %3, align 4
  %188 = and i8 %187, 15
  %arrayidx7.3.i109 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 6
  %189 = ptrtoint ptr %arrayidx7.3.i109 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %arrayidx7.3.i109, align 1
  %190 = lshr i8 %187, 4
  %arrayidx19.3.i110 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 3, i32 7
  %191 = ptrtoint ptr %arrayidx19.3.i110 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx19.3.i110, align 1
  %192 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %4, align 1
  %arrayidx29.i112 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4
  %194 = ptrtoint ptr %arrayidx29.i112 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %arrayidx29.i112, align 1
  %195 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %5, align 2
  %arrayidx29.1.i114 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 1
  %197 = ptrtoint ptr %arrayidx29.1.i114 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %arrayidx29.1.i114, align 1
  %198 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %6, align 1
  %arrayidx29.2.i116 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 2
  %200 = ptrtoint ptr %arrayidx29.2.i116 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %arrayidx29.2.i116, align 1
  %201 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %7, align 4
  %arrayidx29.3.i118 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 3
  %203 = ptrtoint ptr %arrayidx29.3.i118 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %arrayidx29.3.i118, align 1
  %204 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %8, align 1
  %arrayidx29.4.i120 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 4
  %206 = ptrtoint ptr %arrayidx29.4.i120 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx29.4.i120, align 1
  %207 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %9, align 2
  %arrayidx29.5.i122 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 5
  %209 = ptrtoint ptr %arrayidx29.5.i122 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx29.5.i122, align 1
  %210 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %10, align 1
  %arrayidx29.6.i124 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 6
  %212 = ptrtoint ptr %arrayidx29.6.i124 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %arrayidx29.6.i124, align 1
  %213 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %11, align 4
  %arrayidx29.7.i126 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 4, i32 7
  %215 = ptrtoint ptr %arrayidx29.7.i126 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %arrayidx29.7.i126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %170)
  %cmp43.i127 = icmp eq i8 %170, 15
  br i1 %cmp43.i127, label %if.then.i129, label %if.then39.for.inc59.i132_crit_edge

if.then39.for.inc59.i132_crit_edge:               ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.i132

if.then.i129:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i128 = add i8 %166, -1
  %216 = ptrtoint ptr %arrayidx7.i100 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %sub.i128, ptr %arrayidx7.i100, align 1
  br label %for.inc59.i132

for.inc59.i132:                                   ; preds = %if.then.i129, %if.then39.for.inc59.i132_crit_edge
  %.sink.i130 = phi i8 [ 0, %if.then.i129 ], [ 2, %if.then39.for.inc59.i132_crit_edge ]
  %217 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %.sink.i130, ptr %217, align 1
  %219 = ptrtoint ptr %arrayidx19.i101 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx19.i101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %220)
  %cmp43.1.i131 = icmp eq i8 %220, 15
  br i1 %cmp43.1.i131, label %if.then.1.i134, label %for.inc59.i132.for.inc59.1.i136_crit_edge

for.inc59.i132.for.inc59.1.i136_crit_edge:        ; preds = %for.inc59.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.1.i136

if.then.1.i134:                                   ; preds = %for.inc59.i132
  call void @__sanitizer_cov_trace_pc() #9
  %sub.1.i133 = add i8 %166, -1
  %221 = ptrtoint ptr %arrayidx19.i101 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %sub.1.i133, ptr %arrayidx19.i101, align 1
  br label %for.inc59.1.i136

for.inc59.1.i136:                                 ; preds = %if.then.1.i134, %for.inc59.i132.for.inc59.1.i136_crit_edge
  %.sink262.i = phi i8 [ 0, %if.then.1.i134 ], [ 2, %for.inc59.i132.for.inc59.1.i136_crit_edge ]
  %222 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 1
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %.sink262.i, ptr %222, align 1
  %224 = ptrtoint ptr %arrayidx7.1.i103 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx7.1.i103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %225)
  %cmp43.2.i135 = icmp eq i8 %225, 15
  br i1 %cmp43.2.i135, label %if.then.2.i138, label %for.inc59.1.i136.for.inc59.2.i140_crit_edge

for.inc59.1.i136.for.inc59.2.i140_crit_edge:      ; preds = %for.inc59.1.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.2.i140

if.then.2.i138:                                   ; preds = %for.inc59.1.i136
  call void @__sanitizer_cov_trace_pc() #9
  %sub.2.i137 = add i8 %166, -1
  %226 = ptrtoint ptr %arrayidx7.1.i103 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %sub.2.i137, ptr %arrayidx7.1.i103, align 1
  br label %for.inc59.2.i140

for.inc59.2.i140:                                 ; preds = %if.then.2.i138, %for.inc59.1.i136.for.inc59.2.i140_crit_edge
  %.sink263.i = phi i8 [ 0, %if.then.2.i138 ], [ 2, %for.inc59.1.i136.for.inc59.2.i140_crit_edge ]
  %227 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 2
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %.sink263.i, ptr %227, align 1
  %229 = ptrtoint ptr %arrayidx19.1.i104 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx19.1.i104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %230)
  %cmp43.3.i139 = icmp eq i8 %230, 15
  br i1 %cmp43.3.i139, label %if.then.3.i142, label %for.inc59.2.i140.for.inc59.3.i144_crit_edge

for.inc59.2.i140.for.inc59.3.i144_crit_edge:      ; preds = %for.inc59.2.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.3.i144

if.then.3.i142:                                   ; preds = %for.inc59.2.i140
  call void @__sanitizer_cov_trace_pc() #9
  %sub.3.i141 = add i8 %166, -1
  %231 = ptrtoint ptr %arrayidx19.1.i104 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %sub.3.i141, ptr %arrayidx19.1.i104, align 1
  br label %for.inc59.3.i144

for.inc59.3.i144:                                 ; preds = %if.then.3.i142, %for.inc59.2.i140.for.inc59.3.i144_crit_edge
  %.sink264.i = phi i8 [ 0, %if.then.3.i142 ], [ 2, %for.inc59.2.i140.for.inc59.3.i144_crit_edge ]
  %232 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 3
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %.sink264.i, ptr %232, align 1
  %234 = ptrtoint ptr %arrayidx7.2.i106 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx7.2.i106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %235)
  %cmp43.4.i143 = icmp eq i8 %235, 15
  br i1 %cmp43.4.i143, label %if.then.4.i146, label %for.inc59.3.i144.for.inc59.4.i148_crit_edge

for.inc59.3.i144.for.inc59.4.i148_crit_edge:      ; preds = %for.inc59.3.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.4.i148

if.then.4.i146:                                   ; preds = %for.inc59.3.i144
  call void @__sanitizer_cov_trace_pc() #9
  %sub.4.i145 = add i8 %166, -1
  %236 = ptrtoint ptr %arrayidx7.2.i106 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %sub.4.i145, ptr %arrayidx7.2.i106, align 1
  br label %for.inc59.4.i148

for.inc59.4.i148:                                 ; preds = %if.then.4.i146, %for.inc59.3.i144.for.inc59.4.i148_crit_edge
  %.sink265.i = phi i8 [ 0, %if.then.4.i146 ], [ 2, %for.inc59.3.i144.for.inc59.4.i148_crit_edge ]
  %237 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %.sink265.i, ptr %237, align 1
  %239 = ptrtoint ptr %arrayidx19.2.i107 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx19.2.i107, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %240)
  %cmp43.5.i147 = icmp eq i8 %240, 15
  br i1 %cmp43.5.i147, label %if.then.5.i150, label %for.inc59.4.i148.for.inc59.5.i152_crit_edge

for.inc59.4.i148.for.inc59.5.i152_crit_edge:      ; preds = %for.inc59.4.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.5.i152

if.then.5.i150:                                   ; preds = %for.inc59.4.i148
  call void @__sanitizer_cov_trace_pc() #9
  %sub.5.i149 = add i8 %166, -1
  %241 = ptrtoint ptr %arrayidx19.2.i107 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %sub.5.i149, ptr %arrayidx19.2.i107, align 1
  br label %for.inc59.5.i152

for.inc59.5.i152:                                 ; preds = %if.then.5.i150, %for.inc59.4.i148.for.inc59.5.i152_crit_edge
  %.sink266.i = phi i8 [ 0, %if.then.5.i150 ], [ 2, %for.inc59.4.i148.for.inc59.5.i152_crit_edge ]
  %242 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 5
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %.sink266.i, ptr %242, align 1
  %244 = ptrtoint ptr %arrayidx7.3.i109 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx7.3.i109, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %245)
  %cmp43.6.i151 = icmp eq i8 %245, 15
  br i1 %cmp43.6.i151, label %if.then.6.i154, label %for.inc59.5.i152.for.inc59.6.i156_crit_edge

for.inc59.5.i152.for.inc59.6.i156_crit_edge:      ; preds = %for.inc59.5.i152
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.6.i156

if.then.6.i154:                                   ; preds = %for.inc59.5.i152
  call void @__sanitizer_cov_trace_pc() #9
  %sub.6.i153 = add i8 %166, -1
  %246 = ptrtoint ptr %arrayidx7.3.i109 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %sub.6.i153, ptr %arrayidx7.3.i109, align 1
  br label %for.inc59.6.i156

for.inc59.6.i156:                                 ; preds = %if.then.6.i154, %for.inc59.5.i152.for.inc59.6.i156_crit_edge
  %.sink267.i = phi i8 [ 0, %if.then.6.i154 ], [ 2, %for.inc59.5.i152.for.inc59.6.i156_crit_edge ]
  %247 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 6
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %.sink267.i, ptr %247, align 1
  %249 = ptrtoint ptr %arrayidx19.3.i110 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx19.3.i110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %250)
  %cmp43.7.i155 = icmp eq i8 %250, 15
  br i1 %cmp43.7.i155, label %if.then.7.i158, label %for.inc59.6.i156.for.inc59.7.i162_crit_edge

for.inc59.6.i156.for.inc59.7.i162_crit_edge:      ; preds = %for.inc59.6.i156
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.7.i162

if.then.7.i158:                                   ; preds = %for.inc59.6.i156
  call void @__sanitizer_cov_trace_pc() #9
  %sub.7.i157 = add i8 %166, -1
  %251 = ptrtoint ptr %arrayidx19.3.i110 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %sub.7.i157, ptr %arrayidx19.3.i110, align 1
  br label %for.inc59.7.i162

for.inc59.7.i162:                                 ; preds = %if.then.7.i158, %for.inc59.6.i156.for.inc59.7.i162_crit_edge
  %.sink268.i = phi i8 [ 0, %if.then.7.i158 ], [ 2, %for.inc59.6.i156.for.inc59.7.i162_crit_edge ]
  %252 = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 4, i32 5, i32 7
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %.sink268.i, ptr %252, align 1
  %254 = call i16 @llvm.bswap.i16(i16 %164) #7
  %255 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %12, align 1
  %pfcenable.i160 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 6, i32 3
  %257 = ptrtoint ptr %pfcenable.i160 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %pfcenable.i160, align 1
  %pfccap.i161 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 6, i32 2
  %258 = ptrtoint ptr %pfccap.i161 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 8, ptr %pfccap.i161, align 2
  %259 = and i32 %161, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %259)
  %.not.i = icmp eq i32 %259, 768
  br i1 %.not.i, label %if.then81.i, label %for.inc59.7.i162.if.end95.i_crit_edge

for.inc59.7.i162.if.end95.i_crit_edge:            ; preds = %for.inc59.7.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

if.then81.i:                                      ; preds = %for.inc59.7.i162
  call void @__sanitizer_cov_trace_pc() #9
  %260 = trunc i16 %254 to i8
  %conv85.i = and i8 %260, 7
  %app.i163 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7
  %261 = ptrtoint ptr %app.i163 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv85.i, ptr %app.i163, align 2
  %selector.i164 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 0, i32 1
  %262 = ptrtoint ptr %selector.i164 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 1, ptr %selector.i164, align 1
  %protocolid.i165 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 0, i32 2
  %263 = ptrtoint ptr %protocolid.i165 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 -30458, ptr %protocolid.i165, align 2
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then81.i, %for.inc59.7.i162.if.end95.i_crit_edge
  %i.3.i = phi i8 [ 0, %for.inc59.7.i162.if.end95.i_crit_edge ], [ 1, %if.then81.i ]
  %264 = and i32 %161, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %264)
  %.not255.i = icmp eq i32 %264, 6144
  br i1 %.not255.i, label %if.then117.i, label %if.end95.i.if.end135.i_crit_edge

if.end95.i.if.end135.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

if.then117.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #9
  %265 = trunc i16 %254 to i8
  %266 = lshr i8 %265, 3
  %conv121.i = and i8 %266, 7
  %idxprom123.i = zext i8 %i.3.i to i32
  %arrayidx124.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 %idxprom123.i
  %267 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %conv121.i, ptr %arrayidx124.i, align 2
  %selector129.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 %idxprom123.i, i32 1
  %268 = ptrtoint ptr %selector129.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 2, ptr %selector129.i, align 1
  %protocolid133.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 %idxprom123.i, i32 2
  %269 = ptrtoint ptr %protocolid133.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 3260, ptr %protocolid133.i, align 2
  %inc134.i = add nuw nsw i8 %i.3.i, 1
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then117.i, %if.end95.i.if.end135.i_crit_edge
  %i.4.i = phi i8 [ %i.3.i, %if.end95.i.if.end135.i_crit_edge ], [ %inc134.i, %if.then117.i ]
  %270 = and i32 %161, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %270)
  %.not256.i = icmp eq i32 %270, 196608
  br i1 %.not256.i, label %if.then157.i, label %if.end135.i.i40e_cee_to_dcb_config.exit_crit_edge

if.end135.i.i40e_cee_to_dcb_config.exit_crit_edge: ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_cee_to_dcb_config.exit

if.then157.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #9
  %271 = lshr i16 %254, 8
  %272 = trunc i16 %271 to i8
  %conv161.i = and i8 %272, 7
  %idxprom163.i = zext i8 %i.4.i to i32
  %arrayidx164.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 %idxprom163.i
  %273 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %conv161.i, ptr %arrayidx164.i, align 2
  %selector169.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 %idxprom163.i, i32 1
  %274 = ptrtoint ptr %selector169.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 1, ptr %selector169.i, align 1
  %protocolid173.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 7, i32 %idxprom163.i, i32 2
  %275 = ptrtoint ptr %protocolid173.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 -30444, ptr %protocolid173.i, align 2
  %inc174.i = add nuw nsw i8 %i.4.i, 1
  br label %i40e_cee_to_dcb_config.exit

i40e_cee_to_dcb_config.exit:                      ; preds = %if.then157.i, %if.end135.i.i40e_cee_to_dcb_config.exit_crit_edge
  %i.5.i = phi i8 [ %i.4.i, %if.end135.i.i40e_cee_to_dcb_config.exit_crit_edge ], [ %inc174.i, %if.then157.i ]
  %conv176.i = zext i8 %i.5.i to i32
  %numapps.i166 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 2
  %276 = ptrtoint ptr %numapps.i166 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %conv176.i, ptr %numapps.i166, align 4
  br label %if.end47

if.end47:                                         ; preds = %i40e_cee_to_dcb_config.exit, %if.else.if.end47_crit_edge, %if.then71.i, %for.inc59.7.i.if.end47_crit_edge, %if.then29.if.end47_crit_edge
  %ret.0 = phi i32 [ %call30, %if.then29.if.end47_crit_edge ], [ %call37, %if.else.if.end47_crit_edge ], [ 0, %i40e_cee_to_dcb_config.exit ], [ 0, %for.inc59.7.i.if.end47_crit_edge ], [ 0, %if.then71.i ]
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %277 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %278)
  %cmp49 = icmp eq i32 %278, 2
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = call fastcc i32 @i40e_get_ieee_dcb_config(ptr noundef %hw)
  br label %cleanup

if.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool54.not = icmp eq i32 %ret.0, 0
  br i1 %tobool54.not, label %if.end56, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %if.end53
  %desired_dcbx_config = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mem.i) #7
  %279 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem.i, align 4, !annotation !22
  %280 = getelementptr inbounds %struct.i40e_virt_mem, ptr %mem.i, i32 0, i32 1
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 -1, ptr %280, align 4, !annotation !22
  %call.i = call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem.i, i32 noundef 1500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %i40e_aq_get_dcb_config.exit.thread

i40e_aq_get_dcb_config.exit.thread:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end56
  %282 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %mem.i, align 4
  %call1.i = call i32 @i40e_aq_get_lldp_mib(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %283, i16 noundef zeroext 1500, ptr noundef null, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %i40e_aq_get_dcb_config.exit, label %i40e_aq_get_dcb_config.exit.thread183

i40e_aq_get_dcb_config.exit.thread183:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i185 = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem.i) #7
  br label %cleanup

i40e_aq_get_dcb_config.exit:                      ; preds = %if.end.i
  %call5.i = call i32 @i40e_lldp_to_dcb_config(ptr noundef %283, ptr noundef %desired_dcbx_config) #7
  %call6.i = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool58.not = icmp eq i32 %call5.i, 0
  br i1 %tobool58.not, label %if.end60, label %i40e_aq_get_dcb_config.exit.cleanup_crit_edge

i40e_aq_get_dcb_config.exit.cleanup_crit_edge:    ; preds = %i40e_aq_get_dcb_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %i40e_aq_get_dcb_config.exit
  %remote_dcbx_config = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mem.i167) #7
  %284 = ptrtoint ptr %mem.i167 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem.i167, align 4, !annotation !22
  %285 = getelementptr inbounds %struct.i40e_virt_mem, ptr %mem.i167, i32 0, i32 1
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 -1, ptr %285, align 4, !annotation !22
  %call.i168 = call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem.i167, i32 noundef 1500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.end.i172, label %if.end60.i40e_aq_get_dcb_config.exit179_crit_edge

if.end60.i40e_aq_get_dcb_config.exit179_crit_edge: ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_aq_get_dcb_config.exit179

if.end.i172:                                      ; preds = %if.end60
  %287 = ptrtoint ptr %mem.i167 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %mem.i167, align 4
  %call1.i170 = call i32 @i40e_aq_get_lldp_mib(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %288, i16 noundef zeroext 1500, ptr noundef null, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i170)
  %tobool2.not.i171 = icmp eq i32 %call1.i170, 0
  br i1 %tobool2.not.i171, label %if.end4.i174, label %if.end.i172.free_mem.i177_crit_edge

if.end.i172.free_mem.i177_crit_edge:              ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mem.i177

if.end4.i174:                                     ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i173 = call i32 @i40e_lldp_to_dcb_config(ptr noundef %288, ptr noundef %remote_dcbx_config) #7
  br label %free_mem.i177

free_mem.i177:                                    ; preds = %if.end4.i174, %if.end.i172.free_mem.i177_crit_edge
  %ret.0.i175 = phi i32 [ %call1.i170, %if.end.i172.free_mem.i177_crit_edge ], [ %call5.i173, %if.end4.i174 ]
  %call6.i176 = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem.i167) #7
  br label %i40e_aq_get_dcb_config.exit179

i40e_aq_get_dcb_config.exit179:                   ; preds = %free_mem.i177, %if.end60.i40e_aq_get_dcb_config.exit179_crit_edge
  %retval.0.i178 = phi i32 [ %ret.0.i175, %free_mem.i177 ], [ %call.i168, %if.end60.i40e_aq_get_dcb_config.exit179_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem.i167) #7
  %289 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %290)
  %cmp64 = icmp eq i32 %290, 2
  %spec.store.select = select i1 %cmp64, i32 0, i32 %retval.0.i178
  br label %cleanup

cleanup:                                          ; preds = %i40e_aq_get_dcb_config.exit179, %i40e_aq_get_dcb_config.exit.cleanup_crit_edge, %i40e_aq_get_dcb_config.exit.thread183, %i40e_aq_get_dcb_config.exit.thread, %if.end53.cleanup_crit_edge, %if.then51, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call52, %if.then51 ], [ %ret.0, %if.end53.cleanup_crit_edge ], [ %call5.i, %i40e_aq_get_dcb_config.exit.cleanup_crit_edge ], [ %spec.store.select, %i40e_aq_get_dcb_config.exit179 ], [ %call.i, %i40e_aq_get_dcb_config.exit.thread ], [ %call1.i, %i40e_aq_get_dcb_config.exit.thread183 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cee_v1_cfg) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cee_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_get_ieee_dcb_config(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %mem.i11 = alloca %struct.i40e_virt_mem, align 4
  %mem.i = alloca %struct.i40e_virt_mem, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local_dcbx_config = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32
  %0 = ptrtoint ptr %local_dcbx_config to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %local_dcbx_config, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mem.i) #7
  %1 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem.i, align 4, !annotation !22
  %2 = getelementptr inbounds %struct.i40e_virt_mem, ptr %mem.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !22
  %call.i = call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem.i, i32 noundef 1500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %i40e_aq_get_dcb_config.exit.thread

i40e_aq_get_dcb_config.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem.i) #7
  br label %out

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem.i, align 4
  %call1.i = call i32 @i40e_aq_get_lldp_mib(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %5, i16 noundef zeroext 1500, ptr noundef null, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %i40e_aq_get_dcb_config.exit, label %i40e_aq_get_dcb_config.exit.thread26

i40e_aq_get_dcb_config.exit.thread26:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i28 = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem.i) #7
  br label %out

i40e_aq_get_dcb_config.exit:                      ; preds = %if.end.i
  %call5.i = call i32 @i40e_lldp_to_dcb_config(ptr noundef %5, ptr noundef %local_dcbx_config) #7
  %call6.i = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %if.end, label %i40e_aq_get_dcb_config.exit.out_crit_edge

i40e_aq_get_dcb_config.exit.out_crit_edge:        ; preds = %i40e_aq_get_dcb_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %i40e_aq_get_dcb_config.exit
  %remote_dcbx_config = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mem.i11) #7
  %6 = ptrtoint ptr %mem.i11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem.i11, align 4, !annotation !22
  %7 = getelementptr inbounds %struct.i40e_virt_mem, ptr %mem.i11, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !22
  %call.i12 = call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem.i11, i32 noundef 1500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i13, label %if.end.i16, label %if.end.i40e_aq_get_dcb_config.exit23_crit_edge

if.end.i40e_aq_get_dcb_config.exit23_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_aq_get_dcb_config.exit23

if.end.i16:                                       ; preds = %if.end
  %9 = ptrtoint ptr %mem.i11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem.i11, align 4
  %call1.i14 = call i32 @i40e_aq_get_lldp_mib(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %10, i16 noundef zeroext 1500, ptr noundef null, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool2.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool2.not.i15, label %if.end4.i18, label %if.end.i16.free_mem.i21_crit_edge

if.end.i16.free_mem.i21_crit_edge:                ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mem.i21

if.end4.i18:                                      ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i17 = call i32 @i40e_lldp_to_dcb_config(ptr noundef %10, ptr noundef %remote_dcbx_config) #7
  br label %free_mem.i21

free_mem.i21:                                     ; preds = %if.end4.i18, %if.end.i16.free_mem.i21_crit_edge
  %ret.0.i19 = phi i32 [ %call1.i14, %if.end.i16.free_mem.i21_crit_edge ], [ %call5.i17, %if.end4.i18 ]
  %call6.i20 = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem.i11) #7
  br label %i40e_aq_get_dcb_config.exit23

i40e_aq_get_dcb_config.exit23:                    ; preds = %free_mem.i21, %if.end.i40e_aq_get_dcb_config.exit23_crit_edge
  %retval.0.i22 = phi i32 [ %ret.0.i19, %free_mem.i21 ], [ %call.i12, %if.end.i40e_aq_get_dcb_config.exit23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem.i11) #7
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %11 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  %spec.store.select = select i1 %cmp, i32 0, i32 %retval.0.i22
  br label %out

out:                                              ; preds = %i40e_aq_get_dcb_config.exit23, %i40e_aq_get_dcb_config.exit.out_crit_edge, %i40e_aq_get_dcb_config.exit.thread26, %i40e_aq_get_dcb_config.exit.thread
  %ret.0 = phi i32 [ %call5.i, %i40e_aq_get_dcb_config.exit.out_crit_edge ], [ %spec.store.select, %i40e_aq_get_dcb_config.exit23 ], [ %call.i, %i40e_aq_get_dcb_config.exit.thread ], [ %call1.i, %i40e_aq_get_dcb_config.exit.thread26 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_get_cee_dcb_config(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_init_dcb(ptr noundef %hw, i1 noundef zeroext %enable_mib_change) local_unnamed_addr #0 align 64 {
entry:
  %lldp_cfg = alloca %struct.i40e_lldp_variables, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %lldp_cfg) #7
  %0 = getelementptr inbounds %struct.i40e_lldp_variables, ptr %lldp_cfg, i32 0, i32 1
  %dcb = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 10
  %1 = call ptr @memset(ptr %lldp_cfg, i32 255, i32 14)
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dcb, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags, align 8
  %and = and i64 %5, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.else12, label %if.then2

if.then2:                                         ; preds = %if.end
  %mac = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %7, label %if.then2.cleanup58_crit_edge [
    i32 1, label %if.then2.cleanup.thread_crit_edge
    i32 3, label %if.then7
  ]

if.then2.cleanup.thread_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then2.cleanup58_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then7, %if.then2.cleanup.thread_crit_edge
  %offset.0 = phi i8 [ 49, %if.then7 ], [ 43, %if.then2.cleanup.thread_crit_edge ]
  %conv = zext i8 %offset.0 to i16
  %call = call i32 @i40e_read_nvm_module_data(ptr noundef %hw, i8 noundef zeroext 72, i16 noundef zeroext %conv, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef %0) #7
  br label %if.end14

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call i32 @i40e_read_lldp_cfg(ptr noundef %hw, ptr noundef nonnull %lldp_cfg)
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %cleanup.thread
  %ret.1 = phi i32 [ %call13, %if.else12 ], [ %call, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool15.not = icmp eq i32 %ret.1, 0
  br i1 %tobool15.not, label %if.end17, label %if.end14.cleanup58_crit_edge

if.end14.cleanup58_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end17:                                         ; preds = %if.end14
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %0, align 2
  %conv19 = zext i16 %10 to i32
  %port = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 12
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port, align 1
  %conv20 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv20, 2
  %13 = shl i32 15, %mul
  %14 = and i32 %13, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  %dcbx_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 31
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dcbx_status to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 7, ptr %dcbx_status, align 8
  br label %cleanup58

if.end27:                                         ; preds = %if.end17
  %tobool.not.i = icmp eq ptr %dcbx_status, null
  br i1 %tobool.not.i, label %if.end27.cleanup58_crit_edge, label %if.end32

if.end27.cleanup58_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end32:                                         ; preds = %if.end27
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 536608
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !20
  %19 = lshr i32 %18, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  %20 = trunc i32 %19 to i16
  %conv.i = and i16 %20, 7
  %21 = ptrtoint ptr %dcbx_status to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %dcbx_status, align 2
  %trunc = trunc i32 %19 to i3
  %22 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.9)
  switch i3 %trunc, label %if.end53 [
    i3 2, label %if.end32.if.then41_crit_edge
    i3 1, label %if.end32.if.then41_crit_edge86
    i3 -1, label %if.end32.cleanup58_crit_edge
  ]

if.end32.cleanup58_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end32.if.then41_crit_edge86:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.end32.if.then41_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.then41:                                        ; preds = %if.end32.if.then41_crit_edge, %if.end32.if.then41_crit_edge86
  %call42 = call i32 @i40e_get_dcb_config(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %23 = and i1 %tobool43.not, %enable_mib_change
  br i1 %23, label %if.then41.if.then55_crit_edge, label %if.then41.cleanup58_crit_edge

if.then41.cleanup58_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.then41.if.then55_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

if.end53:                                         ; preds = %if.end32
  br i1 %enable_mib_change, label %if.end53.if.then55_crit_edge, label %if.end53.cleanup58_crit_edge

if.end53.cleanup58_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end53.if.then55_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

if.then55:                                        ; preds = %if.end53.if.then55_crit_edge, %if.then41.if.then55_crit_edge
  %call56 = call i32 @i40e_aq_cfg_lldp_mib_change_event(ptr noundef %hw, i1 noundef zeroext true, ptr noundef null) #7
  br label %cleanup58

cleanup58:                                        ; preds = %if.then55, %if.end53.cleanup58_crit_edge, %if.then41.cleanup58_crit_edge, %if.end32.cleanup58_crit_edge, %if.end27.cleanup58_crit_edge, %if.then26, %if.end14.cleanup58_crit_edge, %if.then2.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.1 = phi i32 [ -63, %if.then26 ], [ -64, %entry.cleanup58_crit_edge ], [ -63, %if.end14.cleanup58_crit_edge ], [ %call42, %if.then41.cleanup58_crit_edge ], [ -63, %if.end32.cleanup58_crit_edge ], [ %call56, %if.then55 ], [ 0, %if.end53.cleanup58_crit_edge ], [ -64, %if.then2.cleanup58_crit_edge ], [ -5, %if.end27.cleanup58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %lldp_cfg) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_read_nvm_module_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_read_lldp_cfg(ptr noundef %hw, ptr noundef %lldp_cfg) local_unnamed_addr #0 align 64 {
entry:
  %mem = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem) #7
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mem, align 4, !annotation !22
  %tobool.not = icmp eq ptr %lldp_cfg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @i40e_aq_read_nvm(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %mem, i1 noundef zeroext true, ptr noundef null) #7
  call void @i40e_release_nvm(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %1 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mem, align 4
  %and = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call fastcc i32 @_i40e_read_lldp_cfg(ptr noundef %hw, ptr noundef nonnull %lldp_cfg, i8 noundef zeroext 72, i32 noundef 49)
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call fastcc i32 @_i40e_read_lldp_cfg(ptr noundef %hw, ptr noundef nonnull %lldp_cfg, i8 noundef zeroext 15, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call10, %if.then9 ], [ %call11, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_cfg_lldp_mib_change_event(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_get_fw_lldp_status(ptr noundef %hw, ptr noundef writeonly %lldp_status) local_unnamed_addr #0 align 64 {
entry:
  %mem = alloca %struct.i40e_virt_mem, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mem) #7
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !22
  %1 = getelementptr inbounds %struct.i40e_virt_mem, ptr %mem, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !22
  %tobool.not = icmp eq ptr %lldp_status, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem, i32 noundef 1500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  %call4 = call i32 @i40e_aq_get_lldp_mib(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %4, i16 noundef zeroext 1500, ptr noundef null, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.if.end15.sink.split_crit_edge, label %if.else

if.end3.if.end15.sink.split_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split

if.else:                                          ; preds = %if.end3
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %5 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asq_last_status, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %6, label %if.else.if.end15_crit_edge [
    i32 2, label %if.else.if.end15.sink.split_crit_edge
    i32 1, label %if.then12
  ]

if.else.if.end15.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then12, %if.else.if.end15.sink.split_crit_edge, %if.end3.if.end15.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then12 ], [ 1, %if.end3.if.end15.sink.split_crit_edge ], [ 1, %if.else.if.end15.sink.split_crit_edge ]
  %8 = ptrtoint ptr %lldp_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %lldp_status, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge
  %ret.0 = phi i32 [ %call4, %if.else.if.end15_crit_edge ], [ 0, %if.end15.sink.split ]
  %call16 = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end15 ], [ -5, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_set_dcb_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mem = alloca %struct.i40e_virt_mem, align 4
  %miblen = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mem) #7
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !22
  %1 = getelementptr inbounds %struct.i40e_virt_mem, ptr %mem, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %miblen) #7
  %3 = ptrtoint ptr %miblen to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %miblen, align 2, !annotation !22
  %call = call i32 @i40e_allocate_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem, i32 noundef 1500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %local_dcbx_config = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32
  %app_mode = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 32, i32 1
  %4 = ptrtoint ptr %app_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %app_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %spec.select = select i1 %cmp, i8 2, i8 0
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %call6 = call i32 @i40e_dcb_config_to_lldp(ptr noundef %7, ptr noundef nonnull %miblen, ptr noundef %local_dcbx_config)
  %8 = ptrtoint ptr %miblen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %miblen, align 2
  %call7 = call i32 @i40e_aq_set_lldp_mib(ptr noundef %hw, i8 noundef zeroext %spec.select, ptr noundef %7, i16 noundef zeroext %9, ptr noundef null) #7
  %call8 = call i32 @i40e_free_virt_mem_d(ptr noundef %hw, ptr noundef nonnull %mem) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %miblen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem) #7
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_dcb_config_to_lldp(ptr noundef %lldpmib, ptr nocapture noundef writeonly %miblen, ptr noundef readonly %dcbcfg) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %numapps.i.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 2
  %pfc.i.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 6
  %mbc.i.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 6, i32 1
  %pfccap.i.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 6, i32 2
  %pfcenable.i.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 6, i32 3
  %arrayidx.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 0
  %arrayidx11.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 1
  %arrayidx.1.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 2
  %arrayidx11.1.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 3
  %arrayidx.2.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 4
  %arrayidx11.2.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 5
  %arrayidx.3.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 6
  %arrayidx11.3.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 3, i32 7
  %arrayidx27.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 0
  %arrayidx27.1.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 1
  %arrayidx27.2.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 2
  %arrayidx27.3.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 3
  %arrayidx27.4.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 4
  %arrayidx27.5.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 5
  %arrayidx27.6.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 6
  %arrayidx27.7.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 4, i32 7
  %arrayidx40.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 0
  %arrayidx40.1.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 1
  %arrayidx40.2.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 2
  %arrayidx40.3.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 3
  %arrayidx40.4.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 4
  %arrayidx40.5.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 5
  %arrayidx40.6.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 6
  %arrayidx40.7.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 5, i32 5, i32 7
  %etscfg3.i.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4
  %maxtcs.i.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 2
  %arrayidx9.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 0
  %arrayidx16.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 1
  %arrayidx9.1.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 2
  %arrayidx16.1.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 3
  %arrayidx9.2.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 4
  %arrayidx16.2.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 5
  %arrayidx9.3.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 6
  %arrayidx16.3.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 3, i32 7
  %arrayidx34.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 0
  %arrayidx34.1.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 1
  %arrayidx34.2.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 2
  %arrayidx34.3.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 3
  %arrayidx34.4.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 4
  %arrayidx34.5.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 5
  %arrayidx34.6.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 6
  %arrayidx34.7.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 4, i32 7
  %arrayidx47.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 0
  %arrayidx47.1.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 1
  %arrayidx47.2.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 2
  %arrayidx47.3.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 3
  %arrayidx47.4.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 4
  %arrayidx47.5.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 5
  %arrayidx47.6.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 6
  %arrayidx47.7.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 4, i32 5, i32 7
  br label %do.body

do.body:                                          ; preds = %if.end13, %entry
  %offset.0 = phi i16 [ 0, %entry ], [ %offset.1, %if.end13 ]
  %tlvid.0 = phi i16 [ 3, %entry ], [ %inc, %if.end13 ]
  %tlv.0 = phi ptr [ %lldpmib, %entry ], [ %tlv.1, %if.end13 ]
  %inc = add nuw nsw i16 %tlvid.0, 1
  %trunc = trunc i16 %tlvid.0 to i15
  %0 = zext i15 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i15 %trunc, label %do.body.i40e_add_dcb_tlv.exit_crit_edge [
    i15 3, label %sw.bb.i
    i15 4, label %sw.bb1.i
    i15 5, label %sw.bb2.i
    i15 6, label %sw.bb3.i
  ]

do.body.i40e_add_dcb_tlv.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_add_dcb_tlv.exit

sw.bb.i:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %tlvinfo.i.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 0, i32 2
  %1 = ptrtoint ptr %tlv.0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 -487, ptr %tlv.0, align 1
  %ouisubtype2.i.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 0, i32 1
  %2 = ptrtoint ptr %ouisubtype2.i.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 8438281, ptr %ouisubtype2.i.i, align 1
  %3 = ptrtoint ptr %etscfg3.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %etscfg3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i8 0, i8 -128
  %5 = ptrtoint ptr %maxtcs.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %maxtcs.i.i, align 1
  %7 = and i8 %6, 7
  %or.i.i = or i8 %spec.select.i.i, %7
  %8 = ptrtoint ptr %tlvinfo.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or.i.i, ptr %tlvinfo.i.i, align 1
  %9 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9.i.i, align 1
  %11 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16.i.i, align 1
  %13 = and i8 %12, 15
  %14 = shl i8 %10, 4
  %or2279.i.i = or i8 %13, %14
  %arrayidx25.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 1
  %15 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or2279.i.i, ptr %arrayidx25.i.i, align 1
  %16 = ptrtoint ptr %arrayidx9.1.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx9.1.i.i, align 1
  %18 = ptrtoint ptr %arrayidx16.1.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16.1.i.i, align 1
  %20 = and i8 %19, 15
  %21 = shl i8 %17, 4
  %or2279.1.i.i = or i8 %20, %21
  %arrayidx25.1.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 2
  %22 = ptrtoint ptr %arrayidx25.1.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or2279.1.i.i, ptr %arrayidx25.1.i.i, align 1
  %23 = ptrtoint ptr %arrayidx9.2.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx9.2.i.i, align 1
  %25 = ptrtoint ptr %arrayidx16.2.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16.2.i.i, align 1
  %27 = and i8 %26, 15
  %28 = shl i8 %24, 4
  %or2279.2.i.i = or i8 %27, %28
  %arrayidx25.2.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx25.2.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or2279.2.i.i, ptr %arrayidx25.2.i.i, align 1
  %30 = ptrtoint ptr %arrayidx9.3.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx9.3.i.i, align 1
  %32 = ptrtoint ptr %arrayidx16.3.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx16.3.i.i, align 1
  %34 = and i8 %33, 15
  %35 = shl i8 %31, 4
  %or2279.3.i.i = or i8 %34, %35
  %arrayidx25.3.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 4
  %36 = ptrtoint ptr %arrayidx25.3.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %or2279.3.i.i, ptr %arrayidx25.3.i.i, align 1
  %37 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx34.i.i, align 1
  %arrayidx37.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 5
  %39 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx37.i.i, align 1
  %40 = ptrtoint ptr %arrayidx34.1.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx34.1.i.i, align 1
  %arrayidx37.1.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 6
  %42 = ptrtoint ptr %arrayidx37.1.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx37.1.i.i, align 1
  %43 = ptrtoint ptr %arrayidx34.2.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx34.2.i.i, align 1
  %arrayidx37.2.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx37.2.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx37.2.i.i, align 1
  %46 = ptrtoint ptr %arrayidx34.3.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx34.3.i.i, align 1
  %arrayidx37.3.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 2
  %48 = ptrtoint ptr %arrayidx37.3.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx37.3.i.i, align 1
  %49 = ptrtoint ptr %arrayidx34.4.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx34.4.i.i, align 1
  %arrayidx37.4.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 9
  %51 = ptrtoint ptr %arrayidx37.4.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx37.4.i.i, align 1
  %52 = ptrtoint ptr %arrayidx34.5.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx34.5.i.i, align 1
  %arrayidx37.5.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 2, i32 1
  %54 = ptrtoint ptr %arrayidx37.5.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx37.5.i.i, align 1
  %55 = ptrtoint ptr %arrayidx34.6.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx34.6.i.i, align 1
  %arrayidx37.6.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 11
  %57 = ptrtoint ptr %arrayidx37.6.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx37.6.i.i, align 1
  %58 = ptrtoint ptr %arrayidx34.7.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx34.7.i.i, align 1
  %arrayidx37.7.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 12
  %60 = ptrtoint ptr %arrayidx37.7.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx37.7.i.i, align 1
  %61 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx47.i.i, align 1
  %arrayidx50.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 13
  %63 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx50.i.i, align 1
  %64 = ptrtoint ptr %arrayidx47.1.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx47.1.i.i, align 1
  %arrayidx50.1.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 2, i32 2
  %66 = ptrtoint ptr %arrayidx50.1.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx50.1.i.i, align 1
  %67 = ptrtoint ptr %arrayidx47.2.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx47.2.i.i, align 1
  %arrayidx50.2.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 3
  %69 = ptrtoint ptr %arrayidx50.2.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx50.2.i.i, align 1
  %70 = ptrtoint ptr %arrayidx47.3.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx47.3.i.i, align 1
  %arrayidx50.3.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 16
  %72 = ptrtoint ptr %arrayidx50.3.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx50.3.i.i, align 1
  %73 = ptrtoint ptr %arrayidx47.4.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx47.4.i.i, align 1
  %arrayidx50.4.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 3, i32 1
  %75 = ptrtoint ptr %arrayidx50.4.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx50.4.i.i, align 1
  %76 = ptrtoint ptr %arrayidx47.5.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx47.5.i.i, align 1
  %arrayidx50.5.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 18
  %78 = ptrtoint ptr %arrayidx50.5.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx50.5.i.i, align 1
  %79 = ptrtoint ptr %arrayidx47.6.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx47.6.i.i, align 1
  %arrayidx50.6.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 19
  %81 = ptrtoint ptr %arrayidx50.6.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx50.6.i.i, align 1
  %82 = ptrtoint ptr %arrayidx47.7.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx47.7.i.i, align 1
  %arrayidx50.7.i.i = getelementptr i8, ptr %tlvinfo.i.i, i32 20
  %84 = ptrtoint ptr %arrayidx50.7.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx50.7.i.i, align 1
  br label %i40e_add_dcb_tlv.exit

sw.bb1.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %tlvinfo.i10.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 0, i32 2
  %85 = ptrtoint ptr %tlv.0 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 -487, ptr %tlv.0, align 1
  %ouisubtype2.i11.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 0, i32 1
  %86 = ptrtoint ptr %ouisubtype2.i11.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 8438282, ptr %ouisubtype2.i11.i, align 1
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i.i, align 1
  %89 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx11.i.i, align 1
  %91 = and i8 %90, 15
  %92 = shl i8 %88, 4
  %or67.i.i = or i8 %91, %92
  %arrayidx18.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 1
  %93 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %or67.i.i, ptr %arrayidx18.i.i, align 1
  %94 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.1.i.i, align 1
  %96 = ptrtoint ptr %arrayidx11.1.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx11.1.i.i, align 1
  %98 = and i8 %97, 15
  %99 = shl i8 %95, 4
  %or67.1.i.i = or i8 %98, %99
  %arrayidx18.1.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 2
  %100 = ptrtoint ptr %arrayidx18.1.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %or67.1.i.i, ptr %arrayidx18.1.i.i, align 1
  %101 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.2.i.i, align 1
  %103 = ptrtoint ptr %arrayidx11.2.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx11.2.i.i, align 1
  %105 = and i8 %104, 15
  %106 = shl i8 %102, 4
  %or67.2.i.i = or i8 %105, %106
  %arrayidx18.2.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 1, i32 1
  %107 = ptrtoint ptr %arrayidx18.2.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %or67.2.i.i, ptr %arrayidx18.2.i.i, align 1
  %108 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.3.i.i, align 1
  %110 = ptrtoint ptr %arrayidx11.3.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx11.3.i.i, align 1
  %112 = and i8 %111, 15
  %113 = shl i8 %109, 4
  %or67.3.i.i = or i8 %112, %113
  %arrayidx18.3.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 4
  %114 = ptrtoint ptr %arrayidx18.3.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %or67.3.i.i, ptr %arrayidx18.3.i.i, align 1
  %115 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx27.i.i, align 1
  %arrayidx30.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 5
  %117 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %arrayidx30.i.i, align 1
  %118 = ptrtoint ptr %arrayidx27.1.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx27.1.i.i, align 1
  %arrayidx30.1.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 6
  %120 = ptrtoint ptr %arrayidx30.1.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx30.1.i.i, align 1
  %121 = ptrtoint ptr %arrayidx27.2.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx27.2.i.i, align 1
  %arrayidx30.2.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 1, i32 2
  %123 = ptrtoint ptr %arrayidx30.2.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %arrayidx30.2.i.i, align 1
  %124 = ptrtoint ptr %arrayidx27.3.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx27.3.i.i, align 1
  %arrayidx30.3.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 2
  %126 = ptrtoint ptr %arrayidx30.3.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx30.3.i.i, align 1
  %127 = ptrtoint ptr %arrayidx27.4.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx27.4.i.i, align 1
  %arrayidx30.4.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 9
  %129 = ptrtoint ptr %arrayidx30.4.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx30.4.i.i, align 1
  %130 = ptrtoint ptr %arrayidx27.5.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx27.5.i.i, align 1
  %arrayidx30.5.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 2, i32 1
  %132 = ptrtoint ptr %arrayidx30.5.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx30.5.i.i, align 1
  %133 = ptrtoint ptr %arrayidx27.6.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx27.6.i.i, align 1
  %arrayidx30.6.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 11
  %135 = ptrtoint ptr %arrayidx30.6.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx30.6.i.i, align 1
  %136 = ptrtoint ptr %arrayidx27.7.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx27.7.i.i, align 1
  %arrayidx30.7.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 12
  %138 = ptrtoint ptr %arrayidx30.7.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx30.7.i.i, align 1
  %139 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx40.i.i, align 1
  %arrayidx43.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 13
  %141 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %arrayidx43.i.i, align 1
  %142 = ptrtoint ptr %arrayidx40.1.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx40.1.i.i, align 1
  %arrayidx43.1.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 2, i32 2
  %144 = ptrtoint ptr %arrayidx43.1.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %arrayidx43.1.i.i, align 1
  %145 = ptrtoint ptr %arrayidx40.2.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx40.2.i.i, align 1
  %arrayidx43.2.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 3
  %147 = ptrtoint ptr %arrayidx43.2.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %arrayidx43.2.i.i, align 1
  %148 = ptrtoint ptr %arrayidx40.3.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx40.3.i.i, align 1
  %arrayidx43.3.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 16
  %150 = ptrtoint ptr %arrayidx43.3.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx43.3.i.i, align 1
  %151 = ptrtoint ptr %arrayidx40.4.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx40.4.i.i, align 1
  %arrayidx43.4.i.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 3, i32 1
  %153 = ptrtoint ptr %arrayidx43.4.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %arrayidx43.4.i.i, align 1
  %154 = ptrtoint ptr %arrayidx40.5.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx40.5.i.i, align 1
  %arrayidx43.5.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 18
  %156 = ptrtoint ptr %arrayidx43.5.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %arrayidx43.5.i.i, align 1
  %157 = ptrtoint ptr %arrayidx40.6.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx40.6.i.i, align 1
  %arrayidx43.6.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 19
  %159 = ptrtoint ptr %arrayidx43.6.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %arrayidx43.6.i.i, align 1
  %160 = ptrtoint ptr %arrayidx40.7.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx40.7.i.i, align 1
  %arrayidx43.7.i.i = getelementptr i8, ptr %tlvinfo.i10.i, i32 20
  %162 = ptrtoint ptr %arrayidx43.7.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %arrayidx43.7.i.i, align 1
  br label %i40e_add_dcb_tlv.exit

sw.bb2.i:                                         ; preds = %do.body
  %tlvinfo.i12.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 0, i32 2
  %163 = ptrtoint ptr %tlv.0 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 -506, ptr %tlv.0, align 1
  %ouisubtype2.i13.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 0, i32 1
  %164 = ptrtoint ptr %ouisubtype2.i13.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 4)
  store i32 8438283, ptr %ouisubtype2.i13.i, align 1
  %165 = ptrtoint ptr %pfc.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %pfc.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i14.i = icmp eq i8 %166, 0
  br i1 %tobool.not.i14.i, label %sw.bb2.i.if.end.i.i_crit_edge, label %if.then.i.i

sw.bb2.i.if.end.i.i_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %tlvinfo.i12.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 -128, ptr %tlvinfo.i12.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb2.i.if.end.i.i_crit_edge
  %168 = ptrtoint ptr %mbc.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %mbc.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool4.not.i.i = icmp eq i8 %169, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.i40e_add_ieee_pfc_tlv.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i.i40e_add_ieee_pfc_tlv.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_add_ieee_pfc_tlv.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %tlvinfo.i12.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %tlvinfo.i12.i, align 1
  %172 = or i8 %171, 64
  store i8 %172, ptr %tlvinfo.i12.i, align 1
  br label %i40e_add_ieee_pfc_tlv.exit.i

i40e_add_ieee_pfc_tlv.exit.i:                     ; preds = %if.then5.i.i, %if.end.i.i.i40e_add_ieee_pfc_tlv.exit.i_crit_edge
  %173 = ptrtoint ptr %pfccap.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %pfccap.i.i, align 2
  %175 = and i8 %174, 15
  %176 = ptrtoint ptr %tlvinfo.i12.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %tlvinfo.i12.i, align 1
  %or1325.i.i = or i8 %177, %175
  store i8 %or1325.i.i, ptr %tlvinfo.i12.i, align 1
  %178 = ptrtoint ptr %pfcenable.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %pfcenable.i.i, align 1
  %arrayidx16.i15.i = getelementptr %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 1
  %180 = ptrtoint ptr %arrayidx16.i15.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx16.i15.i, align 1
  br label %i40e_add_dcb_tlv.exit

sw.bb3.i:                                         ; preds = %do.body
  %tlvinfo.i16.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 0, i32 2
  %181 = ptrtoint ptr %numapps.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %numapps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp.i.i = icmp eq i32 %182, 0
  br i1 %cmp.i.i, label %sw.bb3.i.i40e_add_dcb_tlv.exit_crit_edge, label %if.end.i17.i

sw.bb3.i.i40e_add_dcb_tlv.exit_crit_edge:         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i40e_add_dcb_tlv.exit

if.end.i17.i:                                     ; preds = %sw.bb3.i
  %ouisubtype1.i.i = getelementptr inbounds %struct.i40e_lldp_org_tlv, ptr %tlv.0, i32 0, i32 1
  %183 = ptrtoint ptr %ouisubtype1.i.i to i32
  call void @__asan_storeN_noabort(i32 %183, i32 4)
  store i32 8438284, ptr %ouisubtype1.i.i, align 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end.i17.i
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ 0, %if.end.i17.i ]
  %offset.0.i.i = phi i32 [ %add39.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ 1, %if.end.i17.i ]
  %184 = ptrtoint ptr %numapps.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %numapps.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %indvars.iv.i)
  %cmp3.i.i = icmp ugt i32 %185, %indvars.iv.i
  br i1 %cmp3.i.i, label %while.body.i.i, label %while.end.i.split.loop.exit21.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %arrayidx.i18.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 7, i32 %indvars.iv.i
  %186 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx.i18.i, align 2
  %selector11.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 7, i32 %indvars.iv.i, i32 1
  %188 = ptrtoint ptr %selector11.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %selector11.i.i, align 1
  %190 = and i8 %189, 7
  %191 = shl i8 %187, 5
  %or82.i.i = or i8 %190, %191
  %idxprom18.i.i = and i32 %offset.0.i.i, 65535
  %arrayidx19.i.i = getelementptr i8, ptr %tlvinfo.i16.i, i32 %idxprom18.i.i
  %192 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %or82.i.i, ptr %arrayidx19.i.i, align 1
  %protocolid.i.i = getelementptr %struct.i40e_dcbx_config, ptr %dcbcfg, i32 0, i32 7, i32 %indvars.iv.i, i32 2
  %193 = ptrtoint ptr %protocolid.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %protocolid.i.i, align 2
  %195 = lshr i16 %194, 8
  %conv25.i.i = trunc i16 %195 to i8
  %add.i.i = add nuw nsw i32 %idxprom18.i.i, 1
  %arrayidx27.i19.i = getelementptr i8, ptr %tlvinfo.i16.i, i32 %add.i.i
  %196 = ptrtoint ptr %arrayidx27.i19.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv25.i.i, ptr %arrayidx27.i19.i, align 1
  %197 = load i16, ptr %protocolid.i.i, align 2
  %conv34.i.i = trunc i16 %197 to i8
  %add36.i.i = add nuw nsw i32 %idxprom18.i.i, 2
  %arrayidx37.i20.i = getelementptr i8, ptr %tlvinfo.i16.i, i32 %add36.i.i
  %198 = ptrtoint ptr %arrayidx37.i20.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv34.i.i, ptr %arrayidx37.i20.i, align 1
  %add39.i.i = add nuw nsw i32 %idxprom18.i.i, 3
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.end.i.split.loop.exit21.i:                  ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %199 = trunc i32 %indvars.iv.i to i8
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.i.split.loop.exit21.i, %while.body.i.i.while.end.i.i_crit_edge
  %i.1.i.i = phi i8 [ %199, %while.end.i.split.loop.exit21.i ], [ 32, %while.body.i.i.while.end.i.i_crit_edge ]
  %conv47.i.i = zext i8 %i.1.i.i to i16
  %mul.i.i = mul nuw nsw i16 %conv47.i.i, 3
  %add48.i.i = add nuw nsw i16 %mul.i.i, 5
  %or52.i.i = or i16 %add48.i.i, -512
  %200 = ptrtoint ptr %tlv.0 to i32
  call void @__asan_storeN_noabort(i32 %200, i32 2)
  store i16 %or52.i.i, ptr %tlv.0, align 1
  br label %i40e_add_dcb_tlv.exit

i40e_add_dcb_tlv.exit:                            ; preds = %while.end.i.i, %sw.bb3.i.i40e_add_dcb_tlv.exit_crit_edge, %i40e_add_ieee_pfc_tlv.exit.i, %sw.bb1.i, %sw.bb.i, %do.body.i40e_add_dcb_tlv.exit_crit_edge
  %201 = ptrtoint ptr %tlv.0 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 2)
  %202 = load i16, ptr %tlv.0, align 1
  %203 = and i16 %202, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %tobool.not = icmp eq i16 %203, 0
  %narrow = add nuw nsw i16 %203, 2
  %add5 = select i1 %tobool.not, i16 0, i16 %narrow
  %offset.1 = add i16 %add5, %offset.0
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %tlvid.0)
  %cmp = icmp ugt i16 %tlvid.0, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 1499, i16 %offset.1)
  %cmp10 = icmp ugt i16 %offset.1, 1499
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %or.cond, label %do.end, label %if.end13

if.end13:                                         ; preds = %i40e_add_dcb_tlv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %tlv.0, i32 2
  %conv16 = zext i16 %203 to i32
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %conv16
  %tlv.1 = select i1 %tobool.not, ptr %tlv.0, ptr %add.ptr17
  br label %do.body

do.end:                                           ; preds = %i40e_add_dcb_tlv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %204 = ptrtoint ptr %miblen to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %offset.1, ptr %miblen, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_set_lldp_mib(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcb_hw_rx_fifo_config(ptr nocapture noundef readonly %hw, i32 noundef %ets_mode, i32 noundef %non_ets_mode, i32 noundef %max_exponent, i8 noundef zeroext %lltc_map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1188832
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %and2 = and i32 %ets_mode, 1
  %shl4 = shl i32 %non_ets_mode, 1
  %and5 = and i32 %shl4, 2
  %shl8 = shl i32 %max_exponent, 2
  %and9 = and i32 %shl8, 60
  %3 = and i32 %2, -1073676289
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i8 %lltc_map to i32
  %shl12 = shl nuw nsw i32 %conv, 8
  %and11 = or i32 %and5, %and2
  %and7.masked = or i32 %and11, %and9
  %and3.masked.masked = or i32 %and7.masked, %shl12
  %or14 = or i32 %and3.masked.masked, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr16 = getelementptr i8, ptr %7, i32 1188832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %5) #7, !srcloc !26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcb_hw_rx_cmd_monitor_config(ptr nocapture noundef readonly %hw, i8 noundef zeroext %num_tc, i8 noundef zeroext %num_ports) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %num_ports to i32
  %0 = zext i8 %num_ports to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %num_ports, label %do.body [
    i8 1, label %entry.sw.epilog_crit_edge
    i8 2, label %sw.bb1
    i8 4, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %num_tc)
  %cmp = icmp ugt i8 %num_tc, 4
  %. = select i1 %cmp, i32 524288, i32 1048576
  %.64 = select i1 %cmp, i32 12, i32 15
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %num_tc)
  %cmp6 = icmp ugt i8 %num_tc, 4
  %.65 = select i1 %cmp6, i32 262144, i32 524288
  %.66 = select i1 %cmp6, i32 6, i32 9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %1 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug_mask, align 8
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bus_id, align 2
  %conv13 = zext i16 %4 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  %conv15 = zext i16 %6 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %func, align 4
  %conv17 = zext i16 %8 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %entry.sw.epilog_crit_edge
  %fifo_size.0 = phi i32 [ 1048576, %entry.sw.epilog_crit_edge ], [ %., %sw.bb1 ], [ %.65, %sw.bb4 ]
  %threshold.0 = phi i32 [ 15, %entry.sw.epilog_crit_edge ], [ %.64, %sw.bb1 ], [ %.66, %sw.bb4 ]
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 2542848
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %12 = and i32 %11, 16777215
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or = or i32 %13, %threshold.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 8
  %add.ptr31 = getelementptr i8, ptr %16, i32 2542848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %14) #7, !srcloc !26
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr35 = getelementptr i8, ptr %18, i32 1188768
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %20 = and i32 %19, -65281
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %or42 = or i32 %21, %fifo_size.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or42)
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 8
  %add.ptr47 = getelementptr i8, ptr %24, i32 1188768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %22) #7, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcb_hw_pfc_config(ptr noundef readonly %hw, i8 noundef zeroext %pfc_en, ptr nocapture noundef readonly %prio_tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %link_speed1 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %link_speed1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_speed1, align 4
  %conv3 = zext i8 %pfc_en to i32
  %and = and i32 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %prio_tc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prio_tc, align 1
  %conv7 = zext i8 %3 to i32
  %shl8 = shl nuw i32 1, %conv7
  %4 = trunc i32 %shl8 to i8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %tc2pfc.1 = phi i8 [ %4, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %num_pfc_tc.1 = phi i8 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %and.1 = and i32 %conv3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr i8, ptr %prio_tc, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %conv7.1 = zext i8 %6 to i32
  %shl8.1 = shl nuw i32 1, %conv7.1
  %7 = trunc i32 %shl8.1 to i8
  %conv10.1 = or i8 %tc2pfc.1, %7
  %inc.1 = add nuw nsw i8 %num_pfc_tc.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %spec.select.2 = phi i8 [ 1, %if.then.1 ], [ 2, %for.inc.for.inc.1_crit_edge ]
  %tc2pfc.1.1 = phi i8 [ %conv10.1, %if.then.1 ], [ %tc2pfc.1, %for.inc.for.inc.1_crit_edge ]
  %num_pfc_tc.1.1 = phi i8 [ %inc.1, %if.then.1 ], [ %num_pfc_tc.1, %for.inc.for.inc.1_crit_edge ]
  %first_pfc_prio.2.1 = phi i8 [ 1, %if.then.1 ], [ 0, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2 = getelementptr i8, ptr %prio_tc, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %conv7.2 = zext i8 %9 to i32
  %shl8.2 = shl nuw i32 1, %conv7.2
  %10 = trunc i32 %shl8.2 to i8
  %conv10.2 = or i8 %tc2pfc.1.1, %10
  %inc.2 = add nuw nsw i8 %num_pfc_tc.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %tc2pfc.1.2 = phi i8 [ %conv10.2, %if.then.2 ], [ %tc2pfc.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %num_pfc_tc.1.2 = phi i8 [ %inc.2, %if.then.2 ], [ %num_pfc_tc.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %first_pfc_prio.2.2 = phi i8 [ %spec.select.2, %if.then.2 ], [ %first_pfc_prio.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %conv3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %first_pfc_prio.2.2)
  %tobool5.not.3 = icmp eq i8 %first_pfc_prio.2.2, 0
  %spec.select.3 = select i1 %tobool5.not.3, i8 3, i8 %first_pfc_prio.2.2
  %arrayidx.3 = getelementptr i8, ptr %prio_tc, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  %conv7.3 = zext i8 %12 to i32
  %shl8.3 = shl nuw i32 1, %conv7.3
  %13 = trunc i32 %shl8.3 to i8
  %conv10.3 = or i8 %tc2pfc.1.2, %13
  %inc.3 = add nuw nsw i8 %num_pfc_tc.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %tc2pfc.1.3 = phi i8 [ %conv10.3, %if.then.3 ], [ %tc2pfc.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %num_pfc_tc.1.3 = phi i8 [ %inc.3, %if.then.3 ], [ %num_pfc_tc.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %first_pfc_prio.2.3 = phi i8 [ %spec.select.3, %if.then.3 ], [ %first_pfc_prio.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %and.4 = and i32 %conv3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %first_pfc_prio.2.3)
  %tobool5.not.4 = icmp eq i8 %first_pfc_prio.2.3, 0
  %spec.select.4 = select i1 %tobool5.not.4, i8 4, i8 %first_pfc_prio.2.3
  %arrayidx.4 = getelementptr i8, ptr %prio_tc, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4, align 1
  %conv7.4 = zext i8 %15 to i32
  %shl8.4 = shl nuw i32 1, %conv7.4
  %16 = trunc i32 %shl8.4 to i8
  %conv10.4 = or i8 %tc2pfc.1.3, %16
  %inc.4 = add nuw nsw i8 %num_pfc_tc.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %tc2pfc.1.4 = phi i8 [ %conv10.4, %if.then.4 ], [ %tc2pfc.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %num_pfc_tc.1.4 = phi i8 [ %inc.4, %if.then.4 ], [ %num_pfc_tc.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %first_pfc_prio.2.4 = phi i8 [ %spec.select.4, %if.then.4 ], [ %first_pfc_prio.2.3, %for.inc.3.for.inc.4_crit_edge ]
  %and.5 = and i32 %conv3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %first_pfc_prio.2.4)
  %tobool5.not.5 = icmp eq i8 %first_pfc_prio.2.4, 0
  %spec.select.5 = select i1 %tobool5.not.5, i8 5, i8 %first_pfc_prio.2.4
  %arrayidx.5 = getelementptr i8, ptr %prio_tc, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.5, align 1
  %conv7.5 = zext i8 %18 to i32
  %shl8.5 = shl nuw i32 1, %conv7.5
  %19 = trunc i32 %shl8.5 to i8
  %conv10.5 = or i8 %tc2pfc.1.4, %19
  %inc.5 = add nuw nsw i8 %num_pfc_tc.1.4, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %tc2pfc.1.5 = phi i8 [ %conv10.5, %if.then.5 ], [ %tc2pfc.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %num_pfc_tc.1.5 = phi i8 [ %inc.5, %if.then.5 ], [ %num_pfc_tc.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %first_pfc_prio.2.5 = phi i8 [ %spec.select.5, %if.then.5 ], [ %first_pfc_prio.2.4, %for.inc.4.for.inc.5_crit_edge ]
  %and.6 = and i32 %conv3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %first_pfc_prio.2.5)
  %tobool5.not.6 = icmp eq i8 %first_pfc_prio.2.5, 0
  %spec.select.6 = select i1 %tobool5.not.6, i8 6, i8 %first_pfc_prio.2.5
  %arrayidx.6 = getelementptr i8, ptr %prio_tc, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.6, align 1
  %conv7.6 = zext i8 %21 to i32
  %shl8.6 = shl nuw i32 1, %conv7.6
  %22 = trunc i32 %shl8.6 to i8
  %conv10.6 = or i8 %tc2pfc.1.5, %22
  %inc.6 = add nuw nsw i8 %num_pfc_tc.1.5, 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %tc2pfc.1.6 = phi i8 [ %conv10.6, %if.then.6 ], [ %tc2pfc.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %num_pfc_tc.1.6 = phi i8 [ %inc.6, %if.then.6 ], [ %num_pfc_tc.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %first_pfc_prio.2.6 = phi i8 [ %spec.select.6, %if.then.6 ], [ %first_pfc_prio.2.5, %for.inc.5.for.inc.6_crit_edge ]
  %and.7 = and i32 %conv3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %first_pfc_prio.2.6)
  %tobool5.not.7 = icmp eq i8 %first_pfc_prio.2.6, 0
  %spec.select.7 = select i1 %tobool5.not.7, i8 7, i8 %first_pfc_prio.2.6
  %arrayidx.7 = getelementptr i8, ptr %prio_tc, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.7, align 1
  %conv7.7 = zext i8 %24 to i32
  %shl8.7 = shl nuw i32 1, %conv7.7
  %25 = trunc i32 %shl8.7 to i8
  %conv10.7 = or i8 %tc2pfc.1.6, %25
  %inc.7 = add nuw nsw i8 %num_pfc_tc.1.6, 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %tc2pfc.1.7 = phi i8 [ %conv10.7, %if.then.7 ], [ %tc2pfc.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %num_pfc_tc.1.7 = phi i8 [ %inc.7, %if.then.7 ], [ %num_pfc_tc.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %first_pfc_prio.2.7 = phi i8 [ %spec.select.7, %if.then.7 ], [ %first_pfc_prio.2.6, %for.inc.6.for.inc.7_crit_edge ]
  %26 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %1, label %for.inc.7.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 16, label %sw.bb44
  ]

for.inc.7.sw.epilog_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %28, i32 1975296
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %30 = and i32 %29, 99680255
  %31 = or i32 %30, 33554432
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pfc_en)
  %tobool17.not = icmp eq i8 %pfc_en, 0
  %shl21 = shl nuw nsw i32 %conv3, 4
  %or19 = or i32 %32, %shl21
  %or23 = or i32 %or19, 4
  %reg.0 = select i1 %tobool17.not, i32 %32, i32 %or23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %add.ptr26 = getelementptr i8, ptr %35, i32 1975296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %33) #7, !srcloc !26
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 8
  %add.ptr30 = getelementptr i8, ptr %37, i32 1984064
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  %39 = and i32 %38, -402653185
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %or37 = or i32 %40, 16
  %reg.1 = select i1 %tobool17.not, i32 %40, i32 %or37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %reg.1)
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 8
  %add.ptr43 = getelementptr i8, ptr %43, i32 1984064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %41) #7, !srcloc !26
  br label %sw.epilog

sw.bb44:                                          ; preds = %for.inc.7
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 8
  %add.ptr48 = getelementptr i8, ptr %45, i32 1978976
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  %47 = and i32 %46, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 8
  %add.ptr57 = getelementptr i8, ptr %49, i32 1978976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %47) #7, !srcloc !26
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 8
  %add.ptr61 = getelementptr i8, ptr %51, i32 1979104
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %53 = or i32 %52, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 8
  %add.ptr71 = getelementptr i8, ptr %55, i32 1979104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %53) #7, !srcloc !26
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw, align 8
  %add.ptr75 = getelementptr i8, ptr %57, i32 1978560
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %59 = and i32 %58, 16711679
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %or83 = or i32 %60, %conv3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %or83)
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 8
  %add.ptr88 = getelementptr i8, ptr %63, i32 1978560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %61) #7, !srcloc !26
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 8
  %add.ptr92 = getelementptr i8, ptr %65, i32 1978576
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %67 = and i32 %66, 16711679
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %or100 = or i32 %68, %conv3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %69 = tail call i32 @llvm.bswap.i32(i32 %or100)
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 8
  %add.ptr105 = getelementptr i8, ptr %71, i32 1978576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %69) #7, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pfc_en)
  %tobool120.not = icmp eq i8 %pfc_en, 0
  br label %for.body110

for.body110:                                      ; preds = %for.body110.for.body110_crit_edge, %sw.bb44
  %indvars.iv = phi i32 [ 0, %sw.bb44 ], [ %indvars.iv.next, %for.body110.for.body110_crit_edge ]
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 8
  %mul = shl nuw nsw i32 %indvars.iv, 4
  %add = add nuw nsw i32 %mul, 1979392
  %add.ptr115 = getelementptr i8, ptr %73, i32 %add
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %75 = and i32 %74, 65535
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %or125 = or i32 %76, 32767
  %spec.select284 = select i1 %tobool120.not, i32 %76, i32 %or125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %77 = tail call i32 @llvm.bswap.i32(i32 %spec.select284)
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 8
  %add.ptr134 = getelementptr i8, ptr %79, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %77) #7, !srcloc !26
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.body110.sw.epilog_crit_edge, label %for.body110.for.body110_crit_edge

for.body110.for.body110_crit_edge:                ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body110

for.body110.sw.epilog_crit_edge:                  ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body110.sw.epilog_crit_edge, %sw.bb, %for.inc.7.sw.epilog_crit_edge
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 8
  %add.ptr141 = getelementptr i8, ptr %81, i32 1837440
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %83 = and i32 %82, 16777215
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %conv146 = zext i8 %tc2pfc.1.7 to i32
  %or149 = or i32 %84, %conv146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %85 = tail call i32 @llvm.bswap.i32(i32 %or149)
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 8
  %add.ptr154 = getelementptr i8, ptr %87, i32 1837440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %85) #7, !srcloc !26
  %88 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw, align 8
  %add.ptr158 = getelementptr i8, ptr %89, i32 1837824
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %91 = and i32 %90, -117440513
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %93 = and i8 %first_pfc_prio.2.7, 7
  %and165 = zext i8 %93 to i32
  %or166 = or i32 %92, %and165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %94 = tail call i32 @llvm.bswap.i32(i32 %or166)
  %95 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw, align 8
  %add.ptr171 = getelementptr i8, ptr %96, i32 1837824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 %94) #7, !srcloc !26
  %97 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw, align 8
  %add.ptr175 = getelementptr i8, ptr %98, i32 655744
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %100 = and i32 %99, -65
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %num_pfc_tc.1.7)
  %cmp181 = icmp ugt i8 %num_pfc_tc.1.7, 2
  %or184 = or i32 %101, 1073741824
  %spec.select285 = select i1 %cmp181, i32 %or184, i32 %101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %102 = tail call i32 @llvm.bswap.i32(i32 %spec.select285)
  %103 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw, align 8
  %add.ptr190 = getelementptr i8, ptr %104, i32 655744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr190, i32 %102) #7, !srcloc !26
  %105 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw, align 8
  %add.ptr194 = getelementptr i8, ptr %106, i32 663968
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %108 = and i32 %107, -65
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  %or203 = or i32 %109, 1073741824
  %reg.4 = select i1 %cmp181, i32 %or203, i32 %109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %110 = tail call i32 @llvm.bswap.i32(i32 %reg.4)
  %111 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw, align 8
  %add.ptr209 = getelementptr i8, ptr %112, i32 663968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209, i32 %110) #7, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcb_hw_set_num_tc(ptr nocapture noundef readonly %hw, i8 noundef zeroext %num_tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 536576
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %3 = and i32 %2, -1006632961
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i8 %num_tc to i32
  %shl = shl nuw nsw i32 %conv, 2
  %and2 = and i32 %shl, 60
  %or = or i32 %4, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 536576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #7, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @i40e_dcb_hw_get_num_tc(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 536576
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !20
  %3 = lshr i32 %2, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 15
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcb_hw_rx_ets_bw_config(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %bw_share, ptr nocapture noundef readonly %mode, ptr nocapture noundef readonly %prio_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %mul = shl nuw nsw i32 %indvars.iv, 5
  %add = add nuw nsw i32 %mul, 1188224
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %3 = and i32 %2, -2130706497
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx = getelementptr i8, ptr %bw_share, i32 %indvars.iv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 127
  %and5 = zext i8 %7 to i32
  %or = or i32 %4, %and5
  %arrayidx7 = getelementptr i8, ptr %mode, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %shl9 = shl i32 %conv8, 30
  %and10 = and i32 %shl9, 1073741824
  %or11 = or i32 %or, %and10
  %arrayidx13 = getelementptr i8, ptr %prio_type, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %shl15 = shl i32 %conv14, 31
  %or17 = or i32 %or11, %shl15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %add.ptr22 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %12) #7, !srcloc !26
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcb_hw_rx_up2tc_config(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %prio_tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1837472
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !20
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %4 = ptrtoint ptr %prio_tc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %prio_tc, align 1
  %6 = and i8 %5, 7
  %and = zext i8 %6 to i32
  %or = or i32 %3, %and
  %arrayidx2 = getelementptr i8, ptr %prio_tc, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %8 to i32
  %shl4 = shl nuw nsw i32 %conv3, 3
  %and5 = and i32 %shl4, 56
  %or6 = or i32 %or, %and5
  %arrayidx7 = getelementptr i8, ptr %prio_tc, i32 2
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %shl9 = shl nuw nsw i32 %conv8, 6
  %and10 = and i32 %shl9, 448
  %or11 = or i32 %or6, %and10
  %arrayidx12 = getelementptr i8, ptr %prio_tc, i32 3
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %shl14 = shl nuw nsw i32 %conv13, 9
  %and15 = and i32 %shl14, 3584
  %or16 = or i32 %or11, %and15
  %arrayidx17 = getelementptr i8, ptr %prio_tc, i32 4
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %14 to i32
  %shl19 = shl nuw nsw i32 %conv18, 12
  %and20 = and i32 %shl19, 28672
  %or21 = or i32 %or16, %and20
  %arrayidx22 = getelementptr i8, ptr %prio_tc, i32 5
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %shl24 = shl nuw nsw i32 %conv23, 15
  %and25 = and i32 %shl24, 229376
  %or26 = or i32 %or21, %and25
  %arrayidx27 = getelementptr i8, ptr %prio_tc, i32 6
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %18 to i32
  %shl29 = shl nuw nsw i32 %conv28, 18
  %and30 = and i32 %shl29, 1835008
  %or31 = or i32 %or26, %and30
  %arrayidx32 = getelementptr i8, ptr %prio_tc, i32 7
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %20 to i32
  %shl34 = shl nuw nsw i32 %conv33, 21
  %and35 = and i32 %shl34, 14680064
  %or36 = or i32 %or31, %and35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %add.ptr38 = getelementptr i8, ptr %23, i32 1837472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %21) #7, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcb_hw_calculate_pool_sizes(ptr nocapture noundef readonly %hw, i8 noundef zeroext %num_ports, i1 noundef zeroext %eee_enabled, i8 noundef zeroext %pfc_en, ptr nocapture noundef readonly %mfs_tc, ptr nocapture noundef writeonly %pb_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mfs_tc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mfs_tc, align 4
  %arrayidx.1 = getelementptr i32, ptr %mfs_tc, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %1)
  %arrayidx.2 = getelementptr i32, ptr %mfs_tc, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.2, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 %4)
  %arrayidx.3 = getelementptr i32, ptr %mfs_tc, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 %7)
  %arrayidx.4 = getelementptr i32, ptr %mfs_tc, i32 4
  %11 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.4, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %10)
  %arrayidx.5 = getelementptr i32, ptr %mfs_tc, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.5, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 %13)
  %arrayidx.6 = getelementptr i32, ptr %mfs_tc, i32 6
  %17 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.6, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 %16)
  %arrayidx.7 = getelementptr i32, ptr %mfs_tc, i32 7
  %20 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.7, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %19)
  %conv6 = zext i8 %num_ports to i32
  %div = udiv i32 968000, %conv6
  %sub = add nsw i32 %div, -17813
  %conv15 = zext i8 %pfc_en to i32
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 4608)
  %mul6.i = shl i32 %22, 3
  %add5.i = add i32 %mul6.i, 93704
  %and = and i32 %conv15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %24 = ptrtoint ptr %mfs_tc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mfs_tc, align 4
  %mul47 = shl i32 %25, 1
  %add48 = add i32 %mul47, 2500
  %add31 = add i32 %add48, %23
  %add.i = add i32 %25, %22
  %mul1.i = shl i32 %add.i, 4
  %add7.i = add i32 %add5.i, %mul1.i
  %div39163 = lshr exact i32 %add7.i, 3
  %add42 = add i32 %div39163, %add31
  %pool_size.sroa.0.0 = select i1 %tobool17.not, i32 %add48, i32 %add42
  %and.1 = and i32 %conv15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool17.not.1 = icmp eq i32 %and.1, 0
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1, align 4
  %mul47.1 = shl i32 %27, 1
  %add48.1 = add i32 %mul47.1, 2500
  %add31.1 = add i32 %add48.1, %23
  %add.i.1 = add i32 %27, %22
  %mul1.i.1 = shl i32 %add.i.1, 4
  %add7.i.1 = add i32 %add5.i, %mul1.i.1
  %div39163.1 = lshr exact i32 %add7.i.1, 3
  %add42.1 = add i32 %div39163.1, %add31.1
  %pool_size.sroa.7.0 = select i1 %tobool17.not.1, i32 %add48.1, i32 %add42.1
  %add58.1 = add i32 %pool_size.sroa.7.0, %pool_size.sroa.0.0
  %and.2 = and i32 %conv15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool17.not.2 = icmp eq i32 %and.2, 0
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.2, align 4
  %mul47.2 = shl i32 %29, 1
  %add48.2 = add i32 %mul47.2, 2500
  %add31.2 = add i32 %add48.2, %23
  %add.i.2 = add i32 %29, %22
  %mul1.i.2 = shl i32 %add.i.2, 4
  %add7.i.2 = add i32 %add5.i, %mul1.i.2
  %div39163.2 = lshr exact i32 %add7.i.2, 3
  %add42.2 = add i32 %div39163.2, %add31.2
  %pool_size.sroa.12.0 = select i1 %tobool17.not.2, i32 %add48.2, i32 %add42.2
  %add58.2 = add i32 %pool_size.sroa.12.0, %add58.1
  %and.3 = and i32 %conv15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool17.not.3 = icmp eq i32 %and.3, 0
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.3, align 4
  %mul47.3 = shl i32 %31, 1
  %add48.3 = add i32 %mul47.3, 2500
  %add31.3 = add i32 %add48.3, %23
  %add.i.3 = add i32 %31, %22
  %mul1.i.3 = shl i32 %add.i.3, 4
  %add7.i.3 = add i32 %add5.i, %mul1.i.3
  %div39163.3 = lshr exact i32 %add7.i.3, 3
  %add42.3 = add i32 %div39163.3, %add31.3
  %pool_size.sroa.17.0 = select i1 %tobool17.not.3, i32 %add48.3, i32 %add42.3
  %add58.3 = add i32 %pool_size.sroa.17.0, %add58.2
  %and.4 = and i32 %conv15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool17.not.4 = icmp eq i32 %and.4, 0
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.4, align 4
  %mul47.4 = shl i32 %33, 1
  %add48.4 = add i32 %mul47.4, 2500
  %add31.4 = add i32 %add48.4, %23
  %add.i.4 = add i32 %33, %22
  %mul1.i.4 = shl i32 %add.i.4, 4
  %add7.i.4 = add i32 %add5.i, %mul1.i.4
  %div39163.4 = lshr exact i32 %add7.i.4, 3
  %add42.4 = add i32 %div39163.4, %add31.4
  %pool_size.sroa.22.0 = select i1 %tobool17.not.4, i32 %add48.4, i32 %add42.4
  %add58.4 = add i32 %pool_size.sroa.22.0, %add58.3
  %and.5 = and i32 %conv15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool17.not.5 = icmp eq i32 %and.5, 0
  %34 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.5, align 4
  %mul47.5 = shl i32 %35, 1
  %add48.5 = add i32 %mul47.5, 2500
  %add31.5 = add i32 %add48.5, %23
  %add.i.5 = add i32 %35, %22
  %mul1.i.5 = shl i32 %add.i.5, 4
  %add7.i.5 = add i32 %add5.i, %mul1.i.5
  %div39163.5 = lshr exact i32 %add7.i.5, 3
  %add42.5 = add i32 %div39163.5, %add31.5
  %pool_size.sroa.27.0 = select i1 %tobool17.not.5, i32 %add48.5, i32 %add42.5
  %add58.5 = add i32 %pool_size.sroa.27.0, %add58.4
  %and.6 = and i32 %conv15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool17.not.6 = icmp eq i32 %and.6, 0
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.6, align 4
  %mul47.6 = shl i32 %37, 1
  %add48.6 = add i32 %mul47.6, 2500
  %add31.6 = add i32 %add48.6, %23
  %add.i.6 = add i32 %37, %22
  %mul1.i.6 = shl i32 %add.i.6, 4
  %add7.i.6 = add i32 %add5.i, %mul1.i.6
  %div39163.6 = lshr exact i32 %add7.i.6, 3
  %add42.6 = add i32 %div39163.6, %add31.6
  %pool_size.sroa.32.0 = select i1 %tobool17.not.6, i32 %add48.6, i32 %add42.6
  %add58.6 = add i32 %pool_size.sroa.32.0, %add58.5
  %and.7 = and i32 %conv15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool17.not.7 = icmp eq i32 %and.7, 0
  %38 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.7, align 4
  %mul47.7 = shl i32 %39, 1
  %add48.7 = add i32 %mul47.7, 2500
  %add31.7 = add i32 %add48.7, %23
  %add.i.7 = add i32 %39, %22
  %mul1.i.7 = shl i32 %add.i.7, 4
  %add7.i.7 = add i32 %add5.i, %mul1.i.7
  %div39163.7 = lshr exact i32 %add7.i.7, 3
  %add42.7 = add i32 %div39163.7, %add31.7
  %pool_size.sroa.37.0 = select i1 %tobool17.not.7, i32 %add48.7, i32 %add42.7
  %add58.7 = add i32 %pool_size.sroa.37.0, %add58.6
  %spec.select164 = select i1 %eee_enabled, i32 %sub, i32 %div
  %40 = add i32 %22, %add58.7
  %sub62 = sub i32 %spec.select164, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62)
  %cmp63 = icmp sgt i32 %sub62, 0
  br i1 %cmp63, label %if.then65, label %do.body

if.then65:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %low_wm.sroa.30.0 = select i1 %tobool17.not.7, i32 0, i32 %add48.7
  %high_wm.sroa.30.0 = select i1 %tobool17.not.7, i32 %add48.7, i32 %add31.7
  %low_wm.sroa.26.0 = select i1 %tobool17.not.6, i32 0, i32 %add48.6
  %high_wm.sroa.26.0 = select i1 %tobool17.not.6, i32 %add48.6, i32 %add31.6
  %low_wm.sroa.22.0 = select i1 %tobool17.not.5, i32 0, i32 %add48.5
  %high_wm.sroa.22.0 = select i1 %tobool17.not.5, i32 %add48.5, i32 %add31.5
  %low_wm.sroa.18.0 = select i1 %tobool17.not.4, i32 0, i32 %add48.4
  %high_wm.sroa.18.0 = select i1 %tobool17.not.4, i32 %add48.4, i32 %add31.4
  %low_wm.sroa.14.0 = select i1 %tobool17.not.3, i32 0, i32 %add48.3
  %high_wm.sroa.14.0 = select i1 %tobool17.not.3, i32 %add48.3, i32 %add31.3
  %low_wm.sroa.10.0 = select i1 %tobool17.not.2, i32 0, i32 %add48.2
  %high_wm.sroa.10.0 = select i1 %tobool17.not.2, i32 %add48.2, i32 %add31.2
  %low_wm.sroa.6.0 = select i1 %tobool17.not.1, i32 0, i32 %add48.1
  %high_wm.sroa.6.0 = select i1 %tobool17.not.1, i32 %add48.1, i32 %add31.1
  %low_wm.sroa.0.0 = select i1 %tobool17.not, i32 0, i32 %add48
  %high_wm.sroa.0.0 = select i1 %tobool17.not, i32 %add48, i32 %add31
  %41 = ptrtoint ptr %pb_cfg to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub62, ptr %pb_cfg, align 4
  %shared_pool_high_wm = getelementptr inbounds %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 1
  %42 = ptrtoint ptr %shared_pool_high_wm to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub62, ptr %shared_pool_high_wm, align 4
  %shared_pool_low_wm = getelementptr inbounds %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 2
  %43 = ptrtoint ptr %shared_pool_low_wm to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %shared_pool_low_wm, align 4
  %arrayidx73 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 4, i32 0
  %44 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx73, align 4
  %arrayidx75 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 3, i32 0
  %45 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub62, ptr %arrayidx75, align 4
  %arrayidx79 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 5, i32 0
  %46 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %pool_size.sroa.0.0, ptr %arrayidx79, align 4
  %arrayidx83 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 6, i32 0
  %47 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %high_wm.sroa.0.0, ptr %arrayidx83, align 4
  %arrayidx87 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 7, i32 0
  %48 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %low_wm.sroa.0.0, ptr %arrayidx87, align 4
  %arrayidx73.1 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx73.1, align 4
  %arrayidx75.1 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub62, ptr %arrayidx75.1, align 4
  %arrayidx79.1 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %arrayidx79.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %pool_size.sroa.7.0, ptr %arrayidx79.1, align 4
  %arrayidx83.1 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %high_wm.sroa.6.0, ptr %arrayidx83.1, align 4
  %arrayidx87.1 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %low_wm.sroa.6.0, ptr %arrayidx87.1, align 4
  %arrayidx73.2 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx73.2, align 4
  %arrayidx75.2 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub62, ptr %arrayidx75.2, align 4
  %arrayidx79.2 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 5, i32 2
  %56 = ptrtoint ptr %arrayidx79.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %pool_size.sroa.12.0, ptr %arrayidx79.2, align 4
  %arrayidx83.2 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 6, i32 2
  %57 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %high_wm.sroa.10.0, ptr %arrayidx83.2, align 4
  %arrayidx87.2 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 7, i32 2
  %58 = ptrtoint ptr %arrayidx87.2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %low_wm.sroa.10.0, ptr %arrayidx87.2, align 4
  %arrayidx73.3 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 4, i32 3
  %59 = ptrtoint ptr %arrayidx73.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx73.3, align 4
  %arrayidx75.3 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 3, i32 3
  %60 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub62, ptr %arrayidx75.3, align 4
  %arrayidx79.3 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 5, i32 3
  %61 = ptrtoint ptr %arrayidx79.3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %pool_size.sroa.17.0, ptr %arrayidx79.3, align 4
  %arrayidx83.3 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 6, i32 3
  %62 = ptrtoint ptr %arrayidx83.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %high_wm.sroa.14.0, ptr %arrayidx83.3, align 4
  %arrayidx87.3 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 7, i32 3
  %63 = ptrtoint ptr %arrayidx87.3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %low_wm.sroa.14.0, ptr %arrayidx87.3, align 4
  %arrayidx73.4 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 4, i32 4
  %64 = ptrtoint ptr %arrayidx73.4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %arrayidx73.4, align 4
  %arrayidx75.4 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 3, i32 4
  %65 = ptrtoint ptr %arrayidx75.4 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub62, ptr %arrayidx75.4, align 4
  %arrayidx79.4 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 5, i32 4
  %66 = ptrtoint ptr %arrayidx79.4 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %pool_size.sroa.22.0, ptr %arrayidx79.4, align 4
  %arrayidx83.4 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 6, i32 4
  %67 = ptrtoint ptr %arrayidx83.4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %high_wm.sroa.18.0, ptr %arrayidx83.4, align 4
  %arrayidx87.4 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 7, i32 4
  %68 = ptrtoint ptr %arrayidx87.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %low_wm.sroa.18.0, ptr %arrayidx87.4, align 4
  %arrayidx73.5 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 4, i32 5
  %69 = ptrtoint ptr %arrayidx73.5 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %arrayidx73.5, align 4
  %arrayidx75.5 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 3, i32 5
  %70 = ptrtoint ptr %arrayidx75.5 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub62, ptr %arrayidx75.5, align 4
  %arrayidx79.5 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 5, i32 5
  %71 = ptrtoint ptr %arrayidx79.5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %pool_size.sroa.27.0, ptr %arrayidx79.5, align 4
  %arrayidx83.5 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 6, i32 5
  %72 = ptrtoint ptr %arrayidx83.5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %high_wm.sroa.22.0, ptr %arrayidx83.5, align 4
  %arrayidx87.5 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 7, i32 5
  %73 = ptrtoint ptr %arrayidx87.5 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %low_wm.sroa.22.0, ptr %arrayidx87.5, align 4
  %arrayidx73.6 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 4, i32 6
  %74 = ptrtoint ptr %arrayidx73.6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %arrayidx73.6, align 4
  %arrayidx75.6 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 3, i32 6
  %75 = ptrtoint ptr %arrayidx75.6 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub62, ptr %arrayidx75.6, align 4
  %arrayidx79.6 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 5, i32 6
  %76 = ptrtoint ptr %arrayidx79.6 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %pool_size.sroa.32.0, ptr %arrayidx79.6, align 4
  %arrayidx83.6 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 6, i32 6
  %77 = ptrtoint ptr %arrayidx83.6 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %high_wm.sroa.26.0, ptr %arrayidx83.6, align 4
  %arrayidx87.6 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 7, i32 6
  %78 = ptrtoint ptr %arrayidx87.6 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %low_wm.sroa.26.0, ptr %arrayidx87.6, align 4
  %arrayidx73.7 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 4, i32 7
  %79 = ptrtoint ptr %arrayidx73.7 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx73.7, align 4
  %arrayidx75.7 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 3, i32 7
  %80 = ptrtoint ptr %arrayidx75.7 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub62, ptr %arrayidx75.7, align 4
  %arrayidx79.7 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 5, i32 7
  %81 = ptrtoint ptr %arrayidx79.7 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %pool_size.sroa.37.0, ptr %arrayidx79.7, align 4
  %arrayidx83.7 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 6, i32 7
  %82 = ptrtoint ptr %arrayidx83.7 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %high_wm.sroa.30.0, ptr %arrayidx83.7, align 4
  %arrayidx87.7 = getelementptr %struct.i40e_rx_pb_config, ptr %pb_cfg, i32 0, i32 7, i32 7
  %83 = ptrtoint ptr %arrayidx87.7 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %low_wm.sroa.30.0, ptr %arrayidx87.7, align 4
  br label %if.end105

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %84 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %debug_mask, align 8
  %and92 = and i32 %85, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.body.if.end105_crit_edge, label %do.end

do.body.if.end105_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %86 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %bus_id, align 2
  %conv96 = zext i16 %87 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %88 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %device, align 2
  %conv98 = zext i16 %89 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %90 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %func, align 4
  %conv100 = zext i16 %91 to i32
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv96, i32 noundef %conv98, i32 noundef %conv100, i32 noundef %sub62) #10
  br label %if.end105

if.end105:                                        ; preds = %do.end, %do.body.if.end105_crit_edge, %if.then65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcb_hw_rx_pb_config(ptr noundef readonly %hw, ptr nocapture noundef readonly %old_pb_cfg, ptr nocapture noundef readonly %new_pb_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shared_pool_low_wm = getelementptr inbounds %struct.i40e_rx_pb_config, ptr %old_pb_cfg, i32 0, i32 2
  %0 = ptrtoint ptr %shared_pool_low_wm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shared_pool_low_wm, align 4
  %shared_pool_low_wm1 = getelementptr inbounds %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 2
  %2 = ptrtoint ptr %shared_pool_low_wm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shared_pool_low_wm1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp ult i32 %3, %1
  br i1 %cmp, label %if.then, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 706208
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %7 = and i32 %6, 61695
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and3 = and i32 %3, 1048575
  %or = or i32 %8, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr5 = getelementptr i8, ptr %11, i32 706208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #7, !srcloc !26
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.i40e_rx_pb_config, ptr %old_pb_cfg, i32 0, i32 4, i32 %indvars.iv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 4, i32 %indvars.iv
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp11 = icmp ult i32 %15, %13
  br i1 %cmp11, label %if.then13, label %for.body.if.end34_crit_edge

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %mul = shl nuw nsw i32 %indvars.iv, 5
  %add = add nuw nsw i32 %mul, 705952
  %add.ptr18 = getelementptr i8, ptr %17, i32 %add
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %19 = and i32 %18, 61695
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %and24 = and i32 %15, 1048575
  %or25 = or i32 %20, %and24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %add.ptr33 = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %21) #7, !srcloc !26
  br label %if.end34

if.end34:                                         ; preds = %if.then13, %for.body.if.end34_crit_edge
  %arrayidx36 = getelementptr %struct.i40e_rx_pb_config, ptr %old_pb_cfg, i32 0, i32 7, i32 %indvars.iv
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx36, align 4
  %arrayidx39 = getelementptr %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 7, i32 %indvars.iv
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp40 = icmp ult i32 %27, %25
  br i1 %cmp40, label %if.then42, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 8
  %mul47 = shl nuw nsw i32 %indvars.iv, 5
  %add48 = add nuw nsw i32 %mul47, 705056
  %add.ptr49 = getelementptr i8, ptr %29, i32 %add48
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %31 = and i32 %30, 61695
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %and55 = and i32 %27, 1048575
  %or56 = or i32 %32, %and55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or56)
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %add.ptr64 = getelementptr i8, ptr %35, i32 %add48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %33) #7, !srcloc !26
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %if.end34.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %shared_pool_high_wm = getelementptr inbounds %struct.i40e_rx_pb_config, ptr %old_pb_cfg, i32 0, i32 1
  %36 = ptrtoint ptr %shared_pool_high_wm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %shared_pool_high_wm, align 4
  %shared_pool_high_wm66 = getelementptr inbounds %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 1
  %38 = ptrtoint ptr %shared_pool_high_wm66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %shared_pool_high_wm66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp67 = icmp ult i32 %39, %37
  br i1 %cmp67, label %if.then69, label %for.end.for.body91.preheader_crit_edge

for.end.for.body91.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body91.preheader

if.then69:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 8
  %add.ptr73 = getelementptr i8, ptr %41, i32 705920
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %43 = and i32 %42, 61695
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %and79 = and i32 %39, 1048575
  %or80 = or i32 %44, %and79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %or80)
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 8
  %add.ptr85 = getelementptr i8, ptr %47, i32 705920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %45) #7, !srcloc !26
  br label %for.body91.preheader

for.body91.preheader:                             ; preds = %if.then69, %for.end.for.body91.preheader_crit_edge
  br label %for.body91

for.body91:                                       ; preds = %for.inc154.for.body91_crit_edge, %for.body91.preheader
  %indvars.iv589 = phi i32 [ %indvars.iv.next590, %for.inc154.for.body91_crit_edge ], [ 0, %for.body91.preheader ]
  %arrayidx93 = getelementptr %struct.i40e_rx_pb_config, ptr %old_pb_cfg, i32 0, i32 3, i32 %indvars.iv589
  %48 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx93, align 4
  %arrayidx96 = getelementptr %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 3, i32 %indvars.iv589
  %50 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %49)
  %cmp97 = icmp ult i32 %51, %49
  br i1 %cmp97, label %if.then99, label %for.body91.if.end122_crit_edge

for.body91.if.end122_crit_edge:                   ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then99:                                        ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 8
  %mul104 = shl nuw nsw i32 %indvars.iv589, 5
  %add105 = add nuw nsw i32 %mul104, 705664
  %add.ptr106 = getelementptr i8, ptr %53, i32 %add105
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %55 = and i32 %54, 61695
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %and112 = and i32 %51, 1048575
  %or113 = or i32 %56, %and112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or113)
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 8
  %add.ptr121 = getelementptr i8, ptr %59, i32 %add105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %57) #7, !srcloc !26
  br label %if.end122

if.end122:                                        ; preds = %if.then99, %for.body91.if.end122_crit_edge
  %arrayidx124 = getelementptr %struct.i40e_rx_pb_config, ptr %old_pb_cfg, i32 0, i32 6, i32 %indvars.iv589
  %60 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx124, align 4
  %arrayidx127 = getelementptr %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 6, i32 %indvars.iv589
  %62 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %61)
  %cmp128 = icmp ult i32 %63, %61
  br i1 %cmp128, label %if.then130, label %if.end122.for.inc154_crit_edge

if.end122.for.inc154_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc154

if.then130:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 8
  %mul135 = shl nuw nsw i32 %indvars.iv589, 5
  %add136 = add nuw nsw i32 %mul135, 704768
  %add.ptr137 = getelementptr i8, ptr %65, i32 %add136
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %67 = and i32 %66, 61695
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %and143 = and i32 %63, 1048575
  %or144 = or i32 %68, %and143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %69 = tail call i32 @llvm.bswap.i32(i32 %or144)
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 8
  %add.ptr152 = getelementptr i8, ptr %71, i32 %add136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %69) #7, !srcloc !26
  br label %for.inc154

for.inc154:                                       ; preds = %if.then130, %if.end122.for.inc154_crit_edge
  %indvars.iv.next590 = add nuw nsw i32 %indvars.iv589, 1
  %exitcond591.not = icmp eq i32 %indvars.iv.next590, 8
  br i1 %exitcond591.not, label %for.inc154.for.body161_crit_edge, label %for.inc154.for.body91_crit_edge

for.inc154.for.body91_crit_edge:                  ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body91

for.inc154.for.body161_crit_edge:                 ; preds = %for.inc154
  br label %for.body161

for.body161:                                      ; preds = %for.body161.for.body161_crit_edge, %for.inc154.for.body161_crit_edge
  %indvars.iv592 = phi i32 [ %indvars.iv.next593, %for.body161.for.body161_crit_edge ], [ 0, %for.inc154.for.body161_crit_edge ]
  %arrayidx163 = getelementptr %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 5, i32 %indvars.iv592
  %72 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx163, align 4
  %74 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw, align 8
  %mul168 = shl nuw nsw i32 %indvars.iv592, 5
  %add169 = add nuw nsw i32 %mul168, 705312
  %add.ptr170 = getelementptr i8, ptr %75, i32 %add169
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr170) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %77 = and i32 %76, 61695
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %and176 = and i32 %73, 1048575
  %or177 = or i32 %78, %and176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %79 = tail call i32 @llvm.bswap.i32(i32 %or177)
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 8
  %add.ptr185 = getelementptr i8, ptr %81, i32 %add169
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 %79) #7, !srcloc !26
  %indvars.iv.next593 = add nuw nsw i32 %indvars.iv592, 1
  %exitcond594.not = icmp eq i32 %indvars.iv.next593, 8
  br i1 %exitcond594.not, label %for.end188, label %for.body161.for.body161_crit_edge

for.body161.for.body161_crit_edge:                ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body161

for.end188:                                       ; preds = %for.body161
  %82 = ptrtoint ptr %new_pb_cfg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %new_pb_cfg, align 4
  %84 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw, align 8
  %add.ptr192 = getelementptr i8, ptr %85, i32 706496
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr192) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %87 = and i32 %86, 61695
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %and198 = and i32 %83, 1048575
  %or199 = or i32 %88, %and198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %89 = tail call i32 @llvm.bswap.i32(i32 %or199)
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 8
  %add.ptr204 = getelementptr i8, ptr %91, i32 706496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204, i32 %89) #7, !srcloc !26
  %92 = ptrtoint ptr %shared_pool_low_wm to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %shared_pool_low_wm, align 4
  %94 = ptrtoint ptr %shared_pool_low_wm1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %shared_pool_low_wm1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %93)
  %cmp207 = icmp ugt i32 %95, %93
  br i1 %cmp207, label %if.then209, label %for.end188.for.body231.preheader_crit_edge

for.end188.for.body231.preheader_crit_edge:       ; preds = %for.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body231.preheader

if.then209:                                       ; preds = %for.end188
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw, align 8
  %add.ptr213 = getelementptr i8, ptr %97, i32 706208
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %99 = and i32 %98, 61695
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %and219 = and i32 %95, 1048575
  %or220 = or i32 %100, %and219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %101 = tail call i32 @llvm.bswap.i32(i32 %or220)
  %102 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw, align 8
  %add.ptr225 = getelementptr i8, ptr %103, i32 706208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr225, i32 %101) #7, !srcloc !26
  br label %for.body231.preheader

for.body231.preheader:                            ; preds = %if.then209, %for.end188.for.body231.preheader_crit_edge
  br label %for.body231

for.body231:                                      ; preds = %for.inc296.for.body231_crit_edge, %for.body231.preheader
  %indvars.iv595 = phi i32 [ %indvars.iv.next596, %for.inc296.for.body231_crit_edge ], [ 0, %for.body231.preheader ]
  %arrayidx234 = getelementptr %struct.i40e_rx_pb_config, ptr %old_pb_cfg, i32 0, i32 4, i32 %indvars.iv595
  %104 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx234, align 4
  %arrayidx237 = getelementptr %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 4, i32 %indvars.iv595
  %106 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx237, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %105)
  %cmp238 = icmp ugt i32 %107, %105
  br i1 %cmp238, label %if.then240, label %for.body231.if.end263_crit_edge

for.body231.if.end263_crit_edge:                  ; preds = %for.body231
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end263

if.then240:                                       ; preds = %for.body231
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw, align 8
  %mul245 = shl nuw nsw i32 %indvars.iv595, 5
  %add246 = add nuw nsw i32 %mul245, 705952
  %add.ptr247 = getelementptr i8, ptr %109, i32 %add246
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr247) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %111 = and i32 %110, 61695
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %and253 = and i32 %107, 1048575
  %or254 = or i32 %112, %and253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %113 = tail call i32 @llvm.bswap.i32(i32 %or254)
  %114 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw, align 8
  %add.ptr262 = getelementptr i8, ptr %115, i32 %add246
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262, i32 %113) #7, !srcloc !26
  br label %if.end263

if.end263:                                        ; preds = %if.then240, %for.body231.if.end263_crit_edge
  %arrayidx266 = getelementptr %struct.i40e_rx_pb_config, ptr %old_pb_cfg, i32 0, i32 7, i32 %indvars.iv595
  %116 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx266, align 4
  %arrayidx269 = getelementptr %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 7, i32 %indvars.iv595
  %118 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx269, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %117)
  %cmp270 = icmp ugt i32 %119, %117
  br i1 %cmp270, label %if.then272, label %if.end263.for.inc296_crit_edge

if.end263.for.inc296_crit_edge:                   ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc296

if.then272:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw, align 8
  %mul277 = shl nuw nsw i32 %indvars.iv595, 5
  %add278 = add nuw nsw i32 %mul277, 705056
  %add.ptr279 = getelementptr i8, ptr %121, i32 %add278
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr279) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %123 = and i32 %122, 61695
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  %and285 = and i32 %119, 1048575
  %or286 = or i32 %124, %and285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %125 = tail call i32 @llvm.bswap.i32(i32 %or286)
  %126 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw, align 8
  %add.ptr294 = getelementptr i8, ptr %127, i32 %add278
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr294, i32 %125) #7, !srcloc !26
  br label %for.inc296

for.inc296:                                       ; preds = %if.then272, %if.end263.for.inc296_crit_edge
  %indvars.iv.next596 = add nuw nsw i32 %indvars.iv595, 1
  %exitcond597.not = icmp eq i32 %indvars.iv.next596, 8
  br i1 %exitcond597.not, label %for.end298, label %for.inc296.for.body231_crit_edge

for.inc296.for.body231_crit_edge:                 ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body231

for.end298:                                       ; preds = %for.inc296
  %128 = ptrtoint ptr %shared_pool_high_wm to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %shared_pool_high_wm, align 4
  %130 = ptrtoint ptr %shared_pool_high_wm66 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %shared_pool_high_wm66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %129)
  %cmp301 = icmp ugt i32 %131, %129
  br i1 %cmp301, label %if.then303, label %for.end298.for.body325.preheader_crit_edge

for.end298.for.body325.preheader_crit_edge:       ; preds = %for.end298
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body325.preheader

if.then303:                                       ; preds = %for.end298
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw, align 8
  %add.ptr307 = getelementptr i8, ptr %133, i32 705920
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr307) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %135 = and i32 %134, 61695
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %and313 = and i32 %131, 1048575
  %or314 = or i32 %136, %and313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %137 = tail call i32 @llvm.bswap.i32(i32 %or314)
  %138 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hw, align 8
  %add.ptr319 = getelementptr i8, ptr %139, i32 705920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319, i32 %137) #7, !srcloc !26
  br label %for.body325.preheader

for.body325.preheader:                            ; preds = %if.then303, %for.end298.for.body325.preheader_crit_edge
  br label %for.body325

for.body325:                                      ; preds = %for.inc390.for.body325_crit_edge, %for.body325.preheader
  %indvars.iv598 = phi i32 [ %indvars.iv.next599, %for.inc390.for.body325_crit_edge ], [ 0, %for.body325.preheader ]
  %arrayidx328 = getelementptr %struct.i40e_rx_pb_config, ptr %old_pb_cfg, i32 0, i32 3, i32 %indvars.iv598
  %140 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx328, align 4
  %arrayidx331 = getelementptr %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 3, i32 %indvars.iv598
  %142 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx331, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %141)
  %cmp332 = icmp ugt i32 %143, %141
  br i1 %cmp332, label %if.then334, label %for.body325.if.end357_crit_edge

for.body325.if.end357_crit_edge:                  ; preds = %for.body325
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end357

if.then334:                                       ; preds = %for.body325
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw, align 8
  %mul339 = shl nuw nsw i32 %indvars.iv598, 5
  %add340 = add nuw nsw i32 %mul339, 705664
  %add.ptr341 = getelementptr i8, ptr %145, i32 %add340
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr341) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %147 = and i32 %146, 61695
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %and347 = and i32 %143, 1048575
  %or348 = or i32 %148, %and347
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %149 = tail call i32 @llvm.bswap.i32(i32 %or348)
  %150 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw, align 8
  %add.ptr356 = getelementptr i8, ptr %151, i32 %add340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr356, i32 %149) #7, !srcloc !26
  br label %if.end357

if.end357:                                        ; preds = %if.then334, %for.body325.if.end357_crit_edge
  %arrayidx360 = getelementptr %struct.i40e_rx_pb_config, ptr %old_pb_cfg, i32 0, i32 6, i32 %indvars.iv598
  %152 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx360, align 4
  %arrayidx363 = getelementptr %struct.i40e_rx_pb_config, ptr %new_pb_cfg, i32 0, i32 6, i32 %indvars.iv598
  %154 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx363, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %153)
  %cmp364 = icmp ugt i32 %155, %153
  br i1 %cmp364, label %if.then366, label %if.end357.for.inc390_crit_edge

if.end357.for.inc390_crit_edge:                   ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc390

if.then366:                                       ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw, align 8
  %mul371 = shl nuw nsw i32 %indvars.iv598, 5
  %add372 = add nuw nsw i32 %mul371, 704768
  %add.ptr373 = getelementptr i8, ptr %157, i32 %add372
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr373) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %159 = and i32 %158, 61695
  %160 = tail call i32 @llvm.bswap.i32(i32 %159)
  %and379 = and i32 %155, 1048575
  %or380 = or i32 %160, %and379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %161 = tail call i32 @llvm.bswap.i32(i32 %or380)
  %162 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw, align 8
  %add.ptr388 = getelementptr i8, ptr %163, i32 %add372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr388, i32 %161) #7, !srcloc !26
  br label %for.inc390

for.inc390:                                       ; preds = %if.then366, %if.end357.for.inc390_crit_edge
  %indvars.iv.next599 = add nuw nsw i32 %indvars.iv598, 1
  %exitcond600.not = icmp eq i32 %indvars.iv.next599, 8
  br i1 %exitcond600.not, label %for.end392, label %for.inc390.for.body325_crit_edge

for.inc390.for.body325_crit_edge:                 ; preds = %for.inc390
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body325

for.end392:                                       ; preds = %for.inc390
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_acquire_nvm(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_read_nvm(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_release_nvm(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_i40e_read_lldp_cfg(ptr noundef %hw, ptr noundef %lldp_cfg, i8 noundef zeroext %module, i32 noundef %word_offset) unnamed_addr #0 align 64 {
entry:
  %raw_mem = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %word_offset, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw_mem) #7
  %0 = ptrtoint ptr %raw_mem to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %raw_mem, align 2, !annotation !22
  %call = tail call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %module to i32
  %mul1 = shl nuw nsw i32 %conv, 1
  %call2 = call i32 @i40e_aq_read_nvm(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef %mul1, i16 noundef zeroext 2, ptr noundef nonnull %raw_mem, i1 noundef zeroext true, ptr noundef null) #7
  call void @i40e_release_nvm(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %raw_mem to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %raw_mem, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2)
  %conv6 = zext i16 %3 to i32
  %and = and i32 %conv6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %and10 = shl nuw nsw i32 %conv6, 12
  %mul11 = and i32 %and10, 134213632
  %and13 = shl nuw nsw i32 %conv6, 1
  %mul14 = and i32 %and13, 65534
  %address.0 = select i1 %tobool7.not, i32 %mul14, i32 %mul11
  %call16 = call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %call20 = call i32 @i40e_aq_read_nvm(ptr noundef %hw, i8 noundef zeroext %module, i32 noundef %mul, i16 noundef zeroext 2, ptr noundef nonnull %raw_mem, i1 noundef zeroext true, ptr noundef null) #7
  call void @i40e_release_nvm(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %4 = ptrtoint ptr %raw_mem to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %raw_mem, align 2
  %call26 = call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %conv24 = zext i16 %6 to i32
  %add = add i32 %conv24, %word_offset
  %mul25 = shl i32 %add, 1
  %add30 = add i32 %mul25, %address.0
  %call31 = call i32 @i40e_aq_read_nvm(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef %add30, i16 noundef zeroext 14, ptr noundef %lldp_cfg, i1 noundef zeroext true, ptr noundef null) #7
  call void @i40e_release_nvm(ptr noundef %hw) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call16, %if.end5.cleanup_crit_edge ], [ %call26, %if.end23.cleanup_crit_edge ], [ %call31, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_mem) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb.c", i32 1381, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @i40e_dcb_hw_rx_cmd_monitor_config._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @i40e_dcb_hw_rx_cmd_monitor_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb.c", i32 1691, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @i40e_dcb_hw_calculate_pool_sizes._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @i40e_dcb_hw_calculate_pool_sizes._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 6087115}
!21 = !{i64 2157803074}
!22 = !{!"auto-init"}
!23 = !{i8 0, i8 2}
!24 = !{i64 2157809696}
!25 = !{i64 2157810674}
!26 = !{i64 6086697}
!27 = !{i64 2157813689}
!28 = !{i64 2157814169}
!29 = !{i64 2157814972}
!30 = !{i64 2157815459}
!31 = !{i64 2157816430}
!32 = !{i64 2157817286}
!33 = !{i64 2157818089}
!34 = !{i64 2157818553}
!35 = !{i64 2157819356}
!36 = !{i64 2157819753}
!37 = !{i64 2157820556}
!38 = !{i64 2157821123}
!39 = !{i64 2157821926}
!40 = !{i64 2157822430}
!41 = !{i64 2157823233}
!42 = !{i64 2157823737}
!43 = !{i64 2157824645}
!44 = !{i64 2157825219}
!45 = !{i64 2157826039}
!46 = !{i64 2157826511}
!47 = !{i64 2157827314}
!48 = !{i64 2157827780}
!49 = !{i64 2157828583}
!50 = !{i64 2157829138}
!51 = !{i64 2157829941}
!52 = !{i64 2157830496}
!53 = !{i64 2157831299}
!54 = !{i64 2157831761}
!55 = !{i64 2157832564}
!56 = !{i64 2157833348}
!57 = !{i64 2157834148}
!58 = !{i64 2157834968}
!59 = !{i64 2157837268}
!60 = !{i64 2157840751}
!61 = !{i64 2157841223}
!62 = !{i64 2157842131}
!63 = !{i64 2157842663}
!64 = !{i64 2157843586}
!65 = !{i64 2157844118}
!66 = !{i64 2157844938}
!67 = !{i64 2157845410}
!68 = !{i64 2157846318}
!69 = !{i64 2157846850}
!70 = !{i64 2157847773}
!71 = !{i64 2157848305}
!72 = !{i64 2157849230}
!73 = !{i64 2157849762}
!74 = !{i64 2157850582}
!75 = !{i64 2157851054}
!76 = !{i64 2157851857}
!77 = !{i64 2157852329}
!78 = !{i64 2157853237}
!79 = !{i64 2157853769}
!80 = !{i64 2157854692}
!81 = !{i64 2157855224}
!82 = !{i64 2157856044}
!83 = !{i64 2157856516}
!84 = !{i64 2157857424}
!85 = !{i64 2157857956}
!86 = !{i64 2157858879}
!87 = !{i64 2157859411}
