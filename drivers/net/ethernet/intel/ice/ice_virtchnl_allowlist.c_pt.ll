; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.allowlist_opcode_info = type { ptr, i32 }
%struct.ice_vf = type { ptr, %struct.mutex, i16, i16, i16, %struct.ice_vf_fdir, i32, ptr, %struct.virtchnl_version_info, i32, %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr, %struct.ice_time_mac, [1 x i32], [1 x i32], i16, i8, i16, i32, i32, [1 x i32], i32, i8, i16, i16, %struct.ice_mdd_vf_events, %struct.ice_mdd_vf_events, [2 x i32], ptr, %struct.ice_vc_vf_ops, %struct.devlink_port }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ice_vf_fdir = type { [28 x [2 x i16]], [28 x [2 x i32]], ptr, %struct.idr, %struct.list_head, %struct.spinlock, %struct.ice_vf_fdir_ctx, %struct.ice_vf_fdir_ctx }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ice_vf_fdir_ctx = type { %struct.timer_list, i32, i32, %union.ice_32b_rx_flex_desc, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.ice_32b_rx_flex_desc = type { %struct.anon.205 }
%struct.anon.205 = type { i64, i64, i64, i64 }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_ether_addr = type { [6 x i8], i8, i8 }
%struct.ice_time_mac = type { i32, [6 x i8] }
%struct.ice_mdd_vf_events = type { i16, i16 }
%struct.ice_vc_vf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@allowlist_opcodes = internal constant { [29 x %struct.allowlist_opcode_info], [56 x i8] } { [29 x %struct.allowlist_opcode_info] [%struct.allowlist_opcode_info { ptr @l2_allowlist_opcodes, i32 3 }, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info { ptr @req_queues_allowlist_opcodes, i32 1 }, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info { ptr @vlan_allowlist_opcodes, i32 4 }, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info { ptr @rss_pf_allowlist_opcodes, i32 4 }, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info zeroinitializer, %struct.allowlist_opcode_info { ptr @adv_rss_pf_allowlist_opcodes, i32 2 }, %struct.allowlist_opcode_info { ptr @fdir_pf_allowlist_opcodes, i32 2 }], [56 x i8] zeroinitializer }, align 32
@l2_allowlist_opcodes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 10, i32 11, i32 14], [20 x i8] zeroinitializer }, align 32
@req_queues_allowlist_opcodes = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 29], [28 x i8] zeroinitializer }, align 32
@vlan_allowlist_opcodes = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 13, i32 27, i32 28], [16 x i8] zeroinitializer }, align 32
@rss_pf_allowlist_opcodes = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 23, i32 24, i32 25, i32 26], [16 x i8] zeroinitializer }, align 32
@adv_rss_pf_allowlist_opcodes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 45, i32 46], [24 x i8] zeroinitializer }, align 32
@fdir_pf_allowlist_opcodes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 47, i32 48], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"allowlist_opcodes\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 85, i32 43 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"l2_allowlist_opcodes\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 42, i32 18 }
@___asan_gen_.7 = private unnamed_addr constant [29 x i8] c"req_queues_allowlist_opcodes\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 48, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"vlan_allowlist_opcodes\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 53, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"rss_pf_allowlist_opcodes\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 59, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"adv_rss_pf_allowlist_opcodes\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 65, i32 18 }
@___asan_gen_.19 = private unnamed_addr constant [26 x i8] c"fdir_pf_allowlist_opcodes\00", align 1
@___asan_gen_.20 = private constant [59 x i8] c"../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 70, i32 18 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @allowlist_opcodes, ptr @l2_allowlist_opcodes, ptr @req_queues_allowlist_opcodes, ptr @vlan_allowlist_opcodes, ptr @rss_pf_allowlist_opcodes, ptr @adv_rss_pf_allowlist_opcodes, ptr @fdir_pf_allowlist_opcodes], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allowlist_opcodes to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_allowlist_opcodes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_queues_allowlist_opcodes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_allowlist_opcodes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rss_pf_allowlist_opcodes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_rss_pf_allowlist_opcodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdir_pf_allowlist_opcodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_vc_is_opcode_allowed(ptr noundef %vf, i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %opcode)
  %cmp = icmp ugt i32 %opcode, 57
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %opcodes_allowlist = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 27
  %div3.i = lshr i32 %opcode, 5
  %arrayidx.i = getelementptr i32, ptr %opcodes_allowlist, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %opcode, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vc_set_default_allowlist(ptr noundef %vf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %opcodes_allowlist.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 27
  %0 = ptrtoint ptr %opcodes_allowlist.i to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %opcodes_allowlist.i, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %opcodes_allowlist.i) #4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %opcodes_allowlist.i) #4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %opcodes_allowlist.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vc_set_working_allowlist(ptr noundef %vf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %opcodes_allowlist.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 27
  tail call void @_set_bit(i32 noundef 4, ptr noundef %opcodes_allowlist.i) #4
  tail call void @_set_bit(i32 noundef 5, ptr noundef %opcodes_allowlist.i) #4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %opcodes_allowlist.i) #4
  tail call void @_set_bit(i32 noundef 7, ptr noundef %opcodes_allowlist.i) #4
  tail call void @_set_bit(i32 noundef 8, ptr noundef %opcodes_allowlist.i) #4
  tail call void @_set_bit(i32 noundef 9, ptr noundef %opcodes_allowlist.i) #4
  tail call void @_set_bit(i32 noundef 15, ptr noundef %opcodes_allowlist.i) #4
  tail call void @_set_bit(i32 noundef 17, ptr noundef %opcodes_allowlist.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vc_set_caps_allowlist(ptr noundef %vf) local_unnamed_addr #1 align 64 {
entry:
  %caps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %caps) #4
  %driver_caps = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 9
  %0 = ptrtoint ptr %driver_caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_caps, align 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %caps, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %caps, i32 noundef 29, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %call)
  %cmp7 = icmp ult i32 %call, 29
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %opcodes_allowlist.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %ice_vc_allowlist_opcodes.exit.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ %call, %for.body.lr.ph ], [ %call2, %ice_vc_allowlist_opcodes.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [29 x %struct.allowlist_opcode_info], ptr @allowlist_opcodes, i32 0, i32 %i.08
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr [29 x %struct.allowlist_opcode_info], ptr @allowlist_opcodes, i32 0, i32 %i.08, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %7 = lshr i32 133627838, %i.08
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3.not.i.not = icmp eq i32 %8, 0
  br i1 %cmp3.not.i.not, label %for.body.for.body.i_crit_edge, label %for.body.ice_vc_allowlist_opcodes.exit_crit_edge

for.body.ice_vc_allowlist_opcodes.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_vc_allowlist_opcodes.exit

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %4, i32 %i.04.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @_set_bit(i32 noundef %10, ptr noundef %opcodes_allowlist.i) #4
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.body.i.ice_vc_allowlist_opcodes.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.ice_vc_allowlist_opcodes.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_vc_allowlist_opcodes.exit

ice_vc_allowlist_opcodes.exit:                    ; preds = %for.body.i.ice_vc_allowlist_opcodes.exit_crit_edge, %for.body.ice_vc_allowlist_opcodes.exit_crit_edge
  %add = add i32 %i.08, 1
  %call2 = call i32 @_find_next_bit_be(ptr noundef nonnull %caps, i32 noundef 29, i32 noundef %add) #4
  %cmp = icmp ult i32 %call2, 29
  br i1 %cmp, label %ice_vc_allowlist_opcodes.exit.for.body_crit_edge, label %ice_vc_allowlist_opcodes.exit.for.end_crit_edge

ice_vc_allowlist_opcodes.exit.for.end_crit_edge:  ; preds = %ice_vc_allowlist_opcodes.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

ice_vc_allowlist_opcodes.exit.for.body_crit_edge: ; preds = %ice_vc_allowlist_opcodes.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %ice_vc_allowlist_opcodes.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %caps) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !{null, !1, !"default_allowlist_opcodes", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c", i32 29, i32 18}
!2 = distinct !{null, !3, !"working_allowlist_opcodes", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c", i32 34, i32 18}
!4 = !{ptr @allowlist_opcodes, !5, !"allowlist_opcodes", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c", i32 85, i32 43}
!6 = !{ptr @l2_allowlist_opcodes, !7, !"l2_allowlist_opcodes", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c", i32 42, i32 18}
!8 = !{ptr @req_queues_allowlist_opcodes, !9, !"req_queues_allowlist_opcodes", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c", i32 48, i32 18}
!10 = !{ptr @vlan_allowlist_opcodes, !11, !"vlan_allowlist_opcodes", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c", i32 53, i32 18}
!12 = !{ptr @rss_pf_allowlist_opcodes, !13, !"rss_pf_allowlist_opcodes", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c", i32 59, i32 18}
!14 = !{ptr @adv_rss_pf_allowlist_opcodes, !15, !"adv_rss_pf_allowlist_opcodes", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c", i32 65, i32 18}
!16 = !{ptr @fdir_pf_allowlist_opcodes, !17, !"fdir_pf_allowlist_opcodes", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c", i32 70, i32 18}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
